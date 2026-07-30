package androidx.lifecycle;

import android.os.Looper;
import android.view.View;
import androidx.fragment.app.Ccatch;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Ctry;
import defpackage.C3139jB;
import defpackage.C3837v2;
import defpackage.InterfaceC2714eq;
import defpackage.InterfaceC3711sv;
import j$.util.Objects;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class LiveData<T> {

    /* renamed from: new, reason: not valid java name */
    public static final Object f7066new = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f7068do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f7071do;

    /* renamed from: for, reason: not valid java name */
    public volatile Object f7072for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f7073for;

    /* renamed from: if, reason: not valid java name */
    public int f7074if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public volatile Object f7075if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f7076if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f7070do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3139jB<InterfaceC3711sv<? super T>, LiveData<T>.Cfor> f7069do = new C3139jB<>();

    /* renamed from: do, reason: not valid java name */
    public int f7067do = 0;

    public class LifecycleBoundObserver extends LiveData<T>.Cfor implements Celse {
        public LifecycleBoundObserver() {
            throw null;
        }

        @Override // androidx.lifecycle.Celse
        /* renamed from: case */
        public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
            throw null;
        }

        @Override // androidx.lifecycle.LiveData.Cfor
        /* renamed from: new, reason: not valid java name */
        public final void mo4241new() {
            throw null;
        }

        @Override // androidx.lifecycle.LiveData.Cfor
        /* renamed from: try, reason: not valid java name */
        public final boolean mo4242try() {
            throw null;
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            Object obj;
            synchronized (LiveData.this.f7070do) {
                obj = LiveData.this.f7072for;
                LiveData.this.f7072for = LiveData.f7066new;
            }
            LiveData.this.mo1685goto(obj);
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$for, reason: invalid class name */
    public abstract class Cfor {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final InterfaceC3711sv<? super T> f7079do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7080do;

        /* renamed from: for, reason: not valid java name */
        public int f7081for = -1;

        public Cfor(InterfaceC3711sv<? super T> interfaceC3711sv) {
            this.f7079do = interfaceC3711sv;
        }

        /* renamed from: for, reason: not valid java name */
        public final void m4243for(boolean z) {
            if (z == this.f7080do) {
                return;
            }
            this.f7080do = z;
            int i = z ? 1 : -1;
            LiveData liveData = LiveData.this;
            int i2 = liveData.f7067do;
            liveData.f7067do = i + i2;
            if (!liveData.f7071do) {
                liveData.f7071do = true;
                while (true) {
                    try {
                        int i3 = liveData.f7067do;
                        if (i2 == i3) {
                            break;
                        }
                        boolean z2 = i2 == 0 && i3 > 0;
                        boolean z3 = i2 > 0 && i3 == 0;
                        if (z2) {
                            liveData.mo4240try();
                        } else if (z3) {
                            liveData.mo4235case();
                        }
                        i2 = i3;
                    } finally {
                        liveData.f7071do = false;
                    }
                }
            }
            if (this.f7080do) {
                liveData.m4237for(this);
            }
        }

        /* renamed from: new */
        public void mo4241new() {
        }

        /* renamed from: try */
        public abstract boolean mo4242try();
    }

    /* renamed from: androidx.lifecycle.LiveData$if, reason: invalid class name */
    public class Cif extends LiveData<T>.Cfor {
        public Cif(LiveData liveData, InterfaceC3711sv<? super T> interfaceC3711sv) {
            super(interfaceC3711sv);
        }

        @Override // androidx.lifecycle.LiveData.Cfor
        /* renamed from: try */
        public final boolean mo4242try() {
            return true;
        }
    }

    public LiveData() {
        Object obj = f7066new;
        this.f7072for = obj;
        this.f7068do = new Cdo();
        this.f7075if = obj;
        this.f7074if = -1;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m4234do(String str) {
        C3837v2.m8422throw().f15984do.getClass();
        if (!(Looper.getMainLooper().getThread() == Thread.currentThread())) {
            throw new IllegalStateException(defpackage.Cif.m6908case("Cannot invoke ", str, " on a background thread"));
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void mo4235case() {
    }

    /* renamed from: else, reason: not valid java name */
    public void mo4236else(InterfaceC3711sv<? super T> interfaceC3711sv) {
        m4234do("removeObserver");
        LiveData<T>.Cfor mo493else = this.f7069do.mo493else(interfaceC3711sv);
        if (mo493else == null) {
            return;
        }
        mo493else.mo4241new();
        mo493else.m4243for(false);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4237for(LiveData<T>.Cfor cfor) {
        if (this.f7076if) {
            this.f7073for = true;
            return;
        }
        this.f7076if = true;
        do {
            this.f7073for = false;
            if (cfor != null) {
                m4238if(cfor);
                cfor = null;
            } else {
                C3139jB<InterfaceC3711sv<? super T>, LiveData<T>.Cfor> c3139jB = this.f7069do;
                c3139jB.getClass();
                C3139jB.Cnew cnew = new C3139jB.Cnew();
                c3139jB.f13646do.put(cnew, Boolean.FALSE);
                while (cnew.hasNext()) {
                    m4238if((Cfor) ((Map.Entry) cnew.next()).getValue());
                    if (this.f7073for) {
                        break;
                    }
                }
            }
        } while (this.f7073for);
        this.f7076if = false;
    }

    /* renamed from: goto */
    public void mo1685goto(T t) {
        m4234do("setValue");
        this.f7074if++;
        this.f7075if = t;
        m4237for(null);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4238if(LiveData<T>.Cfor cfor) {
        boolean z;
        if (cfor.f7080do) {
            if (!cfor.mo4242try()) {
                cfor.m4243for(false);
                return;
            }
            int i = cfor.f7081for;
            int i2 = this.f7074if;
            if (i >= i2) {
                return;
            }
            cfor.f7081for = i2;
            InterfaceC3711sv<? super T> interfaceC3711sv = cfor.f7079do;
            Object obj = this.f7075if;
            Ccatch.Cnew cnew = (Ccatch.Cnew) interfaceC3711sv;
            cnew.getClass();
            if (((InterfaceC2714eq) obj) != null) {
                Ccatch ccatch = Ccatch.this;
                z = ccatch.mShowsDialog;
                if (z) {
                    View requireView = ccatch.requireView();
                    if (requireView.getParent() != null) {
                        throw new IllegalStateException("DialogFragment can not be attached to a container view");
                    }
                    if (ccatch.mDialog != null) {
                        if (FragmentManager.m4115interface(3)) {
                            Objects.toString(ccatch.mDialog);
                        }
                        ccatch.mDialog.setContentView(requireView);
                    }
                }
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4239new(InterfaceC3711sv<? super T> interfaceC3711sv) {
        m4234do("observeForever");
        Cif cif = new Cif(this, interfaceC3711sv);
        LiveData<T>.Cfor mo492case = this.f7069do.mo492case(interfaceC3711sv, cif);
        if (mo492case instanceof LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (mo492case != null) {
            return;
        }
        cif.m4243for(true);
    }

    /* renamed from: try, reason: not valid java name */
    public void mo4240try() {
    }
}
