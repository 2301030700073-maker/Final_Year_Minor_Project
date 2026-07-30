package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes.dex */
final class zzdgy implements zzbjp {
    private final WeakReference zza;

    public /* synthetic */ zzdgy(zzdhb zzdhbVar, zzdha zzdhaVar) {
        this.zza = new WeakReference(zzdhbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void zza(Object obj, Map map) {
        zzcvr zzcvrVar;
        zzddq zzddqVar;
        zzddq zzddqVar2;
        zzdhb zzdhbVar = (zzdhb) this.zza.get();
        if (zzdhbVar == null) {
            return;
        }
        zzcvrVar = zzdhbVar.zzh;
        zzcvrVar.onAdClicked();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkE)).booleanValue()) {
            zzddqVar = zzdhbVar.zzi;
            zzddqVar.zzdd();
            if (TextUtils.isEmpty((CharSequence) map.get("sccg"))) {
                return;
            }
            zzddqVar2 = zzdhbVar.zzi;
            zzddqVar2.zzu();
        }
    }
}
