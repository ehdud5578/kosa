package class1116.collectionFramework;

public class Board {
    String subject;
    String content;
    String writer;

    public Board() {
    }

    public Board(String subject, String content, String writer) {
        this.subject = subject;
        this.content = content;
        this.writer = writer;
    }

    @Override
    public String toString() {
        return "Board{" +
                "subject='" + subject + '\'' +
                ", content='" + content + '\'' +
                ", writer='" + writer + '\'' +
                '}';
    }

}
