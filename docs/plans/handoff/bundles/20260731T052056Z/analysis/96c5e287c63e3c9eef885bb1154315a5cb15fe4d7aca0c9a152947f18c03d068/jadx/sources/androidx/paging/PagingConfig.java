package androidx.paging;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagingConfig {
    public final int initialLoadSize;
    public final int pageSize;
    public final int prefetchDistance;

    public PagingConfig(int i, int i2) {
        int i3 = (i2 & 2) != 0 ? i : 20;
        int i4 = (i2 & 8) != 0 ? i * 3 : 50;
        this.pageSize = i;
        this.prefetchDistance = i3;
        this.initialLoadSize = i4;
    }
}
