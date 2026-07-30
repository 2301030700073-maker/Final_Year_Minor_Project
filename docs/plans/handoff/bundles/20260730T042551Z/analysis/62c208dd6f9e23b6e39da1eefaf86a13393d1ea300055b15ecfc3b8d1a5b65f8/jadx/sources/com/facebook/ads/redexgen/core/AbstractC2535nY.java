package com.facebook.ads.redexgen.core;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.util.Comparator;

@ElementTypesAreNonnullByDefault
/* renamed from: com.facebook.ads.redexgen.X.nY, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2535nY<T> implements Comparator<T> {
    @Override // java.util.Comparator
    public abstract int compare(@ParametricNullness T left, @ParametricNullness T right);

    public static <C extends Comparable> AbstractC2535nY<C> A03() {
        return C1417Nw.A02;
    }

    public static <T> AbstractC2535nY<T> A04(Comparator<T> comparator) {
        if (comparator instanceof AbstractC2535nY) {
            return (AbstractC2535nY) comparator;
        }
        return new OS(comparator);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.hs != com.google.common.base.Function<F, ? extends T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nY != com.google.common.collect.Ordering<T> */
    public final <F> AbstractC2535nY<F> A05(InterfaceC2193hs<F, ? extends T> function) {
        return new OY(function, this);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nY != com.google.common.collect.Ordering<T> */
    public <S extends T> AbstractC2535nY<S> A06() {
        return new C1414Nt(this);
    }
}
