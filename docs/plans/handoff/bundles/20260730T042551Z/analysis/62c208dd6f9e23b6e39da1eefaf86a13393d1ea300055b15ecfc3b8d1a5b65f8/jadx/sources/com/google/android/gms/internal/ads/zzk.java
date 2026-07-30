package com.google.android.gms.internal.ads;

import defpackage.Cif;
import defpackage.Creturn;
import defpackage.V1;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzk {
    public static final zzk zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final byte[] zze;
    public final int zzf;
    public final int zzg;
    private int zzh;

    static {
        zzi zziVar = new zzi();
        zziVar.zzc(1);
        zziVar.zzb(2);
        zziVar.zzd(3);
        zza = zziVar.zzg();
        zzi zziVar2 = new zzi();
        zziVar2.zzc(1);
        zziVar2.zzb(1);
        zziVar2.zzd(2);
        zziVar2.zzg();
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
    }

    public /* synthetic */ zzk(int i, int i2, int i3, byte[] bArr, int i4, int i5, zzj zzjVar) {
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = bArr;
        this.zzf = i4;
        this.zzg = i5;
    }

    public static int zza(int i) {
        if (i == 1) {
            return 1;
        }
        if (i != 9) {
            return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int zzb(int i) {
        if (i == 1) {
            return 3;
        }
        if (i == 4) {
            return 10;
        }
        if (i == 13) {
            return 2;
        }
        if (i == 16) {
            return 6;
        }
        if (i != 18) {
            return (i == 6 || i == 7) ? 3 : -1;
        }
        return 7;
    }

    public static boolean zzg(zzk zzkVar) {
        int i;
        int i2;
        int i3;
        int i4;
        if (zzkVar == null) {
            return true;
        }
        int i5 = zzkVar.zzb;
        return (i5 == -1 || i5 == 1 || i5 == 2) && ((i = zzkVar.zzc) == -1 || i == 2) && (((i2 = zzkVar.zzd) == -1 || i2 == 3) && zzkVar.zze == null && (((i3 = zzkVar.zzg) == -1 || i3 == 8) && ((i4 = zzkVar.zzf) == -1 || i4 == 8)));
    }

    private static String zzh(int i) {
        return i != -1 ? i != 1 ? i != 2 ? V1.m2494case("Undefined color range ", i) : "Limited range" : "Full range" : "Unset color range";
    }

    private static String zzi(int i) {
        return i != -1 ? i != 6 ? i != 1 ? i != 2 ? V1.m2494case("Undefined color space ", i) : "BT601" : "BT709" : "BT2020" : "Unset color space";
    }

    private static String zzj(int i) {
        return i != -1 ? i != 10 ? i != 1 ? i != 2 ? i != 3 ? i != 6 ? i != 7 ? V1.m2494case("Undefined color transfer ", i) : "HLG" : "ST2084 PQ" : "SDR SMPTE 170M" : "sRGB" : "Linear" : "Gamma 2.2" : "Unset color transfer";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzk.class == obj.getClass()) {
            zzk zzkVar = (zzk) obj;
            if (this.zzb == zzkVar.zzb && this.zzc == zzkVar.zzc && this.zzd == zzkVar.zzd && Arrays.equals(this.zze, zzkVar.zze) && this.zzf == zzkVar.zzf && this.zzg == zzkVar.zzg) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzh;
        if (i != 0) {
            return i;
        }
        int hashCode = ((((Arrays.hashCode(this.zze) + ((((((this.zzb + 527) * 31) + this.zzc) * 31) + this.zzd) * 31)) * 31) + this.zzf) * 31) + this.zzg;
        this.zzh = hashCode;
        return hashCode;
    }

    public final String toString() {
        String str;
        int i = this.zzf;
        int i2 = this.zzd;
        int i3 = this.zzc;
        String zzi = zzi(this.zzb);
        String zzh = zzh(i3);
        String zzj = zzj(i2);
        String str2 = "NA";
        if (i != -1) {
            str = i + "bit Luma";
        } else {
            str = "NA";
        }
        int i4 = this.zzg;
        if (i4 != -1) {
            str2 = i4 + "bit Chroma";
        }
        boolean z = this.zze != null;
        StringBuilder m6919this = Cif.m6919this("ColorInfo(", zzi, ", ", zzh, ", ");
        m6919this.append(zzj);
        m6919this.append(", ");
        m6919this.append(z);
        m6919this.append(", ");
        m6919this.append(str);
        m6919this.append(", ");
        m6919this.append(str2);
        m6919this.append(")");
        return m6919this.toString();
    }

    public final zzi zzc() {
        return new zzi(this, null);
    }

    public final String zzd() {
        String str;
        String format = zzf() ? String.format(Locale.US, "%s/%s/%s", zzi(this.zzb), zzh(this.zzc), zzj(this.zzd)) : "NA/NA/NA";
        if (zze()) {
            str = this.zzf + "/" + this.zzg;
        } else {
            str = "NA/NA";
        }
        return Creturn.m7982new(format, "/", str);
    }

    public final boolean zze() {
        return (this.zzf == -1 || this.zzg == -1) ? false : true;
    }

    public final boolean zzf() {
        return (this.zzb == -1 || this.zzc == -1 || this.zzd == -1) ? false : true;
    }
}
