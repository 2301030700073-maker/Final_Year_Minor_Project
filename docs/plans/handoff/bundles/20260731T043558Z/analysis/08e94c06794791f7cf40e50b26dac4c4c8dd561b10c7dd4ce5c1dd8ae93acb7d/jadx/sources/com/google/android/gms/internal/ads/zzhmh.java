package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhmh extends zzhwo implements zzhya {
    private static final zzhmh zzd;
    private static volatile zzhyh zze;
    private int zza;
    private int zzb;
    private int zzc;

    static {
        zzhmh zzhmhVar = new zzhmh();
        zzd = zzhmhVar;
        zzhwo.zzbu(zzhmh.class, zzhmhVar);
    }

    private zzhmh() {
    }

    public static zzhmg zzd() {
        return (zzhmg) zzd.zzbn();
    }

    public static zzhmh zze() {
        return zzd;
    }

    public final zzhko zza() {
        zzhko zzb = zzhko.zzb(this.zza);
        return zzb == null ? zzhko.UNRECOGNIZED : zzb;
    }

    public final zzhko zzb() {
        zzhko zzb = zzhko.zzb(this.zzb);
        return zzb == null ? zzhko.UNRECOGNIZED : zzb;
    }

    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u0003\u0004", new Object[]{"zza", "zzb", "zzc"});
        }
        if (ordinal == 3) {
            return new zzhmh();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhmg(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzhmh.class) {
                zzhyhVar = zze;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzd);
                    zze = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zzg(zzhko zzhkoVar) {
        this.zza = zzhkoVar.zza();
    }

    final /* synthetic */ void zzh(zzhko zzhkoVar) {
        this.zzb = zzhkoVar.zza();
    }

    final /* synthetic */ void zzi(int i) {
        this.zzc = i;
    }
}
