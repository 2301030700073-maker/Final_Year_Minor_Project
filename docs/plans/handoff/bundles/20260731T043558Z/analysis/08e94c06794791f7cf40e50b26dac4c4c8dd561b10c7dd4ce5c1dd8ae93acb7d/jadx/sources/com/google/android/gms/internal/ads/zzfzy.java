package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfzy extends zzhwo implements zzhya {
    private static final zzfzy zzf;
    private static volatile zzhyh zzg;
    private int zza;
    private zzgaa zzb;
    private zzhvi zzc;
    private zzhvi zzd;
    private int zze;

    static {
        zzfzy zzfzyVar = new zzfzy();
        zzf = zzfzyVar;
        zzhwo.zzbu(zzfzy.class, zzfzyVar);
    }

    private zzfzy() {
        zzhvi zzhviVar = zzhvi.zzb;
        this.zzc = zzhviVar;
        this.zzd = zzhviVar;
    }

    public static zzfzx zzd() {
        return (zzfzx) zzf.zzbn();
    }

    public final zzgaa zza() {
        zzgaa zzgaaVar = this.zzb;
        return zzgaaVar == null ? zzgaa.zze() : zzgaaVar;
    }

    public final zzhvi zzb() {
        return this.zzc;
    }

    public final zzhvi zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzf, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002\u0004᠌\u0003", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", zzgao.zza});
        }
        if (ordinal == 3) {
            return new zzfzy();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzfzx(bArr);
        }
        if (ordinal == 5) {
            return zzf;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzg;
        if (zzhyhVar == null) {
            synchronized (zzfzy.class) {
                zzhyhVar = zzg;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzf);
                    zzg = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(zzgaa zzgaaVar) {
        zzgaaVar.getClass();
        this.zzb = zzgaaVar;
        this.zza |= 1;
    }

    final /* synthetic */ void zzg(zzhvi zzhviVar) {
        zzhviVar.getClass();
        this.zza |= 2;
        this.zzc = zzhviVar;
    }

    final /* synthetic */ void zzh(zzhvi zzhviVar) {
        zzhviVar.getClass();
        this.zza |= 4;
        this.zzd = zzhviVar;
    }

    public final int zzj() {
        int zza = zzgap.zza(this.zze);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    final /* synthetic */ void zzk(int i) {
        this.zze = i - 1;
        this.zza |= 8;
    }
}
