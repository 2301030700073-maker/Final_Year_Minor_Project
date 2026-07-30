package defpackage;

import java.util.Collection;

/* loaded from: classes3.dex */
public class B8 extends O4 {
    public static final int c(Iterable iterable) {
        C0173Do.m401try(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return 10;
    }
}
