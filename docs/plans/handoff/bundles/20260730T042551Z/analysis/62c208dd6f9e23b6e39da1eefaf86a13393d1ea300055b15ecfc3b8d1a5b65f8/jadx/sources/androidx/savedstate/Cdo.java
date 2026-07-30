package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.Cnew;
import androidx.savedstate.Recreator;
import defpackage.C0173Do;
import defpackage.C3139jB;
import defpackage.InterfaceC3552qB;
import java.util.Iterator;
import java.util.Map;

@SuppressLint({"RestrictedApi"})
/* renamed from: androidx.savedstate.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    public Bundle f7705do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Recreator.Cdo f7706do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f7708do;

    /* renamed from: if, reason: not valid java name */
    public boolean f7710if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3139jB<String, Cif> f7707do = new C3139jB<>();

    /* renamed from: for, reason: not valid java name */
    public boolean f7709for = true;

    /* renamed from: androidx.savedstate.do$do, reason: invalid class name and collision with other inner class name */
    public interface InterfaceC0043do {
        /* renamed from: do */
        void mo4274do(InterfaceC3552qB interfaceC3552qB);
    }

    /* renamed from: androidx.savedstate.do$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: do */
        Bundle mo94do();
    }

    /* renamed from: do, reason: not valid java name */
    public final Bundle m4580do(String str) {
        if (!this.f7710if) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component".toString());
        }
        Bundle bundle = this.f7705do;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        Bundle bundle3 = this.f7705do;
        if (bundle3 != null) {
            bundle3.remove(str);
        }
        Bundle bundle4 = this.f7705do;
        if (!((bundle4 == null || bundle4.isEmpty()) ? false : true)) {
            this.f7705do = null;
        }
        return bundle2;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4581for(String str, Cif cif) {
        C0173Do.m401try(str, "key");
        C0173Do.m401try(cif, "provider");
        if (!(this.f7707do.mo492case(str, cif) == null)) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered".toString());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final Cif m4582if() {
        String str;
        Cif cif;
        Iterator<Map.Entry<String, Cif>> it = this.f7707do.iterator();
        do {
            C3139jB.Ctry ctry = (C3139jB.Ctry) it;
            if (!ctry.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) ctry.next();
            C0173Do.m399new(entry, "components");
            str = (String) entry.getKey();
            cif = (Cif) entry.getValue();
        } while (!C0173Do.m394do(str, "androidx.lifecycle.internal.SavedStateHandlesProvider"));
        return cif;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4583new() {
        if (!this.f7709for) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState".toString());
        }
        Recreator.Cdo cdo = this.f7706do;
        if (cdo == null) {
            cdo = new Recreator.Cdo(this);
        }
        this.f7706do = cdo;
        try {
            Cnew.Cdo.class.getDeclaredConstructor(new Class[0]);
            Recreator.Cdo cdo2 = this.f7706do;
            if (cdo2 != null) {
                cdo2.f7704do.add(Cnew.Cdo.class.getName());
            }
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class " + Cnew.Cdo.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }
}
