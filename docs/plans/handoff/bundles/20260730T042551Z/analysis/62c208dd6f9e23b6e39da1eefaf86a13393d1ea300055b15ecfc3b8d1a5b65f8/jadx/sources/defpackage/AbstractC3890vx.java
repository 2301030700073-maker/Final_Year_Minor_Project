package defpackage;

import java.util.Map;

/* renamed from: vx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3890vx {

    /* renamed from: vx$do, reason: invalid class name */
    public static final class Cdo<T> {

        /* renamed from: do, reason: not valid java name */
        public final String f16155do;

        public Cdo(String str) {
            this.f16155do = str;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Cdo)) {
                return false;
            }
            return C0173Do.m394do(this.f16155do, ((Cdo) obj).f16155do);
        }

        public final int hashCode() {
            return this.f16155do.hashCode();
        }

        public final String toString() {
            return this.f16155do;
        }
    }

    /* renamed from: vx$if, reason: invalid class name */
    public static final class Cif<T> {
    }

    /* renamed from: do */
    public abstract Map<Cdo<?>, Object> mo1811do();

    /* renamed from: if */
    public abstract <T> T mo1813if(Cdo<T> cdo);
}
