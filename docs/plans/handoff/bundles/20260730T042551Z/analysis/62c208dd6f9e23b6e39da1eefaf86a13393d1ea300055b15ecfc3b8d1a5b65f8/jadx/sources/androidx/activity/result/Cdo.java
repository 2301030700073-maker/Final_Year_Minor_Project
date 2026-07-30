package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.result.Cdo;
import androidx.lifecycle.Celse;
import androidx.lifecycle.Ctry;
import com.facebook.internal.NativeProtocol;
import defpackage.C0725b0;
import defpackage.C0784c0;
import defpackage.InterfaceC2714eq;
import defpackage.Iy;
import defpackage.V;
import defpackage.W;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: androidx.activity.result.do, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cdo {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f5159do = new HashMap();

    /* renamed from: if, reason: not valid java name */
    public final HashMap f5161if = new HashMap();

    /* renamed from: for, reason: not valid java name */
    public final HashMap f5160for = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayList<String> f5158do = new ArrayList<>();

    /* renamed from: new, reason: not valid java name */
    public final transient HashMap f5162new = new HashMap();

    /* renamed from: try, reason: not valid java name */
    public final HashMap f5163try = new HashMap();

    /* renamed from: do, reason: not valid java name */
    public final Bundle f5157do = new Bundle();

    /* renamed from: androidx.activity.result.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0026do<O> {

        /* renamed from: do, reason: not valid java name */
        public final V<O> f5164do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final W<?, O> f5165do;

        public C0026do(W w, V v) {
            this.f5164do = v;
            this.f5165do = w;
        }
    }

    /* renamed from: androidx.activity.result.do$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final Ctry f5166do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList<Celse> f5167do = new ArrayList<>();

        public Cif(Ctry ctry) {
            this.f5166do = ctry;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final void m3204case(String str) {
        Integer num;
        if (!this.f5158do.contains(str) && (num = (Integer) this.f5161if.remove(str)) != null) {
            this.f5159do.remove(num);
        }
        this.f5162new.remove(str);
        HashMap hashMap = this.f5163try;
        if (hashMap.containsKey(str)) {
            Objects.toString(hashMap.get(str));
            hashMap.remove(str);
        }
        Bundle bundle = this.f5157do;
        if (bundle.containsKey(str)) {
            Objects.toString(bundle.getParcelable(str));
            bundle.remove(str);
        }
        HashMap hashMap2 = this.f5160for;
        Cif cif = (Cif) hashMap2.get(str);
        if (cif != null) {
            ArrayList<Celse> arrayList = cif.f5167do;
            Iterator<Celse> it = arrayList.iterator();
            while (it.hasNext()) {
                cif.f5166do.mo4261for(it.next());
            }
            arrayList.clear();
            hashMap2.remove(str);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m3205do(int i, int i2, Intent intent) {
        V<O> v;
        String str = (String) this.f5159do.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        C0026do c0026do = (C0026do) this.f5162new.get(str);
        if (c0026do == null || (v = c0026do.f5164do) == 0 || !this.f5158do.contains(str)) {
            this.f5163try.remove(str);
            this.f5157do.putParcelable(str, new ActivityResult(i2, intent));
            return true;
        }
        v.mo2492do(c0026do.f5165do.parseResult(i2, intent));
        this.f5158do.remove(str);
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public final C0725b0 m3206for(final String str, InterfaceC2714eq interfaceC2714eq, final W w, final V v) {
        Ctry lifecycle = interfaceC2714eq.getLifecycle();
        if (lifecycle.mo4263if().compareTo(Ctry.Cif.STARTED) >= 0) {
            throw new IllegalStateException("LifecycleOwner " + interfaceC2714eq + " is attempting to register while current state is " + lifecycle.mo4263if() + ". LifecycleOwners must call register before they are STARTED.");
        }
        m3208try(str);
        HashMap hashMap = this.f5160for;
        Cif cif = (Cif) hashMap.get(str);
        if (cif == null) {
            cif = new Cif(lifecycle);
        }
        Celse celse = new Celse() { // from class: androidx.activity.result.ActivityResultRegistry$1
            @Override // androidx.lifecycle.Celse
            /* renamed from: case */
            public final void mo3192case(InterfaceC2714eq interfaceC2714eq2, Ctry.Cdo cdo) {
                boolean equals = Ctry.Cdo.ON_START.equals(cdo);
                String str2 = str;
                Cdo cdo2 = Cdo.this;
                if (!equals) {
                    if (Ctry.Cdo.ON_STOP.equals(cdo)) {
                        cdo2.f5162new.remove(str2);
                        return;
                    } else {
                        if (Ctry.Cdo.ON_DESTROY.equals(cdo)) {
                            cdo2.m3204case(str2);
                            return;
                        }
                        return;
                    }
                }
                HashMap hashMap2 = cdo2.f5162new;
                W w2 = w;
                V v2 = v;
                hashMap2.put(str2, new Cdo.C0026do(w2, v2));
                HashMap hashMap3 = cdo2.f5163try;
                if (hashMap3.containsKey(str2)) {
                    Object obj = hashMap3.get(str2);
                    hashMap3.remove(str2);
                    v2.mo2492do(obj);
                }
                Bundle bundle = cdo2.f5157do;
                ActivityResult activityResult = (ActivityResult) bundle.getParcelable(str2);
                if (activityResult != null) {
                    bundle.remove(str2);
                    v2.mo2492do(w2.parseResult(activityResult.f5148for, activityResult.f5147do));
                }
            }
        };
        cif.f5166do.mo4259do(celse);
        cif.f5167do.add(celse);
        hashMap.put(str, cif);
        return new C0725b0(this, str, w);
    }

    /* renamed from: if */
    public abstract void mo3193if(int i, W w, @SuppressLint({"UnknownNullness"}) Object obj);

    /* renamed from: new, reason: not valid java name */
    public final C0784c0 m3207new(String str, W w, V v) {
        m3208try(str);
        this.f5162new.put(str, new C0026do(w, v));
        HashMap hashMap = this.f5163try;
        if (hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            hashMap.remove(str);
            v.mo2492do(obj);
        }
        Bundle bundle = this.f5157do;
        ActivityResult activityResult = (ActivityResult) bundle.getParcelable(str);
        if (activityResult != null) {
            bundle.remove(str);
            v.mo2492do(w.parseResult(activityResult.f5148for, activityResult.f5147do));
        }
        return new C0784c0(this, str, w);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m3208try(String str) {
        HashMap hashMap = this.f5161if;
        if (((Integer) hashMap.get(str)) != null) {
            return;
        }
        int mo995if = Iy.f1574do.mo995if();
        while (true) {
            int i = mo995if + NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST;
            HashMap hashMap2 = this.f5159do;
            if (!hashMap2.containsKey(Integer.valueOf(i))) {
                hashMap2.put(Integer.valueOf(i), str);
                hashMap.put(str, Integer.valueOf(i));
                return;
            }
            mo995if = Iy.f1574do.mo995if();
        }
    }
}
