package com.google.android.gms.internal.wearable;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzu extends zzbv implements zzdd {
    private static final zzu zzb;
    private int zze;
    private double zzh;
    private float zzi;
    private long zzj;
    private int zzk;
    private int zzl;
    private boolean zzm;
    private long zzs;
    private byte zzt = 2;
    private zzaw zzf = zzaw.zzb;
    private String zzg = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzcc zzn = zzbv.zzT();
    private zzcc zzo = zzbv.zzT();
    private zzcc zzp = zzbv.zzT();
    private zzcb zzq = zzbv.zzS();
    private zzca zzr = zzbv.zzR();

    static {
        zzu zzuVar = new zzu();
        zzb = zzuVar;
        zzbv.zzZ(zzu.class, zzuVar);
    }

    private zzu() {
    }

    public static /* synthetic */ void zzA(zzu zzuVar, Iterable iterable) {
        zzcb zzcbVar = zzuVar.zzq;
        if (!zzcbVar.zzc()) {
            int size = zzcbVar.size();
            zzuVar.zzq = zzcbVar.zzd(size == 0 ? 10 : size + size);
        }
        zzag.zzJ(iterable, zzuVar.zzq);
    }

    public static /* synthetic */ void zzB(zzu zzuVar, Iterable iterable) {
        zzca zzcaVar = zzuVar.zzr;
        if (!zzcaVar.zzc()) {
            int size = zzcaVar.size();
            zzuVar.zzr = zzcaVar.zzd(size == 0 ? 10 : size + size);
        }
        zzag.zzJ(iterable, zzuVar.zzr);
    }

    public static /* synthetic */ void zzC(zzu zzuVar, long j) {
        zzuVar.zze |= 256;
        zzuVar.zzs = j;
    }

    public static /* synthetic */ void zzD(zzu zzuVar, double d) {
        zzuVar.zze |= 4;
        zzuVar.zzh = d;
    }

    public static /* synthetic */ void zzE(zzu zzuVar, float f) {
        zzuVar.zze |= 8;
        zzuVar.zzi = f;
    }

    public static zzt zzh() {
        return (zzt) zzb.zzN();
    }

    public static zzu zzj() {
        return zzb;
    }

    public static /* synthetic */ void zzr(zzu zzuVar, zzaw zzawVar) {
        zzuVar.zze |= 1;
        zzuVar.zzf = zzawVar;
    }

    public static /* synthetic */ void zzs(zzu zzuVar, long j) {
        zzuVar.zze |= 16;
        zzuVar.zzj = j;
    }

    public static /* synthetic */ void zzt(zzu zzuVar, int i) {
        zzuVar.zze |= 32;
        zzuVar.zzk = i;
    }

    public static /* synthetic */ void zzu(zzu zzuVar, int i) {
        zzuVar.zze |= 64;
        zzuVar.zzl = i;
    }

    public static /* synthetic */ void zzv(zzu zzuVar, boolean z) {
        zzuVar.zze |= 128;
        zzuVar.zzm = z;
    }

    public static /* synthetic */ void zzw(zzu zzuVar, Iterable iterable) {
        zzcc zzccVar = zzuVar.zzn;
        if (!zzccVar.zzc()) {
            zzuVar.zzn = zzbv.zzU(zzccVar);
        }
        zzag.zzJ(iterable, zzuVar.zzn);
    }

    public static /* synthetic */ void zzx(zzu zzuVar, zzv zzvVar) {
        zzvVar.getClass();
        zzcc zzccVar = zzuVar.zzo;
        if (!zzccVar.zzc()) {
            zzuVar.zzo = zzbv.zzU(zzccVar);
        }
        zzuVar.zzo.add(zzvVar);
    }

    public static /* synthetic */ void zzy(zzu zzuVar, String str) {
        zzuVar.zze |= 2;
        zzuVar.zzg = str;
    }

    public static /* synthetic */ void zzz(zzu zzuVar, Iterable iterable) {
        zzcc zzccVar = zzuVar.zzp;
        if (!zzccVar.zzc()) {
            zzuVar.zzp = zzbv.zzU(zzccVar);
        }
        zzag.zzJ(iterable, zzuVar.zzp);
    }

    public final boolean zzF() {
        return this.zzm;
    }

    @Override // com.google.android.gms.internal.wearable.zzbv
    public final Object zzG(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzt);
        }
        if (i2 == 2) {
            return zzbv.zzY(zzb, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0005\u0002\u0001ည\u0000\u0002ဈ\u0001\u0003က\u0002\u0004ခ\u0003\u0005ဂ\u0004\u0006င\u0005\u0007ဏ\u0006\bဇ\u0007\tЛ\nЛ\u000b\u001a\f\u0014\rဂ\b\u000e\u0013", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", zzw.class, "zzo", zzv.class, "zzp", "zzq", "zzs", "zzr"});
        }
        if (i2 == 3) {
            return new zzu();
        }
        zzm zzmVar = null;
        if (i2 == 4) {
            return new zzt(zzmVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        this.zzt = obj == null ? (byte) 0 : (byte) 1;
        return null;
    }

    public final double zza() {
        return this.zzh;
    }

    public final float zzb() {
        return this.zzi;
    }

    public final int zzc() {
        return this.zzo.size();
    }

    public final int zzd() {
        return this.zzl;
    }

    public final int zze() {
        return this.zzk;
    }

    public final long zzf() {
        return this.zzs;
    }

    public final long zzg() {
        return this.zzj;
    }

    public final zzaw zzk() {
        return this.zzf;
    }

    public final String zzl() {
        return this.zzg;
    }

    public final List zzm() {
        return this.zzo;
    }

    public final List zzn() {
        return this.zzn;
    }

    public final List zzo() {
        return this.zzr;
    }

    public final List zzp() {
        return this.zzq;
    }

    public final List zzq() {
        return this.zzp;
    }
}
