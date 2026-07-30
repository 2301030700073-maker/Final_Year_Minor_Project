package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.search.SearchAdRequest;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzei {

    /* renamed from: do, reason: not valid java name */
    public final int f9614do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f9615do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bundle f9616do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SearchAdRequest f9617do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f9618do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f9619do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map f9620do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Set f9621do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f9622do;

    /* renamed from: for, reason: not valid java name */
    public final String f9623for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Set f9624for;

    /* renamed from: if, reason: not valid java name */
    public final int f9625if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Bundle f9626if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f9627if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Set f9628if;

    /* renamed from: new, reason: not valid java name */
    public final String f9629new;

    public zzei(zzeh zzehVar, SearchAdRequest searchAdRequest) {
        this.f9618do = zzehVar.f9602do;
        this.f9619do = zzehVar.f9603do;
        this.f9621do = DesugarCollections.unmodifiableSet(zzehVar.f9605do);
        this.f9616do = zzehVar.f9601do;
        this.f9620do = DesugarCollections.unmodifiableMap(zzehVar.f9604do);
        this.f9627if = zzehVar.f9611if;
        this.f9623for = zzehVar.f9607for;
        this.f9617do = searchAdRequest;
        this.f9614do = zzehVar.f9600do;
        this.f9628if = DesugarCollections.unmodifiableSet(zzehVar.f9612if);
        this.f9626if = zzehVar.f9610if;
        this.f9624for = DesugarCollections.unmodifiableSet(zzehVar.f9608for);
        this.f9622do = zzehVar.f9606do;
        this.f9629new = zzehVar.f9613new;
        this.f9625if = zzehVar.f9609if;
    }

    public final int zza() {
        return this.f9625if;
    }

    public final int zzb() {
        return this.f9614do;
    }

    public final long zzc() {
        return this.f9615do;
    }

    public final Bundle zzd(Class cls) {
        Bundle bundle = this.f9616do.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final Bundle zze() {
        return this.f9626if;
    }

    public final Bundle zzf(Class cls) {
        return this.f9616do.getBundle(cls.getName());
    }

    public final Bundle zzg() {
        return this.f9616do;
    }

    @Deprecated
    public final NetworkExtras zzh(Class cls) {
        return (NetworkExtras) this.f9620do.get(cls);
    }

    public final SearchAdRequest zzi() {
        return this.f9617do;
    }

    public final String zzj() {
        return this.f9629new;
    }

    public final String zzk() {
        return this.f9618do;
    }

    public final String zzl() {
        return this.f9627if;
    }

    public final String zzm() {
        return this.f9623for;
    }

    public final List zzn() {
        return new ArrayList(this.f9619do);
    }

    public final Set zzo() {
        return this.f9624for;
    }

    public final Set zzp() {
        return this.f9621do;
    }

    public final void zzq(long j) {
        this.f9615do = j;
    }

    @Deprecated
    public final boolean zzr() {
        return this.f9622do;
    }

    public final boolean zzs(Context context) {
        RequestConfiguration zzc = zzex.zzf().zzc();
        zzbc.zzb();
        String zzy = com.google.android.gms.ads.internal.util.client.zzf.zzy(context);
        return this.f9628if.contains(zzy) || zzc.getTestDeviceIds().contains(zzy);
    }
}
