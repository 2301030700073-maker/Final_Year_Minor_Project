package j$.util;

import java.util.SortedSet;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class o0 extends n1 {
    public final /* synthetic */ SortedSet f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(SortedSet sortedSet, java.util.Collection collection) {
        super(21, collection);
        this.f = sortedSet;
    }

    @Override // j$.util.n1, j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        return this.f.comparator();
    }
}
