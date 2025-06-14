// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract FirstContract{
    string public textRaw; // membuat variabel tipe string
    address private owner; // variabel address adalah tipe data yang berfungsi untuk menyimpan alamat owner yang melakukan deploy smartcontract kita
    uint256 public angka; // variabel untuk angkat / int

    constructor(){ // sama seperti constructor pada umumnya di OOP, akan terpanggil ketika smart contract kita dijalankan
        owner = msg.sender; // msg.sender berisikan address dari orang yang melakukan transaction pada smartcontract 
    }

    function setText(string calldata _text) external{ // external :  merupakan salah satu tipe function di solidity yang dapat dipanggil dari luar smart contract kita, calldata : merupakan lokasi penyimpanan di solidity
        textRaw = _text; // bagian untuk mengubah nilai dari textRaw
    }

    function inc() external{
        require(msg.sender == owner, "NOT_OWNER"); // sebagai validasi untuk menjalankan inc
        angka++;

    }

    function getOwner() public view returns(address){
        return owner;
    }


    // perbedaan fungsi set dan get, jika fungsi kita hanya menampilkan data saja (GET), maka kita tidak perlu membayar GAS FEE, jika dia sifatnya merubah nilai (SET) maka kita harus membayar GAS FEE
    

}

