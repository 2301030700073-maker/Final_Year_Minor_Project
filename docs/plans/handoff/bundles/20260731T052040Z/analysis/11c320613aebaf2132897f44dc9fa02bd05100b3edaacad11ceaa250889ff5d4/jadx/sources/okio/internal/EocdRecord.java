package okio.internal;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class EocdRecord {
    public final long centralDirectoryOffset;
    public final long entryCount;

    public EocdRecord(long j, long j2, int i) {
        this.entryCount = j;
        this.centralDirectoryOffset = j2;
    }
}
