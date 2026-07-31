package coil3.decode;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ExifData {
    public static final ExifData NONE = new ExifData(0, false);
    public final boolean isFlipped;
    public final int rotationDegrees;

    public ExifData(int i, boolean z) {
        this.isFlipped = z;
        this.rotationDegrees = i;
    }
}
