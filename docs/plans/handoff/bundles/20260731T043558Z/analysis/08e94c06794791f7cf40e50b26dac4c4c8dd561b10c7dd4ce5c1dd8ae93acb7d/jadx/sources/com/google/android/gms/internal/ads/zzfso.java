package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfso extends zzhwo implements zzhya {
    private static final zzfso zzf;
    private static volatile zzhyh zzg;
    private int zza;
    private int zzb;
    private String zzc = "";
    private String zzd = "";
    private zzfsl zze;

    static {
        zzfso zzfsoVar = new zzfso();
        zzf = zzfsoVar;
        zzhwo.zzbu(zzfso.class, zzfsoVar);
    }

    private zzfso() {
    }

    public static zzfsm zza() {
        return (zzfsm) zzf.zzbn();
    }

    final /* synthetic */ void zzb(String str) {
        str.getClass();
        this.zza |= 2;
        this.zzc = str;
    }

    final /* synthetic */ void zzc(zzfsl zzfslVar) {
        zzfslVar.getClass();
        this.zze = zzfslVar;
        this.zza |= 8;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzf, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zza", "zzb", zzfsn.zza, "zzc", "zzd", "zze"});
        }
        if (ordinal == 3) {
            return new zzfso();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzfsm(bArr);
        }
        if (ordinal == 5) {
            return zzf;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzg;
        if (zzhyhVar == null) {
            synchronized (zzfso.class) {
                zzhyhVar = zzg;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzf);
                    zzg = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(int i) {
        this.zzb = 1;
        this.zza = 1 | this.zza;
    }
}
