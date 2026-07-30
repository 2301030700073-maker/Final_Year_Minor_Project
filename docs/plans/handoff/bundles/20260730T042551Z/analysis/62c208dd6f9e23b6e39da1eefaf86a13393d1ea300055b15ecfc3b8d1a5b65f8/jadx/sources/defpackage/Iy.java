package defpackage;

import java.io.Serializable;

/* loaded from: classes3.dex */
public abstract class Iy {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f1574do = new Cdo(0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Iy f1575do = Qw.f3084do.mo1815if();

    /* renamed from: Iy$do, reason: invalid class name */
    public static final class Cdo extends Iy implements Serializable {

        /* renamed from: Iy$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0000do implements Serializable {

            /* renamed from: do, reason: not valid java name */
            public static final C0000do f1576do = new C0000do();

            private final Object readResolve() {
                return Iy.f1574do;
            }
        }

        public Cdo(int i) {
        }

        private final Object writeReplace() {
            return C0000do.f1576do;
        }

        @Override // defpackage.Iy
        /* renamed from: do */
        public final int mo994do() {
            return Iy.f1575do.mo994do();
        }

        @Override // defpackage.Iy
        /* renamed from: if */
        public final int mo995if() {
            return Iy.f1575do.mo995if();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public abstract int mo994do();

    /* renamed from: if, reason: not valid java name */
    public abstract int mo995if();
}
