package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.Cimport;
import androidx.savedstate.Cdo;
import defpackage.AbstractC0805cL;
import defpackage.C0173Do;
import defpackage.C0397Nt;
import defpackage.C3610rB;
import defpackage.InterfaceC3552qB;
import defpackage.U0;
import java.lang.reflect.Constructor;
import java.util.LinkedHashMap;

/* renamed from: androidx.lifecycle.super, reason: invalid class name */
/* loaded from: classes.dex */
public final class Csuper extends Cimport.Cnew implements Cimport.Cif {

    /* renamed from: do, reason: not valid java name */
    public final Application f7136do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bundle f7137do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cimport.Cdo f7138do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ctry f7139do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f7140do;

    @SuppressLint({"LambdaLast"})
    public Csuper(Application application, InterfaceC3552qB interfaceC3552qB, Bundle bundle) {
        Cimport.Cdo cdo;
        C0173Do.m401try(interfaceC3552qB, "owner");
        this.f7140do = interfaceC3552qB.getSavedStateRegistry();
        this.f7139do = interfaceC3552qB.getLifecycle();
        this.f7137do = bundle;
        this.f7136do = application;
        if (application != null) {
            if (Cimport.Cdo.f7132do == null) {
                Cimport.Cdo.f7132do = new Cimport.Cdo(application);
            }
            cdo = Cimport.Cdo.f7132do;
            C0173Do.m398if(cdo);
        } else {
            cdo = new Cimport.Cdo(null);
        }
        this.f7138do = cdo;
    }

    @Override // androidx.lifecycle.Cimport.Cif
    /* renamed from: do */
    public final <T extends AbstractC0805cL> T mo1068do(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) m4275new(cls, canonicalName);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.Cimport.Cnew
    /* renamed from: for */
    public final void mo4272for(AbstractC0805cL abstractC0805cL) {
        Ctry ctry = this.f7139do;
        if (ctry != null) {
            Cdo cdo = this.f7140do;
            C0173Do.m398if(cdo);
            Cnew.m4273do(abstractC0805cL, cdo, ctry);
        }
    }

    @Override // androidx.lifecycle.Cimport.Cif
    /* renamed from: if */
    public final AbstractC0805cL mo1069if(Class cls, C0397Nt c0397Nt) {
        Cnative cnative = Cnative.f7135do;
        LinkedHashMap linkedHashMap = c0397Nt.f14537do;
        String str = (String) linkedHashMap.get(cnative);
        if (str == null) {
            throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        }
        if (linkedHashMap.get(Cfinal.f7117do) == null || linkedHashMap.get(Cfinal.f7116do) == null) {
            if (this.f7139do != null) {
                return m4275new(cls, str);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        Application application = (Application) linkedHashMap.get(Cwhile.f7154do);
        boolean isAssignableFrom = U0.class.isAssignableFrom(cls);
        Constructor m7938do = (!isAssignableFrom || application == null) ? C3610rB.m7938do(cls, C3610rB.f15225if) : C3610rB.m7938do(cls, C3610rB.f15224do);
        return m7938do == null ? this.f7138do.mo1069if(cls, c0397Nt) : (!isAssignableFrom || application == null) ? C3610rB.m7939if(cls, m7938do, Cfinal.m4256do(c0397Nt)) : C3610rB.m7939if(cls, m7938do, application, Cfinal.m4256do(c0397Nt));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.AbstractC0805cL m4275new(java.lang.Class r10, java.lang.String r11) {
        /*
            r9 = this;
            androidx.lifecycle.try r0 = r9.f7139do
            if (r0 == 0) goto Lb8
            java.lang.Class<U0> r1 = defpackage.U0.class
            boolean r1 = r1.isAssignableFrom(r10)
            if (r1 == 0) goto L17
            android.app.Application r2 = r9.f7136do
            if (r2 == 0) goto L17
            java.util.List<java.lang.Class<?>> r2 = defpackage.C3610rB.f15224do
            java.lang.reflect.Constructor r2 = defpackage.C3610rB.m7938do(r10, r2)
            goto L1d
        L17:
            java.util.List<java.lang.Class<?>> r2 = defpackage.C3610rB.f15225if
            java.lang.reflect.Constructor r2 = defpackage.C3610rB.m7938do(r10, r2)
        L1d:
            if (r2 != 0) goto L3f
            android.app.Application r11 = r9.f7136do
            if (r11 == 0) goto L2a
            androidx.lifecycle.import$do r11 = r9.f7138do
            cL r10 = r11.mo1068do(r10)
            goto L3e
        L2a:
            androidx.lifecycle.import$for r11 = androidx.lifecycle.Cimport.Cfor.f7134do
            if (r11 != 0) goto L35
            androidx.lifecycle.import$for r11 = new androidx.lifecycle.import$for
            r11.<init>()
            androidx.lifecycle.Cimport.Cfor.f7134do = r11
        L35:
            androidx.lifecycle.import$for r11 = androidx.lifecycle.Cimport.Cfor.f7134do
            defpackage.C0173Do.m398if(r11)
            cL r10 = r11.mo1068do(r10)
        L3e:
            return r10
        L3f:
            androidx.savedstate.do r3 = r9.f7140do
            defpackage.C0173Do.m398if(r3)
            android.os.Bundle r4 = r9.f7137do
            android.os.Bundle r5 = r3.m4580do(r11)
            java.lang.Class<? extends java.lang.Object>[] r6 = androidx.lifecycle.Cconst.f7102do
            androidx.lifecycle.const r4 = androidx.lifecycle.Cconst.Cdo.m4251do(r5, r4)
            androidx.lifecycle.SavedStateHandleController r5 = new androidx.lifecycle.SavedStateHandleController
            r5.<init>(r11, r4)
            r5.m4244for(r0, r3)
            androidx.lifecycle.try$if r11 = r0.mo4263if()
            androidx.lifecycle.try$if r6 = androidx.lifecycle.Ctry.Cif.INITIALIZED
            r7 = 1
            r8 = 0
            if (r11 == r6) goto L79
            androidx.lifecycle.try$if r6 = androidx.lifecycle.Ctry.Cif.STARTED
            int r11 = r11.compareTo(r6)
            if (r11 < 0) goto L6c
            r11 = 1
            goto L6d
        L6c:
            r11 = 0
        L6d:
            if (r11 == 0) goto L70
            goto L79
        L70:
            androidx.lifecycle.LegacySavedStateHandleController$tryToAddRecreator$1 r11 = new androidx.lifecycle.LegacySavedStateHandleController$tryToAddRecreator$1
            r11.<init>(r0, r3)
            r0.mo4259do(r11)
            goto L7c
        L79:
            r3.m4583new()
        L7c:
            if (r1 == 0) goto L8e
            android.app.Application r11 = r9.f7136do
            if (r11 == 0) goto L8e
            r0 = 2
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r0[r8] = r11
            r0[r7] = r4
            cL r10 = defpackage.C3610rB.m7939if(r10, r2, r0)
            goto L96
        L8e:
            java.lang.Object[] r11 = new java.lang.Object[r7]
            r11[r8] = r4
            cL r10 = defpackage.C3610rB.m7939if(r10, r2, r11)
        L96:
            java.lang.String r11 = "androidx.lifecycle.savedstate.vm.tag"
            java.util.HashMap r0 = r10.f8522do
            monitor-enter(r0)
            java.util.HashMap r1 = r10.f8522do     // Catch: java.lang.Throwable -> Lb5
            java.lang.Object r1 = r1.get(r11)     // Catch: java.lang.Throwable -> Lb5
            if (r1 != 0) goto La8
            java.util.HashMap r2 = r10.f8522do     // Catch: java.lang.Throwable -> Lb5
            r2.put(r11, r5)     // Catch: java.lang.Throwable -> Lb5
        La8:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb5
            if (r1 != 0) goto Lac
            goto Lad
        Lac:
            r5 = r1
        Lad:
            boolean r11 = r10.f8524do
            if (r11 == 0) goto Lb4
            defpackage.AbstractC0805cL.m4899do(r5)
        Lb4:
            return r10
        Lb5:
            r10 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb5
            throw r10
        Lb8:
            java.lang.UnsupportedOperationException r10 = new java.lang.UnsupportedOperationException
            java.lang.String r11 = "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."
            r10.<init>(r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.Csuper.m4275new(java.lang.Class, java.lang.String):cL");
    }
}
