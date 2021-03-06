<!DOCTYPE html
        PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; chartser=utf-8" >
    <title>main</title>
    <link rel="stylesheet" type="text/css" href="../style/admin.css">
    <script type="text/javascript" src="../js/admin_content.js"></script>
    <!-- 配置文件 -->
    <script type="text/javascript" src="../ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="../ueditor/ueditor.all.js"></script>
    <script type="text/javascript" charset="utf-8" src="../ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body id="main">
    <div class="map">
        内容管理>>查看文档列表>><strong title="{$title}" id="title">{$title}</strong>
    </div>
    <ol>
        <li><a href="content.php?action=show" class="selected">文档列表</a></li>
        <li><a href="content.php?action=add">新增文档</a></li>
        {if $update}
            <li><a href="content.php?action=update&id={$id}">修改文档</a></li>
        {/if}
    </ol>
    {if $add}
        <form action="?action=add" method="post" name="content">
            <table cellspacing="0" class="content">
                <tr><th><strong>发布一条新文档</strong></th></tr>
                <tr><td>文档标题：<input type="text" name="title" class="text" /><span class="red">[必填]</span>( * 标题2-50字之间)</td></tr>
                <tr>
                    <td>栏&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目：
                        <select name="nav" id="">
                            <option value="">请选择一个栏目类别</option>
                            {$nav}
                        </select>
                        <span class="red">[必选]</span>
                    </td>
                </tr>
                <tr><td>定义属性：<input type="checkbox" name="attr[]" value="头条"/>头条
                        <input type="checkbox" name="attr[]" value="推荐"/>推荐
                        <input type="checkbox" name="attr[]" value="加粗"/>加粗
                        <input type="checkbox" name="attr[]" value="跳转"/>跳转
                </td></tr>
                <tr><td>TAG标签：<input type="text" name="tag" class="text" />（* 每个标签用','隔开，总长30位之内）</td></tr>
                <tr><td>关&nbsp;&nbsp;键&nbsp;字：<input type="text" name="keyword" class="text" />（* 每个关键字用','隔开，总长不得大于30位）</td></tr>
                <tr><td>缩&nbsp;&nbsp;略&nbsp;图：<input type="text" name="thumbnail" class="text" readonly/>
                                        <input type="button" value="上传缩略图" onclick="centerWindow('../templates/upfile.html','upfile','400','100')">
                                        <img src="" alt="" name="pic" style="display: none" />（* 必须是jpg,gif,png，并且不得大于1M）
                </td></tr>
                <tr><td>文章来源：<input type="text" name="source" class="text" />（* 文章来源不得大于20位）</td></tr>
                <tr><td>发&nbsp;&nbsp;布&nbsp;者：<input type="text" name="author" class="text" value="{$author}"/>（* 发布者不得大于10位）</td></tr>
                <tr><td><span class="middle">内容摘要：</span><textarea name="info"></textarea><span class="middle">（* 内容摘要不得大于200位）</span></td></tr>
                <tr><td>
                        <script id="container" name="content" type="text/plain"></script>
                </td></tr>
                <tr><td>评论选项：<input type="radio" name="commend" value="1" checked/> 允许评论
                                   <input type="radio" name="commend" value="0" /> 禁止评论
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览次数：<input type="text" name="count" class="text small" value="100" />
                </td></tr>
                <tr><td>文档排序：<select name="sort" id="">
                                        <option value="">默认排序</option>
                                        <option value="">置顶一天</option>
                                        <option value="">置顶一周</option>
                                        <option value="">置顶一月</option>
                                        <option value="">置顶一年</option>
                                    </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;消费金币：<input type="text" name="gold" class="text small" />
                 </td></tr>
                <tr><td>阅读权限：<select name="limit" id="">
                            <option value="">开放浏览</option>
                            <option value="">初级会员</option>
                            <option value="">中级会员</option>
                            <option value="">高级会员</option>
                            <option value="">VIP会员</option>
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;标题颜色：<select name="color" id="">
                            <option value="">默认颜色</option>
                            <option value="red" style="color: red">红色</option>
                            <option value="blue" style="color: blue">蓝色</option>
                            <option value="orange" style="color: orange">橙色</option>
                        </select>
                 </td></tr>
                <tr><td><input type="submit" name="send" onclick="return checkAddContent();" value="发布文档" /><input type="reset" value="重置" /></td></tr>
            </table>
        </form>
    {/if}
</body>
</html>