package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdyj {
    private final zzdxt zza;
    private final zzdsv zzb;
    private final Object zzc = new Object();
    private final List zzd = new ArrayList();
    private boolean zze;

    zzdyj(zzdxt zzdxtVar, zzdsv zzdsvVar) {
        this.zza = zzdxtVar;
        this.zzb = zzdsvVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final void zzc(List list) {
        String str;
        boolean z;
        zzdsu zzc;
        zzbtx zzbtxVar;
        synchronized (this.zzc) {
            if (this.zze) {
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzbnw zzbnwVar = (zzbnw) it.next();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzkp)).booleanValue()) {
                    zzdsu zzc2 = this.zzb.zzc(zzbnwVar.zza);
                    if (zzc2 != null && (zzbtxVar = zzc2.zzc) != null) {
                        str = zzbtxVar.toString();
                    }
                    str = "";
                } else {
                    str = "";
                }
                String str2 = str;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzkq)).booleanValue() && (zzc = this.zzb.zzc(zzbnwVar.zza)) != null && zzc.zzd) {
                    z = true;
                    List list2 = this.zzd;
                    String str3 = zzbnwVar.zza;
                    list2.add(new zzdyi(str3, str2, this.zzb.zzd(str3), zzbnwVar.zzb ? 1 : 0, zzbnwVar.zzd, zzbnwVar.zzc, z));
                }
                z = false;
                List list22 = this.zzd;
                String str32 = zzbnwVar.zza;
                list22.add(new zzdyi(str32, str2, this.zzb.zzd(str32), zzbnwVar.zzb ? 1 : 0, zzbnwVar.zzd, zzbnwVar.zzc, z));
            }
            this.zze = true;
        }
    }

    public final void zza() {
        this.zza.zzb(new zzdyh(this));
    }

    public final JSONArray zzb() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        synchronized (this.zzc) {
            if (!this.zze) {
                zzdxt zzdxtVar = this.zza;
                if (zzdxtVar.zze()) {
                    zzc(zzdxtVar.zzd());
                } else {
                    zza();
                }
            }
            Iterator it = this.zzd.iterator();
            while (it.hasNext()) {
                jSONArray.put(((zzdyi) it.next()).zza());
            }
        }
        return jSONArray;
    }
}
