package androidx.profileinstaller;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WritableFileSection {
    public final byte[] mContents;
    public final boolean mNeedsCompression;
    public final int mType;

    public WritableFileSection(int i, byte[] bArr, boolean z) {
        this.mType = i;
        this.mContents = bArr;
        this.mNeedsCompression = z;
    }
}
