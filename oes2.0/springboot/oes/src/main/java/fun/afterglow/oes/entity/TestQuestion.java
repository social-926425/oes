

package fun.afterglow.oes.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class TestQuestion {
    private Integer id;
    private Integer tpId;
    private Integer libId;
    private String libanwser;
    private String useranwser;
    private Integer createId;
    @DateTimeFormat(
            pattern = "yyyy-MM-dd hh:mm"
    )
    private Date createDate;
    private String updateId;
    @DateTimeFormat(
            pattern = "yyyy-MM-dd hh:mm"
    )
    private Date updateDate;
    private Integer grade;
    private Integer machineGrade;
    @DateTimeFormat(
            pattern = "yyyy-MM-dd hh:mm"
    )
    private Date machineDate;
    private Integer serial;
    private String status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTpId() {
        return tpId;
    }

    public void setTpId(Integer tpId) {
        this.tpId = tpId;
    }

    public Integer getLibId() {
        return libId;
    }

    public void setLibId(Integer libId) {
        this.libId = libId;
    }

    public String getLibanwser() {
        return libanwser;
    }

    public void setLibanwser(String libanwser) {
        this.libanwser = libanwser;
    }

    public String getUseranwser() {
        return useranwser;
    }

    public void setUseranwser(String useranwser) {
        this.useranwser = useranwser;
    }

    public Integer getCreateId() {
        return createId;
    }

    public void setCreateId(Integer createId) {
        this.createId = createId;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getUpdateId() {
        return updateId;
    }

    public void setUpdateId(String updateId) {
        this.updateId = updateId;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Integer getMachineGrade() {
        return machineGrade;
    }

    public void setMachineGrade(Integer machineGrade) {
        this.machineGrade = machineGrade;
    }

    public Date getMachineDate() {
        return machineDate;
    }

    public void setMachineDate(Date machineDate) {
        this.machineDate = machineDate;
    }

    public Integer getSerial() {
        return serial;
    }

    public void setSerial(Integer serial) {
        this.serial = serial;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    private QuestionBank questionBank;

    public QuestionBank getQuestionBank() {
        return questionBank;
    }

    public void setQuestionBank(QuestionBank questionBank) {
        this.questionBank = questionBank;
    }


    private Presonnel creater;
    private Presonnel dealer;

    public Presonnel getCreater() {
        return creater;
    }

    public void setCreater(Presonnel creater) {
        this.creater = creater;
    }

    public Presonnel getDealer() {
        return dealer;
    }

    public void setDealer(Presonnel dealer) {
        this.dealer = dealer;
    }
}
