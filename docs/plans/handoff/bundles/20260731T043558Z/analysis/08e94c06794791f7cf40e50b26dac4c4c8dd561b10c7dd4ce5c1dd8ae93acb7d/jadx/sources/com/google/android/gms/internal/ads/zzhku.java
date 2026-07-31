package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhku extends zzhwo implements zzhya {
    private static final zzhku zzc;
    private static volatile zzhyh zzd;
    private int zza;
    private int zzb;

    static {
        zzhku zzhkuVar = new zzhku();
        zzc = zzhkuVar;
        zzhwo.zzbu(zzhku.class, zzhkuVar);
    }

    private zzhku() {
    }

    public static zzhkt zzc() {
        return (zzhkt) zzc.zzbn();
    }

    public static zzhku zzd() {
        return zzc;
    }

    public final zzhko zza() {
        zzhko zzb = zzhko.zzb(this.zza);
        return zzb == null ? zzhko.UNRECOGNIZED : zzb;
    }

    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zza", "zzb"});
        }
        if (ordinal == 3) {
            return new zzhku();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhkt(bArr);
        }
        if (ordinal == 5) {
            return zzc;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzd;
        if (zzhyhVar == null) {
            synchronized (zzhku.class) {
                zzhyhVar = zzd;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzc);
                    zzd = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(zzhko zzhkoVar) {
        this.zza = zzhkoVar.zza();
    }

    final /* synthetic */ void zzg(int i) {
        this.zzb = i;
    }
}
