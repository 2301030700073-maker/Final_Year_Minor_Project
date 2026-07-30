package com.google.android.gms.internal.wearable;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.Cif;
import defpackage.Creturn;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes3.dex */
public abstract class zzaw implements Iterable, Serializable {
    private static final Comparator zza;
    public static final zzaw zzb = new zzat(zzcd.zzd);
    private static final zzav zzd;
    private int zzc = 0;

    static {
        int i = zzai.zza;
        zzd = new zzav(null);
        zza = new zzao();
    }

    public static int zzk(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException(Creturn.m7981if("Beginning index: ", i, " < 0"));
        }
        if (i2 < i) {
            throw new IndexOutOfBoundsException(Cif.m6918new("Beginning index larger than ending index: ", i, ", ", i2));
        }
        throw new IndexOutOfBoundsException(Cif.m6918new("End index: ", i2, " >= ", i3));
    }

    public static zzaw zzm(byte[] bArr) {
        return zzn(bArr, 0, bArr.length);
    }

    public static zzaw zzn(byte[] bArr, int i, int i2) {
        zzk(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzat(bArr2);
    }

    public static zzaw zzo(String str) {
        return new zzat(str.getBytes(zzcd.zzb));
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzc;
        if (i == 0) {
            int zzd2 = zzd();
            i = zzf(zzd2, 0, zzd2);
            if (i == 0) {
                i = 1;
            }
            this.zzc = i;
        }
        return i;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzan(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(zzd());
        objArr[2] = zzd() <= 50 ? zzec.zza(this) : zzec.zza(zzg(0, 47)).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract byte zza(int i);

    public abstract byte zzb(int i);

    public abstract int zzd();

    public abstract void zze(byte[] bArr, int i, int i2, int i3);

    public abstract int zzf(int i, int i2, int i3);

    public abstract zzaw zzg(int i, int i2);

    public abstract String zzh(Charset charset);

    public abstract void zzi(zzam zzamVar);

    public abstract boolean zzj();

    public final int zzl() {
        return this.zzc;
    }

    public final String zzp(Charset charset) {
        return zzd() == 0 ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : zzh(charset);
    }

    public final byte[] zzq() {
        int zzd2 = zzd();
        if (zzd2 == 0) {
            return zzcd.zzd;
        }
        byte[] bArr = new byte[zzd2];
        zze(bArr, 0, 0, zzd2);
        return bArr;
    }
}
