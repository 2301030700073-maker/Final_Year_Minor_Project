package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: dF, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2623dF<T> extends Cswitch<C2681eF> implements InterfaceC0463Qt<T>, InterfaceC0628Yi {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f12459do = AtomicReferenceFieldUpdater.newUpdater(C2623dF.class, Object.class, "_state");
    private volatile Object _state;

    /* renamed from: try, reason: not valid java name */
    public int f12460try;

    @InterfaceC0761bd(c = "kotlinx.coroutines.flow.StateFlowImpl", f = "StateFlow.kt", l = {384, 396, 401}, m = "collect")
    /* renamed from: dF$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name */
        public InterfaceC0634Yo f12461do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public InterfaceC0650Zi f12462do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C2623dF f12463do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C2681eF f12464do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f12465do;

        /* renamed from: for, reason: not valid java name */
        public int f12466for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ C2623dF<T> f12467if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public /* synthetic */ Object f12468if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(C2623dF<T> c2623dF, InterfaceC0576Wa<? super Cdo> interfaceC0576Wa) {
            super(interfaceC0576Wa);
            this.f12467if = c2623dF;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f12468if = obj;
            this.f12466for |= Integer.MIN_VALUE;
            return this.f12467if.mo2945do(null, this);
        }
    }

    public C2623dF(Object obj) {
        this._state = obj;
    }

    @Override // defpackage.InterfaceC0463Qt
    /* renamed from: case */
    public final void mo2003case(T t) {
        int i;
        Object obj;
        C0174Dp c0174Dp;
        boolean z;
        boolean z2;
        if (t == null) {
            t = (T) O4.f2573this;
        }
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f12459do;
            if (C0173Do.m394do(atomicReferenceFieldUpdater.get(this), t)) {
                return;
            }
            atomicReferenceFieldUpdater.set(this, t);
            int i2 = this.f12460try;
            if ((i2 & 1) != 0) {
                this.f12460try = i2 + 2;
                return;
            }
            int i3 = i2 + 1;
            this.f12460try = i3;
            Object obj2 = this.f15570do;
            C3206kJ c3206kJ = C3206kJ.f13965do;
            while (true) {
                C2681eF[] c2681eFArr = (C2681eF[]) obj2;
                if (c2681eFArr != null) {
                    for (C2681eF c2681eF : c2681eFArr) {
                        if (c2681eF != null) {
                            while (true) {
                                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C2681eF.f12633do;
                                Object obj3 = atomicReferenceFieldUpdater2.get(c2681eF);
                                if (obj3 != null && obj3 != (c0174Dp = C3645ro.f15324if)) {
                                    C0174Dp c0174Dp2 = C3645ro.f15316do;
                                    if (obj3 != c0174Dp2) {
                                        while (true) {
                                            if (!atomicReferenceFieldUpdater2.compareAndSet(c2681eF, obj3, c0174Dp2)) {
                                                if (atomicReferenceFieldUpdater2.get(c2681eF) != obj3) {
                                                    z2 = false;
                                                    break;
                                                }
                                            } else {
                                                z2 = true;
                                                break;
                                            }
                                        }
                                        if (z2) {
                                            ((U6) obj3).mo1746while(C3206kJ.f13965do);
                                            break;
                                        }
                                    } else {
                                        while (true) {
                                            if (!atomicReferenceFieldUpdater2.compareAndSet(c2681eF, obj3, c0174Dp)) {
                                                if (atomicReferenceFieldUpdater2.get(c2681eF) != obj3) {
                                                    z = false;
                                                    break;
                                                }
                                            } else {
                                                z = true;
                                                break;
                                            }
                                        }
                                        if (z) {
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                synchronized (this) {
                    i = this.f12460try;
                    if (i == i3) {
                        this.f12460try = i3 + 1;
                        return;
                    } else {
                        obj = this.f15570do;
                        C3206kJ c3206kJ2 = C3206kJ.f13965do;
                    }
                }
                obj2 = obj;
                i3 = i;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00e6, code lost:
    
        if (defpackage.C0173Do.m394do(r13, r14) != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ca, code lost:
    
        if (0 == 0) goto L76;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00d2 A[Catch: all -> 0x00de, TryCatch #2 {all -> 0x00de, blocks: (B:13:0x0035, B:14:0x00ca, B:16:0x00d2, B:19:0x00d9, B:20:0x00dd, B:24:0x00e2, B:26:0x0103, B:30:0x011a, B:35:0x00e8, B:38:0x00ef, B:46:0x004c, B:48:0x0057, B:49:0x00ba), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0101 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* JADX WARN: Type inference failed for: r14v2, types: [S extends throws<?>[], java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r14v21, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v4, types: [throws[]] */
    /* JADX WARN: Type inference failed for: r2v6, types: [S extends throws<?>[], throws[]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x012a -> B:14:0x00ca). Please report as a decompilation issue!!! */
    @Override // defpackage.InterfaceC0628Yi
    /* renamed from: do */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo2945do(defpackage.InterfaceC0650Zi<? super T> r13, defpackage.InterfaceC0576Wa<?> r14) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2623dF.mo2945do(Zi, Wa):java.lang.Object");
    }

    @Override // defpackage.InterfaceC0650Zi
    /* renamed from: for */
    public final Object mo1312for(T t, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
        mo2003case(t);
        return C3206kJ.f13965do;
    }

    /* renamed from: new, reason: not valid java name */
    public final T m6445new() {
        C0174Dp c0174Dp = O4.f2573this;
        T t = (T) f12459do.get(this);
        if (t == c0174Dp) {
            return null;
        }
        return t;
    }
}
