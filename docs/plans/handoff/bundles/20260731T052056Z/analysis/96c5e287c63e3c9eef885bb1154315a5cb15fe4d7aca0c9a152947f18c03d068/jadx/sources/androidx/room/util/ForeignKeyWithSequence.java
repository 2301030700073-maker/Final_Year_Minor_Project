package androidx.room.util;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
