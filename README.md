# cutn-qsvm_benchmark
demo code for cutn-qsvm_benchmark with h100 cluster

## 0. Create Envirement and Requirement


## 1. Run Benchmark Code
### For 1 node with 8 GPUs
```
sbatch benchmark_mgpu_g08.slurm 
```
output:
```
qubits, [num train data, num list, num parti-list, num gpu], [exp_t, operand_t, path_t, contact_t, total_t]

2, 20, 190, 24, 8,  0.01, 0.005, 0.27, 0.041, 0.326
256, 500, 124750, 15594, 8,  0.172, 152.952, 1.484, 452.923, 607.531
```

### For 4 node with 32 GPUs
```
sbatch benchmark_mgpu_g32.slurm 
```
output:
```
qubits, [num train data, num list, num parti-list, num gpu], [exp_t, operand_t, path_t, contact_t, total_t]

2, 20, 190, 6, 32,  0.005, 0.002, 0.234, 5.414, 5.655
256, 500, 124750, 3899, 32,  0.124, 38.908, 1.499, 222.767, 263.298
```

## 2. Previous Result
![alt text](pre_result.png)