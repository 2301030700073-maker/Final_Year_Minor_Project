package j$.util;

import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;

/* loaded from: classes2.dex */
public final /* synthetic */ class DesugarArrays {
    public static h1 a(Object[] objArr, int i, int i2) {
        Spliterators.a(((Object[]) Objects.requireNonNull(objArr)).length, i, i2);
        return new h1(objArr, i, i2, 1040);
    }

    public static IntStream stream(int[] iArr) {
        return StreamSupport.a(Spliterators.spliterator(iArr, 0, iArr.length, 1040));
    }

    public static <T> Stream<T> stream(T[] tArr) {
        return StreamSupport.stream(a(tArr, 0, tArr.length), false);
    }
}
