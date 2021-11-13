package class1111.package01.package001;

public class Board {
    int num;
    String subject;
    String content;
    String writer;

    public Board() {
    }

    public Board(int num, String subject, String content, String writer) {
        this.num = num;
        this.subject = subject;
        this.content = content;
        this.writer = writer;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }
}
