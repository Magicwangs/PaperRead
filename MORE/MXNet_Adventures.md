## MXNet Design Concepts
- **Authors**: Magic
- **Link**: https://mxnet.incubator.apache.org/architecture/index.html
- **Tags**: `MXNet` 
- **Year**: Alive


### Need Know
- `DMLC`： Distributed (Deep) Machine Learning Community, A Community of Awesome Machine Learning Projects

### Dependency Engine for Deep Learning
- Dependency Scheduling: 尽可能做到并行操作   
    - 难点：
      - 数据流图中依赖的处理
      - 内存的回收
      - 随机数的生成必须串行
    - Case Study
      - 逐层的计算
      -  There is a delay in computation **between the last backward pass to layer k and the next forward call to layer k**. We can synchronize the weight of layer k in **parallel** with other computation during this delay.
      - 多GPU的参数更新大致分为两步一个是多gpu各自计算梯度回传，然后同步各个gpu相同层的参数
      - 多GPU之间layer k的weight的同步会在下次前向传播到来之前进行
- 大致的操作：
  - 将两种标签来表示对变量的依赖分为两种：
    - read_vars: 变量中间没有改变
    - mutate_vars: 变量会在操作中发生改变   
  - 为每个变量生成一个依赖的队列，read_vars可以同步的读取    

### Optimizing Memory Consumption in Deep Learning
- **显式反向路径法**: 正向传递和反向传播不在同一张图上 
  - 节省内存，可以跑完节点就释放内存，如果公用需要一直占着
  - 反向传播的路径也可以优化，不一定要是一个正向的镜像
- 反向传播和正向传递就变成了相同的问题
- 内存优化的思路：
  - In-place Operations: 就是输入输出共用同一片内存，前提是输入变量不再被其他所依赖   
  - Standard Memory Sharing: 重复使用前面已经不会再被使用的内存，如果这两个共享内存的比变量不一样大，一般会按照大的那个内存分配空间  
- 内存优化重点考虑的是每个量的生命周期，类似于编译器，而且在内存优化的过程中要优先保证安全和正确，同事尽量允许更多的并行，

### Designing Efficient Data Loaders for Deep Learning
- 同样的数据，封装成大文件读取比小文件更好，避免了小文件读取的寻址时间！！
- 而且打包后可以节省部分空间  








