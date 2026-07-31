package okio.internal;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EocdRecord {
    public final long centralDirectoryOffset;
    public final long entryCount;

    public EocdRecord(int i, long j, long j2) {
        this.entryCount = j;
        this.centralDirectoryOffset = j2;
    }
}
