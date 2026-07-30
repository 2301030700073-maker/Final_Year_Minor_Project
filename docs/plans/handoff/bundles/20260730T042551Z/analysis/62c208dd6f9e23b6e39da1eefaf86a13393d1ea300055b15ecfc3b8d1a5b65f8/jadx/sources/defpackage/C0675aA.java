package defpackage;

import java.io.Serializable;

/* renamed from: aA, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0675aA<T> implements Serializable {

    /* renamed from: aA$do, reason: invalid class name */
    public static final class Cdo implements Serializable {

        /* renamed from: do, reason: not valid java name */
        public final Throwable f4933do;

        public Cdo(Throwable th) {
            C0173Do.m401try(th, "exception");
            this.f4933do = th;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Cdo) {
                if (C0173Do.m394do(this.f4933do, ((Cdo) obj).f4933do)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.f4933do.hashCode();
        }

        public final String toString() {
            return "Failure(" + this.f4933do + ')';
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static final Throwable m3108do(Object obj) {
        if (obj instanceof Cdo) {
            return ((Cdo) obj).f4933do;
        }
        return null;
    }
}
