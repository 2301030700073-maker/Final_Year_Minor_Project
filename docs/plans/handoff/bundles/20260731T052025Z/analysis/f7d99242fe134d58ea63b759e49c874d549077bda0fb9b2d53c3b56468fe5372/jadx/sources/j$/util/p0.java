package j$.util;

import java.util.SortedSet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class p0 extends o1 {
    public final /* synthetic */ SortedSet f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p0(SortedSet sortedSet, java.util.Collection collection) {
        super(21, collection);
        this.f = sortedSet;
    }

    @Override // j$.util.o1, j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        return this.f.comparator();
    }
}
