package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.Celse;
import androidx.lifecycle.Ctry;
import androidx.savedstate.Cdo;
import defpackage.C0173Do;
import defpackage.C4122zt;
import defpackage.Cif;
import defpackage.InterfaceC2714eq;
import defpackage.InterfaceC3552qB;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public final class Recreator implements Celse {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3552qB f7703do;

    /* renamed from: androidx.savedstate.Recreator$do, reason: invalid class name */
    public static final class Cdo implements Cdo.Cif {

        /* renamed from: do, reason: not valid java name */
        public final LinkedHashSet f7704do;

        public Cdo(androidx.savedstate.Cdo cdo) {
            C0173Do.m401try(cdo, "registry");
            this.f7704do = new LinkedHashSet();
            cdo.m4581for("androidx.savedstate.Restarter", this);
        }

        @Override // androidx.savedstate.Cdo.Cif
        /* renamed from: do */
        public final Bundle mo94do() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f7704do));
            return bundle;
        }
    }

    public Recreator(InterfaceC3552qB interfaceC3552qB) {
        C0173Do.m401try(interfaceC3552qB, "owner");
        this.f7703do = interfaceC3552qB;
    }

    @Override // androidx.lifecycle.Celse
    /* renamed from: case */
    public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
        if (cdo != Ctry.Cdo.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        interfaceC2714eq.getLifecycle().mo4261for(this);
        InterfaceC3552qB interfaceC3552qB = this.f7703do;
        Bundle m4580do = interfaceC3552qB.getSavedStateRegistry().m4580do("androidx.savedstate.Restarter");
        if (m4580do == null) {
            return;
        }
        ArrayList<String> stringArrayList = m4580do.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        for (String str : stringArrayList) {
            try {
                Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(Cdo.InterfaceC0043do.class);
                C0173Do.m399new(asSubclass, "{\n                Class.…class.java)\n            }");
                try {
                    Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                    declaredConstructor.setAccessible(true);
                    try {
                        Object newInstance = declaredConstructor.newInstance(new Object[0]);
                        C0173Do.m399new(newInstance, "{\n                constr…wInstance()\n            }");
                        ((Cdo.InterfaceC0043do) newInstance).mo4274do(interfaceC3552qB);
                    } catch (Exception e) {
                        throw new RuntimeException(C4122zt.m8824for("Failed to instantiate ", str), e);
                    }
                } catch (NoSuchMethodException e2) {
                    throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
                }
            } catch (ClassNotFoundException e3) {
                throw new RuntimeException(Cif.m6908case("Class ", str, " wasn't found"), e3);
            }
        }
    }
}
