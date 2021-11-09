package class1109;

public class board {
    int num;
    String subject;
    String writer;
    String content;
    String ip;
    int readCount;

    public board() {
    }

    public board(int num, String subject, String writer, String content, String ip, int readCount) {
        this.num = num;
        this.subject = subject;
        this.writer = writer;
        this.content = content;
        this.ip = ip;
        this.readCount = readCount;
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

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public int getReadCount() {
        return readCount;
    }

    public void setReadCount(int readCount) {
        this.readCount = readCount;
    }
}
