package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzicg extends zzhwo implements zzhya {
    private static final zzicg zzf;
    private static volatile zzhyh zzg;
    private int zza;
    private int zzb;
    private String zzc = "";
    private zzhvi zzd;
    private zzhvi zze;

    static {
        zzicg zzicgVar = new zzicg();
        zzf = zzicgVar;
        zzhwo.zzbu(zzicg.class, zzicgVar);
    }

    private zzicg() {
        zzhvi zzhviVar = zzhvi.zzb;
        this.zzd = zzhviVar;
        this.zze = zzhviVar;
    }

    public static zzice zzc() {
        return (zzice) zzf.zzbn();
    }

    final /* synthetic */ void zzd(String str) {
        this.zza |= 2;
        this.zzc = "image/png";
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzf, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zza", "zzb", zzicf.zza, "zzc", "zzd", "zze"});
        }
        if (ordinal == 3) {
            return new zzicg();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzice(bArr);
        }
        if (ordinal == 5) {
            return zzf;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzg;
        if (zzhyhVar == null) {
            synchronized (zzicg.class) {
                zzhyhVar = zzg;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzf);
                    zzg = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(zzhvi zzhviVar) {
        zzhviVar.getClass();
        this.zza |= 4;
        this.zzd = zzhviVar;
    }

    final /* synthetic */ void zzh(int i) {
        this.zzb = 1;
        this.zza = 1 | this.zza;
    }
}
