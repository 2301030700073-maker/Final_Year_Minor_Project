package defpackage;

import com.facebook.internal.ServerProtocol;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes3.dex */
public final class ZB<R> extends L6 implements InterfaceC0677aC, GL {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f4790do = AtomicReferenceFieldUpdater.newUpdater(ZB.class, Object.class, ServerProtocol.DIALOG_PARAM_STATE);
    private volatile Object state;

    /* renamed from: ZB$do, reason: invalid class name */
    public final class Cdo {
    }

    @Override // defpackage.M6
    /* renamed from: case */
    public final void mo1040case(Throwable th) {
        boolean z;
        do {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4790do;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == O2.f2489for) {
                return;
            }
            C0174Dp c0174Dp = O2.f2503new;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, c0174Dp)) {
                    z = true;
                    break;
                } else if (atomicReferenceFieldUpdater.get(this) != obj) {
                    z = false;
                    break;
                }
            }
        } while (!z);
    }

    @Override // defpackage.InterfaceC0677aC
    /* renamed from: do, reason: not valid java name */
    public final boolean mo2979do(Object obj, Object obj2) {
        return m2980else(obj) == 0;
    }

    /* renamed from: else, reason: not valid java name */
    public final int m2980else(Object obj) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4790do;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof T6)) {
                if (C0173Do.m394do(obj2, O2.f2489for) ? true : obj2 instanceof Cdo) {
                    return 3;
                }
                if (C0173Do.m394do(obj2, O2.f2503new)) {
                    return 2;
                }
                boolean z = false;
                if (C0173Do.m394do(obj2, O2.f2494if)) {
                    List m1617package = O4.m1617package(obj);
                    while (true) {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, m1617package)) {
                            z = true;
                            break;
                        }
                        if (atomicReferenceFieldUpdater.get(this) != obj2) {
                            break;
                        }
                    }
                    if (z) {
                        return 1;
                    }
                } else {
                    if (!(obj2 instanceof List)) {
                        throw new IllegalStateException(("Unexpected state: " + obj2).toString());
                    }
                    Collection collection = (Collection) obj2;
                    C0173Do.m401try(collection, "<this>");
                    ArrayList arrayList = new ArrayList(collection.size() + 1);
                    arrayList.addAll(collection);
                    arrayList.add(obj);
                    while (true) {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, arrayList)) {
                            z = true;
                            break;
                        }
                        if (atomicReferenceFieldUpdater.get(this) != obj2) {
                            break;
                        }
                    }
                    if (z) {
                        return 1;
                    }
                }
            }
        }
    }

    @Override // defpackage.GL
    /* renamed from: for */
    public final void mo728for(WB<?> wb, int i) {
    }

    @Override // defpackage.InterfaceC0677aC
    /* renamed from: if, reason: not valid java name */
    public final InterfaceC3161jb mo2981if() {
        return null;
    }

    @Override // defpackage.InterfaceC2650dk
    /* renamed from: this */
    public final /* bridge */ /* synthetic */ C3206kJ mo364this(Throwable th) {
        mo1040case(th);
        return C3206kJ.f13965do;
    }
}
