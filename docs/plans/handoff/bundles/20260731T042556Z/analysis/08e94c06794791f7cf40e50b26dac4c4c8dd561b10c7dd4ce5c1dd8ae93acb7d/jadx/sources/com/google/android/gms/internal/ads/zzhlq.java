package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhlq extends zzhwo implements zzhya {
    private static final zzhlq zzd;
    private static volatile zzhyh zze;
    private int zza;
    private int zzb;
    private zzhls zzc;

    static {
        zzhlq zzhlqVar = new zzhlq();
        zzd = zzhlqVar;
        zzhwo.zzbu(zzhlq.class, zzhlqVar);
    }

    private zzhlq() {
    }

    public static zzhlq zzc(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhlq) zzhwo.zzbT(zzd, zzhviVar, zzhvyVar);
    }

    public static zzhlp zzd() {
        return (zzhlp) zzd.zzbn();
    }

    public static zzhyh zze() {
        return zzd.zzbd();
    }

    public final int zza() {
        return this.zzb;
    }

    public final zzhls zzb() {
        zzhls zzhlsVar = this.zzc;
        return zzhlsVar == null ? zzhls.zze() : zzhlsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zza", "zzb", "zzc"});
        }
        if (ordinal == 3) {
            return new zzhlq();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhlp(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzhlq.class) {
                zzhyhVar = zze;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzd);
                    zze = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zzg(zzhls zzhlsVar) {
        zzhlsVar.getClass();
        this.zzc = zzhlsVar;
        this.zza |= 1;
    }
}
