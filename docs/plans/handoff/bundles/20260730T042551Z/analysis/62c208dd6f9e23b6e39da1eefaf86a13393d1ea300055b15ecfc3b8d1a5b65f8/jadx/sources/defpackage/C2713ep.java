package defpackage;

import com.facebook.internal.AnalyticsEvents;
import defpackage.C0329Kq;
import defpackage.InterfaceC0634Yo;
import defpackage.InterfaceC3161jb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: ep, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C2713ep implements InterfaceC0634Yo, InterfaceC4078z7, InterfaceC3889vw {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f12713do = AtomicReferenceFieldUpdater.newUpdater(C2713ep.class, Object.class, "_state");

    /* renamed from: if, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f12714if = AtomicReferenceFieldUpdater.newUpdater(C2713ep.class, Object.class, "_parentHandle");
    private volatile Object _parentHandle;
    private volatile Object _state;

    /* renamed from: ep$do, reason: invalid class name */
    public static final class Cdo<T> extends U6<T> {

        /* renamed from: do, reason: not valid java name */
        public final C2713ep f12715do;

        public Cdo(InterfaceC0576Wa interfaceC0576Wa, R8 r8) {
            super(1, interfaceC0576Wa);
            this.f12715do = r8;
        }

        @Override // defpackage.U6
        /* renamed from: finally */
        public final String mo2352finally() {
            return "AwaitContinuation";
        }

        @Override // defpackage.U6
        /* renamed from: public */
        public final Throwable mo2357public(C2713ep c2713ep) {
            Throwable m6588if;
            Object c = this.f12715do.c();
            return (!(c instanceof Cfor) || (m6588if = ((Cfor) c).m6588if()) == null) ? c instanceof U8 ? ((U8) c).f3839do : c2713ep.mo2956goto() : m6588if;
        }
    }

    /* renamed from: ep$for, reason: invalid class name */
    public static final class Cfor implements InterfaceC4116zn {

        /* renamed from: do, reason: not valid java name */
        public static final AtomicIntegerFieldUpdater f12716do = AtomicIntegerFieldUpdater.newUpdater(Cfor.class, "_isCompleting");

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final AtomicReferenceFieldUpdater f12717do = AtomicReferenceFieldUpdater.newUpdater(Cfor.class, Object.class, "_rootCause");

        /* renamed from: if, reason: not valid java name */
        public static final AtomicReferenceFieldUpdater f12718if = AtomicReferenceFieldUpdater.newUpdater(Cfor.class, Object.class, "_exceptionsHolder");
        private volatile Object _exceptionsHolder;
        private volatile int _isCompleting = 0;
        private volatile Object _rootCause;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C0640Yu f12719do;

        public Cfor(C0640Yu c0640Yu, Throwable th) {
            this.f12719do = c0640Yu;
            this._rootCause = th;
        }

        @Override // defpackage.InterfaceC4116zn
        /* renamed from: case */
        public final C0640Yu mo1445case() {
            return this.f12719do;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m6586do(Throwable th) {
            Throwable m6588if = m6588if();
            if (m6588if == null) {
                f12717do.set(this, th);
                return;
            }
            if (th == m6588if) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f12718if;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                atomicReferenceFieldUpdater.set(this, th);
                return;
            }
            if (!(obj instanceof Throwable)) {
                if (obj instanceof ArrayList) {
                    ((ArrayList) obj).add(th);
                    return;
                } else {
                    throw new IllegalStateException(("State is " + obj).toString());
                }
            }
            if (th == obj) {
                return;
            }
            ArrayList arrayList = new ArrayList(4);
            arrayList.add(obj);
            arrayList.add(th);
            atomicReferenceFieldUpdater.set(this, arrayList);
        }

        /* renamed from: else, reason: not valid java name */
        public final ArrayList m6587else(Throwable th) {
            ArrayList arrayList;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f12718if;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                arrayList = new ArrayList(4);
            } else if (obj instanceof Throwable) {
                ArrayList arrayList2 = new ArrayList(4);
                arrayList2.add(obj);
                arrayList = arrayList2;
            } else {
                if (!(obj instanceof ArrayList)) {
                    throw new IllegalStateException(("State is " + obj).toString());
                }
                arrayList = (ArrayList) obj;
            }
            Throwable m6588if = m6588if();
            if (m6588if != null) {
                arrayList.add(0, m6588if);
            }
            if (th != null && !C0173Do.m394do(th, m6588if)) {
                arrayList.add(th);
            }
            atomicReferenceFieldUpdater.set(this, O4.f2549goto);
            return arrayList;
        }

        @Override // defpackage.InterfaceC4116zn
        /* renamed from: for */
        public final boolean mo1446for() {
            return m6588if() == null;
        }

        /* renamed from: if, reason: not valid java name */
        public final Throwable m6588if() {
            return (Throwable) f12717do.get(this);
        }

        /* renamed from: new, reason: not valid java name */
        public final boolean m6589new() {
            return m6588if() != null;
        }

        public final String toString() {
            return "Finishing[cancelling=" + m6589new() + ", completing=" + m6590try() + ", rootCause=" + m6588if() + ", exceptions=" + f12718if.get(this) + ", list=" + this.f12719do + ']';
        }

        /* renamed from: try, reason: not valid java name */
        public final boolean m6590try() {
            return f12716do.get(this) != 0;
        }
    }

    /* renamed from: ep$if, reason: invalid class name */
    public static final class Cif extends AbstractC2654dp {

        /* renamed from: do, reason: not valid java name */
        public final Cfor f12720do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Object f12721do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C4019y7 f12722do;

        /* renamed from: if, reason: not valid java name */
        public final C2713ep f12723if;

        public Cif(C2713ep c2713ep, Cfor cfor, C4019y7 c4019y7, Object obj) {
            this.f12723if = c2713ep;
            this.f12720do = cfor;
            this.f12722do = c4019y7;
            this.f12721do = obj;
        }

        @Override // defpackage.InterfaceC2650dk
        /* renamed from: this */
        public final /* bridge */ /* synthetic */ C3206kJ mo364this(Throwable th) {
            mo1461throw(th);
            return C3206kJ.f13965do;
        }

        @Override // defpackage.W8
        /* renamed from: throw */
        public final void mo1461throw(Throwable th) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C2713ep.f12713do;
            C2713ep c2713ep = this.f12723if;
            c2713ep.getClass();
            C4019y7 n = C2713ep.n(this.f12722do);
            Cfor cfor = this.f12720do;
            Object obj = this.f12721do;
            if (n == null || !c2713ep.v(cfor, n, obj)) {
                c2713ep.mo43native(c2713ep.m6575abstract(cfor, obj));
            }
        }
    }

    /* renamed from: ep$new, reason: invalid class name */
    public static final class Cnew extends C0329Kq.Cdo {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ C2713ep f12724do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ Object f12725do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cnew(C0329Kq c0329Kq, C2713ep c2713ep, Object obj) {
            super(c0329Kq);
            this.f12724do = c2713ep;
            this.f12725do = obj;
        }

        @Override // defpackage.P2
        /* renamed from: for */
        public final C0174Dp mo1738for(Object obj) {
            if (this.f12724do.c() == this.f12725do) {
                return null;
            }
            return C3850vF.f16046for;
        }
    }

    public C2713ep(boolean z) {
        this._state = z ? O4.f2552if : O4.f2534do;
    }

    public static C4019y7 n(C0329Kq c0329Kq) {
        while (c0329Kq.mo1070super()) {
            c0329Kq = c0329Kq.m1216final();
        }
        while (true) {
            c0329Kq = c0329Kq.m1214class();
            if (!c0329Kq.mo1070super()) {
                if (c0329Kq instanceof C4019y7) {
                    return (C4019y7) c0329Kq;
                }
                if (c0329Kq instanceof C0640Yu) {
                    return null;
                }
            }
        }
    }

    public static String t(Object obj) {
        if (obj instanceof Cfor) {
            Cfor cfor = (Cfor) obj;
            if (cfor.m6589new()) {
                return "Cancelling";
            }
            if (cfor.m6590try()) {
                return "Completing";
            }
        } else {
            if (!(obj instanceof InterfaceC4116zn)) {
                return obj instanceof U8 ? AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_CANCELLED : AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_COMPLETED;
            }
            if (!((InterfaceC4116zn) obj).mo1446for()) {
                return "New";
            }
        }
        return "Active";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: abstract, reason: not valid java name */
    public final Object m6575abstract(Cfor cfor, Object obj) {
        Throwable th = null;
        U8 u8 = obj instanceof U8 ? (U8) obj : null;
        Throwable th2 = u8 != null ? u8.f3839do : null;
        synchronized (cfor) {
            cfor.m6589new();
            ArrayList<Throwable> m6587else = cfor.m6587else(th2);
            if (!m6587else.isEmpty()) {
                Iterator it = m6587else.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (!(((Throwable) next) instanceof CancellationException)) {
                        th = next;
                        break;
                    }
                }
                th = th;
                if (th == null) {
                    th = (Throwable) m6587else.get(0);
                }
            } else if (cfor.m6589new()) {
                th = new C0656Zo(mo6578default(), null, this);
            }
            if (th != null && m6587else.size() > 1) {
                Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(m6587else.size()));
                for (Throwable th3 : m6587else) {
                    if (th3 != th && th3 != th && !(th3 instanceof CancellationException) && newSetFromMap.add(th3)) {
                        C3850vF.m8451for(th, th3);
                    }
                }
            }
        }
        if (th != null && th != th2) {
            obj = new U8(false, th);
        }
        if (th != null) {
            if (m6584switch(th) || d(th)) {
                C0173Do.m396for(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                U8.f3838do.compareAndSet((U8) obj, 0, 1);
            }
        }
        p(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f12713do;
        Object c0106An = obj instanceof InterfaceC4116zn ? new C0106An((InterfaceC4116zn) obj) : obj;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, cfor, c0106An) && atomicReferenceFieldUpdater.get(this) == cfor) {
        }
        m6579finally(cfor, obj);
        return obj;
    }

    @Override // defpackage.InterfaceC4078z7
    public final void b(C2713ep c2713ep) {
        m6583static(c2713ep);
    }

    @Override // defpackage.InterfaceC3161jb.Cif
    /* renamed from: break, reason: not valid java name */
    public final InterfaceC3161jb.Cfor<?> mo6576break() {
        return InterfaceC0634Yo.Cif.f4763do;
    }

    public final Object c() {
        while (true) {
            Object obj = f12713do.get(this);
            if (!(obj instanceof AbstractC0780bw)) {
                return obj;
            }
            ((AbstractC0780bw) obj).mo1737do(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Throwable] */
    @Override // defpackage.InterfaceC3889vw
    /* renamed from: const, reason: not valid java name */
    public final CancellationException mo6577const() {
        CancellationException cancellationException;
        Object c = c();
        if (c instanceof Cfor) {
            cancellationException = ((Cfor) c).m6588if();
        } else if (c instanceof U8) {
            cancellationException = ((U8) c).f3839do;
        } else {
            if (c instanceof InterfaceC4116zn) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + c).toString());
            }
            cancellationException = null;
        }
        CancellationException cancellationException2 = cancellationException instanceof CancellationException ? cancellationException : null;
        return cancellationException2 == null ? new C0656Zo("Parent job is ".concat(t(c)), cancellationException, this) : cancellationException2;
    }

    public boolean d(Throwable th) {
        return false;
    }

    /* renamed from: default, reason: not valid java name */
    public String mo6578default() {
        return "Job was cancelled";
    }

    @Override // defpackage.InterfaceC0634Yo
    /* renamed from: do */
    public final InterfaceC0634Yo mo2954do() {
        InterfaceC3960x7 interfaceC3960x7 = (InterfaceC3960x7) f12714if.get(this);
        if (interfaceC3960x7 != null) {
            return interfaceC3960x7.mo3080do();
        }
        return null;
    }

    public void e(X8 x8) {
        throw x8;
    }

    /* renamed from: extends */
    public boolean mo2033extends(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return m6583static(th) && mo4862transient();
    }

    @Override // defpackage.InterfaceC0634Yo
    public final InterfaceC0273Ie f(InterfaceC2650dk<? super Throwable, C3206kJ> interfaceC2650dk) {
        return mo2958public(false, true, interfaceC2650dk);
    }

    /* renamed from: finally, reason: not valid java name */
    public final void m6579finally(InterfaceC4116zn interfaceC4116zn, Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f12714if;
        InterfaceC3960x7 interfaceC3960x7 = (InterfaceC3960x7) atomicReferenceFieldUpdater.get(this);
        if (interfaceC3960x7 != null) {
            interfaceC3960x7.mo959goto();
            atomicReferenceFieldUpdater.set(this, C0662Zu.f4916do);
        }
        X8 x8 = null;
        U8 u8 = obj instanceof U8 ? (U8) obj : null;
        Throwable th = u8 != null ? u8.f3839do : null;
        if (interfaceC4116zn instanceof AbstractC2654dp) {
            try {
                ((AbstractC2654dp) interfaceC4116zn).mo1461throw(th);
                return;
            } catch (Throwable th2) {
                e(new X8("Exception in completion handler " + interfaceC4116zn + " for " + this, th2));
                return;
            }
        }
        C0640Yu mo1445case = interfaceC4116zn.mo1445case();
        if (mo1445case != null) {
            Object m1213catch = mo1445case.m1213catch();
            C0173Do.m396for(m1213catch, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            for (C0329Kq c0329Kq = (C0329Kq) m1213catch; !C0173Do.m394do(c0329Kq, mo1445case); c0329Kq = c0329Kq.m1214class()) {
                if (c0329Kq instanceof AbstractC2654dp) {
                    AbstractC2654dp abstractC2654dp = (AbstractC2654dp) c0329Kq;
                    try {
                        abstractC2654dp.mo1461throw(th);
                    } catch (Throwable th3) {
                        if (x8 != null) {
                            C3850vF.m8451for(x8, th3);
                        } else {
                            x8 = new X8("Exception in completion handler " + abstractC2654dp + " for " + this, th3);
                            C3206kJ c3206kJ = C3206kJ.f13965do;
                        }
                    }
                }
            }
            if (x8 != null) {
                e(x8);
            }
        }
    }

    @Override // defpackage.InterfaceC0634Yo
    /* renamed from: for */
    public boolean mo2955for() {
        Object c = c();
        return (c instanceof InterfaceC4116zn) && ((InterfaceC4116zn) c).mo1446for();
    }

    public final void g(InterfaceC0634Yo interfaceC0634Yo) {
        C0662Zu c0662Zu = C0662Zu.f4916do;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f12714if;
        if (interfaceC0634Yo == null) {
            atomicReferenceFieldUpdater.set(this, c0662Zu);
            return;
        }
        interfaceC0634Yo.start();
        InterfaceC3960x7 mo2957interface = interfaceC0634Yo.mo2957interface(this);
        atomicReferenceFieldUpdater.set(this, mo2957interface);
        if (!(c() instanceof InterfaceC4116zn)) {
            mo2957interface.mo959goto();
            atomicReferenceFieldUpdater.set(this, c0662Zu);
        }
    }

    @Override // defpackage.InterfaceC0634Yo
    /* renamed from: goto */
    public final CancellationException mo2956goto() {
        CancellationException cancellationException;
        Object c = c();
        if (!(c instanceof Cfor)) {
            if (c instanceof InterfaceC4116zn) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (!(c instanceof U8)) {
                return new C0656Zo(getClass().getSimpleName().concat(" has completed normally"), null, this);
            }
            Throwable th = ((U8) c).f3839do;
            cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
            return cancellationException == null ? new C0656Zo(mo6578default(), th, this) : cancellationException;
        }
        Throwable m6588if = ((Cfor) c).m6588if();
        if (m6588if == null) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        String concat = getClass().getSimpleName().concat(" is cancelling");
        cancellationException = m6588if instanceof CancellationException ? (CancellationException) m6588if : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        if (concat == null) {
            concat = mo6578default();
        }
        return new C0656Zo(concat, m6588if, this);
    }

    public boolean h() {
        return this instanceof A5;
    }

    public final Object i(Object obj) {
        Object u;
        do {
            u = u(c(), obj);
            if (u == O4.f2560new) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                U8 u8 = obj instanceof U8 ? (U8) obj : null;
                throw new IllegalStateException(str, u8 != null ? u8.f3839do : null);
            }
        } while (u == O4.f2525case);
        return u;
    }

    /* renamed from: implements */
    public boolean mo4861implements() {
        return this instanceof R8;
    }

    /* renamed from: import, reason: not valid java name */
    public final boolean m6580import(Object obj, C0640Yu c0640Yu, AbstractC2654dp abstractC2654dp) {
        boolean z;
        char c;
        Cnew cnew = new Cnew(abstractC2654dp, this, obj);
        do {
            C0329Kq m1216final = c0640Yu.m1216final();
            C0329Kq.f1886if.lazySet(abstractC2654dp, m1216final);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C0329Kq.f1884do;
            atomicReferenceFieldUpdater.lazySet(abstractC2654dp, c0640Yu);
            cnew.f1888if = c0640Yu;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(m1216final, c0640Yu, cnew)) {
                    z = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(m1216final) != c0640Yu) {
                    z = false;
                    break;
                }
            }
            c = !z ? (char) 0 : cnew.mo1737do(m1216final) == null ? (char) 1 : (char) 2;
            if (c == 1) {
                return true;
            }
        } while (c != 2);
        return false;
    }

    @Override // defpackage.InterfaceC0634Yo
    /* renamed from: interface */
    public final InterfaceC3960x7 mo2957interface(C2713ep c2713ep) {
        InterfaceC0273Ie m2959do = InterfaceC0634Yo.Cdo.m2959do(this, true, new C4019y7(c2713ep), 2);
        C0173Do.m396for(m2959do, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (InterfaceC3960x7) m2959do;
    }

    @Override // defpackage.InterfaceC0634Yo
    public final boolean isCancelled() {
        Object c = c();
        return (c instanceof U8) || ((c instanceof Cfor) && ((Cfor) c).m6589new());
    }

    @Override // defpackage.InterfaceC0634Yo
    public final void j(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new C0656Zo(mo6578default(), null, this);
        }
        m6583static(cancellationException);
    }

    @Override // defpackage.InterfaceC3161jb
    public final InterfaceC3161jb k(InterfaceC3161jb interfaceC3161jb) {
        return InterfaceC3161jb.Cif.Cdo.m7142new(this, interfaceC3161jb);
    }

    public String m() {
        return getClass().getSimpleName();
    }

    /* renamed from: native */
    public void mo43native(Object obj) {
    }

    @Override // defpackage.InterfaceC3161jb.Cif, defpackage.InterfaceC3161jb
    /* renamed from: new */
    public final <E extends InterfaceC3161jb.Cif> E mo814new(InterfaceC3161jb.Cfor<E> cfor) {
        return (E) InterfaceC3161jb.Cif.Cdo.m7141if(this, cfor);
    }

    public final void o(C0640Yu c0640Yu, Throwable th) {
        Object m1213catch = c0640Yu.m1213catch();
        C0173Do.m396for(m1213catch, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        X8 x8 = null;
        for (C0329Kq c0329Kq = (C0329Kq) m1213catch; !C0173Do.m394do(c0329Kq, c0640Yu); c0329Kq = c0329Kq.m1214class()) {
            if (c0329Kq instanceof AbstractC0713ap) {
                AbstractC2654dp abstractC2654dp = (AbstractC2654dp) c0329Kq;
                try {
                    abstractC2654dp.mo1461throw(th);
                } catch (Throwable th2) {
                    if (x8 != null) {
                        C3850vF.m8451for(x8, th2);
                    } else {
                        x8 = new X8("Exception in completion handler " + abstractC2654dp + " for " + this, th2);
                        C3206kJ c3206kJ = C3206kJ.f13965do;
                    }
                }
            }
        }
        if (x8 != null) {
            e(x8);
        }
        m6584switch(th);
    }

    public void p(Object obj) {
    }

    /* renamed from: private, reason: not valid java name */
    public final Throwable m6581private(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new C0656Zo(mo6578default(), null, this) : th;
        }
        C0173Do.m396for(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((InterfaceC3889vw) obj).mo6577const();
    }

    /* renamed from: protected, reason: not valid java name */
    public final Object m6582protected() {
        Object c = c();
        if (!(!(c instanceof InterfaceC4116zn))) {
            throw new IllegalStateException("This job has not completed yet".toString());
        }
        if (c instanceof U8) {
            throw ((U8) c).f3839do;
        }
        return O4.m1626synchronized(c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [yn] */
    @Override // defpackage.InterfaceC0634Yo
    /* renamed from: public */
    public final InterfaceC0273Ie mo2958public(boolean z, boolean z2, InterfaceC2650dk<? super Throwable, C3206kJ> interfaceC2650dk) {
        AbstractC2654dp abstractC2654dp;
        boolean z3;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Throwable th;
        if (z) {
            abstractC2654dp = interfaceC2650dk instanceof AbstractC0713ap ? (AbstractC0713ap) interfaceC2650dk : null;
            if (abstractC2654dp == null) {
                abstractC2654dp = new C0370Mo(interfaceC2650dk);
            }
        } else {
            abstractC2654dp = interfaceC2650dk instanceof AbstractC2654dp ? (AbstractC2654dp) interfaceC2650dk : null;
            if (abstractC2654dp == null) {
                abstractC2654dp = new C0392No(interfaceC2650dk);
            }
        }
        abstractC2654dp.f12547do = this;
        while (true) {
            Object c = c();
            if (c instanceof C0361Mf) {
                C0361Mf c0361Mf = (C0361Mf) c;
                if (c0361Mf.f2221do) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f12713do;
                    while (true) {
                        if (atomicReferenceFieldUpdater2.compareAndSet(this, c, abstractC2654dp)) {
                            z3 = true;
                            break;
                        }
                        if (atomicReferenceFieldUpdater2.get(this) != c) {
                            z3 = false;
                            break;
                        }
                    }
                    if (z3) {
                        return abstractC2654dp;
                    }
                } else {
                    C0640Yu c0640Yu = new C0640Yu();
                    if (!c0361Mf.f2221do) {
                        c0640Yu = new C4057yn(c0640Yu);
                    }
                    do {
                        atomicReferenceFieldUpdater = f12713do;
                        if (atomicReferenceFieldUpdater.compareAndSet(this, c0361Mf, c0640Yu)) {
                            break;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == c0361Mf);
                }
            } else {
                if (!(c instanceof InterfaceC4116zn)) {
                    if (z2) {
                        U8 u8 = c instanceof U8 ? (U8) c : null;
                        interfaceC2650dk.mo364this(u8 != null ? u8.f3839do : null);
                    }
                    return C0662Zu.f4916do;
                }
                C0640Yu mo1445case = ((InterfaceC4116zn) c).mo1445case();
                if (mo1445case == null) {
                    C0173Do.m396for(c, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    r((AbstractC2654dp) c);
                } else {
                    InterfaceC0273Ie interfaceC0273Ie = C0662Zu.f4916do;
                    if (z && (c instanceof Cfor)) {
                        synchronized (c) {
                            th = ((Cfor) c).m6588if();
                            if (th == null || ((interfaceC2650dk instanceof C4019y7) && !((Cfor) c).m6590try())) {
                                if (m6580import(c, mo1445case, abstractC2654dp)) {
                                    if (th == null) {
                                        return abstractC2654dp;
                                    }
                                    interfaceC0273Ie = abstractC2654dp;
                                }
                            }
                            C3206kJ c3206kJ = C3206kJ.f13965do;
                        }
                    } else {
                        th = null;
                    }
                    if (th != null) {
                        if (z2) {
                            interfaceC2650dk.mo364this(th);
                        }
                        return interfaceC0273Ie;
                    }
                    if (m6580import(c, mo1445case, abstractC2654dp)) {
                        return abstractC2654dp;
                    }
                }
            }
        }
    }

    public void q() {
    }

    public final void r(AbstractC2654dp abstractC2654dp) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        boolean z;
        C0640Yu c0640Yu = new C0640Yu();
        abstractC2654dp.getClass();
        C0329Kq.f1886if.lazySet(c0640Yu, abstractC2654dp);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C0329Kq.f1884do;
        atomicReferenceFieldUpdater2.lazySet(c0640Yu, abstractC2654dp);
        while (true) {
            if (abstractC2654dp.m1213catch() != abstractC2654dp) {
                break;
            }
            while (true) {
                if (atomicReferenceFieldUpdater2.compareAndSet(abstractC2654dp, abstractC2654dp, c0640Yu)) {
                    z = true;
                    break;
                } else if (atomicReferenceFieldUpdater2.get(abstractC2654dp) != abstractC2654dp) {
                    z = false;
                    break;
                }
            }
            if (z) {
                c0640Yu.m1215else(abstractC2654dp);
                break;
            }
        }
        C0329Kq m1214class = abstractC2654dp.m1214class();
        do {
            atomicReferenceFieldUpdater = f12713do;
            if (atomicReferenceFieldUpdater.compareAndSet(this, abstractC2654dp, m1214class)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == abstractC2654dp);
    }

    public final int s(Object obj) {
        boolean z = obj instanceof C0361Mf;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f12713do;
        boolean z2 = false;
        if (z) {
            if (((C0361Mf) obj).f2221do) {
                return 0;
            }
            C0361Mf c0361Mf = O4.f2552if;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, c0361Mf)) {
                    z2 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            if (!z2) {
                return -1;
            }
            q();
            return 1;
        }
        if (!(obj instanceof C4057yn)) {
            return 0;
        }
        C0640Yu c0640Yu = ((C4057yn) obj).f16831do;
        while (true) {
            if (atomicReferenceFieldUpdater.compareAndSet(this, obj, c0640Yu)) {
                z2 = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != obj) {
                break;
            }
        }
        if (!z2) {
            return -1;
        }
        q();
        return 1;
    }

    @Override // defpackage.InterfaceC0634Yo
    public final boolean start() {
        int s;
        do {
            s = s(c());
            if (s == 0) {
                return false;
            }
        } while (s != 1);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00fd, code lost:
    
        r0 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00cd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x003f A[SYNTHETIC] */
    /* renamed from: static, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6583static(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2713ep.m6583static(java.lang.Object):boolean");
    }

    @Override // defpackage.InterfaceC3161jb
    /* renamed from: strictfp */
    public final <R> R mo815strictfp(R r, InterfaceC3641rk<? super R, ? super InterfaceC3161jb.Cif, ? extends R> interfaceC3641rk) {
        return (R) InterfaceC3161jb.Cif.Cdo.m7139do(this, r, interfaceC3641rk);
    }

    /* renamed from: switch, reason: not valid java name */
    public final boolean m6584switch(Throwable th) {
        if (h()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        InterfaceC3960x7 interfaceC3960x7 = (InterfaceC3960x7) f12714if.get(this);
        return (interfaceC3960x7 == null || interfaceC3960x7 == C0662Zu.f4916do) ? z : interfaceC3960x7.mo3079const(th) || z;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final C0640Yu m6585synchronized(InterfaceC4116zn interfaceC4116zn) {
        C0640Yu mo1445case = interfaceC4116zn.mo1445case();
        if (mo1445case != null) {
            return mo1445case;
        }
        if (interfaceC4116zn instanceof C0361Mf) {
            return new C0640Yu();
        }
        if (interfaceC4116zn instanceof AbstractC2654dp) {
            r((AbstractC2654dp) interfaceC4116zn);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + interfaceC4116zn).toString());
    }

    @Override // defpackage.InterfaceC3161jb
    /* renamed from: this */
    public final InterfaceC3161jb mo816this(InterfaceC3161jb.Cfor<?> cfor) {
        return InterfaceC3161jb.Cif.Cdo.m7140for(this, cfor);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(m() + '{' + t(c()) + '}');
        sb.append('@');
        sb.append(C0820cd.m4914try(this));
        return sb.toString();
    }

    /* renamed from: transient */
    public boolean mo4862transient() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [T, java.lang.Throwable] */
    public final Object u(Object obj, Object obj2) {
        boolean z;
        if (!(obj instanceof InterfaceC4116zn)) {
            return O4.f2560new;
        }
        boolean z2 = false;
        if (((obj instanceof C0361Mf) || (obj instanceof AbstractC2654dp)) && !(obj instanceof C4019y7) && !(obj2 instanceof U8)) {
            InterfaceC4116zn interfaceC4116zn = (InterfaceC4116zn) obj;
            Object c0106An = obj2 instanceof InterfaceC4116zn ? new C0106An((InterfaceC4116zn) obj2) : obj2;
            while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f12713do;
                if (atomicReferenceFieldUpdater.compareAndSet(this, interfaceC4116zn, c0106An)) {
                    z = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != interfaceC4116zn) {
                    z = false;
                    break;
                }
            }
            if (z) {
                p(obj2);
                m6579finally(interfaceC4116zn, obj2);
                z2 = true;
            }
            return z2 ? obj2 : O4.f2525case;
        }
        InterfaceC4116zn interfaceC4116zn2 = (InterfaceC4116zn) obj;
        C0640Yu m6585synchronized = m6585synchronized(interfaceC4116zn2);
        if (m6585synchronized == null) {
            return O4.f2525case;
        }
        C4019y7 c4019y7 = null;
        Cfor cfor = interfaceC4116zn2 instanceof Cfor ? (Cfor) interfaceC4116zn2 : null;
        if (cfor == null) {
            cfor = new Cfor(m6585synchronized, null);
        }
        C2723ez c2723ez = new C2723ez();
        synchronized (cfor) {
            if (cfor.m6590try()) {
                return O4.f2560new;
            }
            Cfor.f12716do.set(cfor, 1);
            if (cfor != interfaceC4116zn2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f12713do;
                while (true) {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, interfaceC4116zn2, cfor)) {
                        z2 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater2.get(this) != interfaceC4116zn2) {
                        break;
                    }
                }
                if (!z2) {
                    return O4.f2525case;
                }
            }
            boolean m6589new = cfor.m6589new();
            U8 u8 = obj2 instanceof U8 ? (U8) obj2 : null;
            if (u8 != null) {
                cfor.m6586do(u8.f3839do);
            }
            ?? m6588if = Boolean.valueOf(m6589new ^ true).booleanValue() ? cfor.m6588if() : 0;
            c2723ez.f12779do = m6588if;
            C3206kJ c3206kJ = C3206kJ.f13965do;
            if (m6588if != 0) {
                o(m6585synchronized, m6588if);
            }
            C4019y7 c4019y72 = interfaceC4116zn2 instanceof C4019y7 ? (C4019y7) interfaceC4116zn2 : null;
            if (c4019y72 == null) {
                C0640Yu mo1445case = interfaceC4116zn2.mo1445case();
                if (mo1445case != null) {
                    c4019y7 = n(mo1445case);
                }
            } else {
                c4019y7 = c4019y72;
            }
            return (c4019y7 == null || !v(cfor, c4019y7, obj2)) ? m6575abstract(cfor, obj2) : O4.f2578try;
        }
    }

    public final boolean v(Cfor cfor, C4019y7 c4019y7, Object obj) {
        while (InterfaceC0634Yo.Cdo.m2959do(c4019y7.f16680do, false, new Cif(this, cfor, c4019y7, obj), 1) == C0662Zu.f4916do) {
            c4019y7 = n(c4019y7);
            if (c4019y7 == null) {
                return false;
            }
        }
        return true;
    }
}
