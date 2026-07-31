package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhlo extends zzhwo implements zzhya {
    private static final zzhlo zzb;
    private static volatile zzhyh zzc;
    private String zza = "";

    static {
        zzhlo zzhloVar = new zzhlo();
        zzb = zzhloVar;
        zzhwo.zzbu(zzhlo.class, zzhloVar);
    }

    private zzhlo() {
    }

    public static zzhlo zzb(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhlo) zzhwo.zzbT(zzb, zzhviVar, zzhvyVar);
    }

    public static zzhln zzc() {
        return (zzhln) zzb.zzbn();
    }

    public static zzhlo zzd() {
        return zzb;
    }

    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zza"});
        }
        if (ordinal == 3) {
            return new zzhlo();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhln(bArr);
        }
        if (ordinal == 5) {
            return zzb;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzc;
        if (zzhyhVar == null) {
            synchronized (zzhlo.class) {
                zzhyhVar = zzc;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzb);
                    zzc = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(String str) {
        str.getClass();
        this.zza = str;
    }
}
