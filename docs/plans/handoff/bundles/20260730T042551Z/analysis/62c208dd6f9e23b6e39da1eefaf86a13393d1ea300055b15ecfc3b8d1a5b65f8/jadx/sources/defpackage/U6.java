package defpackage;

import com.facebook.internal.AnalyticsEvents;
import defpackage.InterfaceC0634Yo;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes3.dex */
public class U6<T> extends AbstractC0119Be<T> implements T6<T>, InterfaceC3809ub, GL {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicIntegerFieldUpdater f3828do = AtomicIntegerFieldUpdater.newUpdater(U6.class, "_decisionAndIndex");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AtomicReferenceFieldUpdater f3829do = AtomicReferenceFieldUpdater.newUpdater(U6.class, Object.class, "_state");

    /* renamed from: if, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f3830if = AtomicReferenceFieldUpdater.newUpdater(U6.class, Object.class, "_parentHandle");
    private volatile int _decisionAndIndex;
    private volatile Object _parentHandle;
    private volatile Object _state;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0576Wa<T> f3831do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3161jb f3832do;

    public U6(int i, InterfaceC0576Wa interfaceC0576Wa) {
        super(i);
        this.f3831do = interfaceC0576Wa;
        this.f3832do = interfaceC0576Wa.mo2221if();
        this._decisionAndIndex = 536870911;
        this._state = I.f1414do;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static Object m2346abstract(InterfaceC0719av interfaceC0719av, Object obj, int i, InterfaceC2650dk interfaceC2650dk) {
        if (obj instanceof U8) {
            return obj;
        }
        boolean z = true;
        if (i != 1 && i != 2) {
            z = false;
        }
        if (!z) {
            return obj;
        }
        if (interfaceC2650dk != null || (interfaceC0719av instanceof L6)) {
            return new S8(obj, interfaceC0719av instanceof L6 ? (L6) interfaceC0719av : null, interfaceC2650dk, (CancellationException) null, 16);
        }
        return obj;
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m2347extends(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    /* renamed from: break, reason: not valid java name */
    public final void m2348break(L6 l6, Throwable th) {
        try {
            l6.mo1040case(th);
        } catch (Throwable th2) {
            C3515pb.m7796do(this.f3832do, new X8("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.AbstractC0119Be
    /* renamed from: case */
    public final <T> T mo193case(Object obj) {
        return obj instanceof S8 ? (T) ((S8) obj).f3452do : obj;
    }

    @Override // defpackage.InterfaceC3809ub
    /* renamed from: catch */
    public final InterfaceC3809ub mo1126catch() {
        InterfaceC0576Wa<T> interfaceC0576Wa = this.f3831do;
        if (interfaceC0576Wa instanceof InterfaceC3809ub) {
            return (InterfaceC3809ub) interfaceC0576Wa;
        }
        return null;
    }

    /* renamed from: class, reason: not valid java name */
    public final void m2349class(InterfaceC2650dk<? super Throwable, C3206kJ> interfaceC2650dk, Throwable th) {
        try {
            interfaceC2650dk.mo364this(th);
        } catch (Throwable th2) {
            C3515pb.m7796do(this.f3832do, new X8("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final void m2350const(WB<?> wb, Throwable th) {
        InterfaceC3161jb interfaceC3161jb = this.f3832do;
        int i = f3828do.get(this) & 536870911;
        if (!(i != 536870911)) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken".toString());
        }
        try {
            wb.mo2710else(i, interfaceC3161jb);
        } catch (Throwable th2) {
            C3515pb.m7796do(interfaceC3161jb, new X8("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    /* renamed from: default, reason: not valid java name */
    public final boolean m2351default() {
        if (this.f252for == 2) {
            InterfaceC0576Wa<T> interfaceC0576Wa = this.f3831do;
            C0173Do.m396for(interfaceC0576Wa, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (C4107ze.f16931do.get((C4107ze) interfaceC0576Wa) != null) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC0119Be
    /* renamed from: do */
    public final void mo194do(Object obj, CancellationException cancellationException) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3829do;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof InterfaceC0719av) {
                throw new IllegalStateException("Not completed".toString());
            }
            if (obj2 instanceof U8) {
                return;
            }
            boolean z = false;
            if (obj2 instanceof S8) {
                S8 s8 = (S8) obj2;
                if (!(!(s8.f3453do != null))) {
                    throw new IllegalStateException("Must be called at most once".toString());
                }
                S8 m2114do = S8.m2114do(s8, null, cancellationException, 15);
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, m2114do)) {
                        z = true;
                        break;
                    } else if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                if (z) {
                    L6 l6 = s8.f3450do;
                    if (l6 != null) {
                        m2348break(l6, cancellationException);
                    }
                    InterfaceC2650dk<Throwable, C3206kJ> interfaceC2650dk = s8.f3451do;
                    if (interfaceC2650dk != null) {
                        m2349class(interfaceC2650dk, cancellationException);
                        return;
                    }
                    return;
                }
            } else {
                S8 s82 = new S8(obj2, (L6) null, (InterfaceC2650dk) null, cancellationException, 14);
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, s82)) {
                        z = true;
                        break;
                    } else if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                if (z) {
                    return;
                }
            }
        }
    }

    @Override // defpackage.T6
    /* renamed from: else */
    public final C0174Dp mo2217else(Object obj, InterfaceC2650dk interfaceC2650dk) {
        C0174Dp c0174Dp;
        boolean z;
        do {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3829do;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            boolean z2 = obj2 instanceof InterfaceC0719av;
            c0174Dp = C0315Kc.f1827do;
            if (!z2) {
                boolean z3 = obj2 instanceof S8;
                return null;
            }
            Object m2346abstract = m2346abstract((InterfaceC0719av) obj2, obj, this.f252for, interfaceC2650dk);
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, m2346abstract)) {
                    z = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != obj2) {
                    z = false;
                    break;
                }
            }
        } while (!z);
        if (m2351default()) {
            return c0174Dp;
        }
        m2353import();
        return c0174Dp;
    }

    @Override // defpackage.T6
    /* renamed from: final */
    public final void mo2218final(Object obj) {
        m2354native(this.f252for);
    }

    /* renamed from: finally, reason: not valid java name */
    public String mo2352finally() {
        return "CancellableContinuation";
    }

    @Override // defpackage.GL
    /* renamed from: for */
    public final void mo728for(WB<?> wb, int i) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = f3828do;
            i2 = atomicIntegerFieldUpdater.get(this);
            if (!((i2 & 536870911) == 536870911)) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once".toString());
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, ((i2 >> 29) << 29) + i));
        m2361throws(wb);
    }

    @Override // defpackage.InterfaceC0576Wa
    /* renamed from: if */
    public final InterfaceC3161jb mo2221if() {
        return this.f3832do;
    }

    /* renamed from: import, reason: not valid java name */
    public final void m2353import() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3830if;
        InterfaceC0273Ie interfaceC0273Ie = (InterfaceC0273Ie) atomicReferenceFieldUpdater.get(this);
        if (interfaceC0273Ie == null) {
            return;
        }
        interfaceC0273Ie.mo959goto();
        atomicReferenceFieldUpdater.set(this, C0662Zu.f4916do);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
    
        if (r10 != 4) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0030, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
    
        r1 = r9.f3831do;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
    
        if (r0 != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        if ((r1 instanceof defpackage.C4107ze) == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003c, code lost:
    
        if (r10 == 1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003e, code lost:
    
        if (r10 != 2) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0044, code lost:
    
        r5 = r9.f252for;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
    
        if (r5 == 1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0048, code lost:
    
        if (r5 != 2) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004e, code lost:
    
        if (r10 != r2) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
    
        r10 = ((defpackage.C4107ze) r1).f16934do;
        r0 = r1.mo2221if();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005d, code lost:
    
        if (r10.r() == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005f, code lost:
    
        r10.mo1340if(r0, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0063, code lost:
    
        r10 = defpackage.C2801gH.m6717do();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0070, code lost:
    
        if (r10.f16106do < 4294967296L) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0072, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0073, code lost:
    
        if (r3 == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0075, code lost:
    
        r0 = r10.f16107do;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0077, code lost:
    
        if (r0 != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0079, code lost:
    
        r0 = new defpackage.A2<>();
        r10.f16107do = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0080, code lost:
    
        r0.addLast(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0084, code lost:
    
        r10.t(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0087, code lost:
    
        defpackage.O4.m1614interface(r9, r1, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008e, code lost:
    
        if (r10.v() != false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0091, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0093, code lost:
    
        m195goto(r0, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x009a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x009b, code lost:
    
        r10.s(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x009e, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x004d, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0043, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009f, code lost:
    
        defpackage.O4.m1614interface(r9, r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00a2, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0032, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002a, code lost:
    
        if (r0 == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002c, code lost:
    
        return;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: native, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2354native(int r10) {
        /*
            r9 = this;
        L0:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = defpackage.U6.f3828do
            int r1 = r0.get(r9)
            int r2 = r1 >> 29
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L1c
            if (r2 != r4) goto L10
            r0 = 0
            goto L2a
        L10:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "Already resumed"
            java.lang.String r0 = r0.toString()
            r10.<init>(r0)
            throw r10
        L1c:
            r2 = 536870911(0x1fffffff, float:1.0842021E-19)
            r2 = r2 & r1
            r5 = 1073741824(0x40000000, float:2.0)
            int r2 = r2 + r5
            boolean r0 = r0.compareAndSet(r9, r1, r2)
            if (r0 == 0) goto L0
            r0 = 1
        L2a:
            if (r0 == 0) goto L2d
            return
        L2d:
            r0 = 4
            if (r10 != r0) goto L32
            r0 = 1
            goto L33
        L32:
            r0 = 0
        L33:
            Wa<T> r1 = r9.f3831do
            if (r0 != 0) goto L9f
            boolean r2 = r1 instanceof defpackage.C4107ze
            if (r2 == 0) goto L9f
            r2 = 2
            if (r10 == r4) goto L43
            if (r10 != r2) goto L41
            goto L43
        L41:
            r10 = 0
            goto L44
        L43:
            r10 = 1
        L44:
            int r5 = r9.f252for
            if (r5 == r4) goto L4d
            if (r5 != r2) goto L4b
            goto L4d
        L4b:
            r2 = 0
            goto L4e
        L4d:
            r2 = 1
        L4e:
            if (r10 != r2) goto L9f
            r10 = r1
            ze r10 = (defpackage.C4107ze) r10
            mb r10 = r10.f16934do
            jb r0 = r1.mo2221if()
            boolean r2 = r10.r()
            if (r2 == 0) goto L63
            r10.mo1340if(r0, r9)
            goto La2
        L63:
            vg r10 = defpackage.C2801gH.m6717do()
            long r5 = r10.f16106do
            r7 = 4294967296(0x100000000, double:2.121995791E-314)
            int r0 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r0 < 0) goto L73
            r3 = 1
        L73:
            if (r3 == 0) goto L84
            A2<Be<?>> r0 = r10.f16107do
            if (r0 != 0) goto L80
            A2 r0 = new A2
            r0.<init>()
            r10.f16107do = r0
        L80:
            r0.addLast(r9)
            goto La2
        L84:
            r10.t(r4)
            defpackage.O4.m1614interface(r9, r1, r4)     // Catch: java.lang.Throwable -> L91
        L8a:
            boolean r0 = r10.v()     // Catch: java.lang.Throwable -> L91
            if (r0 != 0) goto L8a
            goto L96
        L91:
            r0 = move-exception
            r1 = 0
            r9.m195goto(r0, r1)     // Catch: java.lang.Throwable -> L9a
        L96:
            r10.s(r4)
            goto La2
        L9a:
            r0 = move-exception
            r10.s(r4)
            throw r0
        L9f:
            defpackage.O4.m1614interface(r9, r1, r0)
        La2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.U6.m2354native(int):void");
    }

    @Override // defpackage.AbstractC0119Be
    /* renamed from: new */
    public final InterfaceC0576Wa<T> mo196new() {
        return this.f3831do;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0041, code lost:
    
        if (r2 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
    
        m2353import();
        mo2219super(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004a, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:?, code lost:
    
        return;
     */
    /* renamed from: package, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2355package() {
        /*
            r7 = this;
            Wa<T> r0 = r7.f3831do
            boolean r1 = r0 instanceof defpackage.C4107ze
            r2 = 0
            if (r1 == 0) goto La
            ze r0 = (defpackage.C4107ze) r0
            goto Lb
        La:
            r0 = r2
        Lb:
            if (r0 == 0) goto L6f
        Ld:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = defpackage.C4107ze.f16931do
            java.lang.Object r3 = r1.get(r0)
            Dp r4 = defpackage.C3850vF.f16048if
            r5 = 1
            r6 = 0
            if (r3 != r4) goto L2a
        L19:
            boolean r3 = r1.compareAndSet(r0, r4, r7)
            if (r3 == 0) goto L20
            goto L27
        L20:
            java.lang.Object r3 = r1.get(r0)
            if (r3 == r4) goto L19
            r5 = 0
        L27:
            if (r5 == 0) goto Ld
            goto L41
        L2a:
            boolean r4 = r3 instanceof java.lang.Throwable
            if (r4 == 0) goto L57
        L2e:
            boolean r4 = r1.compareAndSet(r0, r3, r2)
            if (r4 == 0) goto L35
            goto L3c
        L35:
            java.lang.Object r4 = r1.get(r0)
            if (r4 == r3) goto L2e
            r5 = 0
        L3c:
            if (r5 == 0) goto L4b
            r2 = r3
            java.lang.Throwable r2 = (java.lang.Throwable) r2
        L41:
            if (r2 != 0) goto L44
            goto L6f
        L44:
            r7.m2353import()
            r7.mo2219super(r2)
            return
        L4b:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Failed requirement."
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L57:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Inconsistent state "
            r1.<init>(r2)
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.U6.m2355package():void");
    }

    /* renamed from: private, reason: not valid java name */
    public final void m2356private(Object obj, int i, InterfaceC2650dk<? super Throwable, C3206kJ> interfaceC2650dk) {
        boolean z;
        do {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3829do;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            z = true;
            if (!(obj2 instanceof InterfaceC0719av)) {
                if (obj2 instanceof X6) {
                    X6 x6 = (X6) obj2;
                    x6.getClass();
                    if (X6.f4465if.compareAndSet(x6, 0, 1)) {
                        if (interfaceC2650dk != null) {
                            m2349class(interfaceC2650dk, x6.f3839do);
                            return;
                        }
                        return;
                    }
                }
                throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
            }
            Object m2346abstract = m2346abstract((InterfaceC0719av) obj2, obj, i, interfaceC2650dk);
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, m2346abstract)) {
                    break;
                } else if (atomicReferenceFieldUpdater.get(this) != obj2) {
                    z = false;
                    break;
                }
            }
        } while (!z);
        if (!m2351default()) {
            m2353import();
        }
        m2354native(i);
    }

    /* renamed from: public, reason: not valid java name */
    public Throwable mo2357public(C2713ep c2713ep) {
        return c2713ep.mo2956goto();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0039, code lost:
    
        if (((defpackage.InterfaceC0273Ie) defpackage.U6.f3830if.get(r8)) != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
    
        m2360switch();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003e, code lost:
    
        if (r0 == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
    
        m2355package();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
    
        return defpackage.EnumC3750tb.COROUTINE_SUSPENDED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0046, code lost:
    
        if (r0 == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0048, code lost:
    
        m2355package();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004b, code lost:
    
        r0 = defpackage.U6.f3829do.get(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0053, code lost:
    
        if ((r0 instanceof defpackage.U8) != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0055, code lost:
    
        r1 = r8.f252for;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0057, code lost:
    
        if (r1 == 1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0059, code lost:
    
        if (r1 != 2) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005c, code lost:
    
        if (r4 == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005e, code lost:
    
        r1 = (defpackage.InterfaceC0634Yo) r8.f3832do.mo814new(defpackage.InterfaceC0634Yo.Cif.f4763do);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0068, code lost:
    
        if (r1 == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006e, code lost:
    
        if (r1.mo2955for() == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
    
        r1 = r1.mo2956goto();
        mo194do(r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0078, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007d, code lost:
    
        return mo193case(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005b, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0082, code lost:
    
        throw ((defpackage.U8) r0).f3839do;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002f, code lost:
    
        if (r1 == false) goto L20;
     */
    /* renamed from: return, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m2358return() {
        /*
            r8 = this;
            boolean r0 = r8.m2351default()
        L4:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r1 = defpackage.U6.f3828do
            int r2 = r1.get(r8)
            int r3 = r2 >> 29
            r4 = 0
            r5 = 1
            r6 = 2
            if (r3 == 0) goto L21
            if (r3 != r6) goto L15
            r1 = 0
            goto L2f
        L15:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Already suspended"
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L21:
            r3 = 536870911(0x1fffffff, float:1.0842021E-19)
            r3 = r3 & r2
            r7 = 536870912(0x20000000, float:1.0842022E-19)
            int r3 = r3 + r7
            boolean r1 = r1.compareAndSet(r8, r2, r3)
            if (r1 == 0) goto L4
            r1 = 1
        L2f:
            if (r1 == 0) goto L46
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = defpackage.U6.f3830if
            java.lang.Object r1 = r1.get(r8)
            Ie r1 = (defpackage.InterfaceC0273Ie) r1
            if (r1 != 0) goto L3e
            r8.m2360switch()
        L3e:
            if (r0 == 0) goto L43
            r8.m2355package()
        L43:
            tb r0 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            return r0
        L46:
            if (r0 == 0) goto L4b
            r8.m2355package()
        L4b:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = defpackage.U6.f3829do
            java.lang.Object r0 = r0.get(r8)
            boolean r1 = r0 instanceof defpackage.U8
            if (r1 != 0) goto L7e
            int r1 = r8.f252for
            if (r1 == r5) goto L5b
            if (r1 != r6) goto L5c
        L5b:
            r4 = 1
        L5c:
            if (r4 == 0) goto L79
            Yo$if r1 = defpackage.InterfaceC0634Yo.Cif.f4763do
            jb r2 = r8.f3832do
            jb$if r1 = r2.mo814new(r1)
            Yo r1 = (defpackage.InterfaceC0634Yo) r1
            if (r1 == 0) goto L79
            boolean r2 = r1.mo2955for()
            if (r2 == 0) goto L71
            goto L79
        L71:
            java.util.concurrent.CancellationException r1 = r1.mo2956goto()
            r8.mo194do(r0, r1)
            throw r1
        L79:
            java.lang.Object r0 = r8.mo193case(r0)
            return r0
        L7e:
            U8 r0 = (defpackage.U8) r0
            java.lang.Throwable r0 = r0.f3839do
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.U6.m2358return():java.lang.Object");
    }

    /* renamed from: static, reason: not valid java name */
    public final void m2359static() {
        InterfaceC0273Ie m2360switch = m2360switch();
        if (m2360switch != null && (!(f3829do.get(this) instanceof InterfaceC0719av))) {
            m2360switch.mo959goto();
            f3830if.set(this, C0662Zu.f4916do);
        }
    }

    @Override // defpackage.T6
    /* renamed from: super */
    public final boolean mo2219super(Throwable th) {
        Object obj;
        boolean z;
        do {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3829do;
            obj = atomicReferenceFieldUpdater.get(this);
            z = false;
            if (!(obj instanceof InterfaceC0719av)) {
                return false;
            }
            X6 x6 = new X6(this, th, (obj instanceof L6) || (obj instanceof WB));
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, x6)) {
                    z = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
        } while (!z);
        InterfaceC0719av interfaceC0719av = (InterfaceC0719av) obj;
        if (interfaceC0719av instanceof L6) {
            m2348break((L6) obj, th);
        } else if (interfaceC0719av instanceof WB) {
            m2350const((WB) obj, th);
        }
        if (!m2351default()) {
            m2353import();
        }
        m2354native(this.f252for);
        return true;
    }

    /* renamed from: switch, reason: not valid java name */
    public final InterfaceC0273Ie m2360switch() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        InterfaceC0634Yo interfaceC0634Yo = (InterfaceC0634Yo) this.f3832do.mo814new(InterfaceC0634Yo.Cif.f4763do);
        if (interfaceC0634Yo == null) {
            return null;
        }
        InterfaceC0273Ie m2959do = InterfaceC0634Yo.Cdo.m2959do(interfaceC0634Yo, true, new C3901w7(this), 2);
        do {
            atomicReferenceFieldUpdater = f3830if;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, m2959do)) {
                break;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return m2959do;
    }

    @Override // defpackage.AbstractC0119Be
    /* renamed from: this */
    public final Object mo197this() {
        return f3829do.get(this);
    }

    @Override // defpackage.T6
    /* renamed from: throw */
    public final void mo2220throw(T t, InterfaceC2650dk<? super Throwable, C3206kJ> interfaceC2650dk) {
        m2356private(t, this.f252for, interfaceC2650dk);
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m2361throws(Object obj) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3829do;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            boolean z = false;
            if (obj2 instanceof I) {
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, obj)) {
                        z = true;
                        break;
                    } else if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                if (z) {
                    return;
                }
            } else {
                if (obj2 instanceof L6 ? true : obj2 instanceof WB) {
                    m2347extends(obj, obj2);
                    throw null;
                }
                boolean z2 = obj2 instanceof U8;
                if (z2) {
                    U8 u8 = (U8) obj2;
                    u8.getClass();
                    if (!U8.f3838do.compareAndSet(u8, 0, 1)) {
                        m2347extends(obj, obj2);
                        throw null;
                    }
                    if (obj2 instanceof X6) {
                        if (!z2) {
                            u8 = null;
                        }
                        Throwable th = u8 != null ? u8.f3839do : null;
                        if (obj instanceof L6) {
                            m2348break((L6) obj, th);
                            return;
                        } else {
                            C0173Do.m396for(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                            m2350const((WB) obj, th);
                            return;
                        }
                    }
                    return;
                }
                if (obj2 instanceof S8) {
                    S8 s8 = (S8) obj2;
                    if (s8.f3450do != null) {
                        m2347extends(obj, obj2);
                        throw null;
                    }
                    if (obj instanceof WB) {
                        return;
                    }
                    C0173Do.m396for(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    L6 l6 = (L6) obj;
                    Throwable th2 = s8.f3453do;
                    if (th2 != null) {
                        m2348break(l6, th2);
                        return;
                    }
                    S8 m2114do = S8.m2114do(s8, l6, null, 29);
                    while (true) {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, m2114do)) {
                            z = true;
                            break;
                        } else if (atomicReferenceFieldUpdater.get(this) != obj2) {
                            break;
                        }
                    }
                    if (z) {
                        return;
                    }
                } else {
                    if (obj instanceof WB) {
                        return;
                    }
                    C0173Do.m396for(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    S8 s82 = new S8(obj2, (L6) obj, (InterfaceC2650dk) null, (CancellationException) null, 28);
                    while (true) {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, s82)) {
                            z = true;
                            break;
                        } else if (atomicReferenceFieldUpdater.get(this) != obj2) {
                            break;
                        }
                    }
                    if (z) {
                        return;
                    }
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(mo2352finally());
        sb.append('(');
        sb.append(C0820cd.m4912case(this.f3831do));
        sb.append("){");
        Object obj = f3829do.get(this);
        sb.append(obj instanceof InterfaceC0719av ? "Active" : obj instanceof X6 ? AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_CANCELLED : AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_COMPLETED);
        sb.append("}@");
        sb.append(C0820cd.m4914try(this));
        return sb.toString();
    }

    @Override // defpackage.AbstractC0119Be
    /* renamed from: try */
    public final Throwable mo198try(Object obj) {
        Throwable mo198try = super.mo198try(obj);
        if (mo198try != null) {
            return mo198try;
        }
        return null;
    }

    @Override // defpackage.InterfaceC0576Wa
    /* renamed from: while */
    public final void mo1746while(Object obj) {
        Throwable m3108do = C0675aA.m3108do(obj);
        if (m3108do != null) {
            obj = new U8(false, m3108do);
        }
        m2356private(obj, this.f252for, null);
    }
}
