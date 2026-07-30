package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public abstract class zziw {
    private static volatile int zzd = 100;
    int zza;
    int zzb;
    zzjb zzc;

    private zziw() {
        this.zzb = zzd;
    }

    public static int zza(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long zza(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static zziw zza(byte[] bArr, int i, int i2, boolean z) {
        zziz zzizVar = new zziz(bArr, i2);
        try {
            zzizVar.zzb(i2);
            return zzizVar;
        } catch (zzkb e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract double zza();

    public abstract float zzb();

    public abstract int zzb(int i);

    public abstract int zzc();

    public abstract void zzc(int i);

    public abstract int zzd();

    public abstract void zzd(int i);

    public abstract int zze();

    public abstract boolean zze(int i);

    public abstract int zzf();

    public abstract int zzg();

    public abstract int zzh();

    public abstract int zzi();

    public abstract int zzj();

    public abstract long zzk();

    public abstract long zzl();

    public abstract long zzm();

    public abstract long zzn();

    public abstract long zzo();

    public abstract long zzp();

    public abstract zzik zzq();

    public abstract String zzr();

    public abstract String zzs();

    public abstract boolean zzt();

    public abstract boolean zzu();
}
