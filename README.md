# 以太坊银行 DApp

基于以太坊智能合约的去中心化银行应用，允许用户存款、取款和查询余额。

## 项目简介

这是一个使用 Solidity 智能合约和前端 Web3 技术开发的去中心化银行应用。用户可以连接 MetaMask 钱包，进行存款、取款等操作，所有交易都在以太坊区块链上进行，保证了安全性和透明度。

## 功能特性

- 钱包连接：支持 MetaMask 钱包连接
- 存款功能：向合约存入 ETH
- 取款功能：从合约提取已存入的 ETH
- 余额查询：查看当前账户在合约中的余额
- 交易状态实时显示
- 响应式设计，适配移动设备

## 技术栈

- 后端：Solidity (^0.8.20)
- 区块链框架：Truffle
- 前端：HTML5, CSS3, JavaScript
- Web3 库：ethers.js (v6.14.1)
- UI 库：jQuery, Font Awesome

## 快速开始

### 前提条件

- 安装 [Node.js](https://nodejs.org/)
- 安装 [Truffle](https://www.trufflesuite.com/truffle)
- 安装 [Ganache](https://www.trufflesuite.com/ganache) (本地测试网络)
- 安装 [MetaMask](https://metamask.io/) 浏览器插件

### 安装步骤

1. 克隆仓库
```bash
git clone https://github.com/s154621323/eth-bank-dapp.git
cd eth-bank-dapp
```

2. 安装依赖
```bash
npm install
```

3. 编译并部署合约 (确保 Ganache 已启动)
```bash
truffle compile
truffle migrate
```

4. 启动前端应用
```bash
cd web
npm install -g http-server
http-server
```

5. 在浏览器中访问应用
```
http://localhost:8080
```

## 使用说明

1. 打开应用，点击"连接钱包"按钮连接 MetaMask
2. 确保 MetaMask 连接到正确的网络 (与合约部署的网络相同)
3. 存款：输入金额，点击"存款"按钮
4. 取款：输入金额，点击"取款"按钮
5. 点击"刷新余额"可以查看最新余额

## 合约结构

主要合约是 `InfoContract.sol`，包含以下主要功能：
- `deposit()`: 存款函数
- `withdraw(uint256 amount)`: 取款函数
- `getBalance()`: 查询余额函数
- `getContractBalance()`: 查询合约余额函数

## 许可证

GPL-3.0