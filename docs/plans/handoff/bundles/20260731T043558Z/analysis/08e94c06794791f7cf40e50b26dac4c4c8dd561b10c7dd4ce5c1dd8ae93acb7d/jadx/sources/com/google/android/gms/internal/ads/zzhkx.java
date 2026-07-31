package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhkx extends zzhwo implements zzhya {
    private static final zzhkx zzd;
    private static volatile zzhyh zze;
    private String zza = "";
    private zzhvi zzb = zzhvi.zzb;
    private int zzc;

    static {
        zzhkx zzhkxVar = new zzhkx();
        zzd = zzhkxVar;
        zzhwo.zzbu(zzhkx.class, zzhkxVar);
    }

    private zzhkx() {
    }

    public static zzhkv zzd() {
        return (zzhkv) zzd.zzbn();
    }

    public static zzhkx zze() {
        return zzd;
    }

    public final String zza() {
        return this.zza;
    }

    public final zzhvi zzb() {
        return this.zzb;
    }

    public final zzhkw zzc() {
        int i = this.zzc;
        zzhkw zzhkwVar = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? null : zzhkw.REMOTE : zzhkw.ASYMMETRIC_PUBLIC : zzhkw.ASYMMETRIC_PRIVATE : zzhkw.SYMMETRIC : zzhkw.UNKNOWN_KEYMATERIAL;
        return zzhkwVar == null ? zzhkw.UNRECOGNIZED : zzhkwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zza", "zzb", "zzc"});
        }
        if (ordinal == 3) {
            return new zzhkx();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhkv(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzhkx.class) {
                zzhyhVar = zze;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzd);
                    zze = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zzg(String str) {
        str.getClass();
        this.zza = str;
    }

    final /* synthetic */ void zzh(zzhvi zzhviVar) {
        zzhviVar.getClass();
        this.zzb = zzhviVar;
    }

    final /* synthetic */ void zzi(zzhkw zzhkwVar) {
        this.zzc = zzhkwVar.zza();
    }
}
