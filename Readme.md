# grunt-contrib-nodeunit-demo
使用grunt-contrib-nodeunit进行nodeunit集成测试的例子（包含coffee和js）。  
例子非常简单，假设有一个model:User和一个Service: UserService，  
它们分别有save和find方法，使用grunt-contrib-nodeunit对它们进行测试。  

## Usage
假设你已经安装好[Grunt](http://gruntjs.com/)
```shell
git clone https://github.com/xxxx your_path_dir
cd grunt-contrib-nodeunit-demo/js
npm install
grunt
```
执行命令grunt之后会看到执行的结果

## 项目中Gruntfile.js的说明
    1. module.exports = function(grunt) {
    2.   grunt.initConfig({
    3.     nodeunit: {
    4.       all: ['test/**/*Test.js']
    5.     }
    6.   });
    7. grunt.loadNpmTasks('grunt-contrib-nodeunit');
    8. return grunt.registerTask('default', ['nodeunit']);
Gruntfile.js文件很简单，只是配置nodeunit作为Grunt的任务。  
第4行代码中all属性指明了要进行测试的文件。这里会对test文件夹中所有名字为xxxTest.js的文件进行测试  
除了all属性外，grunt-contrib-nodeunit还有options属性，
```js
options: {
  reporter: 'tap',    //使用哪个reporter
  reporterOutput: 'tests.tap',  //reporter结果输出的文件
  reporterOptions: {
    output: '.'   //要输出结果的目录
  }
}
```