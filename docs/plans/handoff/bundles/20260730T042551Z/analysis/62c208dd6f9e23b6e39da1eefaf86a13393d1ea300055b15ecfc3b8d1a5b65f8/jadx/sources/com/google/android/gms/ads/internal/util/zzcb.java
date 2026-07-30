package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.internal.ads.zzbcl;
import defpackage.SharedPreferencesOnSharedPreferenceChangeListenerC2693eR;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzcb {

    /* renamed from: do, reason: not valid java name */
    public final Context f9794do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f9796do = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f9795do = new ArrayList();

    public zzcb(Context context) {
        this.f9794do = context;
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized void m5571do(String str) {
        if (this.f9796do.containsKey(str)) {
            return;
        }
        SharedPreferences defaultSharedPreferences = Objects.equals(str, "__default__") ? PreferenceManager.getDefaultSharedPreferences(this.f9794do) : this.f9794do.getSharedPreferences(str, 0);
        SharedPreferencesOnSharedPreferenceChangeListenerC2693eR sharedPreferencesOnSharedPreferenceChangeListenerC2693eR = new SharedPreferencesOnSharedPreferenceChangeListenerC2693eR(this, str);
        this.f9796do.put(str, sharedPreferencesOnSharedPreferenceChangeListenerC2693eR);
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(sharedPreferencesOnSharedPreferenceChangeListenerC2693eR);
    }

    public final void zzc() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkm)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzq();
            Map zzw = zzs.zzw((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkr));
            Iterator it = zzw.keySet().iterator();
            while (it.hasNext()) {
                m5571do((String) it.next());
            }
            zzbz zzbzVar = new zzbz(zzw);
            synchronized (this) {
                this.f9795do.add(zzbzVar);
            }
        }
    }
}
