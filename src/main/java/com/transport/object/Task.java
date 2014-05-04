package com.transport.object;

import java.util.Date;

public class Task {
	private Long id;
	private String workingNumber;
	private String missionNumber;
	private Date lastOperationTime;
	private String missionOrganisation;
	private Date createTime;
    private String contact;
	private String phone;
    private String contractNumber;
    private String bookingNumber;
    private String HBL_NO;
    private Long salesID;
    private Long operatorID;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getWorkingNumber() {
        return workingNumber;
    }

    public void setWorkingNumber(String workingNumber) {
        this.workingNumber = workingNumber;
    }

    public String getMissionNumber() {
        return missionNumber;
    }

    public void setMissionNumber(String missionNumber) {
        this.missionNumber = missionNumber;
    }

    public Date getLastOperationTime() {
        return lastOperationTime;
    }

    public void setLastOperationTime(Date lastOperationTime) {
        this.lastOperationTime = lastOperationTime;
    }

    public String getMissionOrganisation() {
        return missionOrganisation;
    }

    public void setMissionOrganisation(String missionOrganisation) {
        this.missionOrganisation = missionOrganisation;
    }

    public Date getCreateTiem() {
        return createTime;
    }

    public void setCreateTiem(Date createTime) {
        this.createTime = createTime;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getContractNumber() {
        return contractNumber;
    }

    public void setContractNumber(String contractNumber) {
        this.contractNumber = contractNumber;
    }

    public String getBookingNumber() {
        return bookingNumber;
    }

    public void setBookingNumber(String bookingNumber) {
        this.bookingNumber = bookingNumber;
    }

    public String getHBL_NO() {
        return HBL_NO;
    }

    public void setHBL_NO(String HBL_NO) {
        this.HBL_NO = HBL_NO;
    }

    public Long getSalesID() {
        return salesID;
    }

    public void setSalesID(Long salesID) {
        this.salesID = salesID;
    }

    public Long getOperatorID() {
        return operatorID;
    }

    public void setOperatorID(Long operatorID) {
        this.operatorID = operatorID;
    }
}
