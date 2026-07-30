package androidx.lifecycle;

import defpackage.AbstractC0459Qp;
import defpackage.AbstractC3398nc;
import defpackage.C0173Do;
import defpackage.C0304Jn;
import defpackage.C2629dL;
import defpackage.C2782fz;
import defpackage.C3375nB;
import defpackage.InterfaceC2650dk;
import defpackage.InterfaceC2746fL;
import defpackage.V7;
import java.util.ArrayList;
import java.util.Arrays;

/* renamed from: androidx.lifecycle.final, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfinal {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f7117do = new Cif();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cfor f7116do = new Cfor();

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f7115do = new Cdo();

    /* renamed from: androidx.lifecycle.final$do, reason: invalid class name */
    public static final class Cdo {
    }

    /* renamed from: androidx.lifecycle.final$for, reason: invalid class name */
    public static final class Cfor {
    }

    /* renamed from: androidx.lifecycle.final$if, reason: invalid class name */
    public static final class Cif {
    }

    /* renamed from: androidx.lifecycle.final$new, reason: invalid class name */
    public static final class Cnew extends AbstractC0459Qp implements InterfaceC2650dk<AbstractC3398nc, C3375nB> {

        /* renamed from: do, reason: not valid java name */
        public static final Cnew f7118do = new Cnew();

        public Cnew() {
            super(1);
        }

        @Override // defpackage.InterfaceC2650dk
        /* renamed from: this */
        public final C3375nB mo364this(AbstractC3398nc abstractC3398nc) {
            C0173Do.m401try(abstractC3398nc, "$this$initializer");
            return new C3375nB();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0068, code lost:
    
        if (r5.isEmpty() == true) goto L28;
     */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.lifecycle.Cconst m4256do(defpackage.C0397Nt r7) {
        /*
            androidx.lifecycle.final$if r0 = androidx.lifecycle.Cfinal.f7117do
            java.util.LinkedHashMap r7 = r7.f14537do
            java.lang.Object r0 = r7.get(r0)
            qB r0 = (defpackage.InterfaceC3552qB) r0
            if (r0 == 0) goto L90
            androidx.lifecycle.final$for r1 = androidx.lifecycle.Cfinal.f7116do
            java.lang.Object r1 = r7.get(r1)
            fL r1 = (defpackage.InterfaceC2746fL) r1
            if (r1 == 0) goto L88
            androidx.lifecycle.final$do r2 = androidx.lifecycle.Cfinal.f7115do
            java.lang.Object r2 = r7.get(r2)
            android.os.Bundle r2 = (android.os.Bundle) r2
            androidx.lifecycle.native r3 = androidx.lifecycle.Cnative.f7135do
            java.lang.Object r7 = r7.get(r3)
            java.lang.String r7 = (java.lang.String) r7
            if (r7 == 0) goto L80
            androidx.savedstate.do r0 = r0.getSavedStateRegistry()
            androidx.savedstate.do$if r0 = r0.m4582if()
            boolean r3 = r0 instanceof defpackage.C3316mB
            r4 = 0
            if (r3 == 0) goto L38
            mB r0 = (defpackage.C3316mB) r0
            goto L39
        L38:
            r0 = r4
        L39:
            if (r0 == 0) goto L78
            nB r1 = m4257if(r1)
            java.util.LinkedHashMap r1 = r1.f14471do
            java.lang.Object r3 = r1.get(r7)
            androidx.lifecycle.const r3 = (androidx.lifecycle.Cconst) r3
            if (r3 != 0) goto L77
            java.lang.Class<? extends java.lang.Object>[] r3 = androidx.lifecycle.Cconst.f7102do
            r0.m7447if()
            android.os.Bundle r3 = r0.f14317do
            if (r3 == 0) goto L57
            android.os.Bundle r3 = r3.getBundle(r7)
            goto L58
        L57:
            r3 = r4
        L58:
            android.os.Bundle r5 = r0.f14317do
            if (r5 == 0) goto L5f
            r5.remove(r7)
        L5f:
            android.os.Bundle r5 = r0.f14317do
            if (r5 == 0) goto L6b
            boolean r5 = r5.isEmpty()
            r6 = 1
            if (r5 != r6) goto L6b
            goto L6c
        L6b:
            r6 = 0
        L6c:
            if (r6 == 0) goto L70
            r0.f14317do = r4
        L70:
            androidx.lifecycle.const r3 = androidx.lifecycle.Cconst.Cdo.m4251do(r3, r2)
            r1.put(r7, r3)
        L77:
            return r3
        L78:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call"
            r7.<init>(r0)
            throw r7
        L80:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "CreationExtras must have a value by `VIEW_MODEL_KEY`"
            r7.<init>(r0)
            throw r7
        L88:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"
            r7.<init>(r0)
            throw r7
        L90:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.Cfinal.m4256do(Nt):androidx.lifecycle.const");
    }

    /* renamed from: if, reason: not valid java name */
    public static final C3375nB m4257if(InterfaceC2746fL interfaceC2746fL) {
        C0173Do.m401try(interfaceC2746fL, "<this>");
        ArrayList arrayList = new ArrayList();
        V7 m6697do = C2782fz.m6697do(C3375nB.class);
        Cnew cnew = Cnew.f7118do;
        C0173Do.m401try(cnew, "initializer");
        Class<?> mo1830do = m6697do.mo1830do();
        C0173Do.m396for(mo1830do, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        arrayList.add(new C2629dL(mo1830do, cnew));
        C2629dL[] c2629dLArr = (C2629dL[]) arrayList.toArray(new C2629dL[0]);
        return (C3375nB) new Cimport(interfaceC2746fL.getViewModelStore(), new C0304Jn((C2629dL[]) Arrays.copyOf(c2629dLArr, c2629dLArr.length)), interfaceC2746fL instanceof androidx.lifecycle.Cfor ? ((androidx.lifecycle.Cfor) interfaceC2746fL).getDefaultViewModelCreationExtras() : AbstractC3398nc.Cdo.f14538do).m4270if(C3375nB.class, "androidx.lifecycle.internal.SavedStateHandlesVM");
    }
}
