package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgaa extends zzhwo implements zzhya {
    private static final zzgaa zze;
    private static volatile zzhyh zzf;
    private int zza;
    private int zzb = 0;
    private Object zzc;
    private int zzd;

    static {
        zzgaa zzgaaVar = new zzgaa();
        zze = zzgaaVar;
        zzhwo.zzbu(zzgaa.class, zzgaaVar);
    }

    private zzgaa() {
    }

    public static zzfzz zzd() {
        return (zzfzz) zze.zzbn();
    }

    public static zzgaa zze() {
        return zze;
    }

    public final zzbai zza() {
        return this.zzb == 1 ? (zzbai) this.zzc : zzbai.zzj();
    }

    public final zzbag zzb() {
        return this.zzb == 2 ? (zzbag) this.zzc : zzbag.zzc();
    }

    public final zzbaa zzc() {
        zzbaa zzb = zzbaa.zzb(this.zzd);
        return zzb == null ? zzbaa.UNSUPPORTED : zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zze, "\u0004\u0003\u0001\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003᠌\u0000", new Object[]{"zzc", "zzb", "zza", zzbai.class, zzbag.class, "zzd", zzbaa.zzc()});
        }
        if (ordinal == 3) {
            return new zzgaa();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzfzz(bArr);
        }
        if (ordinal == 5) {
            return zze;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzf;
        if (zzhyhVar == null) {
            synchronized (zzgaa.class) {
                zzhyhVar = zzf;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zze);
                    zzf = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zzg(zzbai zzbaiVar) {
        zzbaiVar.getClass();
        this.zzc = zzbaiVar;
        this.zzb = 1;
    }

    final /* synthetic */ void zzh(zzbag zzbagVar) {
        zzbagVar.getClass();
        this.zzc = zzbagVar;
        this.zzb = 2;
    }

    final /* synthetic */ void zzi(zzbaa zzbaaVar) {
        this.zzd = zzbaaVar.zza();
        this.zza |= 1;
    }
}
