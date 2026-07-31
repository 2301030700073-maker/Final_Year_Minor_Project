package androidx.profileinstaller;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WritableFileSection {
    public final byte[] mContents;
    public final boolean mNeedsCompression;
    public final FileSectionType mType;

    public WritableFileSection(FileSectionType fileSectionType, byte[] bArr, boolean z) {
        this.mType = fileSectionType;
        this.mContents = bArr;
        this.mNeedsCompression = z;
    }
}
