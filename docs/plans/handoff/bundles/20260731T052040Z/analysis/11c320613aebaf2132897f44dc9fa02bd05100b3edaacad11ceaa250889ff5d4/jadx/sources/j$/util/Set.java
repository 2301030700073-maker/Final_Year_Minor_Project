package j$.util;

import java.util.LinkedHashSet;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public interface Set<E> extends Collection<E> {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: j$.util.Set$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static Spliterator $default$spliterator(java.util.Set set) {
            return Spliterators.spliterator(set, 1);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: j$.util.Set$-EL, reason: invalid class name */
    public final /* synthetic */ class EL {
        public static Spliterator spliterator(java.util.Set set) {
            if (set instanceof Set) {
                return ((Set) set).spliterator();
            }
            if (set instanceof LinkedHashSet) {
                return Spliterators.spliterator((LinkedHashSet) set, 17);
            }
            if (!(set instanceof java.util.SortedSet)) {
                return CC.$default$spliterator(set);
            }
            java.util.SortedSet sortedSet = (java.util.SortedSet) set;
            return new q0(sortedSet, sortedSet);
        }
    }

    @Override // java.lang.Iterable, java.util.Set, j$.util.Set, j$.util.Collection, j$.lang.Iterable
    Spliterator<E> spliterator();
}
