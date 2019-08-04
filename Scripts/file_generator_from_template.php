<?php
/**
 * 文件生成器
 *
 * 以指定模板 生成文件（及文件夹）到指定路径
 * 执行：php file_generator_from_template.php [template_name] [output_dir]
 * 例子：php file_generator_from_template.php ModuleTemplate ../Modules
 *
 * User: mengxinxin
 * Date: 2019/8/4
 * Time: 2:48 PM
 */

include_once "variables_for_file_generator_from_template.php";

// 修正时区
date_default_timezone_set('PRC');

// 解析命令行参数
$template_name = $argv[1];
$output_dir = $argv[2];

// 找到模板目录
$current_dir = dirname(__FILE__);
$template_dir = "$current_dir/../Templates/$template_name";

echo "\n/******************************************************************************";
echo "\n *";
echo "\n * 模板名称 = $template_name";
echo "\n * 输出路径 = $output_dir";
echo "\n * 当前路径 = $current_dir";
echo "\n * 模板变量 = "; print_r($template_variables);
echo "\n *";
echo "\n ******************************************************************************/";
echo "\n\n";

// 生成特殊用法的模板变量
add_template_variables();

// 遍历&递归文件夹
// 加载对应模板文件
// 替换模板变量：生成对应目录到指定路径
// 替换模板变量：生成对应文件到指定路径
enumeration_dir($template_dir);

// 完成
echo "完成 ！\n\n\n";

// 对模板变量，生成其各种写法
function add_template_variables() {
    global $template_variables;
    foreach($template_variables as $t_key=>$t_value) {
        $template_variables["$t_key.uppercase"] = strtoupper($t_value);     // 全大写
        $template_variables["$t_key.lowercase"] = strtolower($t_value);     // 全小写
        $template_variables["$t_key.uppercasefirst"] = ucfirst($t_value);   // 大写首字母
        $template_variables["$t_key.lowercasefirst"] = lcfirst($t_value);   // 小写首字母
        $template_variables["$t_key.uppercasewords"] = ucwords($t_value);   // 每个单词首字母大写
        // 缩写
        $template_variables["$t_key.uc"] = strtoupper($t_value);
        $template_variables["$t_key.lc"] = strtolower($t_value);
        $template_variables["$t_key.ucf"] = ucfirst($t_value);
        $template_variables["$t_key.lcf"] = lcfirst($t_value);
        $template_variables["$t_key.ucw"] = ucwords($t_value);
    }
}
// 对指定文本应用模板变量
function apply_template_variables($template_str) {
    global $template_variables;
    $result_str = $template_str;
    foreach($template_variables as $t_key=>$t_value) {
        $result_str = str_replace("{{".$t_key."}}", $t_value, $result_str);
    }
    return $result_str;
}

// 遍历指定目录
function enumeration_dir($dir) {
    global $template_name, $output_dir, $current_dir, $template_dir;

    $filenames = scandir($dir);
    foreach($filenames as $filename){

        //判断是否为系统隐藏的文件.和..  如果是则跳过否则就继续往下走，防止无限循环再这里。
        if($filename=="." || $filename==".." || $filename==".DS_Store") continue;

        // 文件路径
        $filepath = "$dir/$filename";
        //echo $filepath . "\n";

        // 输出文件
        $output_filepath = str_replace($template_dir, $output_dir, $filepath);
        $output_filepath = apply_template_variables($output_filepath);

        // 如果是文件夹
        if(is_dir($filepath)) {

            // 若该文件夹已存在则跳过
            if (is_dir($output_filepath)) {
                echo "⚠️ 目录已存在:\t" . $output_filepath . "\n";
            }
            // 否则创建该文件夹
            else {
                $mkdir_success = mkdir($output_filepath,0777,true);
                echo ($mkdir_success ? "✅" : "❌") . " 目录创建" . ($mkdir_success ? "成功" : "失败") . ":\t" . $output_filepath . "\n";
            }

            // 递归子文件夹
            enumeration_dir($filepath);
        }
        // 否则为文件
        else {
            // 若该文件夹已存在则跳过
            if (file_exists($output_filepath)) {
                echo "⚠️ 文件已存在:\t" . $output_filepath . "\n";
            }
            // 否则创建该文件
            else {
                $template_file_content = file_get_contents($filepath);
                $template_file_content = apply_template_variables($template_file_content);
                $put_success = file_put_contents($output_filepath, $template_file_content);
                echo ($put_success!==false ? "✅" : "❌") . " 文件创建" . ($put_success!==false ? "成功" : "失败") . ":\t" . $output_filepath . "\n";
            }
        }
    }
}