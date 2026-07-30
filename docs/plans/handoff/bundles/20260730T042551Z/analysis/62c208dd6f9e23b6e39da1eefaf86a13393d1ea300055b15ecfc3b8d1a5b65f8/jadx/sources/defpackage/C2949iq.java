package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: iq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2949iq extends AbstractC3338mb implements InterfaceC0184Ed {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicIntegerFieldUpdater f13581do = AtomicIntegerFieldUpdater.newUpdater(C2949iq.class, "runningWorkers");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceC0184Ed f13582do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0351Lq<Runnable> f13583do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f13584do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3338mb f13585do;

    /* renamed from: for, reason: not valid java name */
    public final int f13586for;
    private volatile int runningWorkers;

    /* renamed from: iq$do, reason: invalid class name */
    public final class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Runnable f13588do;

        public Cdo(Runnable runnable) {
            this.f13588do = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = 0;
            while (true) {
                try {
                    this.f13588do.run();
                } catch (Throwable th) {
                    C3515pb.m7796do(C0405Of.f2659do, th);
                }
                C2949iq c2949iq = C2949iq.this;
                Runnable s = c2949iq.s();
                if (s == null) {
                    return;
                }
                this.f13588do = s;
                i++;
                if (i >= 16) {
                    AbstractC3338mb abstractC3338mb = c2949iq.f13585do;
                    if (abstractC3338mb.r()) {
                        abstractC3338mb.mo1340if(c2949iq, this);
                        return;
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C2949iq(C3265lJ c3265lJ, int i) {
        this.f13585do = c3265lJ;
        this.f13586for = i;
        InterfaceC0184Ed interfaceC0184Ed = c3265lJ instanceof InterfaceC0184Ed ? (InterfaceC0184Ed) c3265lJ : null;
        this.f13582do = interfaceC0184Ed == null ? C2937id.f13528do : interfaceC0184Ed;
        this.f13583do = new C0351Lq<>();
        this.f13584do = new Object();
    }

    @Override // defpackage.AbstractC3338mb
    /* renamed from: if */
    public final void mo1340if(InterfaceC3161jb interfaceC3161jb, Runnable runnable) {
        boolean z;
        Runnable s;
        this.f13583do.m1352do(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f13581do;
        if (atomicIntegerFieldUpdater.get(this) < this.f13586for) {
            synchronized (this.f13584do) {
                if (atomicIntegerFieldUpdater.get(this) >= this.f13586for) {
                    z = false;
                } else {
                    atomicIntegerFieldUpdater.incrementAndGet(this);
                    z = true;
                }
            }
            if (!z || (s = s()) == null) {
                return;
            }
            this.f13585do.mo1340if(this, new Cdo(s));
        }
    }

    public final Runnable s() {
        while (true) {
            Runnable m1355new = this.f13583do.m1355new();
            if (m1355new != null) {
                return m1355new;
            }
            synchronized (this.f13584do) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f13581do;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.f13583do.m1353for() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }
}
