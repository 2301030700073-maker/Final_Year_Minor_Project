package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhls extends zzhwo implements zzhya {
    private static final zzhls zzd;
    private static volatile zzhyh zze;
    private int zza;
    private String zzb = "";
    private zzhla zzc;

    static {
        zzhls zzhlsVar = new zzhls();
        zzd = zzhlsVar;
        zzhwo.zzbu(zzhls.class, zzhlsVar);
    }

    private zzhls() {
    }

    public static zzhls zzc(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhls) zzhwo.zzbT(zzd, zzhviVar, zzhvyVar);
    }

    public static zzhlr zzd() {
        return (zzhlr) zzd.zzbn();
    }

    public static zzhls zze() {
        return zzd;
    }

    public final String zza() {
        return this.zzb;
    }

    public final zzhla zzb() {
        zzhla zzhlaVar = this.zzc;
        return zzhlaVar == null ? zzhla.zzh() : zzhlaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000", new Object[]{"zza", "zzb", "zzc"});
        }
        if (ordinal == 3) {
            return new zzhls();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhlr(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzhls.class) {
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
        this.zzb = str;
    }

    final /* synthetic */ void zzh(zzhla zzhlaVar) {
        zzhlaVar.getClass();
        this.zzc = zzhlaVar;
        this.zza |= 1;
    }
}
