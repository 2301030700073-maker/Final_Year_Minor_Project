package androidx.datastore.preferences.protobuf;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AbstractMessageLite {
    protected int memoizedHashCode;

    public abstract int getSerializedSize();

    public final int getSerializedSize(Schema schema) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) this;
        int i = generatedMessageLite.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int serializedSize = schema.getSerializedSize(this);
        generatedMessageLite.memoizedSerializedSize = serializedSize;
        return serializedSize;
    }

    public abstract void writeTo(CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder);
}
