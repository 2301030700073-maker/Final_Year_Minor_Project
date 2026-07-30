package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzfff implements zzher {
    public static zzfff zza() {
        zzfff zzfffVar;
        zzfffVar = zzffe.zza;
        return zzfffVar;
    }

    public static zzgcs zzc() {
        zzgcs zzgcsVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfF)).booleanValue()) {
            zzgcsVar = zzbzw.zzc;
        } else {
            zzgcsVar = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfE)).booleanValue() ? zzbzw.zza : zzbzw.zzf;
        }
        zzhez.zzb(zzgcsVar);
        return zzgcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* synthetic */ Object zzb() {
        return zzc();
    }
}
