package ua.kiev.prog.model;

import javax.persistence.*;

@Entity
@Table(name="Photos")
public class Photo {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String name;
    private byte[] body;

    // ksm +
    // add
//    @OneToOne(fetch = FetchType.LAZY, mappedBy = "photo")
//    private Advertisement advertisement;
    // ksm -

    public Photo() {}

    public Photo(String name, byte[] body) {
        this.name = name;
        this.body = body;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public byte[] getBody() {
        return body;
    }

    public void setBody(byte[] body) {
        this.body = body;
    }
}
