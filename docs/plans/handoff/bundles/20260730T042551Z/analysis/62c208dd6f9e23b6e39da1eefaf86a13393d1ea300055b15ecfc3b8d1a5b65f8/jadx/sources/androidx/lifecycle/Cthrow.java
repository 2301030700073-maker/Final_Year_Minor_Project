package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.Ctry;
import defpackage.C0173Do;
import defpackage.InterfaceC2714eq;

/* renamed from: androidx.lifecycle.throw, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cthrow {

    /* renamed from: do, reason: not valid java name */
    public final Handler f7141do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cgoto f7142do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f7143do;

    /* renamed from: androidx.lifecycle.throw$do, reason: invalid class name */
    public static final class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final Cgoto f7144do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Ctry.Cdo f7145do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7146do;

        public Cdo(Cgoto cgoto, Ctry.Cdo cdo) {
            C0173Do.m401try(cgoto, "registry");
            C0173Do.m401try(cdo, "event");
            this.f7144do = cgoto;
            this.f7145do = cdo;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f7146do) {
                return;
            }
            this.f7144do.m4258case(this.f7145do);
            this.f7146do = true;
        }
    }

    public Cthrow(InterfaceC2714eq interfaceC2714eq) {
        C0173Do.m401try(interfaceC2714eq, "provider");
        this.f7142do = new Cgoto(interfaceC2714eq);
        this.f7141do = new Handler();
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4276do(Ctry.Cdo cdo) {
        Cdo cdo2 = this.f7143do;
        if (cdo2 != null) {
            cdo2.run();
        }
        Cdo cdo3 = new Cdo(this.f7142do, cdo);
        this.f7143do = cdo3;
        this.f7141do.postAtFrontOfQueue(cdo3);
    }
}
