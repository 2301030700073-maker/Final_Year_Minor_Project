package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class zzeh {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f9602do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9606do;

    /* renamed from: for, reason: not valid java name */
    public String f9607for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public String f9611if;

    /* renamed from: new, reason: not valid java name */
    public String f9613new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f9605do = new HashSet();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bundle f9601do = new Bundle();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f9604do = new HashMap();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final HashSet f9612if = new HashSet();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Bundle f9610if = new Bundle();

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final HashSet f9608for = new HashSet();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f9603do = new ArrayList();

    /* renamed from: do, reason: not valid java name */
    public int f9600do = -1;

    /* renamed from: if, reason: not valid java name */
    public int f9609if = 60000;

    public final void zzA(Bundle bundle) {
        this.f9601do.putAll(bundle);
    }

    public final void zzB(String str) {
        this.f9611if = str;
    }

    public final void zzC(String str) {
        this.f9607for = str;
    }

    @Deprecated
    public final void zzD(boolean z) {
        this.f9600do = z ? 1 : 0;
    }

    public final void zzn(String str) {
        this.f9608for.add(str);
    }

    public final void zzo(Class cls, Bundle bundle) {
        Bundle bundle2 = this.f9601do;
        if (bundle2.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
            bundle2.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
        }
        Bundle bundle3 = bundle2.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        Preconditions.checkNotNull(bundle3);
        bundle3.putBundle(cls.getName(), bundle);
    }

    public final void zzp(String str, String str2) {
        this.f9610if.putString(str, str2);
    }

    public final void zzq(String str) {
        this.f9605do.add(str);
    }

    public final void zzr(Class cls, Bundle bundle) {
        this.f9601do.putBundle(cls.getName(), bundle);
    }

    @Deprecated
    public final void zzs(NetworkExtras networkExtras) {
        this.f9604do.put(networkExtras.getClass(), networkExtras);
    }

    public final void zzt(String str) {
        this.f9612if.add(str);
    }

    public final void zzu(String str) {
        this.f9612if.remove("B3EEABB8EE11C2BE770B684D95219ECB");
    }

    public final void zzv(String str) {
        this.f9613new = str;
    }

    public final void zzw(String str) {
        this.f9602do = str;
    }

    public final void zzx(int i) {
        this.f9609if = i;
    }

    @Deprecated
    public final void zzy(boolean z) {
        this.f9606do = z;
    }

    public final void zzz(List list) {
        ArrayList arrayList = this.f9603do;
        arrayList.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (TextUtils.isEmpty(str)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("neighboring content URL should not be null or empty");
            } else {
                arrayList.add(str);
            }
        }
    }
}
