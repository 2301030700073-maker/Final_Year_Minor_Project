package j$.util;

import java.util.Iterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    public static o1 b(int i, java.util.Collection collection) {
        return new o1(i, (java.util.Collection) Objects.requireNonNull(collection));
    }

    public static <T> Spliterator<T> spliteratorUnknownSize(Iterator<? extends T> it, int i) {
        return new o1((Iterator) Objects.requireNonNull(it), i);
    }
}
