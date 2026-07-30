package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import defpackage.Creturn;

/* loaded from: classes.dex */
final class zzegp {
    final String zza;
    final String zzb;
    int zzc;
    long zzd;
    final Integer zze;

    public zzegp(String str, String str2, int i, long j, Integer num) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = j;
        this.zze = num;
    }

    public final String toString() {
        String str = this.zza + "." + this.zzc + "." + this.zzd;
        if (!TextUtils.isEmpty(this.zzb)) {
            str = Creturn.m7982new(str, ".", this.zzb);
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbK)).booleanValue() || this.zze == null || TextUtils.isEmpty(this.zzb)) {
            return str;
        }
        return str + "." + this.zze;
    }
}
