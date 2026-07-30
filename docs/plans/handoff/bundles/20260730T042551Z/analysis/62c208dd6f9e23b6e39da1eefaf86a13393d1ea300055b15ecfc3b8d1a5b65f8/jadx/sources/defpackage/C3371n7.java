package defpackage;

import com.facebook.internal.AnalyticsEvents;

/* renamed from: n7, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3371n7<T> {

    /* renamed from: do, reason: not valid java name */
    public static final Cif f14464do = new Cif();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f14465do;

    /* renamed from: n7$do, reason: invalid class name */
    public static final class Cdo extends Cif {

        /* renamed from: do, reason: not valid java name */
        public final Throwable f14466do;

        public Cdo(Throwable th) {
            this.f14466do = th;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Cdo) {
                if (C0173Do.m394do(this.f14466do, ((Cdo) obj).f14466do)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            Throwable th = this.f14466do;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // defpackage.C3371n7.Cif
        public final String toString() {
            return "Closed(" + this.f14466do + ')';
        }
    }

    /* renamed from: n7$if, reason: invalid class name */
    public static class Cif {
        public String toString() {
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_FAILED;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C3371n7) {
            return C0173Do.m394do(this.f14465do, ((C3371n7) obj).f14465do);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f14465do;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        Object obj = this.f14465do;
        if (obj instanceof Cdo) {
            return ((Cdo) obj).toString();
        }
        return "Value(" + obj + ')';
    }
}
