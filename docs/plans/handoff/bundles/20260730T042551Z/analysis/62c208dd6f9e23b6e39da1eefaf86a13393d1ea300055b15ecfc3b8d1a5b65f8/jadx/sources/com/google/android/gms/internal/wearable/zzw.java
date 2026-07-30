package com.google.android.gms.internal.wearable;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes3.dex */
public final class zzw extends zzbv implements zzdd {
    private static final zzw zzb;
    private int zze;
    private zzv zzg;
    private byte zzh = 2;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzw zzwVar = new zzw();
        zzb = zzwVar;
        zzbv.zzZ(zzw.class, zzwVar);
    }

    private zzw() {
    }

    public static zzo zza() {
        return (zzo) zzb.zzN();
    }

    public static /* synthetic */ void zze(zzw zzwVar, String str) {
        str.getClass();
        zzwVar.zze |= 1;
        zzwVar.zzf = str;
    }

    public static /* synthetic */ void zzf(zzw zzwVar, zzv zzvVar) {
        zzvVar.getClass();
        zzwVar.zzg = zzvVar;
        zzwVar.zze |= 2;
    }

    @Override // com.google.android.gms.internal.wearable.zzbv
    public final Object zzG(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzh);
        }
        if (i2 == 2) {
            return zzbv.zzY(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001ᔈ\u0000\u0002ᔉ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzw();
        }
        zzm zzmVar = null;
        if (i2 == 4) {
            return new zzo(zzmVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        this.zzh = obj == null ? (byte) 0 : (byte) 1;
        return null;
    }

    public final zzv zzb() {
        zzv zzvVar = this.zzg;
        return zzvVar == null ? zzv.zzd() : zzvVar;
    }

    public final String zzd() {
        return this.zzf;
    }
}
