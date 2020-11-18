package fun.afterglow.oes.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class TestPaper {
    private Integer id;
    @DateTimeFormat(
            pattern = "yyyy-MM-dd hh:mm"
    )
    private Date createDate;
    private Integer createId;
    private Integer updateId;
    @DateTimeFormat(
            pattern = "yyyy-MM-dd hh:mm"
    )
    private Date updateDate;
    private Integer option1;
    private Integer option2;
    private Integer option3;
    private Integer option4;
    private Integer option5;
    private Integer option6;
    private Integer option7;
    private Integer option8;
    private Integer option9;
    private Integer option10;
    private Integer option11;
    private Integer option12;
    private Integer option13;
    private Integer option14;
    private Integer option15;
    private Integer options1;
    private Integer options2;
    private Integer options3;
    private Integer options4;
    private Integer options5;
    private Integer subjective1;
    private Integer subjective2;
    private Integer subjective3;
    private String status;
    private Integer totalScore;

    private Presonnel creater;
    private Presonnel dealer;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Integer getCreateId() {
        return createId;
    }

    public void setCreateId(Integer createId) {
        this.createId = createId;
    }

    public Integer getUpdateId() {
        return updateId;
    }

    public void setUpdateId(Integer updateId) {
        this.updateId = updateId;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Integer getOption1() {
        return option1;
    }

    public void setOption1(Integer option1) {
        this.option1 = option1;
    }

    public Integer getOption2() {
        return option2;
    }

    public void setOption2(Integer option2) {
        this.option2 = option2;
    }

    public Integer getOption3() {
        return option3;
    }

    public void setOption3(Integer option3) {
        this.option3 = option3;
    }

    public Integer getOption4() {
        return option4;
    }

    public void setOption4(Integer option4) {
        this.option4 = option4;
    }

    public Integer getOption5() {
        return option5;
    }

    public void setOption5(Integer option5) {
        this.option5 = option5;
    }

    public Integer getOption6() {
        return option6;
    }

    public void setOption6(Integer option6) {
        this.option6 = option6;
    }

    public Integer getOption7() {
        return option7;
    }

    public void setOption7(Integer option7) {
        this.option7 = option7;
    }

    public Integer getOption8() {
        return option8;
    }

    public void setOption8(Integer option8) {
        this.option8 = option8;
    }

    public Integer getOption9() {
        return option9;
    }

    public void setOption9(Integer option9) {
        this.option9 = option9;
    }

    public Integer getOption10() {
        return option10;
    }

    public void setOption10(Integer option10) {
        this.option10 = option10;
    }

    public Integer getOption11() {
        return option11;
    }

    public void setOption11(Integer option11) {
        this.option11 = option11;
    }

    public Integer getOption12() {
        return option12;
    }

    public void setOption12(Integer option12) {
        this.option12 = option12;
    }

    public Integer getOption13() {
        return option13;
    }

    public void setOption13(Integer option13) {
        this.option13 = option13;
    }

    public Integer getOption14() {
        return option14;
    }

    public void setOption14(Integer option14) {
        this.option14 = option14;
    }

    public Integer getOption15() {
        return option15;
    }

    public void setOption15(Integer option15) {
        this.option15 = option15;
    }

    public Integer getOptions1() {
        return options1;
    }

    public void setOptions1(Integer options1) {
        this.options1 = options1;
    }

    public Integer getOptions2() {
        return options2;
    }

    public void setOptions2(Integer options2) {
        this.options2 = options2;
    }

    public Integer getOptions3() {
        return options3;
    }

    public void setOptions3(Integer options3) {
        this.options3 = options3;
    }

    public Integer getOptions4() {
        return options4;
    }

    public void setOptions4(Integer options4) {
        this.options4 = options4;
    }

    public Integer getOptions5() {
        return options5;
    }

    public void setOptions5(Integer options5) {
        this.options5 = options5;
    }

    public Integer getSubjective1() {
        return subjective1;
    }

    public void setSubjective1(Integer subjective1) {
        this.subjective1 = subjective1;
    }

    public Integer getSubjective2() {
        return subjective2;
    }

    public void setSubjective2(Integer subjective2) {
        this.subjective2 = subjective2;
    }

    public Integer getSubjective3() {
        return subjective3;
    }

    public void setSubjective3(Integer subjective3) {
        this.subjective3 = subjective3;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(Integer totalScore) {
        this.totalScore = totalScore;
    }

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
