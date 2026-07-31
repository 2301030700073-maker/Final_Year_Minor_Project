package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzatg extends zzhwo implements zzhya {
    private static final zzatg zzn;
    private static volatile zzhyh zzo;
    private int zza;
    private long zzc;
    private int zzg;
    private long zzi;
    private long zzl;
    private long zzm;
    private zzhxa zzb = zzbM();
    private String zzd = "";
    private String zze = "";
    private String zzf = "";
    private String zzh = "";
    private String zzj = "";
    private String zzk = "";

    static {
        zzatg zzatgVar = new zzatg();
        zzn = zzatgVar;
        zzhwo.zzbu(zzatg.class, zzatgVar);
    }

    private zzatg() {
    }

    public static zzatf zza() {
        return (zzatf) zzn.zzbn();
    }

    final /* synthetic */ void zzb(zzaty zzatyVar) {
        zzatyVar.getClass();
        zzhxa zzhxaVar = this.zzb;
        if (!zzhxaVar.zza()) {
            this.zzb = zzhwo.zzbN(zzhxaVar);
        }
        this.zzb.add(zzatyVar);
    }

    final /* synthetic */ void zzc() {
        this.zzb = zzbM();
    }

    final /* synthetic */ void zzd(long j) {
        this.zza |= 1;
        this.zzc = j;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzn, "\u0004\f\u0000\u0001\b?\f\u0000\u0001\u0000\b\u001b\u0015ဂ\u0000\u0016ဈ\u0001\u0017ဈ\u0002\u0018ဈ\u0003\u0019᠌\u0004(ဈ\u0005)ဂ\u0006<ဈ\u0007=ဈ\b>ဂ\t?ဂ\n", new Object[]{"zza", "zzb", zzaty.class, "zzc", "zzd", "zze", "zzf", "zzg", zzatw.zza, "zzh", "zzi", "zzj", "zzk", "zzl", "zzm"});
        }
        if (ordinal == 3) {
            return new zzatg();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzatf(bArr);
        }
        if (ordinal == 5) {
            return zzn;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzo;
        if (zzhyhVar == null) {
            synchronized (zzatg.class) {
                zzhyhVar = zzo;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzn);
                    zzo = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(String str) {
        str.getClass();
        this.zza |= 2;
        this.zzd = str;
    }

    final /* synthetic */ void zzg(String str) {
        str.getClass();
        this.zza |= 4;
        this.zze = str;
    }

    final /* synthetic */ void zzh(String str) {
        str.getClass();
        this.zza |= 8;
        this.zzf = str;
    }

    final /* synthetic */ void zzi(String str) {
        str.getClass();
        this.zza |= 32;
        this.zzh = str;
    }

    final /* synthetic */ void zzj(long j) {
        this.zza |= 64;
        this.zzi = j;
    }

    final /* synthetic */ void zzk(String str) {
        str.getClass();
        this.zza |= 128;
        this.zzj = str;
    }

    final /* synthetic */ void zzl(String str) {
        str.getClass();
        this.zza |= 256;
        this.zzk = str;
    }

    final /* synthetic */ void zzm(long j) {
        this.zza |= 512;
        this.zzl = j;
    }

    final /* synthetic */ void zzn(long j) {
        this.zza |= 1024;
        this.zzm = j;
    }

    final /* synthetic */ void zzp(int i) {
        this.zzg = i - 1;
        this.zza |= 16;
    }
}
