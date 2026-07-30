package defpackage;

import android.annotation.SuppressLint;

/* renamed from: cw, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC2603cw {

    /* renamed from: do, reason: not valid java name */
    @SuppressLint({"SyntheticAccessor"})
    public static final Cdo.Cfor f12405do = new Cdo.Cfor();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SuppressLint({"SyntheticAccessor"})
    public static final Cdo.Cif f12406do = new Cdo.Cif();

    /* renamed from: cw$do, reason: invalid class name */
    public static abstract class Cdo {

        /* renamed from: cw$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0083do extends Cdo {

            /* renamed from: do, reason: not valid java name */
            public final Throwable f12407do;

            public C0083do(Throwable th) {
                this.f12407do = th;
            }

            public final String toString() {
                return String.format("FAILURE (%s)", this.f12407do.getMessage());
            }
        }

        /* renamed from: cw$do$for, reason: invalid class name */
        public static final class Cfor extends Cdo {
            public final String toString() {
                return "SUCCESS";
            }
        }

        /* renamed from: cw$do$if, reason: invalid class name */
        public static final class Cif extends Cdo {
            public final String toString() {
                return "IN_PROGRESS";
            }
        }
    }
}
