<?php
return array (
  'catid' => 
  array (
    'id' => 7,
    'moduleid' => 2,
    'field' => 'catid',
    'name' => '栏目',
    'tips' => '',
    'required' => 1,
    'minlength' => 1,
    'maxlength' => 6,
    'pattern' => '',
    'errormsg' => '必须选择一个栏目',
    'class' => '',
    'type' => 'catid',
    'setup' => '',
    'ispost' => 1,
    'unpostgroup' => '',
    'listorder' => 1,
    'status' => 1,
    'issystem' => 1,
  ),
  'title' => 
  array (
    'id' => 8,
    'moduleid' => 2,
    'field' => 'title',
    'name' => '标题',
    'tips' => '',
    'required' => 1,
    'minlength' => 1,
    'maxlength' => 80,
    'pattern' => '',
    'errormsg' => '标题必须为1-80个字符',
    'class' => '',
    'type' => 'title',
    'setup' => 'array (
  \'thumb\' => \'1\',
  \'style\' => \'1\',
  \'size\' => \'55\',
)',
    'ispost' => 1,
    'unpostgroup' => '',
    'listorder' => 2,
    'status' => 1,
    'issystem' => 1,
  ),
  'keywords' => 
  array (
    'id' => 9,
    'moduleid' => 2,
    'field' => 'keywords',
    'name' => '关键词',
    'tips' => '',
    'required' => 0,
    'minlength' => 0,
    'maxlength' => 80,
    'pattern' => '',
    'errormsg' => '',
    'class' => '',
    'type' => 'text',
    'setup' => 'array (
  \'size\' => \'55\',
  \'default\' => \'\',
  \'ispassword\' => \'0\',
  \'fieldtype\' => \'varchar\',
)',
    'ispost' => 1,
    'unpostgroup' => '',
    'listorder' => 3,
    'status' => 1,
    'issystem' => 1,
  ),
  'description' => 
  array (
    'id' => 10,
    'moduleid' => 2,
    'field' => 'description',
    'name' => 'SEO简介',
    'tips' => '',
    'required' => 0,
    'minlength' => 0,
    'maxlength' => 0,
    'pattern' => '',
    'errormsg' => '',
    'class' => '',
    'type' => 'textarea',
    'setup' => 'array (
  \'fieldtype\' => \'mediumtext\',
  \'rows\' => \'4\',
  \'cols\' => \'55\',
  \'default\' => \'\',
)',
    'ispost' => 1,
    'unpostgroup' => '',
    'listorder' => 4,
    'status' => 1,
    'issystem' => 1,
  ),
  'content' => 
  array (
    'id' => 11,
    'moduleid' => 2,
    'field' => 'content',
    'name' => '内容',
    'tips' => '',
    'required' => 0,
    'minlength' => 0,
    'maxlength' => 0,
    'pattern' => 'defaul',
    'errormsg' => '',
    'class' => 'content',
    'type' => 'editor',
    'setup' => 'array (
  \'edittype\' => \'UEditor\',
)',
    'ispost' => 1,
    'unpostgroup' => '',
    'listorder' => 5,
    'status' => 1,
    'issystem' => 1,
  ),
  'createtime' => 
  array (
    'id' => 12,
    'moduleid' => 2,
    'field' => 'createtime',
    'name' => '发布时间',
    'tips' => '',
    'required' => 1,
    'minlength' => 0,
    'maxlength' => 0,
    'pattern' => 'date',
    'errormsg' => '',
    'class' => '',
    'type' => 'datetime',
    'setup' => '',
    'ispost' => 1,
    'unpostgroup' => '',
    'listorder' => 6,
    'status' => 1,
    'issystem' => 1,
  ),
  'status' => 
  array (
    'id' => 19,
    'moduleid' => 2,
    'field' => 'status',
    'name' => '状态',
    'tips' => '',
    'required' => 0,
    'minlength' => 0,
    'maxlength' => 0,
    'pattern' => '',
    'errormsg' => '',
    'class' => '',
    'type' => 'radio',
    'setup' => 'array (
  \'options\' => \'发布|1
定时发布|0\',
  \'fieldtype\' => \'tinyint\',
  \'numbertype\' => \'1\',
  \'labelwidth\' => \'75\',
  \'default\' => \'1\',
)',
    'ispost' => 1,
    'unpostgroup' => '',
    'listorder' => 7,
    'status' => 1,
    'issystem' => 1,
  ),
  'copyfrom' => 
  array (
    'id' => 75,
    'moduleid' => 2,
    'field' => 'copyfrom',
    'name' => '来源',
    'tips' => '',
    'required' => 0,
    'minlength' => 0,
    'maxlength' => 0,
    'pattern' => 'defaul',
    'errormsg' => '',
    'class' => 'copyfrom',
    'type' => 'text',
    'setup' => 'array (
  \'default\' => \'\',
  \'ispassword\' => \'0\',
  \'fieldtype\' => \'varchar\',
)',
    'ispost' => 0,
    'unpostgroup' => '',
    'listorder' => 8,
    'status' => 1,
    'issystem' => 0,
  ),
  'fromlink' => 
  array (
    'id' => 76,
    'moduleid' => 2,
    'field' => 'fromlink',
    'name' => '来源网址',
    'tips' => '',
    'required' => 0,
    'minlength' => 0,
    'maxlength' => 0,
    'pattern' => 'defaul',
    'errormsg' => '',
    'class' => 'fromlink',
    'type' => 'text',
    'setup' => 'array (
  \'default\' => \'\',
  \'ispassword\' => \'0\',
  \'fieldtype\' => \'varchar\',
)',
    'ispost' => 0,
    'unpostgroup' => '',
    'listorder' => 9,
    'status' => 1,
    'issystem' => 0,
  ),
  'recommend' => 
  array (
    'id' => 13,
    'moduleid' => 2,
    'field' => 'recommend',
    'name' => '允许评论',
    'tips' => '',
    'required' => 0,
    'minlength' => 0,
    'maxlength' => 1,
    'pattern' => '',
    'errormsg' => '',
    'class' => '',
    'type' => 'radio',
    'setup' => 'array (
  \'options\' => \'允许评论|1
不允许评论|0\',
  \'fieldtype\' => \'tinyint\',
  \'numbertype\' => \'1\',
  \'labelwidth\' => \'\',
  \'default\' => \'\',
)',
    'ispost' => 1,
    'unpostgroup' => '',
    'listorder' => 10,
    'status' => 0,
    'issystem' => 0,
  ),
  'readpoint' => 
  array (
    'id' => 14,
    'moduleid' => 2,
    'field' => 'readpoint',
    'name' => '阅读收费',
    'tips' => '',
    'required' => 0,
    'minlength' => 0,
    'maxlength' => 5,
    'pattern' => '',
    'errormsg' => '',
    'class' => '',
    'type' => 'number',
    'setup' => 'array (
  \'size\' => \'5\',
  \'numbertype\' => \'1\',
  \'decimaldigits\' => \'0\',
  \'default\' => \'0\',
)',
    'ispost' => 1,
    'unpostgroup' => '',
    'listorder' => 11,
    'status' => 0,
    'issystem' => 0,
  ),
  'hits' => 
  array (
    'id' => 15,
    'moduleid' => 2,
    'field' => 'hits',
    'name' => '点击次数',
    'tips' => '',
    'required' => 0,
    'minlength' => 0,
    'maxlength' => 8,
    'pattern' => '',
    'errormsg' => '',
    'class' => '',
    'type' => 'number',
    'setup' => 'array (
  \'size\' => \'10\',
  \'numbertype\' => \'1\',
  \'decimaldigits\' => \'0\',
  \'default\' => \'0\',
)',
    'ispost' => 1,
    'unpostgroup' => '',
    'listorder' => 12,
    'status' => 1,
    'issystem' => 0,
  ),
  'readgroup' => 
  array (
    'id' => 16,
    'moduleid' => 2,
    'field' => 'readgroup',
    'name' => '访问权限',
    'tips' => '',
    'required' => 0,
    'minlength' => 0,
    'maxlength' => 0,
    'pattern' => '',
    'errormsg' => '',
    'class' => '',
    'type' => 'groupid',
    'setup' => 'array (
  \'inputtype\' => \'checkbox\',
  \'fieldtype\' => \'tinyint\',
  \'labelwidth\' => \'85\',
  \'default\' => \'\',
)',
    'ispost' => 1,
    'unpostgroup' => '',
    'listorder' => 13,
    'status' => 0,
    'issystem' => 1,
  ),
  'posid' => 
  array (
    'id' => 17,
    'moduleid' => 2,
    'field' => 'posid',
    'name' => '推荐位',
    'tips' => '',
    'required' => 0,
    'minlength' => 0,
    'maxlength' => 0,
    'pattern' => '',
    'errormsg' => '',
    'class' => '',
    'type' => 'posid',
    'setup' => '',
    'ispost' => 1,
    'unpostgroup' => '',
    'listorder' => 14,
    'status' => 1,
    'issystem' => 1,
  ),
  'template' => 
  array (
    'id' => 18,
    'moduleid' => 2,
    'field' => 'template',
    'name' => '模板',
    'tips' => '',
    'required' => 0,
    'minlength' => 0,
    'maxlength' => 0,
    'pattern' => '',
    'errormsg' => '',
    'class' => '',
    'type' => 'template',
    'setup' => '',
    'ispost' => 1,
    'unpostgroup' => '',
    'listorder' => 15,
    'status' => 0,
    'issystem' => 1,
  ),
  'address' => 
  array (
    'id' => 87,
    'moduleid' => 2,
    'field' => 'address',
    'name' => '地址',
    'tips' => '',
    'required' => 1,
    'minlength' => 0,
    'maxlength' => 0,
    'pattern' => 'defaul',
    'errormsg' => '',
    'class' => 'address',
    'type' => 'linkage',
    'setup' => '',
    'ispost' => 0,
    'unpostgroup' => '',
    'listorder' => 16,
    'status' => 0,
    'issystem' => 0,
  ),
);
?>