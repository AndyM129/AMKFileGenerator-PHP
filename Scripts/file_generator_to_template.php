<?php
/**
 * 文件生成器
 *
 * 以指定目录为蓝本，生成模板
 * 执行：php file_generator_to_template.php [filepath] [template_name]
 * 例子：php file_generator_to_template.php ../Modules/Home ModuleTemplate
 *
 * User: mengxinxin
 * Date: 2019/8/4
 * Time: 2:48 PM
 */

include_once "variables_for_file_generator_to_template.php";

// 修正时区
date_default_timezone_set('PRC');

// 解析命令行参数
$converter_dir = $argv[1];  // 待转换文件夹
$template_name = $argv[2];  // 生成的模板名称

// 找到模板目录
$current_dir = dirname(__FILE__);
$template_dir = "$current_dir/../Templates/$template_name";

echo "\n/******************************************************************************";
echo "\n *";
echo "\n * 模板名称 = $template_name";
echo "\n * 转换路径 = $converter_dir";
echo "\n * 输出路径 = $template_dir";
echo "\n * 当前路径 = $current_dir";
echo "\n * 转换变量 = "; print_r($template_converter_variables);
echo "\n *";
echo "\n ******************************************************************************/";
echo "\n\n";

// 遍历&递归文件夹
// 加载对应待转换文件
// 替换模板变量：生成对应目录到模板路径
// 替换模板变量：生成对应文件到模板路径
enumeration_dir($converter_dir);

// 完成
echo "完成 ！\n\n\n";

// 对指定文本转为模板变量
function converter_template_variables($str) {
    global $template_converter_variables;
    $result_str = $str;
    foreach($template_converter_variables as $t_value=>$t_key) {
        $result_str = str_replace($t_value, "{{".$t_key."}}", $result_str);
    }
    return $result_str;
}

// 遍历指定目录
function enumeration_dir($dir) {
    global $converter_dir, $template_name, $current_dir, $template_dir, $template_converter_variables;

    $filenames = scandir($dir);
    foreach($filenames as $filename){

        //判断是否为系统隐藏的文件.和..  如果是则跳过否则就继续往下走，防止无限循环再这里。
        if($filename=="." || $filename==".." || $filename==".DS_Store") continue;

        // 文件路径
        $filepath = "$dir/$filename";

        // 输出文件
        $output_filepath = str_replace(dirname($converter_dir), "../Templates/$template_name", $filepath);
        $output_filepath = converter_template_variables($output_filepath);

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
                $template_file_content = converter_template_variables($template_file_content);
                $put_success = file_put_contents($output_filepath, $template_file_content);
                echo ($put_success!==false ? "✅" : "❌") . " 文件创建" . ($put_success!==false ? "成功" : "失败") . ":\t" . $output_filepath . "\n";
            }
        }
    }
}