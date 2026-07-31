package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzicn extends zzhwo implements zzhya {
    private static final zzicn zzj;
    private static volatile zzhyh zzk;
    private int zza;
    private long zzc;
    private boolean zzd;
    private int zze;
    private boolean zzh;
    private boolean zzi;
    private String zzb = "";
    private String zzf = "";
    private String zzg = "";

    static {
        zzicn zzicnVar = new zzicn();
        zzj = zzicnVar;
        zzhwo.zzbu(zzicn.class, zzicnVar);
    }

    private zzicn() {
    }

    public static zzicm zzc() {
        return (zzicm) zzj.zzbn();
    }

    final /* synthetic */ void zzd(String str) {
        this.zza |= 1;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzj, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002\u0004᠌\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဇ\u0006\bဇ\u0007", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", zzico.zza, "zzf", "zzg", "zzh", "zzi"});
        }
        if (ordinal == 3) {
            return new zzicn();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzicm(bArr);
        }
        if (ordinal == 5) {
            return zzj;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzk;
        if (zzhyhVar == null) {
            synchronized (zzicn.class) {
                zzhyhVar = zzk;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzj);
                    zzk = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(long j) {
        this.zza |= 2;
        this.zzc = j;
    }

    final /* synthetic */ void zzg(boolean z) {
        this.zza |= 4;
        this.zzd = z;
    }
}
