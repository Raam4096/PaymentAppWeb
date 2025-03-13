<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payments App - Profile</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #1e3c72, #2a5298);
            padding: 10px;
            color: #fff;
        }

        h2 {
            text-align: center;
            margin-bottom: 12px;
        }

        .container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(270px, 1fr));
            gap: 10px;
        }

        .box {
            background: #ffffff20;
            border-radius: 8px;
            padding: 12px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.3);
            backdrop-filter: blur(4px);
        }

        .box h3 {
            font-size: 16px;
            margin-bottom: 8px;
            border-bottom: 1px solid #ffffff30;
            padding-bottom: 4px;
        }

        .box p, .box label, .box input {
            font-size: 13px;
            margin-bottom: 6px;
            width: 100%;
        }

        .box input {
            padding: 5px;
            border: none;
            border-radius: 4px;
            background: #ffffff30;
            color: #fff;
        }

        .box input::placeholder {
            color: #eee;
        }

        .box input[type="submit"], .box button {
            background-color: #00e6ac;
            color: #000;
            padding: 6px;
            margin-top: 6px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        .box input[type="submit"]:hover {
            background-color: #00cfa0;
        }
    </style>
</head>
<body>

    <h2> Payments App - Profile Page</h2>

    <div class="container">

        <!-- Profile Details -->
        <div class="box">
            <h3> Profile Details</h3>
            <p>Name: Ram Kumar</p>
            <p>Email: ram@payapp.com</p>
            <p>Phone: +91 9876543210</p>
            <p>Address: Vizag, India</p>
        </div>

        <!-- Bank Details -->
        <div class="box">
            <h3> Bank Details</h3>
            <p>Bank: HDFC Bank</p>
            <p>Account No: 1234567890</p>
            <p>IFSC Code: HDFC0001234</p>
        </div>

        <!-- Transaction Details -->
        <div class="box">
            <h3>Transaction Details</h3>
            <p>#TXN001 | $1200 | Received | Lokesh</p>
            <p>#TXN002 | $350 | Paid | Electricity Bill</p>
            <p>#TXN003 | $500 | Sent | Anusha</p>
        </div>

        <!-- Add Bank Account -->
        <div class="box">
            <h3> Add Bank Account</h3>
            <label>Bank Name</label>
            <input type="text" placeholder="Enter bank name">
            <label>Account Number</label>
            <input type="text" placeholder="Enter account number">
            <label>IFSC Code</label>
            <input type="text" placeholder="Enter IFSC code">
            <input type="submit" value="Add Bank">
        </div>

        <!-- Advanced Search -->
        <div class="box">
            <h3>Advanced Search</h3>
            <input type="text" placeholder="Search transaction, user...">
            <button>Search</button>
        </div>

    </div>

</body>
</html>
