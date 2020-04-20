-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2020 at 11:55 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shade_expo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id_company` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(500) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `financial_year_from` date NOT NULL,
  `financial_year_to` date NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(750) NOT NULL,
  `opening_balance` double NOT NULL DEFAULT 0,
  `_counter` varchar(250) NOT NULL,
  `_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id_company`, `name`, `address`, `pincode`, `mobile`, `email`, `currency`, `financial_year_from`, `financial_year_to`, `username`, `password`, `opening_balance`, `_counter`, `_date`) VALUES
(3, 'TRIAL', 'CENTRAL MARKET\nCALICUT', '666111', '9847111222', 'msraziq@gmail.com', 'RUPEES', '2019-08-31', '2019-08-31', 'Trial', '123', 67573, 'BqtxxuwYoRfF+rgGC8X71g==', '2020-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `z_account_head`
--

CREATE TABLE `z_account_head` (
  `id_account_head` int(11) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `id_ledger_group` int(100) NOT NULL,
  `opening_balance` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_account_head`
--

INSERT INTO `z_account_head` (`id_account_head`, `code`, `name`, `id_ledger_group`, `opening_balance`) VALUES
(1, 'LABOUR', 'LABOUR', 1, 0),
(2, 'CR', 'CLEAR RECEIPT', 1, 0),
(3, '', 'AC', 18, 0),
(4, '', 'ACC', 1, 500),
(5, '', 'MIN', 1, -5000),
(6, '', 'ACC', 1, 1200),
(7, '', 'AHC', 3, -500);

-- --------------------------------------------------------

--
-- Table structure for table `z_account_voucher`
--

CREATE TABLE `z_account_voucher` (
  `id_account_voucher` int(11) NOT NULL,
  `date` date NOT NULL,
  `ledger_type` int(11) NOT NULL,
  `id_ledger` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `amount` double NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `type` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_account_voucher`
--

INSERT INTO `z_account_voucher` (`id_account_voucher`, `date`, `ledger_type`, `id_ledger`, `id_account`, `amount`, `remarks`, `type`) VALUES
(106, '2020-03-12', 2, 101, 2, 2500, '', 'Payment'),
(108, '2020-03-19', 1, 15, 2, 2500, 'HJ', 'Receipt'),
(109, '2020-03-19', 1, 15, 2, 4000, 'GB', 'Payment'),
(110, '2020-03-19', 2, 102, 2, 10000, 'D', 'Payment');

-- --------------------------------------------------------

--
-- Table structure for table `z_company`
--

CREATE TABLE `z_company` (
  `id_company` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(500) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `financial_year_from` date NOT NULL,
  `financial_year_to` date NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(750) NOT NULL,
  `opening_balance` double NOT NULL DEFAULT 0,
  `_counter` varchar(250) NOT NULL,
  `_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `z_company`
--

INSERT INTO `z_company` (`id_company`, `name`, `address`, `pincode`, `mobile`, `email`, `currency`, `financial_year_from`, `financial_year_to`, `username`, `password`, `opening_balance`, `_counter`, `_date`) VALUES
(5, 'KNH', '', '', '', '', '', '0001-01-01', '0001-01-01', '', '123', 195020, '', '0001-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `z_invoice`
--

CREATE TABLE `z_invoice` (
  `id_invoice` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_invoice`
--

INSERT INTO `z_invoice` (`id_invoice`, `invoice_no`) VALUES
(1, 'INV01'),
(2, 'INV02');

-- --------------------------------------------------------

--
-- Table structure for table `z_ledger_group`
--

CREATE TABLE `z_ledger_group` (
  `id_ledger_group` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_ledger_group`
--

INSERT INTO `z_ledger_group` (`id_ledger_group`, `name`) VALUES
(1, 'OTHER'),
(2, 'KADAM'),
(3, 'GROUP'),
(4, 'GROUP2');

-- --------------------------------------------------------

--
-- Table structure for table `z_packing_expense`
--

CREATE TABLE `z_packing_expense` (
  `id_packing_expense` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_packing_expense`
--

INSERT INTO `z_packing_expense` (`id_packing_expense`, `id_invoice`, `date`, `id_product`, `quantity`, `price`, `total`) VALUES
(37, 1, '2020-03-07 00:00:00', 2, 50, 100, 5000),
(38, 1, '2020-03-07 00:00:00', 5, 100, 85, 8500),
(39, 2, '2020-03-07 00:00:00', 2, 250, 120, 30000),
(41, 1, '2020-03-19 00:00:00', 4, 34, 45, 1530),
(42, 1, '2020-03-19 00:00:00', 1, 56, 78, 4368),
(43, 1, '2020-03-18 00:00:00', 2, 50, 60, 3000),
(44, 2, '2020-03-19 00:00:00', 2, 50, 55, 2750);

-- --------------------------------------------------------

--
-- Table structure for table `z_payroll`
--

CREATE TABLE `z_payroll` (
  `id_payroll` int(11) NOT NULL,
  `id_staff` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `amount` double NOT NULL,
  `remarks` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_payroll`
--

INSERT INTO `z_payroll` (`id_payroll`, `id_staff`, `type`, `date`, `amount`, `remarks`) VALUES
(156, 101, 'SALARY', '2020-03-19 00:00:00', 20000, ''),
(157, 102, 'ALLOWANCE', '2020-03-19 00:00:00', 15000, ''),
(153, 101, 'SALARY', '2020-03-12 00:00:00', 1000000, '');

-- --------------------------------------------------------

--
-- Table structure for table `z_product`
--

CREATE TABLE `z_product` (
  `id_product` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `unit` varchar(150) NOT NULL,
  `purchase_price` double NOT NULL,
  `selling_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_product`
--

INSERT INTO `z_product` (`id_product`, `name`, `unit`, `purchase_price`, `selling_price`) VALUES
(1, 'PRODUCT1', 'a', 1000, 1200),
(2, 'PROD1', 'P1', 1150, 1200),
(3, 'PROD2', 'hg', 1000, 500),
(4, 'SAD', 'ZC', 100, 200),
(5, 'PROD3', 'F', 2000, 2500),
(6, 'PROD4', 'PR4', 1000, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `z_purchase_expenses`
--

CREATE TABLE `z_purchase_expenses` (
  `id_purchase_expense` int(11) NOT NULL,
  `expense` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `id_purchase_voucher` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `z_purchase_expenses`
--

INSERT INTO `z_purchase_expenses` (`id_purchase_expense`, `expense`, `amount`, `id_purchase_voucher`) VALUES
(78, 'LABOUR', 1200, 1),
(79, 'CLEAR RECEIPT', 120, 1),
(80, 'AC', 20, 1),
(81, 'ACC', 10, 1),
(82, 'MIN', 60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `z_purchase_expense_master`
--

CREATE TABLE `z_purchase_expense_master` (
  `id_purchase_expense_master` int(11) NOT NULL,
  `expense` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_purchase_expense_master`
--

INSERT INTO `z_purchase_expense_master` (`id_purchase_expense_master`, `expense`) VALUES
(1, 'EXP1'),
(2, 'EXP2'),
(3, 'EXP3');

-- --------------------------------------------------------

--
-- Table structure for table `z_purchase_voucher`
--

CREATE TABLE `z_purchase_voucher` (
  `id_purchase_voucher` int(11) NOT NULL,
  `voucher_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `payable` double NOT NULL DEFAULT 0,
  `gross` double NOT NULL DEFAULT 0,
  `narration` varchar(250) NOT NULL DEFAULT '0',
  `_old_balance` double NOT NULL,
  `ref_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_purchase_voucher`
--

INSERT INTO `z_purchase_voucher` (`id_purchase_voucher`, `voucher_no`, `date`, `id_supplier`, `payable`, `gross`, `narration`, `_old_balance`, `ref_no`) VALUES
(1, 1, '2020-03-12', 15, 2000, 10910, 'PAID\r\n', 5000, 'ref001');

-- --------------------------------------------------------

--
-- Table structure for table `z_purchase_voucher_item`
--

CREATE TABLE `z_purchase_voucher_item` (
  `id_purchase_voucher_item` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `kg` double NOT NULL,
  `unit_price` double NOT NULL,
  `total` double NOT NULL DEFAULT 0,
  `id_purchase_voucher` int(11) NOT NULL,
  `remarks` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_purchase_voucher_item`
--

INSERT INTO `z_purchase_voucher_item` (`id_purchase_voucher_item`, `id_product`, `quantity`, `kg`, `unit_price`, `total`, `id_purchase_voucher`, `remarks`) VALUES
(19, 3, 70, 0, 100, 7000, 1, NULL),
(20, 1, 25, 0, 100, 2500, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `z_sales_expenses`
--

CREATE TABLE `z_sales_expenses` (
  `id_sales_expense` int(11) NOT NULL,
  `expense` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `id_sales_voucher` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `z_sales_expenses`
--

INSERT INTO `z_sales_expenses` (`id_sales_expense`, `expense`, `amount`, `id_sales_voucher`) VALUES
(41, 'LABOUR', 0, 1),
(42, 'CLEAR RECEIPT', 0, 1),
(43, 'AC', 0, 1),
(44, 'ACC', 0, 1),
(45, 'MIN', 0, 1),
(46, 'LABOUR', 1400, 2),
(47, 'CLEAR RECEIPT', 500, 2),
(48, 'AC', 0, 2),
(49, 'ACC', 0, 2),
(50, 'MIN', 0, 2),
(111, 'LABOUR', 10, 5),
(112, 'CLEAR RECEIPT', 20, 5),
(113, 'AC', 30, 5),
(114, 'ACC', 40, 5),
(115, 'MIN', 50, 5),
(131, 'LABOUR', 120, 4),
(132, 'CLEAR RECEIPT', 0, 4),
(133, 'AC', 0, 4),
(134, 'ACC', 0, 4),
(135, 'MIN', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `z_sales_voucher`
--

CREATE TABLE `z_sales_voucher` (
  `id_sales_voucher` int(11) NOT NULL,
  `voucher_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `received` double NOT NULL DEFAULT 0,
  `gross` double NOT NULL DEFAULT 0,
  `narration` varchar(250) NOT NULL DEFAULT '0',
  `_old_balance` double NOT NULL,
  `ref_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_sales_voucher`
--

INSERT INTO `z_sales_voucher` (`id_sales_voucher`, `voucher_no`, `date`, `id_supplier`, `received`, `gross`, `narration`, `_old_balance`, `ref_no`) VALUES
(4, 4, '2020-03-12', 15, 1000, 9120, '', 9200, ''),
(5, 5, '2020-03-19', 7, 50, 9650, 'TYU\r\n', 0, 'ref001');

-- --------------------------------------------------------

--
-- Table structure for table `z_sales_voucher_item`
--

CREATE TABLE `z_sales_voucher_item` (
  `id_sales_voucher_item` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `kg` double NOT NULL,
  `unit_price` double NOT NULL,
  `total` double NOT NULL DEFAULT 0,
  `id_sales_voucher` int(11) NOT NULL,
  `remarks` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_sales_voucher_item`
--

INSERT INTO `z_sales_voucher_item` (`id_sales_voucher_item`, `id_product`, `quantity`, `kg`, `unit_price`, `total`, `id_sales_voucher`, `remarks`) VALUES
(28, 3, 90, 0, 100, 9000, 5, NULL),
(29, 1, 50, 0, 10, 500, 5, NULL),
(35, 5, 200, 0, 45, 9000, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `z_staff`
--

CREATE TABLE `z_staff` (
  `id_staff` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `opening_balance` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_staff`
--

INSERT INTO `z_staff` (`id_staff`, `name`, `category`, `address`, `phone`, `opening_balance`) VALUES
(101, 'SGTF', 'CATEGORY1', 'GVHBN\n', '4567890', 0),
(102, 'SNEHA', '-Select-', 'AJAK\n', '79928768723', 0),
(103, 'RAEES', 'CATEGORY1', 'VK\n', '7890456372', 0),
(104, 'STAFF', 'CATEGORY2', 'PPH HOUSE\n', '9878984451', 0),
(105, 'ANJU', 'CATEGORY1', 'AJAK\n', '79928768723', 0),
(106, 'SGTF', 'CATEGORY2', 'GVHBN\n', '4567890', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z_supplier`
--

CREATE TABLE `z_supplier` (
  `id_supplier` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `opening_balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_supplier`
--

INSERT INTO `z_supplier` (`id_supplier`, `name`, `address`, `phone`, `opening_balance`) VALUES
(1, 'BAITHOOL GOA', '', '', 3027590),
(7, 'KNH', '', '', 0),
(15, 'SUPPLIER', 'SDFSF\n', '87654132', 5000),
(16, 'SUP 3', 'S3', '91945136532', 500),
(17, 'BAU', 'GHJ\n', '95765875999', 0),
(18, 'SUP 2', 'SP2\n', '7995010244', 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id_company`);

--
-- Indexes for table `z_account_head`
--
ALTER TABLE `z_account_head`
  ADD PRIMARY KEY (`id_account_head`);

--
-- Indexes for table `z_account_voucher`
--
ALTER TABLE `z_account_voucher`
  ADD PRIMARY KEY (`id_account_voucher`);

--
-- Indexes for table `z_company`
--
ALTER TABLE `z_company`
  ADD PRIMARY KEY (`id_company`);

--
-- Indexes for table `z_invoice`
--
ALTER TABLE `z_invoice`
  ADD PRIMARY KEY (`id_invoice`);

--
-- Indexes for table `z_ledger_group`
--
ALTER TABLE `z_ledger_group`
  ADD PRIMARY KEY (`id_ledger_group`);

--
-- Indexes for table `z_packing_expense`
--
ALTER TABLE `z_packing_expense`
  ADD PRIMARY KEY (`id_packing_expense`);

--
-- Indexes for table `z_payroll`
--
ALTER TABLE `z_payroll`
  ADD PRIMARY KEY (`id_payroll`);

--
-- Indexes for table `z_product`
--
ALTER TABLE `z_product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `z_purchase_expenses`
--
ALTER TABLE `z_purchase_expenses`
  ADD PRIMARY KEY (`id_purchase_expense`);

--
-- Indexes for table `z_purchase_expense_master`
--
ALTER TABLE `z_purchase_expense_master`
  ADD PRIMARY KEY (`id_purchase_expense_master`);

--
-- Indexes for table `z_purchase_voucher`
--
ALTER TABLE `z_purchase_voucher`
  ADD PRIMARY KEY (`id_purchase_voucher`);

--
-- Indexes for table `z_purchase_voucher_item`
--
ALTER TABLE `z_purchase_voucher_item`
  ADD PRIMARY KEY (`id_purchase_voucher_item`);

--
-- Indexes for table `z_sales_expenses`
--
ALTER TABLE `z_sales_expenses`
  ADD PRIMARY KEY (`id_sales_expense`);

--
-- Indexes for table `z_sales_voucher`
--
ALTER TABLE `z_sales_voucher`
  ADD PRIMARY KEY (`id_sales_voucher`);

--
-- Indexes for table `z_sales_voucher_item`
--
ALTER TABLE `z_sales_voucher_item`
  ADD PRIMARY KEY (`id_sales_voucher_item`);

--
-- Indexes for table `z_staff`
--
ALTER TABLE `z_staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `z_supplier`
--
ALTER TABLE `z_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `z_account_head`
--
ALTER TABLE `z_account_head`
  MODIFY `id_account_head` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `z_account_voucher`
--
ALTER TABLE `z_account_voucher`
  MODIFY `id_account_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `z_company`
--
ALTER TABLE `z_company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `z_invoice`
--
ALTER TABLE `z_invoice`
  MODIFY `id_invoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `z_ledger_group`
--
ALTER TABLE `z_ledger_group`
  MODIFY `id_ledger_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `z_packing_expense`
--
ALTER TABLE `z_packing_expense`
  MODIFY `id_packing_expense` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `z_payroll`
--
ALTER TABLE `z_payroll`
  MODIFY `id_payroll` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `z_product`
--
ALTER TABLE `z_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `z_purchase_expenses`
--
ALTER TABLE `z_purchase_expenses`
  MODIFY `id_purchase_expense` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `z_purchase_expense_master`
--
ALTER TABLE `z_purchase_expense_master`
  MODIFY `id_purchase_expense_master` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `z_purchase_voucher`
--
ALTER TABLE `z_purchase_voucher`
  MODIFY `id_purchase_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z_purchase_voucher_item`
--
ALTER TABLE `z_purchase_voucher_item`
  MODIFY `id_purchase_voucher_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `z_sales_expenses`
--
ALTER TABLE `z_sales_expenses`
  MODIFY `id_sales_expense` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `z_sales_voucher`
--
ALTER TABLE `z_sales_voucher`
  MODIFY `id_sales_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `z_sales_voucher_item`
--
ALTER TABLE `z_sales_voucher_item`
  MODIFY `id_sales_voucher_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `z_staff`
--
ALTER TABLE `z_staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `z_supplier`
--
ALTER TABLE `z_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
