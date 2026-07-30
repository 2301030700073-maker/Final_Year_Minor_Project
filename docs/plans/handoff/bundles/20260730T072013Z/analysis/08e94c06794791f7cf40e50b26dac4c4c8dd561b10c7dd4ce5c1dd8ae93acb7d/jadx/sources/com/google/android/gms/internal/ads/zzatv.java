package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzatv extends zzhwo implements zzhya {
    private static final zzatv zzg;
    private static volatile zzhyh zzh;
    private int zza;
    private boolean zzb;
    private int zzc = 5000;
    private boolean zzd;
    private boolean zze;
    private boolean zzf;

    static {
        zzatv zzatvVar = new zzatv();
        zzg = zzatvVar;
        zzhwo.zzbu(zzatv.class, zzatvVar);
    }

    private zzatv() {
    }

    public static zzatv zzg() {
        return zzg;
    }

    public final boolean zza() {
        return this.zzb;
    }

    public final int zzb() {
        return this.zzc;
    }

    public final boolean zzc() {
        return this.zzd;
    }

    public final boolean zzd() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzg, "\u0004\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0000\u0000\u0001ဇ\u0000\u0003င\u0001\u0004ဇ\u0002\u0005ဇ\u0003\u0006ဇ\u0004", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf"});
        }
        if (ordinal == 3) {
            return new zzatv();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzatu(bArr);
        }
        if (ordinal == 5) {
            return zzg;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzh;
        if (zzhyhVar == null) {
            synchronized (zzatv.class) {
                zzhyhVar = zzh;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzg);
                    zzh = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    public final boolean zze() {
        return this.zzf;
    }
}
