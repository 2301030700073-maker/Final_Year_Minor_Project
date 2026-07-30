package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class zzgww extends zzgwa {
    private static final Logger zza = Logger.getLogger(zzgww.class.getName());
    private static final boolean zzb = zzhao.zzA();
    public static final /* synthetic */ int zzf = 0;
    zzgwx zze;

    private zzgww() {
        throw null;
    }

    public /* synthetic */ zzgww(zzgwv zzgwvVar) {
    }

    public static int zzA(zzgzc zzgzcVar, zzgzv zzgzvVar) {
        int zzaM = ((zzgvs) zzgzcVar).zzaM(zzgzvVar);
        return zzD(zzaM) + zzaM;
    }

    public static int zzB(int i) {
        if (i > 4096) {
            return 4096;
        }
        return i;
    }

    public static int zzC(String str) {
        int length;
        try {
            length = zzhat.zze(str);
        } catch (zzhas unused) {
            length = str.getBytes(zzgye.zza).length;
        }
        return zzD(length) + length;
    }

    public static int zzD(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int zzE(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    @Deprecated
    public static int zzy(int i, zzgzc zzgzcVar, zzgzv zzgzvVar) {
        int zzD = zzD(i << 3);
        return ((zzgvs) zzgzcVar).zzaM(zzgzvVar) + zzD + zzD;
    }

    public static int zzz(zzgzc zzgzcVar) {
        int zzaY = zzgzcVar.zzaY();
        return zzD(zzaY) + zzaY;
    }

    public final void zzF() {
        if (zzb() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void zzG(String str, zzhas zzhasVar) {
        zza.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzhasVar);
        byte[] bytes = str.getBytes(zzgye.zza);
        try {
            int length = bytes.length;
            zzu(length);
            zza(bytes, 0, length);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgwt(e);
        }
    }

    public abstract void zzK();

    public abstract void zzL(byte b);

    public abstract void zzM(int i, boolean z);

    public abstract void zzN(int i, zzgwj zzgwjVar);

    @Override // com.google.android.gms.internal.ads.zzgwa
    public abstract void zza(byte[] bArr, int i, int i2);

    public abstract int zzb();

    public abstract void zzh(int i, int i2);

    public abstract void zzi(int i);

    public abstract void zzj(int i, long j);

    public abstract void zzk(long j);

    public abstract void zzl(int i, int i2);

    public abstract void zzm(int i);

    public abstract void zzn(int i, zzgzc zzgzcVar, zzgzv zzgzvVar);

    public abstract void zzo(int i, zzgzc zzgzcVar);

    public abstract void zzp(int i, zzgwj zzgwjVar);

    public abstract void zzq(int i, String str);

    public abstract void zzs(int i, int i2);

    public abstract void zzt(int i, int i2);

    public abstract void zzu(int i);

    public abstract void zzv(int i, long j);

    public abstract void zzw(long j);
}
