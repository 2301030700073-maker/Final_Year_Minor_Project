package androidx.activity;

import android.os.Build;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Celse;
import androidx.lifecycle.Ctry;
import defpackage.A2;
import defpackage.AbstractC0158Cv;
import defpackage.B4;
import defpackage.C0173Do;
import defpackage.C0180Dv;
import defpackage.C0202Ev;
import defpackage.C0224Fv;
import defpackage.C0246Gv;
import defpackage.C0268Hv;
import defpackage.C0312Jv;
import defpackage.C0334Kv;
import defpackage.C3206kJ;
import defpackage.InterfaceC0291Ja;
import defpackage.InterfaceC0768bk;
import defpackage.InterfaceC2650dk;
import defpackage.InterfaceC2714eq;
import defpackage.S6;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {

    /* renamed from: do, reason: not valid java name */
    public final A2<AbstractC0158Cv> f5121do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC0158Cv f5122do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0291Ja<Boolean> f5123do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final OnBackInvokedCallback f5124do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OnBackInvokedDispatcher f5125do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Runnable f5126do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5127do;

    /* renamed from: if, reason: not valid java name */
    public boolean f5128if;

    public final class LifecycleOnBackPressedCancellable implements Celse, S6 {

        /* renamed from: do, reason: not valid java name */
        public final AbstractC0158Cv f5129do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cfor f5130do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ OnBackPressedDispatcher f5131do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Ctry f5132do;

        public LifecycleOnBackPressedCancellable(OnBackPressedDispatcher onBackPressedDispatcher, Ctry ctry, FragmentManager.Cfor cfor) {
            C0173Do.m401try(cfor, "onBackPressedCallback");
            this.f5131do = onBackPressedDispatcher;
            this.f5132do = ctry;
            this.f5129do = cfor;
            ctry.mo4259do(this);
        }

        @Override // defpackage.S6
        public final void cancel() {
            this.f5132do.mo4261for(this);
            AbstractC0158Cv abstractC0158Cv = this.f5129do;
            abstractC0158Cv.getClass();
            abstractC0158Cv.f449do.remove(this);
            Cfor cfor = this.f5130do;
            if (cfor != null) {
                cfor.cancel();
            }
            this.f5130do = null;
        }

        @Override // androidx.lifecycle.Celse
        /* renamed from: case */
        public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
            if (cdo != Ctry.Cdo.ON_START) {
                if (cdo != Ctry.Cdo.ON_STOP) {
                    if (cdo == Ctry.Cdo.ON_DESTROY) {
                        cancel();
                        return;
                    }
                    return;
                } else {
                    Cfor cfor = this.f5130do;
                    if (cfor != null) {
                        cfor.cancel();
                        return;
                    }
                    return;
                }
            }
            OnBackPressedDispatcher onBackPressedDispatcher = this.f5131do;
            onBackPressedDispatcher.getClass();
            AbstractC0158Cv abstractC0158Cv = this.f5129do;
            C0173Do.m401try(abstractC0158Cv, "onBackPressedCallback");
            onBackPressedDispatcher.f5121do.addLast(abstractC0158Cv);
            Cfor cfor2 = onBackPressedDispatcher.new Cfor(abstractC0158Cv);
            abstractC0158Cv.f449do.add(cfor2);
            onBackPressedDispatcher.m3199new();
            abstractC0158Cv.f448do = new C0334Kv(onBackPressedDispatcher);
            this.f5130do = cfor2;
        }
    }

    /* renamed from: androidx.activity.OnBackPressedDispatcher$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f5133do = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public final OnBackInvokedCallback m3200do(final InterfaceC0768bk<C3206kJ> interfaceC0768bk) {
            C0173Do.m401try(interfaceC0768bk, "onBackInvoked");
            return new OnBackInvokedCallback() { // from class: Iv
                @Override // android.window.OnBackInvokedCallback
                public final void onBackInvoked() {
                    InterfaceC0768bk interfaceC0768bk2 = InterfaceC0768bk.this;
                    C0173Do.m401try(interfaceC0768bk2, "$onBackInvoked");
                    interfaceC0768bk2.mo585new();
                }
            };
        }

        /* renamed from: for, reason: not valid java name */
        public final void m3201for(Object obj, Object obj2) {
            C0173Do.m401try(obj, "dispatcher");
            C0173Do.m401try(obj2, "callback");
            ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }

        /* renamed from: if, reason: not valid java name */
        public final void m3202if(Object obj, int i, Object obj2) {
            C0173Do.m401try(obj, "dispatcher");
            C0173Do.m401try(obj2, "callback");
            ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(i, (OnBackInvokedCallback) obj2);
        }
    }

    /* renamed from: androidx.activity.OnBackPressedDispatcher$for, reason: invalid class name */
    public final class Cfor implements S6 {

        /* renamed from: do, reason: not valid java name */
        public final AbstractC0158Cv f5134do;

        public Cfor(AbstractC0158Cv abstractC0158Cv) {
            this.f5134do = abstractC0158Cv;
        }

        @Override // defpackage.S6
        public final void cancel() {
            OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
            A2<AbstractC0158Cv> a2 = onBackPressedDispatcher.f5121do;
            AbstractC0158Cv abstractC0158Cv = this.f5134do;
            a2.remove(abstractC0158Cv);
            if (C0173Do.m394do(onBackPressedDispatcher.f5122do, abstractC0158Cv)) {
                abstractC0158Cv.getClass();
                onBackPressedDispatcher.f5122do = null;
            }
            abstractC0158Cv.getClass();
            abstractC0158Cv.f449do.remove(this);
            InterfaceC0768bk<C3206kJ> interfaceC0768bk = abstractC0158Cv.f448do;
            if (interfaceC0768bk != null) {
                interfaceC0768bk.mo585new();
            }
            abstractC0158Cv.f448do = null;
        }
    }

    /* renamed from: androidx.activity.OnBackPressedDispatcher$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final Cif f5136do = new Cif();

        /* renamed from: androidx.activity.OnBackPressedDispatcher$if$do, reason: invalid class name */
        public static final class Cdo implements OnBackAnimationCallback {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ InterfaceC0768bk<C3206kJ> f5137do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final /* synthetic */ InterfaceC2650dk<B4, C3206kJ> f5138do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ InterfaceC0768bk<C3206kJ> f5139if;

            /* renamed from: if, reason: not valid java name and collision with other field name */
            public final /* synthetic */ InterfaceC2650dk<B4, C3206kJ> f5140if;

            /* JADX WARN: Multi-variable type inference failed */
            public Cdo(InterfaceC2650dk<? super B4, C3206kJ> interfaceC2650dk, InterfaceC2650dk<? super B4, C3206kJ> interfaceC2650dk2, InterfaceC0768bk<C3206kJ> interfaceC0768bk, InterfaceC0768bk<C3206kJ> interfaceC0768bk2) {
                this.f5138do = interfaceC2650dk;
                this.f5140if = interfaceC2650dk2;
                this.f5137do = interfaceC0768bk;
                this.f5139if = interfaceC0768bk2;
            }

            @Override // android.window.OnBackAnimationCallback
            public final void onBackCancelled() {
                this.f5139if.mo585new();
            }

            @Override // android.window.OnBackInvokedCallback
            public final void onBackInvoked() {
                this.f5137do.mo585new();
            }

            @Override // android.window.OnBackAnimationCallback
            public final void onBackProgressed(BackEvent backEvent) {
                C0173Do.m401try(backEvent, "backEvent");
                this.f5140if.mo364this(new B4(backEvent));
            }

            @Override // android.window.OnBackAnimationCallback
            public final void onBackStarted(BackEvent backEvent) {
                C0173Do.m401try(backEvent, "backEvent");
                this.f5138do.mo364this(new B4(backEvent));
            }
        }

        /* renamed from: do, reason: not valid java name */
        public final OnBackInvokedCallback m3203do(InterfaceC2650dk<? super B4, C3206kJ> interfaceC2650dk, InterfaceC2650dk<? super B4, C3206kJ> interfaceC2650dk2, InterfaceC0768bk<C3206kJ> interfaceC0768bk, InterfaceC0768bk<C3206kJ> interfaceC0768bk2) {
            C0173Do.m401try(interfaceC2650dk, "onBackStarted");
            C0173Do.m401try(interfaceC2650dk2, "onBackProgressed");
            C0173Do.m401try(interfaceC0768bk, "onBackInvoked");
            C0173Do.m401try(interfaceC0768bk2, "onBackCancelled");
            return new Cdo(interfaceC2650dk, interfaceC2650dk2, interfaceC0768bk, interfaceC0768bk2);
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f5126do = runnable;
        this.f5123do = null;
        this.f5121do = new A2<>();
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            this.f5124do = i >= 34 ? Cif.f5136do.m3203do(new C0180Dv(this), new C0202Ev(this), new C0224Fv(this), new C0246Gv(this)) : Cdo.f5133do.m3200do(new C0268Hv(this));
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3196do(InterfaceC2714eq interfaceC2714eq, FragmentManager.Cfor cfor) {
        C0173Do.m401try(cfor, "onBackPressedCallback");
        Ctry lifecycle = interfaceC2714eq.getLifecycle();
        if (lifecycle.mo4263if() == Ctry.Cif.DESTROYED) {
            return;
        }
        ((AbstractC0158Cv) cfor).f449do.add(new LifecycleOnBackPressedCancellable(this, lifecycle, cfor));
        m3199new();
        ((AbstractC0158Cv) cfor).f448do = new C0312Jv(this);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m3197for(boolean z) {
        OnBackInvokedCallback onBackInvokedCallback;
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f5125do;
        if (onBackInvokedDispatcher == null || (onBackInvokedCallback = this.f5124do) == null) {
            return;
        }
        Cdo cdo = Cdo.f5133do;
        if (z && !this.f5127do) {
            cdo.m3202if(onBackInvokedDispatcher, 0, onBackInvokedCallback);
            this.f5127do = true;
        } else {
            if (z || !this.f5127do) {
                return;
            }
            cdo.m3201for(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f5127do = false;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m3198if() {
        AbstractC0158Cv abstractC0158Cv;
        A2<AbstractC0158Cv> a2 = this.f5121do;
        ListIterator<AbstractC0158Cv> listIterator = a2.listIterator(a2.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                abstractC0158Cv = null;
                break;
            } else {
                abstractC0158Cv = listIterator.previous();
                if (abstractC0158Cv.f450do) {
                    break;
                }
            }
        }
        AbstractC0158Cv abstractC0158Cv2 = abstractC0158Cv;
        this.f5122do = null;
        if (abstractC0158Cv2 != null) {
            abstractC0158Cv2.mo316do();
            return;
        }
        Runnable runnable = this.f5126do;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m3199new() {
        boolean z = this.f5128if;
        A2<AbstractC0158Cv> a2 = this.f5121do;
        boolean z2 = false;
        if (!(a2 instanceof Collection) || !a2.isEmpty()) {
            Iterator<AbstractC0158Cv> it = a2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (it.next().f450do) {
                    z2 = true;
                    break;
                }
            }
        }
        this.f5128if = z2;
        if (z2 != z) {
            InterfaceC0291Ja<Boolean> interfaceC0291Ja = this.f5123do;
            if (interfaceC0291Ja != null) {
                interfaceC0291Ja.accept(Boolean.valueOf(z2));
            }
            if (Build.VERSION.SDK_INT >= 33) {
                m3197for(z2);
            }
        }
    }

    public OnBackPressedDispatcher() {
        this(null);
    }
}
