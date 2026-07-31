package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhmf extends zzhwo implements zzhya {
    private static final zzhmf zze;
    private static volatile zzhyh zzf;
    private int zza;
    private zzhmh zzb;
    private int zzc;
    private zzhvi zzd = zzhvi.zzb;

    static {
        zzhmf zzhmfVar = new zzhmf();
        zze = zzhmfVar;
        zzhwo.zzbu(zzhmf.class, zzhmfVar);
    }

    private zzhmf() {
    }

    public static zzhmf zzd(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhmf) zzhwo.zzbT(zze, zzhviVar, zzhvyVar);
    }

    public static zzhme zze() {
        return (zzhme) zze.zzbn();
    }

    public final zzhmh zza() {
        zzhmh zzhmhVar = this.zzb;
        return zzhmhVar == null ? zzhmh.zze() : zzhmhVar;
    }

    public final int zzb() {
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
            return zzbv(zze, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b\u0003\n", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzhmf();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhme(bArr);
        }
        if (ordinal == 5) {
            return zze;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzf;
        if (zzhyhVar == null) {
            synchronized (zzhmf.class) {
                zzhyhVar = zzf;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zze);
                    zzf = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zzg(zzhmh zzhmhVar) {
        zzhmhVar.getClass();
        this.zzb = zzhmhVar;
        this.zza |= 1;
    }

    final /* synthetic */ void zzh(int i) {
        this.zzc = i;
    }

    final /* synthetic */ void zzi(zzhvi zzhviVar) {
        this.zzd = zzhviVar;
    }
}
