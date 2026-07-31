package androidx.room.util;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ForeignKeyWithSequence implements Comparable {
    public final String from;
    public final int id;
    public final int sequence;
    public final String to;

    public ForeignKeyWithSequence(int i, int i2, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.id = i;
        this.sequence = i2;
        this.from = str;
        this.to = str2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        ForeignKeyWithSequence foreignKeyWithSequence = (ForeignKeyWithSequence) obj;
        foreignKeyWithSequence.getClass();
        int i = this.id - foreignKeyWithSequence.id;
        return i == 0 ? this.sequence - foreignKeyWithSequence.sequence : i;
    }
}
