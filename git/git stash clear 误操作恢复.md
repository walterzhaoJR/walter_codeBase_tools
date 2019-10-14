## git stash clear 误操作恢复

### 我的操作流程是：

* 1.首先输入：

```
git fsck --lost-found
会看到 一条一条的记录 类似:
dangling commit 6cb2480fa3a59c140b58a07ac734838a2d958d44
dangling commit e9b4c85c437aacf628e724903df21648538963d4
dangling blob 983515c6f78d232f1c8878e98598218c142aa9b9
dangling commit 4ab67a050c5a8288da28154f79ea89106918ea36
dangling commit c2363d6a03dad8f2bc986f8d21ab0fa38c74477b
dangling blob 4338d18c5224397a03b40548b7e0f1ea9ca3ffff
dangling commit 17398e4d6e8cec82081b2d94f61a367c1243b727
dangling commit 14bae3242e6a2b19132d9f8d9ad2c05736eba395
```
* 2.复制dangling commit 的id（其他的dangling blob不用关心）

* 3.然后输入
```
git show 6cb2480fa3a59c140b58a07ac734838a2d958d44
```
3.1查看具体内容， 找到你想要的记录
```
记录中会描述日期和摘要，
日期是你git stash 的日期（这里很重要），
摘要会记录你是在哪一条commit 上进行git stash操作的，
类似（commit 1c4c8073f32f02be27a3fd6107ea4e77af5932b3
Merge: 9374eb7 c0ac76f
Date: Mon Oct 14 11:35:25 2019 +0800
WIP on master: 93844b7 fix some bugs）
```

4.找到你想要的记录后输入
```
git merge 6cb2480fa3a59c140b58a07ac734838a2d958d44
这个就还原了
```