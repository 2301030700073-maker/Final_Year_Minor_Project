package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeyv implements zzexy {
    final String zza;
    final int zzb;

    /* synthetic */ zzeyv(String str, int i, byte[] bArr) {
        this.zza = str;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzexy
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzcxq zzcxqVar = (zzcxq) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlu)).booleanValue()) {
            String str = this.zza;
            if (!TextUtils.isEmpty(str)) {
                zzcxqVar.zza.putString("topics", str);
            }
            int i = this.zzb;
            if (i != -1) {
                zzcxqVar.zza.putInt("atps", i);
            }
        }
    }
}
