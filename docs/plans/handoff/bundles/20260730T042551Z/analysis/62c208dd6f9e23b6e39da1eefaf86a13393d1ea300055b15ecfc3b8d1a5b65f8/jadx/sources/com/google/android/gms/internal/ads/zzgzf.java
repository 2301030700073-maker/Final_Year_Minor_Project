package com.google.android.gms.internal.ads;

import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.common.ConnectionResult;
import defpackage.Cif;
import defpackage.V1;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
final class zzgzf<T> implements zzgzv<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhao.zzi();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzgzc zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzhah zzm;
    private final zzgxc zzn;

    private zzgzf(int[] iArr, Object[] objArr, int i, int i2, zzgzc zzgzcVar, boolean z, int[] iArr2, int i3, int i4, zzgzi zzgziVar, zzgyp zzgypVar, zzhah zzhahVar, zzgxc zzgxcVar, zzgyx zzgyxVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzgzcVar instanceof zzgxr;
        boolean z2 = false;
        if (zzgxcVar != null && (zzgzcVar instanceof zzgxn)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzj = iArr2;
        this.zzk = i3;
        this.zzl = i4;
        this.zzm = zzhahVar;
        this.zzn = zzgxcVar;
        this.zzg = zzgzcVar;
    }

    private final Object zzA(Object obj, int i) {
        zzgzv zzx = zzx(i);
        int zzu = zzu(i) & 1048575;
        if (!zzN(obj, i)) {
            return zzx.zze();
        }
        Object object = zzb.getObject(obj, zzu);
        if (zzQ(object)) {
            return object;
        }
        Object zze = zzx.zze();
        if (object != null) {
            zzx.zzg(zze, object);
        }
        return zze;
    }

    private final Object zzB(Object obj, int i, int i2) {
        zzgzv zzx = zzx(i2);
        if (!zzR(obj, i, i2)) {
            return zzx.zze();
        }
        Object object = zzb.getObject(obj, zzu(i2) & 1048575);
        if (zzQ(object)) {
            return object;
        }
        Object zze = zzx.zze();
        if (object != null) {
            zzx.zzg(zze, object);
        }
        return zze;
    }

    private static Field zzC(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder m6919this = Cif.m6919this("Field ", str, " for ", name, " not found. Known fields are ");
            m6919this.append(arrays);
            throw new RuntimeException(m6919this.toString());
        }
    }

    private static void zzD(Object obj) {
        if (!zzQ(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private final void zzE(Object obj, Object obj2, int i) {
        if (zzN(obj2, i)) {
            int zzu = zzu(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = zzu;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzgzv zzx = zzx(i);
            if (!zzN(obj, i)) {
                if (zzQ(object)) {
                    Object zze = zzx.zze();
                    zzx.zzg(zze, object);
                    unsafe.putObject(obj, j, zze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzH(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzQ(object2)) {
                Object zze2 = zzx.zze();
                zzx.zzg(zze2, object2);
                unsafe.putObject(obj, j, zze2);
                object2 = zze2;
            }
            zzx.zzg(object2, object);
        }
    }

    private final void zzF(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (zzR(obj2, i2, i)) {
            int zzu = zzu(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = zzu;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzgzv zzx = zzx(i);
            if (!zzR(obj, i2, i)) {
                if (zzQ(object)) {
                    Object zze = zzx.zze();
                    zzx.zzg(zze, object);
                    unsafe.putObject(obj, j, zze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzI(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzQ(object2)) {
                Object zze2 = zzx.zze();
                zzx.zzg(zze2, object2);
                unsafe.putObject(obj, j, zze2);
                object2 = zze2;
            }
            zzx.zzg(object2, object);
        }
    }

    private final void zzG(Object obj, int i, zzgzp zzgzpVar) {
        long j = i & 1048575;
        if (zzM(i)) {
            zzhao.zzv(obj, j, zzgzpVar.zzs());
        } else if (this.zzi) {
            zzhao.zzv(obj, j, zzgzpVar.zzr());
        } else {
            zzhao.zzv(obj, j, zzgzpVar.zzp());
        }
    }

    private final void zzH(Object obj, int i) {
        int zzr = zzr(i);
        long j = 1048575 & zzr;
        if (j == 1048575) {
            return;
        }
        zzhao.zzt(obj, j, (1 << (zzr >>> 20)) | zzhao.zzd(obj, j));
    }

    private final void zzI(Object obj, int i, int i2) {
        zzhao.zzt(obj, zzr(i2) & 1048575, i);
    }

    private final void zzJ(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzu(i) & 1048575, obj2);
        zzH(obj, i);
    }

    private final void zzK(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzu(i2) & 1048575, obj2);
        zzI(obj, i, i2);
    }

    private final boolean zzL(Object obj, Object obj2, int i) {
        return zzN(obj, i) == zzN(obj2, i);
    }

    private static boolean zzM(int i) {
        return (i & 536870912) != 0;
    }

    private final boolean zzN(Object obj, int i) {
        int zzr = zzr(i);
        long j = zzr & 1048575;
        if (j != 1048575) {
            return (zzhao.zzd(obj, j) & (1 << (zzr >>> 20))) != 0;
        }
        int zzu = zzu(i);
        long j2 = zzu & 1048575;
        switch (zzt(zzu)) {
            case 0:
                return Double.doubleToRawLongBits(zzhao.zzb(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzhao.zzc(obj, j2)) != 0;
            case 2:
                return zzhao.zzf(obj, j2) != 0;
            case 3:
                return zzhao.zzf(obj, j2) != 0;
            case 4:
                return zzhao.zzd(obj, j2) != 0;
            case 5:
                return zzhao.zzf(obj, j2) != 0;
            case 6:
                return zzhao.zzd(obj, j2) != 0;
            case 7:
                return zzhao.zzz(obj, j2);
            case 8:
                Object zzh = zzhao.zzh(obj, j2);
                if (zzh instanceof String) {
                    return !((String) zzh).isEmpty();
                }
                if (zzh instanceof zzgwj) {
                    return !zzgwj.zzb.equals(zzh);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzhao.zzh(obj, j2) != null;
            case 10:
                return !zzgwj.zzb.equals(zzhao.zzh(obj, j2));
            case 11:
                return zzhao.zzd(obj, j2) != 0;
            case 12:
                return zzhao.zzd(obj, j2) != 0;
            case 13:
                return zzhao.zzd(obj, j2) != 0;
            case 14:
                return zzhao.zzf(obj, j2) != 0;
            case 15:
                return zzhao.zzd(obj, j2) != 0;
            case 16:
                return zzhao.zzf(obj, j2) != 0;
            case 17:
                return zzhao.zzh(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzO(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzN(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zzP(Object obj, int i, zzgzv zzgzvVar) {
        return zzgzvVar.zzl(zzhao.zzh(obj, i & 1048575));
    }

    private static boolean zzQ(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzgxr) {
            return ((zzgxr) obj).zzcd();
        }
        return true;
    }

    private final boolean zzR(Object obj, int i, int i2) {
        return zzhao.zzd(obj, (long) (zzr(i2) & 1048575)) == i;
    }

    private static boolean zzS(Object obj, long j) {
        return ((Boolean) zzhao.zzh(obj, j)).booleanValue();
    }

    private static final void zzT(int i, Object obj, zzhaw zzhawVar) {
        if (obj instanceof String) {
            zzhawVar.zzG(i, (String) obj);
        } else {
            zzhawVar.zzd(i, (zzgwj) obj);
        }
    }

    public static zzhai zzd(Object obj) {
        zzgxr zzgxrVar = (zzgxr) obj;
        zzhai zzhaiVar = zzgxrVar.zzt;
        if (zzhaiVar != zzhai.zzc()) {
            return zzhaiVar;
        }
        zzhai zzf = zzhai.zzf();
        zzgxrVar.zzt = zzf;
        return zzf;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0267  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzgzf zzm(java.lang.Class r32, com.google.android.gms.internal.ads.zzgyz r33, com.google.android.gms.internal.ads.zzgzi r34, com.google.android.gms.internal.ads.zzgyp r35, com.google.android.gms.internal.ads.zzhah r36, com.google.android.gms.internal.ads.zzgxc r37, com.google.android.gms.internal.ads.zzgyx r38) {
        /*
            Method dump skipped, instructions count: 1047
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzf.zzm(java.lang.Class, com.google.android.gms.internal.ads.zzgyz, com.google.android.gms.internal.ads.zzgzi, com.google.android.gms.internal.ads.zzgyp, com.google.android.gms.internal.ads.zzhah, com.google.android.gms.internal.ads.zzgxc, com.google.android.gms.internal.ads.zzgyx):com.google.android.gms.internal.ads.zzgzf");
    }

    private static double zzn(Object obj, long j) {
        return ((Double) zzhao.zzh(obj, j)).doubleValue();
    }

    private static float zzo(Object obj, long j) {
        return ((Float) zzhao.zzh(obj, j)).floatValue();
    }

    private static int zzp(Object obj, long j) {
        return ((Integer) zzhao.zzh(obj, j)).intValue();
    }

    private final int zzq(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzs(i, 0);
    }

    private final int zzr(int i) {
        return this.zzc[i + 2];
    }

    private final int zzs(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private static int zzt(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzu(int i) {
        return this.zzc[i + 1];
    }

    private static long zzv(Object obj, long j) {
        return ((Long) zzhao.zzh(obj, j)).longValue();
    }

    private final zzgxx zzw(int i) {
        int i2 = i / 3;
        return (zzgxx) this.zzd[i2 + i2 + 1];
    }

    private final zzgzv zzx(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzgzv zzgzvVar = (zzgzv) objArr[i3];
        if (zzgzvVar != null) {
            return zzgzvVar;
        }
        zzgzv zzb2 = zzgzm.zza().zzb((Class) objArr[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzy(Object obj, int i, Object obj2, zzhah zzhahVar, Object obj3) {
        int i2 = this.zzc[i];
        Object zzh = zzhao.zzh(obj, zzu(i) & 1048575);
        if (zzh == null || zzw(i) == null) {
            return obj2;
        }
        throw null;
    }

    private final Object zzz(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzgzv
    public final int zza(Object obj) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int zzD;
        int zzD2;
        int zzD3;
        int zzE;
        int zzD4;
        int i6;
        int zzD5;
        int zzd;
        int zzD6;
        int zzh;
        int zzy;
        int zzD7;
        int size;
        int zzl;
        int zzD8;
        int zzD9;
        int i7;
        Unsafe unsafe = zzb;
        boolean z = false;
        int i8 = 1048575;
        int i9 = 1048575;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i11 < this.zzc.length) {
            int zzu = zzu(i11);
            int zzt = zzt(zzu);
            int[] iArr = this.zzc;
            int i13 = iArr[i11];
            int i14 = iArr[i11 + 2];
            int i15 = i14 & i8;
            if (zzt <= 17) {
                if (i15 != i9) {
                    i10 = i15 == i8 ? 0 : unsafe.getInt(obj, i15);
                    i9 = i15;
                }
                i2 = i10;
                i3 = 1 << (i14 >>> 20);
                i = i9;
            } else {
                i = i9;
                i2 = i10;
                i3 = 0;
            }
            int i16 = i8 & zzu;
            if (zzt >= zzgxh.zzJ.zza()) {
                zzgxh.zzW.zza();
            }
            long j = i16;
            switch (zzt) {
                case 0:
                    i4 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        zzD = zzgww.zzD(i13 << 3);
                        zzy = zzD + 8;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 1:
                    i4 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        zzD2 = zzgww.zzD(i13 << 3);
                        zzy = zzD2 + 4;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 2:
                    i4 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        long j2 = unsafe.getLong(obj, j);
                        zzD3 = zzgww.zzD(i13 << 3);
                        zzE = zzgww.zzE(j2);
                        i12 = zzE + zzD3 + i4;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 3:
                    i4 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        long j3 = unsafe.getLong(obj, j);
                        zzD3 = zzgww.zzD(i13 << 3);
                        zzE = zzgww.zzE(j3);
                        i12 = zzE + zzD3 + i4;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 4:
                    i4 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        long j4 = unsafe.getInt(obj, j);
                        zzD3 = zzgww.zzD(i13 << 3);
                        zzE = zzgww.zzE(j4);
                        i12 = zzE + zzD3 + i4;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 5:
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        zzD = zzgww.zzD(i13 << 3);
                        i4 = i12;
                        zzy = zzD + 8;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 6:
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        zzD2 = zzgww.zzD(i13 << 3);
                        i4 = i12;
                        zzy = zzD2 + 4;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 7:
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        zzD4 = zzgww.zzD(i13 << 3);
                        zzy = zzD4 + 1;
                        i4 = i12;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 8:
                    i6 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        int i17 = i13 << 3;
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzgwj) {
                            zzD5 = zzgww.zzD(i17);
                            zzd = ((zzgwj) object).zzd();
                            zzD6 = zzgww.zzD(zzd);
                            i12 = i6;
                            i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                            i11 += 3;
                            z = false;
                            i8 = 1048575;
                            i10 = i2;
                            i9 = i5;
                        } else {
                            zzD3 = zzgww.zzD(i17);
                            zzE = zzgww.zzC((String) object);
                            i4 = i6;
                            i12 = zzE + zzD3 + i4;
                            i11 += 3;
                            z = false;
                            i8 = 1048575;
                            i10 = i2;
                            i9 = i5;
                        }
                    }
                    i4 = i6;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 9:
                    i6 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        zzh = zzgzx.zzh(i13, unsafe.getObject(obj, j), zzx(i11));
                        i12 = i6 + zzh;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i6;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 10:
                    i6 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        zzgwj zzgwjVar = (zzgwj) unsafe.getObject(obj, j);
                        zzD5 = zzgww.zzD(i13 << 3);
                        zzd = zzgwjVar.zzd();
                        zzD6 = zzgww.zzD(zzd);
                        i12 = i6;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i6;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 11:
                    i6 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        int i18 = unsafe.getInt(obj, j);
                        zzD3 = zzgww.zzD(i13 << 3);
                        zzE = zzgww.zzD(i18);
                        i4 = i6;
                        i12 = zzE + zzD3 + i4;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i6;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 12:
                    i6 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        long j5 = unsafe.getInt(obj, j);
                        zzD3 = zzgww.zzD(i13 << 3);
                        zzE = zzgww.zzE(j5);
                        i4 = i6;
                        i12 = zzE + zzD3 + i4;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i6;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 13:
                    i6 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        zzD2 = zzgww.zzD(i13 << 3);
                        i4 = i6;
                        zzy = zzD2 + 4;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i6;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 14:
                    i6 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        zzD = zzgww.zzD(i13 << 3);
                        i4 = i6;
                        zzy = zzD + 8;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i6;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 15:
                    i6 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        int i19 = unsafe.getInt(obj, j);
                        zzD3 = zzgww.zzD(i13 << 3);
                        zzE = zzgww.zzD((i19 >> 31) ^ (i19 + i19));
                        i4 = i6;
                        i12 = zzE + zzD3 + i4;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i6;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 16:
                    i6 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i5, i2, i3)) {
                        long j6 = unsafe.getLong(obj, j);
                        zzD3 = zzgww.zzD(i13 << 3);
                        zzE = zzgww.zzE((j6 >> 63) ^ (j6 + j6));
                        i4 = i6;
                        i12 = zzE + zzD3 + i4;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i6;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 17:
                    i6 = i12;
                    i5 = i;
                    if (zzO(obj, i11, i, i2, i3)) {
                        zzy = zzgww.zzy(i13, (zzgzc) unsafe.getObject(obj, j), zzx(i11));
                        i4 = i6;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i6;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 18:
                    zzh = zzgzx.zzd(i13, (List) unsafe.getObject(obj, j), z);
                    i6 = i12;
                    i5 = i;
                    i12 = i6 + zzh;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 19:
                    zzh = zzgzx.zzb(i13, (List) unsafe.getObject(obj, j), z);
                    i6 = i12;
                    i5 = i;
                    i12 = i6 + zzh;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 20:
                    List list = (List) unsafe.getObject(obj, j);
                    int i20 = zzgzx.zza;
                    if (list.size() != 0) {
                        zzD7 = (zzgww.zzD(i13 << 3) * list.size()) + zzgzx.zzg(list);
                        i12 += zzD7;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzD7 = 0;
                    i12 += zzD7;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j);
                    int i21 = zzgzx.zza;
                    size = list2.size();
                    if (size != 0) {
                        zzl = zzgzx.zzl(list2);
                        zzD8 = zzgww.zzD(i13 << 3);
                        zzD9 = (zzD8 * size) + zzl;
                        i12 += zzD9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzD9 = 0;
                    i12 += zzD9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i22 = zzgzx.zza;
                    size = list3.size();
                    if (size != 0) {
                        zzl = zzgzx.zzf(list3);
                        zzD8 = zzgww.zzD(i13 << 3);
                        zzD9 = (zzD8 * size) + zzl;
                        i12 += zzD9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzD9 = 0;
                    i12 += zzD9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case ConnectionResult.API_DISABLED /* 23 */:
                    zzh = zzgzx.zzd(i13, (List) unsafe.getObject(obj, j), z);
                    i6 = i12;
                    i5 = i;
                    i12 = i6 + zzh;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    zzh = zzgzx.zzb(i13, (List) unsafe.getObject(obj, j), z);
                    i6 = i12;
                    i5 = i;
                    i12 = i6 + zzh;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case Constants.MAX_TREE_DEPTH /* 25 */:
                    List list4 = (List) unsafe.getObject(obj, j);
                    int i23 = zzgzx.zza;
                    int size2 = list4.size();
                    if (size2 != 0) {
                        zzD7 = (zzgww.zzD(i13 << 3) + 1) * size2;
                        i12 += zzD7;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzD7 = 0;
                    i12 += zzD7;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 26:
                    List list5 = (List) unsafe.getObject(obj, j);
                    int i24 = zzgzx.zza;
                    int size3 = list5.size();
                    if (size3 != 0) {
                        zzD9 = zzgww.zzD(i13 << 3) * size3;
                        if (list5 instanceof zzgyo) {
                            zzgyo zzgyoVar = (zzgyo) list5;
                            for (int i25 = 0; i25 < size3; i25++) {
                                Object zzc = zzgyoVar.zzc();
                                if (zzc instanceof zzgwj) {
                                    int zzd2 = ((zzgwj) zzc).zzd();
                                    zzD9 = zzgww.zzD(zzd2) + zzd2 + zzD9;
                                } else {
                                    zzD9 = zzgww.zzC((String) zzc) + zzD9;
                                }
                            }
                        } else {
                            for (int i26 = 0; i26 < size3; i26++) {
                                Object obj2 = list5.get(i26);
                                if (obj2 instanceof zzgwj) {
                                    int zzd3 = ((zzgwj) obj2).zzd();
                                    zzD9 = zzgww.zzD(zzd3) + zzd3 + zzD9;
                                } else {
                                    zzD9 = zzgww.zzC((String) obj2) + zzD9;
                                }
                            }
                        }
                        i12 += zzD9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzD9 = 0;
                    i12 += zzD9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 27:
                    List list6 = (List) unsafe.getObject(obj, j);
                    zzgzv zzx = zzx(i11);
                    int i27 = zzgzx.zza;
                    int size4 = list6.size();
                    if (size4 != 0) {
                        int zzD10 = zzgww.zzD(i13 << 3) * size4;
                        for (int i28 = 0; i28 < size4; i28++) {
                            Object obj3 = list6.get(i28);
                            if (obj3 instanceof zzgyn) {
                                int zza2 = ((zzgyn) obj3).zza();
                                zzD10 = zzgww.zzD(zza2) + zza2 + zzD10;
                            } else {
                                zzD10 = zzgww.zzA((zzgzc) obj3, zzx) + zzD10;
                            }
                        }
                        i7 = zzD10;
                        i12 += i7;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i7 = 0;
                    i12 += i7;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 28:
                    List list7 = (List) unsafe.getObject(obj, j);
                    int i29 = zzgzx.zza;
                    int size5 = list7.size();
                    if (size5 != 0) {
                        zzD9 = zzgww.zzD(i13 << 3) * size5;
                        for (int i30 = 0; i30 < list7.size(); i30++) {
                            int zzd4 = ((zzgwj) list7.get(i30)).zzd();
                            zzD9 += zzgww.zzD(zzd4) + zzd4;
                        }
                        i12 += zzD9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzD9 = 0;
                    i12 += zzD9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 29:
                    List list8 = (List) unsafe.getObject(obj, j);
                    int i31 = zzgzx.zza;
                    size = list8.size();
                    if (size != 0) {
                        zzl = zzgzx.zzk(list8);
                        zzD8 = zzgww.zzD(i13 << 3);
                        zzD9 = (zzD8 * size) + zzl;
                        i12 += zzD9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzD9 = 0;
                    i12 += zzD9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 30:
                    List list9 = (List) unsafe.getObject(obj, j);
                    int i32 = zzgzx.zza;
                    size = list9.size();
                    if (size != 0) {
                        zzl = zzgzx.zza(list9);
                        zzD8 = zzgww.zzD(i13 << 3);
                        zzD9 = (zzD8 * size) + zzl;
                        i12 += zzD9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzD9 = 0;
                    i12 += zzD9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 31:
                    zzh = zzgzx.zzb(i13, (List) unsafe.getObject(obj, j), z);
                    i6 = i12;
                    i5 = i;
                    i12 = i6 + zzh;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 32:
                    zzh = zzgzx.zzd(i13, (List) unsafe.getObject(obj, j), z);
                    i6 = i12;
                    i5 = i;
                    i12 = i6 + zzh;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 33:
                    List list10 = (List) unsafe.getObject(obj, j);
                    int i33 = zzgzx.zza;
                    size = list10.size();
                    if (size != 0) {
                        zzl = zzgzx.zzi(list10);
                        zzD8 = zzgww.zzD(i13 << 3);
                        zzD9 = (zzD8 * size) + zzl;
                        i12 += zzD9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzD9 = 0;
                    i12 += zzD9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 34:
                    List list11 = (List) unsafe.getObject(obj, j);
                    int i34 = zzgzx.zza;
                    size = list11.size();
                    if (size != 0) {
                        zzl = zzgzx.zzj(list11);
                        zzD8 = zzgww.zzD(i13 << 3);
                        zzD9 = (zzD8 * size) + zzl;
                        i12 += zzD9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzD9 = 0;
                    i12 += zzD9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 35:
                    zzD5 = zzgzx.zze((List) unsafe.getObject(obj, j));
                    if (zzD5 > 0) {
                        zzd = zzgww.zzD(i13 << 3);
                        zzD6 = zzgww.zzD(zzD5);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 36:
                    zzD5 = zzgzx.zzc((List) unsafe.getObject(obj, j));
                    if (zzD5 > 0) {
                        zzd = zzgww.zzD(i13 << 3);
                        zzD6 = zzgww.zzD(zzD5);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 37:
                    zzD5 = zzgzx.zzg((List) unsafe.getObject(obj, j));
                    if (zzD5 > 0) {
                        zzd = zzgww.zzD(i13 << 3);
                        zzD6 = zzgww.zzD(zzD5);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 38:
                    zzD5 = zzgzx.zzl((List) unsafe.getObject(obj, j));
                    if (zzD5 > 0) {
                        zzd = zzgww.zzD(i13 << 3);
                        zzD6 = zzgww.zzD(zzD5);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 39:
                    zzD5 = zzgzx.zzf((List) unsafe.getObject(obj, j));
                    if (zzD5 > 0) {
                        zzd = zzgww.zzD(i13 << 3);
                        zzD6 = zzgww.zzD(zzD5);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 40:
                    zzD5 = zzgzx.zze((List) unsafe.getObject(obj, j));
                    if (zzD5 > 0) {
                        zzd = zzgww.zzD(i13 << 3);
                        zzD6 = zzgww.zzD(zzD5);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 41:
                    zzD5 = zzgzx.zzc((List) unsafe.getObject(obj, j));
                    if (zzD5 > 0) {
                        zzd = zzgww.zzD(i13 << 3);
                        zzD6 = zzgww.zzD(zzD5);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 42:
                    List list12 = (List) unsafe.getObject(obj, j);
                    int i35 = zzgzx.zza;
                    zzD5 = list12.size();
                    if (zzD5 > 0) {
                        zzd = zzgww.zzD(i13 << 3);
                        zzD6 = zzgww.zzD(zzD5);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 43:
                    zzD5 = zzgzx.zzk((List) unsafe.getObject(obj, j));
                    if (zzD5 > 0) {
                        zzd = zzgww.zzD(i13 << 3);
                        zzD6 = zzgww.zzD(zzD5);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 44:
                    zzD5 = zzgzx.zza((List) unsafe.getObject(obj, j));
                    if (zzD5 > 0) {
                        zzd = zzgww.zzD(i13 << 3);
                        zzD6 = zzgww.zzD(zzD5);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 45:
                    zzD5 = zzgzx.zzc((List) unsafe.getObject(obj, j));
                    if (zzD5 > 0) {
                        zzd = zzgww.zzD(i13 << 3);
                        zzD6 = zzgww.zzD(zzD5);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 46:
                    zzD5 = zzgzx.zze((List) unsafe.getObject(obj, j));
                    if (zzD5 > 0) {
                        zzd = zzgww.zzD(i13 << 3);
                        zzD6 = zzgww.zzD(zzD5);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 47:
                    zzD5 = zzgzx.zzi((List) unsafe.getObject(obj, j));
                    if (zzD5 > 0) {
                        zzd = zzgww.zzD(i13 << 3);
                        zzD6 = zzgww.zzD(zzD5);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 48:
                    zzD5 = zzgzx.zzj((List) unsafe.getObject(obj, j));
                    if (zzD5 > 0) {
                        zzd = zzgww.zzD(i13 << 3);
                        zzD6 = zzgww.zzD(zzD5);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 49:
                    List list13 = (List) unsafe.getObject(obj, j);
                    zzgzv zzx2 = zzx(i11);
                    int i36 = zzgzx.zza;
                    int size6 = list13.size();
                    if (size6 != 0) {
                        int i37 = 0;
                        for (int i38 = 0; i38 < size6; i38++) {
                            i37 += zzgww.zzy(i13, (zzgzc) list13.get(i38), zzx2);
                        }
                        i7 = i37;
                        i12 += i7;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i7 = 0;
                    i12 += i7;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 50:
                    zzgyw zzgywVar = (zzgyw) unsafe.getObject(obj, j);
                    if (!zzgywVar.isEmpty()) {
                        Iterator it = zzgywVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 51:
                    if (zzR(obj, i13, i11)) {
                        zzD = zzgww.zzD(i13 << 3);
                        i4 = i12;
                        i5 = i;
                        zzy = zzD + 8;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 52:
                    if (zzR(obj, i13, i11)) {
                        zzD2 = zzgww.zzD(i13 << 3);
                        i4 = i12;
                        i5 = i;
                        zzy = zzD2 + 4;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 53:
                    if (zzR(obj, i13, i11)) {
                        long zzv = zzv(obj, j);
                        zzD3 = zzgww.zzD(i13 << 3);
                        zzE = zzgww.zzE(zzv);
                        i4 = i12;
                        i5 = i;
                        i12 = zzE + zzD3 + i4;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 54:
                    if (zzR(obj, i13, i11)) {
                        long zzv2 = zzv(obj, j);
                        zzD3 = zzgww.zzD(i13 << 3);
                        zzE = zzgww.zzE(zzv2);
                        i4 = i12;
                        i5 = i;
                        i12 = zzE + zzD3 + i4;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 55:
                    if (zzR(obj, i13, i11)) {
                        long zzp = zzp(obj, j);
                        zzD3 = zzgww.zzD(i13 << 3);
                        zzE = zzgww.zzE(zzp);
                        i4 = i12;
                        i5 = i;
                        i12 = zzE + zzD3 + i4;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 56:
                    if (zzR(obj, i13, i11)) {
                        zzD = zzgww.zzD(i13 << 3);
                        i4 = i12;
                        i5 = i;
                        zzy = zzD + 8;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 57:
                    if (zzR(obj, i13, i11)) {
                        zzD2 = zzgww.zzD(i13 << 3);
                        i4 = i12;
                        i5 = i;
                        zzy = zzD2 + 4;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 58:
                    if (zzR(obj, i13, i11)) {
                        zzD4 = zzgww.zzD(i13 << 3);
                        i5 = i;
                        zzy = zzD4 + 1;
                        i4 = i12;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 59:
                    if (zzR(obj, i13, i11)) {
                        int i39 = i13 << 3;
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzgwj) {
                            zzD5 = zzgww.zzD(i39);
                            zzd = ((zzgwj) object2).zzd();
                            zzD6 = zzgww.zzD(zzd);
                            i5 = i;
                            i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                            i11 += 3;
                            z = false;
                            i8 = 1048575;
                            i10 = i2;
                            i9 = i5;
                        } else {
                            zzD3 = zzgww.zzD(i39);
                            zzE = zzgww.zzC((String) object2);
                            i4 = i12;
                            i5 = i;
                            i12 = zzE + zzD3 + i4;
                            i11 += 3;
                            z = false;
                            i8 = 1048575;
                            i10 = i2;
                            i9 = i5;
                        }
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 60:
                    if (zzR(obj, i13, i11)) {
                        zzh = zzgzx.zzh(i13, unsafe.getObject(obj, j), zzx(i11));
                        i6 = i12;
                        i5 = i;
                        i12 = i6 + zzh;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 61:
                    if (zzR(obj, i13, i11)) {
                        zzgwj zzgwjVar2 = (zzgwj) unsafe.getObject(obj, j);
                        zzD5 = zzgww.zzD(i13 << 3);
                        zzd = zzgwjVar2.zzd();
                        zzD6 = zzgww.zzD(zzd);
                        i5 = i;
                        i12 = V1.m2501for(zzD6, zzd, zzD5, i12);
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 62:
                    if (zzR(obj, i13, i11)) {
                        int zzp2 = zzp(obj, j);
                        zzD3 = zzgww.zzD(i13 << 3);
                        zzE = zzgww.zzD(zzp2);
                        i4 = i12;
                        i5 = i;
                        i12 = zzE + zzD3 + i4;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 63:
                    if (zzR(obj, i13, i11)) {
                        long zzp3 = zzp(obj, j);
                        zzD3 = zzgww.zzD(i13 << 3);
                        zzE = zzgww.zzE(zzp3);
                        i4 = i12;
                        i5 = i;
                        i12 = zzE + zzD3 + i4;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 64:
                    if (zzR(obj, i13, i11)) {
                        zzD2 = zzgww.zzD(i13 << 3);
                        i4 = i12;
                        i5 = i;
                        zzy = zzD2 + 4;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 65:
                    if (zzR(obj, i13, i11)) {
                        zzD = zzgww.zzD(i13 << 3);
                        i4 = i12;
                        i5 = i;
                        zzy = zzD + 8;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 66:
                    if (zzR(obj, i13, i11)) {
                        int zzp4 = zzp(obj, j);
                        zzD3 = zzgww.zzD(i13 << 3);
                        zzE = zzgww.zzD((zzp4 >> 31) ^ (zzp4 + zzp4));
                        i4 = i12;
                        i5 = i;
                        i12 = zzE + zzD3 + i4;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 67:
                    if (zzR(obj, i13, i11)) {
                        long zzv3 = zzv(obj, j);
                        zzD3 = zzgww.zzD(i13 << 3);
                        zzE = zzgww.zzE((zzv3 >> 63) ^ (zzv3 + zzv3));
                        i4 = i12;
                        i5 = i;
                        i12 = zzE + zzD3 + i4;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 68:
                    if (zzR(obj, i13, i11)) {
                        zzy = zzgww.zzy(i13, (zzgzc) unsafe.getObject(obj, j), zzx(i11));
                        i4 = i12;
                        i5 = i;
                        i12 = i4 + zzy;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                default:
                    i4 = i12;
                    i5 = i;
                    i12 = i4;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
            }
        }
        int zza3 = ((zzgxr) obj).zzt.zza() + i12;
        if (!this.zzh) {
            return zza3;
        }
        zzgxg zzgxgVar = ((zzgxn) obj).zza;
        int zzc2 = zzgxgVar.zza.zzc();
        int i40 = 0;
        for (int i41 = 0; i41 < zzc2; i41++) {
            Map.Entry zzg = zzgxgVar.zza.zzg(i41);
            i40 += zzgxg.zzc((zzgxf) ((zzgzz) zzg).zza(), zzg.getValue());
        }
        for (Map.Entry entry2 : zzgxgVar.zza.zzd()) {
            i40 += zzgxg.zzc((zzgxf) entry2.getKey(), entry2.getValue());
        }
        return zza3 + i40;
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final int zzb(Object obj) {
        int i;
        long doubleToLongBits;
        int i2;
        int floatToIntBits;
        int i3;
        int zzd;
        int i4;
        int i5 = 0;
        for (int i6 = 0; i6 < this.zzc.length; i6 += 3) {
            int zzu = zzu(i6);
            int[] iArr = this.zzc;
            int i7 = 1048575 & zzu;
            int zzt = zzt(zzu);
            int i8 = iArr[i6];
            long j = i7;
            int i9 = 37;
            switch (zzt) {
                case 0:
                    i = i5 * 53;
                    doubleToLongBits = Double.doubleToLongBits(zzhao.zzb(obj, j));
                    byte[] bArr = zzgye.zzb;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 1:
                    i2 = i5 * 53;
                    floatToIntBits = Float.floatToIntBits(zzhao.zzc(obj, j));
                    i5 = floatToIntBits + i2;
                    break;
                case 2:
                    i = i5 * 53;
                    doubleToLongBits = zzhao.zzf(obj, j);
                    byte[] bArr2 = zzgye.zzb;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 3:
                    i = i5 * 53;
                    doubleToLongBits = zzhao.zzf(obj, j);
                    byte[] bArr3 = zzgye.zzb;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 4:
                    i3 = i5 * 53;
                    zzd = zzhao.zzd(obj, j);
                    i5 = i3 + zzd;
                    break;
                case 5:
                    i = i5 * 53;
                    doubleToLongBits = zzhao.zzf(obj, j);
                    byte[] bArr4 = zzgye.zzb;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 6:
                    i3 = i5 * 53;
                    zzd = zzhao.zzd(obj, j);
                    i5 = i3 + zzd;
                    break;
                case 7:
                    i2 = i5 * 53;
                    floatToIntBits = zzgye.zza(zzhao.zzz(obj, j));
                    i5 = floatToIntBits + i2;
                    break;
                case 8:
                    i2 = i5 * 53;
                    floatToIntBits = ((String) zzhao.zzh(obj, j)).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 9:
                    i4 = i5 * 53;
                    Object zzh = zzhao.zzh(obj, j);
                    if (zzh != null) {
                        i9 = zzh.hashCode();
                    }
                    i5 = i4 + i9;
                    break;
                case 10:
                    i2 = i5 * 53;
                    floatToIntBits = zzhao.zzh(obj, j).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 11:
                    i3 = i5 * 53;
                    zzd = zzhao.zzd(obj, j);
                    i5 = i3 + zzd;
                    break;
                case 12:
                    i3 = i5 * 53;
                    zzd = zzhao.zzd(obj, j);
                    i5 = i3 + zzd;
                    break;
                case 13:
                    i3 = i5 * 53;
                    zzd = zzhao.zzd(obj, j);
                    i5 = i3 + zzd;
                    break;
                case 14:
                    i = i5 * 53;
                    doubleToLongBits = zzhao.zzf(obj, j);
                    byte[] bArr5 = zzgye.zzb;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 15:
                    i3 = i5 * 53;
                    zzd = zzhao.zzd(obj, j);
                    i5 = i3 + zzd;
                    break;
                case 16:
                    i = i5 * 53;
                    doubleToLongBits = zzhao.zzf(obj, j);
                    byte[] bArr6 = zzgye.zzb;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 17:
                    i4 = i5 * 53;
                    Object zzh2 = zzhao.zzh(obj, j);
                    if (zzh2 != null) {
                        i9 = zzh2.hashCode();
                    }
                    i5 = i4 + i9;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case ConnectionResult.API_DISABLED /* 23 */:
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                case Constants.MAX_TREE_DEPTH /* 25 */:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i2 = i5 * 53;
                    floatToIntBits = zzhao.zzh(obj, j).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 50:
                    i2 = i5 * 53;
                    floatToIntBits = zzhao.zzh(obj, j).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 51:
                    if (zzR(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = Double.doubleToLongBits(zzn(obj, j));
                        byte[] bArr7 = zzgye.zzb;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzR(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = Float.floatToIntBits(zzo(obj, j));
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzR(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzv(obj, j);
                        byte[] bArr8 = zzgye.zzb;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzR(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzv(obj, j);
                        byte[] bArr9 = zzgye.zzb;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzR(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzd = zzp(obj, j);
                        i5 = i3 + zzd;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzR(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzv(obj, j);
                        byte[] bArr10 = zzgye.zzb;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzR(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzd = zzp(obj, j);
                        i5 = i3 + zzd;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzR(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = zzgye.zza(zzS(obj, j));
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzR(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = ((String) zzhao.zzh(obj, j)).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzR(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = zzhao.zzh(obj, j).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzR(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = zzhao.zzh(obj, j).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzR(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzd = zzp(obj, j);
                        i5 = i3 + zzd;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzR(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzd = zzp(obj, j);
                        i5 = i3 + zzd;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzR(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzd = zzp(obj, j);
                        i5 = i3 + zzd;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzR(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzv(obj, j);
                        byte[] bArr11 = zzgye.zzb;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzR(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzd = zzp(obj, j);
                        i5 = i3 + zzd;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzR(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzv(obj, j);
                        byte[] bArr12 = zzgye.zzb;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzR(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = zzhao.zzh(obj, j).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = ((zzgxr) obj).zzt.hashCode() + (i5 * 53);
        return this.zzh ? (hashCode * 53) + ((zzgxn) obj).zza.zza.hashCode() : hashCode;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0bde, code lost:
    
        if (r5 == 1048575) goto L505;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0be0, code lost:
    
        r13.putInt(r7, r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0be4, code lost:
    
        r10 = r6.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0be9, code lost:
    
        if (r10 >= r6.zzl) goto L587;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0beb, code lost:
    
        zzy(r33, r6.zzj[r10], null, r6.zzm, r33);
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0c00, code lost:
    
        if (r9 != 0) goto L515;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0c02, code lost:
    
        if (r8 != r14) goto L513;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0c0a, code lost:
    
        throw new com.google.android.gms.internal.ads.zzgyg("Failed to parse the message.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0c0f, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0c0b, code lost:
    
        if (r8 > r14) goto L518;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0c0d, code lost:
    
        if (r11 != r9) goto L518;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0c15, code lost:
    
        throw new com.google.android.gms.internal.ads.zzgyg("Failed to parse the message.");
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x089c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x08ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0b5f  */
    /* JADX WARN: Removed duplicated region for block: B:428:0x0b6e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(java.lang.Object r33, byte[] r34, int r35, int r36, int r37, com.google.android.gms.internal.ads.zzgvx r38) {
        /*
            Method dump skipped, instructions count: 3238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzf.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzgvx):int");
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final Object zze() {
        return ((zzgxr) this.zzg).zzbj();
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final void zzf(Object obj) {
        if (zzQ(obj)) {
            if (obj instanceof zzgxr) {
                zzgxr zzgxrVar = (zzgxr) obj;
                zzgxrVar.zzbT();
                zzgxrVar.zzbS();
                zzgxrVar.zzbV();
            }
            int[] iArr = this.zzc;
            for (int i = 0; i < iArr.length; i += 3) {
                int zzu = zzu(i);
                int i2 = 1048575 & zzu;
                int zzt = zzt(zzu);
                long j = i2;
                if (zzt != 9) {
                    if (zzt != 60 && zzt != 68) {
                        switch (zzt) {
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case ConnectionResult.API_DISABLED /* 23 */:
                            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                            case Constants.MAX_TREE_DEPTH /* 25 */:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                ((zzgyd) zzhao.zzh(obj, j)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzgyw) object).zzc();
                                    unsafe.putObject(obj, j, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzR(obj, this.zzc[i], i)) {
                        zzx(i).zzf(zzb.getObject(obj, j));
                    }
                }
                if (zzN(obj, i)) {
                    zzx(i).zzf(zzb.getObject(obj, j));
                }
            }
            this.zzm.zzi(obj);
            if (this.zzh) {
                this.zzn.zza(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final void zzg(Object obj, Object obj2) {
        zzD(obj);
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzu = zzu(i);
            int i2 = 1048575 & zzu;
            int[] iArr = this.zzc;
            int zzt = zzt(zzu);
            int i3 = iArr[i];
            long j = i2;
            switch (zzt) {
                case 0:
                    if (zzN(obj2, i)) {
                        zzhao.zzr(obj, j, zzhao.zzb(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzN(obj2, i)) {
                        zzhao.zzs(obj, j, zzhao.zzc(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzN(obj2, i)) {
                        zzhao.zzu(obj, j, zzhao.zzf(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzN(obj2, i)) {
                        zzhao.zzu(obj, j, zzhao.zzf(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzN(obj2, i)) {
                        zzhao.zzt(obj, j, zzhao.zzd(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzN(obj2, i)) {
                        zzhao.zzu(obj, j, zzhao.zzf(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzN(obj2, i)) {
                        zzhao.zzt(obj, j, zzhao.zzd(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzN(obj2, i)) {
                        zzhao.zzp(obj, j, zzhao.zzz(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzN(obj2, i)) {
                        zzhao.zzv(obj, j, zzhao.zzh(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzE(obj, obj2, i);
                    break;
                case 10:
                    if (zzN(obj2, i)) {
                        zzhao.zzv(obj, j, zzhao.zzh(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzN(obj2, i)) {
                        zzhao.zzt(obj, j, zzhao.zzd(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzN(obj2, i)) {
                        zzhao.zzt(obj, j, zzhao.zzd(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzN(obj2, i)) {
                        zzhao.zzt(obj, j, zzhao.zzd(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzN(obj2, i)) {
                        zzhao.zzu(obj, j, zzhao.zzf(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzN(obj2, i)) {
                        zzhao.zzt(obj, j, zzhao.zzd(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzN(obj2, i)) {
                        zzhao.zzu(obj, j, zzhao.zzf(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzE(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case ConnectionResult.API_DISABLED /* 23 */:
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                case Constants.MAX_TREE_DEPTH /* 25 */:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzgyd zzgydVar = (zzgyd) zzhao.zzh(obj, j);
                    zzgyd zzgydVar2 = (zzgyd) zzhao.zzh(obj2, j);
                    int size = zzgydVar.size();
                    int size2 = zzgydVar2.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzgydVar.zzc()) {
                            zzgydVar = zzgydVar.zzf(size2 + size);
                        }
                        zzgydVar.addAll(zzgydVar2);
                    }
                    if (size > 0) {
                        zzgydVar2 = zzgydVar;
                    }
                    zzhao.zzv(obj, j, zzgydVar2);
                    break;
                case 50:
                    int i4 = zzgzx.zza;
                    zzhao.zzv(obj, j, zzgyx.zzb(zzhao.zzh(obj, j), zzhao.zzh(obj2, j)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzR(obj2, i3, i)) {
                        zzhao.zzv(obj, j, zzhao.zzh(obj2, j));
                        zzI(obj, i3, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzF(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzR(obj2, i3, i)) {
                        zzhao.zzv(obj, j, zzhao.zzh(obj2, j));
                        zzI(obj, i3, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzF(obj, obj2, i);
                    break;
            }
        }
        zzgzx.zzq(this.zzm, obj, obj2);
        if (this.zzh) {
            zzgzx.zzp(this.zzn, obj, obj2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:316:0x051b A[LOOP:5: B:314:0x0517->B:316:0x051b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:319:0x052c  */
    @Override // com.google.android.gms.internal.ads.zzgzv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh(java.lang.Object r11, com.google.android.gms.internal.ads.zzgzp r12, com.google.android.gms.internal.ads.zzgxb r13) {
        /*
            Method dump skipped, instructions count: 1470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzf.zzh(java.lang.Object, com.google.android.gms.internal.ads.zzgzp, com.google.android.gms.internal.ads.zzgxb):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzgvx zzgvxVar) {
        zzc(obj, bArr, i, i2, 0, zzgvxVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0682  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0031  */
    @Override // com.google.android.gms.internal.ads.zzgzv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(java.lang.Object r24, com.google.android.gms.internal.ads.zzhaw r25) {
        /*
            Method dump skipped, instructions count: 1840
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzf.zzj(java.lang.Object, com.google.android.gms.internal.ads.zzhaw):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final boolean zzk(Object obj, Object obj2) {
        boolean zzJ;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzu = zzu(i);
            long j = zzu & 1048575;
            switch (zzt(zzu)) {
                case 0:
                    if (zzL(obj, obj2, i) && Double.doubleToLongBits(zzhao.zzb(obj, j)) == Double.doubleToLongBits(zzhao.zzb(obj2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzL(obj, obj2, i) && Float.floatToIntBits(zzhao.zzc(obj, j)) == Float.floatToIntBits(zzhao.zzc(obj2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzL(obj, obj2, i) && zzhao.zzf(obj, j) == zzhao.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzL(obj, obj2, i) && zzhao.zzf(obj, j) == zzhao.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzL(obj, obj2, i) && zzhao.zzd(obj, j) == zzhao.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzL(obj, obj2, i) && zzhao.zzf(obj, j) == zzhao.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzL(obj, obj2, i) && zzhao.zzd(obj, j) == zzhao.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzL(obj, obj2, i) && zzhao.zzz(obj, j) == zzhao.zzz(obj2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzL(obj, obj2, i) && zzgzx.zzJ(zzhao.zzh(obj, j), zzhao.zzh(obj2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzL(obj, obj2, i) && zzgzx.zzJ(zzhao.zzh(obj, j), zzhao.zzh(obj2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzL(obj, obj2, i) && zzgzx.zzJ(zzhao.zzh(obj, j), zzhao.zzh(obj2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzL(obj, obj2, i) && zzhao.zzd(obj, j) == zzhao.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzL(obj, obj2, i) && zzhao.zzd(obj, j) == zzhao.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzL(obj, obj2, i) && zzhao.zzd(obj, j) == zzhao.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzL(obj, obj2, i) && zzhao.zzf(obj, j) == zzhao.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzL(obj, obj2, i) && zzhao.zzd(obj, j) == zzhao.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzL(obj, obj2, i) && zzhao.zzf(obj, j) == zzhao.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzL(obj, obj2, i) && zzgzx.zzJ(zzhao.zzh(obj, j), zzhao.zzh(obj2, j))) {
                        continue;
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case ConnectionResult.API_DISABLED /* 23 */:
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                case Constants.MAX_TREE_DEPTH /* 25 */:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzJ = zzgzx.zzJ(zzhao.zzh(obj, j), zzhao.zzh(obj2, j));
                    break;
                case 50:
                    zzJ = zzgzx.zzJ(zzhao.zzh(obj, j), zzhao.zzh(obj2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long zzr = zzr(i) & 1048575;
                    if (zzhao.zzd(obj, zzr) == zzhao.zzd(obj2, zzr) && zzgzx.zzJ(zzhao.zzh(obj, j), zzhao.zzh(obj2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzJ) {
                return false;
            }
        }
        if (!((zzgxr) obj).zzt.equals(((zzgxr) obj2).zzt)) {
            return false;
        }
        if (this.zzh) {
            return ((zzgxn) obj).zza.equals(((zzgxn) obj2).zza);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final boolean zzl(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzk) {
            int[] iArr = this.zzj;
            int[] iArr2 = this.zzc;
            int i6 = iArr[i5];
            int i7 = iArr2[i6];
            int zzu = zzu(i6);
            int i8 = this.zzc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = zzb.getInt(obj, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i3;
                i2 = i4;
            }
            if ((268435456 & zzu) != 0 && !zzO(obj, i6, i, i2, i10)) {
                return false;
            }
            int zzt = zzt(zzu);
            if (zzt != 9 && zzt != 17) {
                if (zzt != 27) {
                    if (zzt == 60 || zzt == 68) {
                        if (zzR(obj, i7, i6) && !zzP(obj, zzu, zzx(i6))) {
                            return false;
                        }
                    } else if (zzt != 49) {
                        if (zzt == 50 && !((zzgyw) zzhao.zzh(obj, zzu & 1048575)).isEmpty()) {
                            throw null;
                        }
                    }
                }
                List list = (List) zzhao.zzh(obj, zzu & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzgzv zzx = zzx(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzx.zzl(list.get(i11))) {
                            return false;
                        }
                    }
                }
            } else if (zzO(obj, i6, i, i2, i10) && !zzP(obj, zzu, zzx(i6))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        return !this.zzh || ((zzgxn) obj).zza.zzi();
    }
}
