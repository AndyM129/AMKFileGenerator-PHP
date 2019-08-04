# AMKFileGenerator-PHP



[![Language](https://img.shields.io/badge/Language-%20PHP%20-blue.svg)]()
[![License](http://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/AndyM129/AMKFileGenerator-PHP/blob/master/LICENSE)
[![Weibo](https://img.shields.io/badge/Sina微博-@Developer_Andy-orange.svg?style=flat)](http://weibo.com/u/5271489088)
[![GitHub stars](https://img.shields.io/github/stars/AndyM129/AMKFileGenerator-PHP.svg)](https://github.com/AndyM129/AMKFileGenerator-PHPtargazers)

文件 & 文件模板 生成器（in PHP）

-------

<p align="center">
    <a href="#what-is-amkfilegenerator-php">What is AMKFileGenerator-PHP?</a> &bull;
    <a href="#key-features">Key features</a> &bull;
    <a href="#usage">Usage</a> &bull;
    <a href="#author">Author</a> &bull;
    <a href="#license">License</a>
</p>

-------

## What is AMKFileGenerator-PHP?

**[AMKFileGenerator-PHP](https://github.com/AndyM129/AMKFileGenerator-PHP)** 是一个 **生成文件的PHP脚本**，灵感来自于 **[Generamba](https://github.com/strongself/Generamba)**，其介绍如下：

> **Generamba** is a code generator made for working with Xcode. Primarily it is designed to generate VIPER modules but it is quite easy to customize it for generation of any other classes (both in Objective-C and Swift).

如上文介绍，**[Generamba](https://github.com/strongself/Generamba)** 目前仅适用于Xcode，以生成对应的文件，而无法适用于其他平台的工程（如 Android、Web、Flutter 等），基于此，作者写了这个脚本，以满足前述的需求。



## Key features

使用该脚本，你可以：

* 基于指定的本地路径，快速将其转为 文件/文件夹 模板（需先配置下模板变量）
* 基于指定模板，快速生成对应的路径及文件（需先配置下模板变量）
* 以上功能不依赖任何工程，可用于生成任何你需要的路径&文件

## Usage

### 从文件生成模板

示例：将当前 `~/AMKFileGenerator-PHP/Modules/Home` 目录转为模板
```shell
# cd 到脚本目录下
cd ~/AMKFileGenerator-PHP/Scripts

# 打开配置文件，编辑后保存，以便将特定字符串转为模板变量
vi variables_for_file_generator_to_template.php

# 执行“从文件生成模板”的脚本
# 命令格式为：php file_generator_to_template.php [filepath] [template_name]
php file_generator_to_template.php ../Modules/Home ModuleTemplate
```

#### 完整示例

脚本的执行及输出：
![](https://raw.githubusercontent.com/AndyM129/ImageHosting/master/images/20190804221558.png)

执行结果：
![](https://raw.githubusercontent.com/AndyM129/ImageHosting/master/images/20190804222022.png)

### 以指定模板生成文件

示例：以 `~/AMKFileGenerator-PHP/Templates/ModuleTemplate` 为模板，生成指定文件

```shell
# cd 到脚本目录下
cd ~/AMKFileGenerator-PHP/Scripts

# 打开配置文件，编辑后保存，以便将模板变量转为指定文本
vi variables_for_file_generator_from_template.php

# 执行“从模板生成文件”的脚本
# 命令格式为：php file_generator_to_template.php [filepath] [template_name]
php file_generator_from_template.php ModuleTemplate ../Modules
```

#### 完整示例

脚本的执行及输出：

![](https://raw.githubusercontent.com/AndyM129/ImageHosting/master/images/20190804223415.png)

执行结果：

![](https://raw.githubusercontent.com/AndyM129/ImageHosting/master/images/20190804223346.png)



## Author

如果你有好的 idea 或 疑问，请随时提 issue 或 request。

如果你在开发过程中遇到什么问题，或对iOS开发有着自己独到的见解，再或是你与我一样同为菜鸟，都可以关注或私信我的微博。

- 微信：Andy_129
- 微博：[@Developer_Andy](http://weibo.com/u/5271489088)
- 简书：[Andy__M](http://www.jianshu.com/users/28d89b68984b)

>“Stay hungry. Stay foolish.”

共勉~



### License

MIT
