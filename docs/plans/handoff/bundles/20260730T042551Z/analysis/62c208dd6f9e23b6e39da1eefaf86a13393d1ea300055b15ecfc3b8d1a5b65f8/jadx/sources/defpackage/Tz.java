package defpackage;

import defpackage.C0587Wl;
import java.io.Closeable;

/* loaded from: classes3.dex */
public final class Tz implements Closeable {

    /* renamed from: break, reason: not valid java name */
    public final String f3769break;

    /* renamed from: do, reason: not valid java name */
    public final long f3770do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bz f3771do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Tz f3772do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0543Ul f3773do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Vz f3774do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0587Wl f3775do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EnumC3538py f3776do;

    /* renamed from: for, reason: not valid java name */
    public final int f3777for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Tz f3778for;

    /* renamed from: if, reason: not valid java name */
    public final long f3779if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Tz f3780if;

    public Tz(Cdo cdo) {
        this.f3771do = cdo.f3783do;
        this.f3776do = cdo.f3789do;
        this.f3777for = cdo.f3781do;
        this.f3769break = cdo.f3788do;
        this.f3773do = cdo.f3785do;
        C0587Wl.Cdo cdo2 = cdo.f3787do;
        cdo2.getClass();
        this.f3775do = new C0587Wl(cdo2);
        this.f3774do = cdo.f3786do;
        this.f3772do = cdo.f3784do;
        this.f3780if = cdo.f3792if;
        this.f3778for = cdo.f3790for;
        this.f3770do = cdo.f3782do;
        this.f3779if = cdo.f3791if;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Vz vz = this.f3774do;
        if (vz == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        vz.close();
    }

    /* renamed from: do, reason: not valid java name */
    public final String m2300do(String str) {
        String m2768for = this.f3775do.m2768for(str);
        if (m2768for != null) {
            return m2768for;
        }
        return null;
    }

    public final String toString() {
        return "Response{protocol=" + this.f3776do + ", code=" + this.f3777for + ", message=" + this.f3769break + ", url=" + this.f3771do.f296do + '}';
    }

    /* renamed from: Tz$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public int f3781do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public long f3782do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Bz f3783do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Tz f3784do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0543Ul f3785do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Vz f3786do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0587Wl.Cdo f3787do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f3788do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public EnumC3538py f3789do;

        /* renamed from: for, reason: not valid java name */
        public Tz f3790for;

        /* renamed from: if, reason: not valid java name */
        public long f3791if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public Tz f3792if;

        public Cdo() {
            this.f3781do = -1;
            this.f3787do = new C0587Wl.Cdo();
        }

        /* renamed from: if, reason: not valid java name */
        public static void m2301if(String str, Tz tz) {
            if (tz.f3774do != null) {
                throw new IllegalArgumentException(str.concat(".body != null"));
            }
            if (tz.f3772do != null) {
                throw new IllegalArgumentException(str.concat(".networkResponse != null"));
            }
            if (tz.f3780if != null) {
                throw new IllegalArgumentException(str.concat(".cacheResponse != null"));
            }
            if (tz.f3778for != null) {
                throw new IllegalArgumentException(str.concat(".priorResponse != null"));
            }
        }

        /* renamed from: do, reason: not valid java name */
        public final Tz m2302do() {
            if (this.f3783do == null) {
                throw new IllegalStateException("request == null");
            }
            if (this.f3789do == null) {
                throw new IllegalStateException("protocol == null");
            }
            if (this.f3781do >= 0) {
                if (this.f3788do != null) {
                    return new Tz(this);
                }
                throw new IllegalStateException("message == null");
            }
            throw new IllegalStateException("code < 0: " + this.f3781do);
        }

        public Cdo(Tz tz) {
            this.f3781do = -1;
            this.f3783do = tz.f3771do;
            this.f3789do = tz.f3776do;
            this.f3781do = tz.f3777for;
            this.f3788do = tz.f3769break;
            this.f3785do = tz.f3773do;
            this.f3787do = tz.f3775do.m2770try();
            this.f3786do = tz.f3774do;
            this.f3784do = tz.f3772do;
            this.f3792if = tz.f3780if;
            this.f3790for = tz.f3778for;
            this.f3782do = tz.f3770do;
            this.f3791if = tz.f3779if;
        }
    }
}
