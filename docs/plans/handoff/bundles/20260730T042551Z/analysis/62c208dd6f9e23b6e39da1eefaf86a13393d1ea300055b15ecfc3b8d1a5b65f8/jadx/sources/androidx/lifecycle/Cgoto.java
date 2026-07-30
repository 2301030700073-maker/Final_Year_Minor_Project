package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.os.Looper;
import androidx.lifecycle.Ctry;
import defpackage.C0173Do;
import defpackage.C0188Eh;
import defpackage.C2832gq;
import defpackage.C3139jB;
import defpackage.C3837v2;
import defpackage.Cif;
import defpackage.InterfaceC2655dq;
import defpackage.InterfaceC2714eq;
import defpackage.InterfaceC3458od;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* renamed from: androidx.lifecycle.goto, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cgoto extends Ctry {

    /* renamed from: do, reason: not valid java name */
    public int f7119do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0188Eh<InterfaceC2655dq, Cdo> f7120do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ctry.Cif f7121do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WeakReference<InterfaceC2714eq> f7122do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Ctry.Cif> f7123do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f7124do;

    /* renamed from: for, reason: not valid java name */
    public boolean f7125for;

    /* renamed from: if, reason: not valid java name */
    public boolean f7126if;

    /* renamed from: androidx.lifecycle.goto$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final Celse f7127do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Ctry.Cif f7128do;

        public Cdo(InterfaceC2655dq interfaceC2655dq, Ctry.Cif cif) {
            Celse reflectiveGenericLifecycleObserver;
            C0173Do.m398if(interfaceC2655dq);
            HashMap hashMap = C2832gq.f13218do;
            boolean z = interfaceC2655dq instanceof Celse;
            boolean z2 = interfaceC2655dq instanceof InterfaceC3458od;
            if (z && z2) {
                reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((InterfaceC3458od) interfaceC2655dq, (Celse) interfaceC2655dq);
            } else if (z2) {
                reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((InterfaceC3458od) interfaceC2655dq, null);
            } else if (z) {
                reflectiveGenericLifecycleObserver = (Celse) interfaceC2655dq;
            } else {
                Class<?> cls = interfaceC2655dq.getClass();
                if (C2832gq.m6750if(cls) == 2) {
                    Object obj = C2832gq.f13219if.get(cls);
                    C0173Do.m398if(obj);
                    List list = (List) obj;
                    if (list.size() == 1) {
                        reflectiveGenericLifecycleObserver = new SingleGeneratedAdapterObserver(C2832gq.m6749do((Constructor) list.get(0), interfaceC2655dq));
                    } else {
                        int size = list.size();
                        Cif[] cifArr = new Cif[size];
                        for (int i = 0; i < size; i++) {
                            cifArr[i] = C2832gq.m6749do((Constructor) list.get(i), interfaceC2655dq);
                        }
                        reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(cifArr);
                    }
                } else {
                    reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(interfaceC2655dq);
                }
            }
            this.f7127do = reflectiveGenericLifecycleObserver;
            this.f7128do = cif;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4267do(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
            Ctry.Cif m4277do = cdo.m4277do();
            Ctry.Cif cif = this.f7128do;
            C0173Do.m401try(cif, "state1");
            if (m4277do.compareTo(cif) < 0) {
                cif = m4277do;
            }
            this.f7128do = cif;
            this.f7127do.mo3192case(interfaceC2714eq, cdo);
            this.f7128do = m4277do;
        }
    }

    public Cgoto(InterfaceC2714eq interfaceC2714eq) {
        C0173Do.m401try(interfaceC2714eq, "provider");
        this.f7124do = true;
        this.f7120do = new C0188Eh<>();
        this.f7121do = Ctry.Cif.INITIALIZED;
        this.f7123do = new ArrayList<>();
        this.f7122do = new WeakReference<>(interfaceC2714eq);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m4258case(Ctry.Cdo cdo) {
        C0173Do.m401try(cdo, "event");
        m4266try("handleLifecycleEvent");
        m4260else(cdo.m4277do());
    }

    @Override // androidx.lifecycle.Ctry
    /* renamed from: do, reason: not valid java name */
    public final void mo4259do(InterfaceC2655dq interfaceC2655dq) {
        InterfaceC2714eq interfaceC2714eq;
        C0173Do.m401try(interfaceC2655dq, "observer");
        m4266try("addObserver");
        Ctry.Cif cif = this.f7121do;
        Ctry.Cif cif2 = Ctry.Cif.DESTROYED;
        if (cif != cif2) {
            cif2 = Ctry.Cif.INITIALIZED;
        }
        Cdo cdo = new Cdo(interfaceC2655dq, cif2);
        if (this.f7120do.mo492case(interfaceC2655dq, cdo) == null && (interfaceC2714eq = this.f7122do.get()) != null) {
            boolean z = this.f7119do != 0 || this.f7126if;
            Ctry.Cif m4264new = m4264new(interfaceC2655dq);
            this.f7119do++;
            while (cdo.f7128do.compareTo(m4264new) < 0 && this.f7120do.f877do.containsKey(interfaceC2655dq)) {
                Ctry.Cif cif3 = cdo.f7128do;
                ArrayList<Ctry.Cif> arrayList = this.f7123do;
                arrayList.add(cif3);
                Ctry.Cdo.C0039do c0039do = Ctry.Cdo.Companion;
                Ctry.Cif cif4 = cdo.f7128do;
                c0039do.getClass();
                Ctry.Cdo m4278do = Ctry.Cdo.C0039do.m4278do(cif4);
                if (m4278do == null) {
                    throw new IllegalStateException("no event up from " + cdo.f7128do);
                }
                cdo.m4267do(interfaceC2714eq, m4278do);
                arrayList.remove(arrayList.size() - 1);
                m4264new = m4264new(interfaceC2655dq);
            }
            if (!z) {
                m4265this();
            }
            this.f7119do--;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m4260else(Ctry.Cif cif) {
        Ctry.Cif cif2 = this.f7121do;
        if (cif2 == cif) {
            return;
        }
        Ctry.Cif cif3 = Ctry.Cif.INITIALIZED;
        Ctry.Cif cif4 = Ctry.Cif.DESTROYED;
        if (!((cif2 == cif3 && cif == cif4) ? false : true)) {
            throw new IllegalStateException(("no event down from " + this.f7121do + " in component " + this.f7122do.get()).toString());
        }
        this.f7121do = cif;
        if (this.f7126if || this.f7119do != 0) {
            this.f7125for = true;
            return;
        }
        this.f7126if = true;
        m4265this();
        this.f7126if = false;
        if (this.f7121do == cif4) {
            this.f7120do = new C0188Eh<>();
        }
    }

    @Override // androidx.lifecycle.Ctry
    /* renamed from: for, reason: not valid java name */
    public final void mo4261for(InterfaceC2655dq interfaceC2655dq) {
        C0173Do.m401try(interfaceC2655dq, "observer");
        m4266try("removeObserver");
        this.f7120do.mo493else(interfaceC2655dq);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m4262goto() {
        Ctry.Cif cif = Ctry.Cif.CREATED;
        m4266try("setCurrentState");
        m4260else(cif);
    }

    @Override // androidx.lifecycle.Ctry
    /* renamed from: if, reason: not valid java name */
    public final Ctry.Cif mo4263if() {
        return this.f7121do;
    }

    /* renamed from: new, reason: not valid java name */
    public final Ctry.Cif m4264new(InterfaceC2655dq interfaceC2655dq) {
        Cdo cdo;
        C0188Eh<InterfaceC2655dq, Cdo> c0188Eh = this.f7120do;
        C3139jB.Cfor<InterfaceC2655dq, Cdo> cfor = c0188Eh.f877do.containsKey(interfaceC2655dq) ? c0188Eh.f877do.get(interfaceC2655dq).f13651if : null;
        Ctry.Cif cif = (cfor == null || (cdo = cfor.f13652if) == null) ? null : cdo.f7128do;
        ArrayList<Ctry.Cif> arrayList = this.f7123do;
        Ctry.Cif cif2 = arrayList.isEmpty() ^ true ? arrayList.get(arrayList.size() - 1) : null;
        Ctry.Cif cif3 = this.f7121do;
        C0173Do.m401try(cif3, "state1");
        if (cif == null || cif.compareTo(cif3) >= 0) {
            cif = cif3;
        }
        return (cif2 == null || cif2.compareTo(cif) >= 0) ? cif : cif2;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x017a A[SYNTHETIC] */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4265this() {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.Cgoto.m4265this():void");
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: try, reason: not valid java name */
    public final void m4266try(String str) {
        if (this.f7124do) {
            C3837v2.m8422throw().f15984do.getClass();
            if (!(Looper.getMainLooper().getThread() == Thread.currentThread())) {
                throw new IllegalStateException(Cif.m6908case("Method ", str, " must be called on the main thread").toString());
            }
        }
    }
}
