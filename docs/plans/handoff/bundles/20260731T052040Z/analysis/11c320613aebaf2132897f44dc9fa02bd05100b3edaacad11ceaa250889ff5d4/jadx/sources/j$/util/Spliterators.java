package j$.util;

import j$.util.Spliterator;
import java.util.Iterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class Spliterators {
    public static final m1 a = new m1();
    public static final k1 b = new k1();
    public static final l1 c = new l1();
    public static final j1 d = new j1();

    public static void a(int i, int i2, int i3) {
        if (i2 <= i3) {
            if (i2 < 0) {
                throw new ArrayIndexOutOfBoundsException(i2);
            }
            if (i3 > i) {
                throw new ArrayIndexOutOfBoundsException(i3);
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException("origin(" + i2 + ") > fence(" + i3 + ")");
    }

    public static Spliterator.OfInt spliterator(int[] iArr, int i, int i2, int i3) {
        a(((int[]) Objects.requireNonNull(iArr)).length, i, i2);
        return new n1(iArr, i, i2, i3);
    }

    public static <T> Spliterator<T> spliteratorUnknownSize(Iterator<? extends T> it, int i) {
        return new o1((Iterator) Objects.requireNonNull(it), i);
    }

    public static <T> Spliterator<T> spliterator(Object[] objArr, int i) {
        Object[] objArr2 = (Object[]) Objects.requireNonNull(objArr);
        return new h1(objArr2, 0, objArr2.length, i);
    }

    public static <T> Spliterator<T> spliterator(java.util.Collection<? extends T> collection, int i) {
        return new o1((java.util.Collection) Objects.requireNonNull(collection), i);
    }
}
