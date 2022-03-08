# 说明

Godot C++ native script教程例子

https://docs.godotengine.org/zh_CN/stable/tutorials/scripting/gdnative/gdnative_cpp_example.html

## 步骤

工程目录下

```shell
git submodule init
git submodule update
godot --gdnative-generate-json-api api.json
```

godot-cpp目录下

```shell
git submodule init
git submodule update
scons platform=linux generate_bindings=yes use_custom_api_file=yes custom_api_file=../api.json -j8
```

native模块编译

```shell
使用cmake
```

打开godot图形界面,打开demo文件夹,运行即可