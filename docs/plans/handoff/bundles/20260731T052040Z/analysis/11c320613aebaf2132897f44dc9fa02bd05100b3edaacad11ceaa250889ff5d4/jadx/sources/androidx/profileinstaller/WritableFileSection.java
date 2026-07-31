package androidx.profileinstaller;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
