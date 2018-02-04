package model;

public class UserBean {

    private int id;
    private String fName;
    private String lName;
    private String telephone;
    private String birthDate;
    private String city;
    private String state;
    private String dateRecord;
    private String dateReservation;
    private String dailyQuantity;
    private String peapleQuantity;

    
    public String getDateRecord() {
        return dateRecord;
    }

    public void setDateRecord(String dateRecord) {
        this.dateRecord = dateRecord;
    }

    public String getDateReservation() {
        return dateReservation;
    }

    public void setDateReservation(String dateReservation) {
        this.dateReservation = dateReservation;
    }

    public String getDailyQuantity() {
        return dailyQuantity;
    }

    public void setDailyQuantity(String dailyQuantity) {
        this.dailyQuantity = dailyQuantity;
    }

    public String getPeapleQuantity() {
        return peapleQuantity;
    }

    public void setPeapleQuantity(String peapleQuantity) {
        this.peapleQuantity = peapleQuantity;
    }
    
    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
    
    public int getId() {
            return id;
    }
    public void setId(int id) {
            this.id = id;
    }
    public String getfName() {
            return fName;
    }
    public void setfName(String fName) {
            this.fName = fName;
    }
    public String getlName() {
            return lName;
    }
    public void setlName(String lName) {
            this.lName = lName;
    }	
}