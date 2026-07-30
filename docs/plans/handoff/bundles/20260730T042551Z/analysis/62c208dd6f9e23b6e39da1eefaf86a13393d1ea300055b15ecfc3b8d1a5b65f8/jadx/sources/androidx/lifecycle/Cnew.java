package androidx.lifecycle;

import androidx.lifecycle.Ctry;
import androidx.savedstate.Cdo;
import defpackage.AbstractC0805cL;
import defpackage.C0173Do;
import defpackage.C2687eL;
import defpackage.InterfaceC2746fL;
import defpackage.InterfaceC3552qB;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* renamed from: androidx.lifecycle.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew {

    /* renamed from: androidx.lifecycle.new$do, reason: invalid class name */
    public static final class Cdo implements Cdo.InterfaceC0043do {
        @Override // androidx.savedstate.Cdo.InterfaceC0043do
        /* renamed from: do, reason: not valid java name */
        public final void mo4274do(InterfaceC3552qB interfaceC3552qB) {
            LinkedHashMap linkedHashMap;
            C0173Do.m401try(interfaceC3552qB, "owner");
            if (!(interfaceC3552qB instanceof InterfaceC2746fL)) {
                throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner".toString());
            }
            C2687eL viewModelStore = ((InterfaceC2746fL) interfaceC3552qB).getViewModelStore();
            androidx.savedstate.Cdo savedStateRegistry = interfaceC3552qB.getSavedStateRegistry();
            viewModelStore.getClass();
            Iterator it = new HashSet(viewModelStore.f12668do.keySet()).iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                linkedHashMap = viewModelStore.f12668do;
                if (!hasNext) {
                    break;
                }
                String str = (String) it.next();
                C0173Do.m401try(str, "key");
                AbstractC0805cL abstractC0805cL = (AbstractC0805cL) linkedHashMap.get(str);
                C0173Do.m398if(abstractC0805cL);
                Cnew.m4273do(abstractC0805cL, savedStateRegistry, interfaceC3552qB.getLifecycle());
            }
            if (!new HashSet(linkedHashMap.keySet()).isEmpty()) {
                savedStateRegistry.m4583new();
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static final void m4273do(AbstractC0805cL abstractC0805cL, androidx.savedstate.Cdo cdo, Ctry ctry) {
        Object obj;
        C0173Do.m401try(cdo, "registry");
        C0173Do.m401try(ctry, "lifecycle");
        HashMap hashMap = abstractC0805cL.f8522do;
        if (hashMap == null) {
            obj = null;
        } else {
            synchronized (hashMap) {
                obj = abstractC0805cL.f8522do.get("androidx.lifecycle.savedstate.vm.tag");
            }
        }
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
        if (savedStateHandleController == null || savedStateHandleController.f7087do) {
            return;
        }
        savedStateHandleController.m4244for(ctry, cdo);
        Ctry.Cif mo4263if = ctry.mo4263if();
        if (mo4263if != Ctry.Cif.INITIALIZED) {
            if (!(mo4263if.compareTo(Ctry.Cif.STARTED) >= 0)) {
                ctry.mo4259do(new LegacySavedStateHandleController$tryToAddRecreator$1(ctry, cdo));
                return;
            }
        }
        cdo.m4583new();
    }
}
