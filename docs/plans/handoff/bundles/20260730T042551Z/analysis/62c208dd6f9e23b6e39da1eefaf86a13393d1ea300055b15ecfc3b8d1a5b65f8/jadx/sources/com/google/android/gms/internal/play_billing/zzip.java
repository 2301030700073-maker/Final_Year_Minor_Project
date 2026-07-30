package com.google.android.gms.internal.play_billing;

import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import defpackage.Cif;
import defpackage.V1;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
final class zzip<T> implements zzix<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzjq.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzim zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzjj zzl;
    private final zzgx zzm;

    private zzip(int[] iArr, Object[] objArr, int i, int i2, zzim zzimVar, boolean z, int[] iArr2, int i3, int i4, zzir zzirVar, zzhz zzhzVar, zzjj zzjjVar, zzgx zzgxVar, zzih zzihVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        boolean z2 = false;
        if (zzgxVar != null && (zzimVar instanceof zzhh)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzi = iArr2;
        this.zzj = i3;
        this.zzk = i4;
        this.zzl = zzjjVar;
        this.zzm = zzgxVar;
        this.zzg = zzimVar;
    }

    private static void zzA(Object obj) {
        if (!zzL(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private final void zzB(Object obj, Object obj2, int i) {
        if (zzI(obj2, i)) {
            int zzs = zzs(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = zzs;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzix zzv = zzv(i);
            if (!zzI(obj, i)) {
                if (zzL(object)) {
                    Object zze = zzv.zze();
                    zzv.zzg(zze, object);
                    unsafe.putObject(obj, j, zze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzD(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzL(object2)) {
                Object zze2 = zzv.zze();
                zzv.zzg(zze2, object2);
                unsafe.putObject(obj, j, zze2);
                object2 = zze2;
            }
            zzv.zzg(object2, object);
        }
    }

    private final void zzC(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (zzM(obj2, i2, i)) {
            int zzs = zzs(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = zzs;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzix zzv = zzv(i);
            if (!zzM(obj, i2, i)) {
                if (zzL(object)) {
                    Object zze = zzv.zze();
                    zzv.zzg(zze, object);
                    unsafe.putObject(obj, j, zze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzE(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzL(object2)) {
                Object zze2 = zzv.zze();
                zzv.zzg(zze2, object2);
                unsafe.putObject(obj, j, zze2);
                object2 = zze2;
            }
            zzv.zzg(object2, object);
        }
    }

    private final void zzD(Object obj, int i) {
        int zzp = zzp(i);
        long j = 1048575 & zzp;
        if (j == 1048575) {
            return;
        }
        zzjq.zzq(obj, j, (1 << (zzp >>> 20)) | zzjq.zzc(obj, j));
    }

    private final void zzE(Object obj, int i, int i2) {
        zzjq.zzq(obj, zzp(i2) & 1048575, i);
    }

    private final void zzF(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzs(i) & 1048575, obj2);
        zzD(obj, i);
    }

    private final void zzG(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzs(i2) & 1048575, obj2);
        zzE(obj, i, i2);
    }

    private final boolean zzH(Object obj, Object obj2, int i) {
        return zzI(obj, i) == zzI(obj2, i);
    }

    private final boolean zzI(Object obj, int i) {
        int zzp = zzp(i);
        long j = zzp & 1048575;
        if (j != 1048575) {
            return (zzjq.zzc(obj, j) & (1 << (zzp >>> 20))) != 0;
        }
        int zzs = zzs(i);
        long j2 = zzs & 1048575;
        switch (zzr(zzs)) {
            case 0:
                return Double.doubleToRawLongBits(zzjq.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzjq.zzb(obj, j2)) != 0;
            case 2:
                return zzjq.zzd(obj, j2) != 0;
            case 3:
                return zzjq.zzd(obj, j2) != 0;
            case 4:
                return zzjq.zzc(obj, j2) != 0;
            case 5:
                return zzjq.zzd(obj, j2) != 0;
            case 6:
                return zzjq.zzc(obj, j2) != 0;
            case 7:
                return zzjq.zzw(obj, j2);
            case 8:
                Object zzf = zzjq.zzf(obj, j2);
                if (zzf instanceof String) {
                    return !((String) zzf).isEmpty();
                }
                if (zzf instanceof zzgk) {
                    return !zzgk.zzb.equals(zzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzjq.zzf(obj, j2) != null;
            case 10:
                return !zzgk.zzb.equals(zzjq.zzf(obj, j2));
            case 11:
                return zzjq.zzc(obj, j2) != 0;
            case 12:
                return zzjq.zzc(obj, j2) != 0;
            case 13:
                return zzjq.zzc(obj, j2) != 0;
            case 14:
                return zzjq.zzd(obj, j2) != 0;
            case 15:
                return zzjq.zzc(obj, j2) != 0;
            case 16:
                return zzjq.zzd(obj, j2) != 0;
            case 17:
                return zzjq.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzJ(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzI(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zzK(Object obj, int i, zzix zzixVar) {
        return zzixVar.zzk(zzjq.zzf(obj, i & 1048575));
    }

    private static boolean zzL(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzhk) {
            return ((zzhk) obj).zzA();
        }
        return true;
    }

    private final boolean zzM(Object obj, int i, int i2) {
        return zzjq.zzc(obj, (long) (zzp(i2) & 1048575)) == i;
    }

    private static boolean zzN(Object obj, long j) {
        return ((Boolean) zzjq.zzf(obj, j)).booleanValue();
    }

    private static final void zzO(int i, Object obj, zzjw zzjwVar) {
        if (obj instanceof String) {
            zzjwVar.zzG(i, (String) obj);
        } else {
            zzjwVar.zzd(i, (zzgk) obj);
        }
    }

    public static zzjk zzd(Object obj) {
        zzhk zzhkVar = (zzhk) obj;
        zzjk zzjkVar = zzhkVar.zzc;
        if (zzjkVar != zzjk.zzc()) {
            return zzjkVar;
        }
        zzjk zzf = zzjk.zzf();
        zzhkVar.zzc = zzf;
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
    public static com.google.android.gms.internal.play_billing.zzip zzl(java.lang.Class r32, com.google.android.gms.internal.play_billing.zzij r33, com.google.android.gms.internal.play_billing.zzir r34, com.google.android.gms.internal.play_billing.zzhz r35, com.google.android.gms.internal.play_billing.zzjj r36, com.google.android.gms.internal.play_billing.zzgx r37, com.google.android.gms.internal.play_billing.zzih r38) {
        /*
            Method dump skipped, instructions count: 1047
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzip.zzl(java.lang.Class, com.google.android.gms.internal.play_billing.zzij, com.google.android.gms.internal.play_billing.zzir, com.google.android.gms.internal.play_billing.zzhz, com.google.android.gms.internal.play_billing.zzjj, com.google.android.gms.internal.play_billing.zzgx, com.google.android.gms.internal.play_billing.zzih):com.google.android.gms.internal.play_billing.zzip");
    }

    private static double zzm(Object obj, long j) {
        return ((Double) zzjq.zzf(obj, j)).doubleValue();
    }

    private static float zzn(Object obj, long j) {
        return ((Float) zzjq.zzf(obj, j)).floatValue();
    }

    private static int zzo(Object obj, long j) {
        return ((Integer) zzjq.zzf(obj, j)).intValue();
    }

    private final int zzp(int i) {
        return this.zzc[i + 2];
    }

    private final int zzq(int i, int i2) {
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

    private static int zzr(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzs(int i) {
        return this.zzc[i + 1];
    }

    private static long zzt(Object obj, long j) {
        return ((Long) zzjq.zzf(obj, j)).longValue();
    }

    private final zzhm zzu(int i) {
        int i2 = i / 3;
        return (zzhm) this.zzd[i2 + i2 + 1];
    }

    private final zzix zzv(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzix zzixVar = (zzix) objArr[i3];
        if (zzixVar != null) {
            return zzixVar;
        }
        zzix zzb2 = zziu.zza().zzb((Class) objArr[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzw(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final Object zzx(Object obj, int i) {
        zzix zzv = zzv(i);
        int zzs = zzs(i) & 1048575;
        if (!zzI(obj, i)) {
            return zzv.zze();
        }
        Object object = zzb.getObject(obj, zzs);
        if (zzL(object)) {
            return object;
        }
        Object zze = zzv.zze();
        if (object != null) {
            zzv.zzg(zze, object);
        }
        return zze;
    }

    private final Object zzy(Object obj, int i, int i2) {
        zzix zzv = zzv(i2);
        if (!zzM(obj, i, i2)) {
            return zzv.zze();
        }
        Object object = zzb.getObject(obj, zzs(i2) & 1048575);
        if (zzL(object)) {
            return object;
        }
        Object zze = zzv.zze();
        if (object != null) {
            zzv.zzg(zze, object);
        }
        return zze;
    }

    private static Field zzz(Class cls, String str) {
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.play_billing.zzix
    public final int zza(Object obj) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int zzz;
        int zzz2;
        int zzz3;
        int zzA;
        int zzz4;
        int i6;
        int zzz5;
        int zzd;
        int zzz6;
        int zzh;
        int zzw;
        int zzz7;
        int size;
        int zzl;
        int zzz8;
        int zzz9;
        int i7;
        Unsafe unsafe = zzb;
        boolean z = false;
        int i8 = 1048575;
        int i9 = 1048575;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i11 < this.zzc.length) {
            int zzs = zzs(i11);
            int zzr = zzr(zzs);
            int[] iArr = this.zzc;
            int i13 = iArr[i11];
            int i14 = iArr[i11 + 2];
            int i15 = i14 & i8;
            if (zzr <= 17) {
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
            int i16 = i8 & zzs;
            if (zzr >= zzhc.zzJ.zza()) {
                zzhc.zzW.zza();
            }
            long j = i16;
            switch (zzr) {
                case 0:
                    i4 = i12;
                    i5 = i;
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        zzz = zzgr.zzz(i13 << 3);
                        zzw = zzz + 8;
                        i12 = i4 + zzw;
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        zzz2 = zzgr.zzz(i13 << 3);
                        zzw = zzz2 + 4;
                        i12 = i4 + zzw;
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        long j2 = unsafe.getLong(obj, j);
                        zzz3 = zzgr.zzz(i13 << 3);
                        zzA = zzgr.zzA(j2);
                        i12 = zzA + zzz3 + i4;
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        long j3 = unsafe.getLong(obj, j);
                        zzz3 = zzgr.zzz(i13 << 3);
                        zzA = zzgr.zzA(j3);
                        i12 = zzA + zzz3 + i4;
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        long j4 = unsafe.getInt(obj, j);
                        zzz3 = zzgr.zzz(i13 << 3);
                        zzA = zzgr.zzA(j4);
                        i12 = zzA + zzz3 + i4;
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        zzz = zzgr.zzz(i13 << 3);
                        i4 = i12;
                        zzw = zzz + 8;
                        i12 = i4 + zzw;
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        zzz2 = zzgr.zzz(i13 << 3);
                        i4 = i12;
                        zzw = zzz2 + 4;
                        i12 = i4 + zzw;
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        zzz4 = zzgr.zzz(i13 << 3);
                        zzw = zzz4 + 1;
                        i4 = i12;
                        i12 = i4 + zzw;
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        int i17 = i13 << 3;
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzgk) {
                            zzz5 = zzgr.zzz(i17);
                            zzd = ((zzgk) object).zzd();
                            zzz6 = zzgr.zzz(zzd);
                            i12 = i6;
                            i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
                            i11 += 3;
                            z = false;
                            i8 = 1048575;
                            i10 = i2;
                            i9 = i5;
                        } else {
                            zzz3 = zzgr.zzz(i17);
                            zzA = zzgr.zzy((String) object);
                            i4 = i6;
                            i12 = zzA + zzz3 + i4;
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        zzh = zziz.zzh(i13, unsafe.getObject(obj, j), zzv(i11));
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        zzgk zzgkVar = (zzgk) unsafe.getObject(obj, j);
                        zzz5 = zzgr.zzz(i13 << 3);
                        zzd = zzgkVar.zzd();
                        zzz6 = zzgr.zzz(zzd);
                        i12 = i6;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        int i18 = unsafe.getInt(obj, j);
                        zzz3 = zzgr.zzz(i13 << 3);
                        zzA = zzgr.zzz(i18);
                        i4 = i6;
                        i12 = zzA + zzz3 + i4;
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        long j5 = unsafe.getInt(obj, j);
                        zzz3 = zzgr.zzz(i13 << 3);
                        zzA = zzgr.zzA(j5);
                        i4 = i6;
                        i12 = zzA + zzz3 + i4;
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        zzz2 = zzgr.zzz(i13 << 3);
                        i4 = i6;
                        zzw = zzz2 + 4;
                        i12 = i4 + zzw;
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        zzz = zzgr.zzz(i13 << 3);
                        i4 = i6;
                        zzw = zzz + 8;
                        i12 = i4 + zzw;
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        int i19 = unsafe.getInt(obj, j);
                        zzz3 = zzgr.zzz(i13 << 3);
                        zzA = zzgr.zzz((i19 >> 31) ^ (i19 + i19));
                        i4 = i6;
                        i12 = zzA + zzz3 + i4;
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
                    if (zzJ(obj, i11, i5, i2, i3)) {
                        long j6 = unsafe.getLong(obj, j);
                        zzz3 = zzgr.zzz(i13 << 3);
                        zzA = zzgr.zzA((j6 >> 63) ^ (j6 + j6));
                        i4 = i6;
                        i12 = zzA + zzz3 + i4;
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
                    if (zzJ(obj, i11, i, i2, i3)) {
                        zzw = zzgr.zzw(i13, (zzim) unsafe.getObject(obj, j), zzv(i11));
                        i4 = i6;
                        i12 = i4 + zzw;
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
                    zzh = zziz.zzd(i13, (List) unsafe.getObject(obj, j), z);
                    i6 = i12;
                    i5 = i;
                    i12 = i6 + zzh;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 19:
                    zzh = zziz.zzb(i13, (List) unsafe.getObject(obj, j), z);
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
                    int i20 = zziz.zza;
                    if (list.size() != 0) {
                        zzz7 = (zzgr.zzz(i13 << 3) * list.size()) + zziz.zzg(list);
                        i12 += zzz7;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzz7 = 0;
                    i12 += zzz7;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j);
                    int i21 = zziz.zza;
                    size = list2.size();
                    if (size != 0) {
                        zzl = zziz.zzl(list2);
                        zzz8 = zzgr.zzz(i13 << 3);
                        zzz9 = (zzz8 * size) + zzl;
                        i12 += zzz9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzz9 = 0;
                    i12 += zzz9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i22 = zziz.zza;
                    size = list3.size();
                    if (size != 0) {
                        zzl = zziz.zzf(list3);
                        zzz8 = zzgr.zzz(i13 << 3);
                        zzz9 = (zzz8 * size) + zzl;
                        i12 += zzz9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzz9 = 0;
                    i12 += zzz9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case ConnectionResult.API_DISABLED /* 23 */:
                    zzh = zziz.zzd(i13, (List) unsafe.getObject(obj, j), z);
                    i6 = i12;
                    i5 = i;
                    i12 = i6 + zzh;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    zzh = zziz.zzb(i13, (List) unsafe.getObject(obj, j), z);
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
                    int i23 = zziz.zza;
                    int size2 = list4.size();
                    if (size2 != 0) {
                        zzz7 = (zzgr.zzz(i13 << 3) + 1) * size2;
                        i12 += zzz7;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzz7 = 0;
                    i12 += zzz7;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 26:
                    List list5 = (List) unsafe.getObject(obj, j);
                    int i24 = zziz.zza;
                    int size3 = list5.size();
                    if (size3 != 0) {
                        zzz9 = zzgr.zzz(i13 << 3) * size3;
                        if (list5 instanceof zzhy) {
                            zzhy zzhyVar = (zzhy) list5;
                            for (int i25 = 0; i25 < size3; i25++) {
                                Object zzc = zzhyVar.zzc();
                                if (zzc instanceof zzgk) {
                                    int zzd2 = ((zzgk) zzc).zzd();
                                    zzz9 = zzgr.zzz(zzd2) + zzd2 + zzz9;
                                } else {
                                    zzz9 = zzgr.zzy((String) zzc) + zzz9;
                                }
                            }
                        } else {
                            for (int i26 = 0; i26 < size3; i26++) {
                                Object obj2 = list5.get(i26);
                                if (obj2 instanceof zzgk) {
                                    int zzd3 = ((zzgk) obj2).zzd();
                                    zzz9 = zzgr.zzz(zzd3) + zzd3 + zzz9;
                                } else {
                                    zzz9 = zzgr.zzy((String) obj2) + zzz9;
                                }
                            }
                        }
                        i12 += zzz9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzz9 = 0;
                    i12 += zzz9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 27:
                    List list6 = (List) unsafe.getObject(obj, j);
                    zzix zzv = zzv(i11);
                    int i27 = zziz.zza;
                    int size4 = list6.size();
                    if (size4 != 0) {
                        int zzz10 = zzgr.zzz(i13 << 3) * size4;
                        for (int i28 = 0; i28 < size4; i28++) {
                            Object obj3 = list6.get(i28);
                            if (obj3 instanceof zzhx) {
                                int zza2 = ((zzhx) obj3).zza();
                                zzz10 = zzgr.zzz(zza2) + zza2 + zzz10;
                            } else {
                                zzz10 = zzgr.zzx((zzim) obj3, zzv) + zzz10;
                            }
                        }
                        i7 = zzz10;
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
                    int i29 = zziz.zza;
                    int size5 = list7.size();
                    if (size5 != 0) {
                        zzz9 = zzgr.zzz(i13 << 3) * size5;
                        for (int i30 = 0; i30 < list7.size(); i30++) {
                            int zzd4 = ((zzgk) list7.get(i30)).zzd();
                            zzz9 += zzgr.zzz(zzd4) + zzd4;
                        }
                        i12 += zzz9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzz9 = 0;
                    i12 += zzz9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 29:
                    List list8 = (List) unsafe.getObject(obj, j);
                    int i31 = zziz.zza;
                    size = list8.size();
                    if (size != 0) {
                        zzl = zziz.zzk(list8);
                        zzz8 = zzgr.zzz(i13 << 3);
                        zzz9 = (zzz8 * size) + zzl;
                        i12 += zzz9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzz9 = 0;
                    i12 += zzz9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 30:
                    List list9 = (List) unsafe.getObject(obj, j);
                    int i32 = zziz.zza;
                    size = list9.size();
                    if (size != 0) {
                        zzl = zziz.zza(list9);
                        zzz8 = zzgr.zzz(i13 << 3);
                        zzz9 = (zzz8 * size) + zzl;
                        i12 += zzz9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzz9 = 0;
                    i12 += zzz9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 31:
                    zzh = zziz.zzb(i13, (List) unsafe.getObject(obj, j), z);
                    i6 = i12;
                    i5 = i;
                    i12 = i6 + zzh;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 32:
                    zzh = zziz.zzd(i13, (List) unsafe.getObject(obj, j), z);
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
                    int i33 = zziz.zza;
                    size = list10.size();
                    if (size != 0) {
                        zzl = zziz.zzi(list10);
                        zzz8 = zzgr.zzz(i13 << 3);
                        zzz9 = (zzz8 * size) + zzl;
                        i12 += zzz9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzz9 = 0;
                    i12 += zzz9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 34:
                    List list11 = (List) unsafe.getObject(obj, j);
                    int i34 = zziz.zza;
                    size = list11.size();
                    if (size != 0) {
                        zzl = zziz.zzj(list11);
                        zzz8 = zzgr.zzz(i13 << 3);
                        zzz9 = (zzz8 * size) + zzl;
                        i12 += zzz9;
                        i5 = i;
                        i11 += 3;
                        z = false;
                        i8 = 1048575;
                        i10 = i2;
                        i9 = i5;
                    }
                    zzz9 = 0;
                    i12 += zzz9;
                    i5 = i;
                    i11 += 3;
                    z = false;
                    i8 = 1048575;
                    i10 = i2;
                    i9 = i5;
                case 35:
                    zzz5 = zziz.zze((List) unsafe.getObject(obj, j));
                    if (zzz5 > 0) {
                        zzd = zzgr.zzz(i13 << 3);
                        zzz6 = zzgr.zzz(zzz5);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    zzz5 = zziz.zzc((List) unsafe.getObject(obj, j));
                    if (zzz5 > 0) {
                        zzd = zzgr.zzz(i13 << 3);
                        zzz6 = zzgr.zzz(zzz5);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    zzz5 = zziz.zzg((List) unsafe.getObject(obj, j));
                    if (zzz5 > 0) {
                        zzd = zzgr.zzz(i13 << 3);
                        zzz6 = zzgr.zzz(zzz5);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    zzz5 = zziz.zzl((List) unsafe.getObject(obj, j));
                    if (zzz5 > 0) {
                        zzd = zzgr.zzz(i13 << 3);
                        zzz6 = zzgr.zzz(zzz5);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    zzz5 = zziz.zzf((List) unsafe.getObject(obj, j));
                    if (zzz5 > 0) {
                        zzd = zzgr.zzz(i13 << 3);
                        zzz6 = zzgr.zzz(zzz5);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    zzz5 = zziz.zze((List) unsafe.getObject(obj, j));
                    if (zzz5 > 0) {
                        zzd = zzgr.zzz(i13 << 3);
                        zzz6 = zzgr.zzz(zzz5);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    zzz5 = zziz.zzc((List) unsafe.getObject(obj, j));
                    if (zzz5 > 0) {
                        zzd = zzgr.zzz(i13 << 3);
                        zzz6 = zzgr.zzz(zzz5);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    int i35 = zziz.zza;
                    zzz5 = list12.size();
                    if (zzz5 > 0) {
                        zzd = zzgr.zzz(i13 << 3);
                        zzz6 = zzgr.zzz(zzz5);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    zzz5 = zziz.zzk((List) unsafe.getObject(obj, j));
                    if (zzz5 > 0) {
                        zzd = zzgr.zzz(i13 << 3);
                        zzz6 = zzgr.zzz(zzz5);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    zzz5 = zziz.zza((List) unsafe.getObject(obj, j));
                    if (zzz5 > 0) {
                        zzd = zzgr.zzz(i13 << 3);
                        zzz6 = zzgr.zzz(zzz5);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    zzz5 = zziz.zzc((List) unsafe.getObject(obj, j));
                    if (zzz5 > 0) {
                        zzd = zzgr.zzz(i13 << 3);
                        zzz6 = zzgr.zzz(zzz5);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    zzz5 = zziz.zze((List) unsafe.getObject(obj, j));
                    if (zzz5 > 0) {
                        zzd = zzgr.zzz(i13 << 3);
                        zzz6 = zzgr.zzz(zzz5);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    zzz5 = zziz.zzi((List) unsafe.getObject(obj, j));
                    if (zzz5 > 0) {
                        zzd = zzgr.zzz(i13 << 3);
                        zzz6 = zzgr.zzz(zzz5);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    zzz5 = zziz.zzj((List) unsafe.getObject(obj, j));
                    if (zzz5 > 0) {
                        zzd = zzgr.zzz(i13 << 3);
                        zzz6 = zzgr.zzz(zzz5);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    zzix zzv2 = zzv(i11);
                    int i36 = zziz.zza;
                    int size6 = list13.size();
                    if (size6 != 0) {
                        int i37 = 0;
                        for (int i38 = 0; i38 < size6; i38++) {
                            i37 += zzgr.zzw(i13, (zzim) list13.get(i38), zzv2);
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
                    zzig zzigVar = (zzig) unsafe.getObject(obj, j);
                    if (!zzigVar.isEmpty()) {
                        Iterator it = zzigVar.entrySet().iterator();
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
                    if (zzM(obj, i13, i11)) {
                        zzz = zzgr.zzz(i13 << 3);
                        i4 = i12;
                        i5 = i;
                        zzw = zzz + 8;
                        i12 = i4 + zzw;
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
                    if (zzM(obj, i13, i11)) {
                        zzz2 = zzgr.zzz(i13 << 3);
                        i4 = i12;
                        i5 = i;
                        zzw = zzz2 + 4;
                        i12 = i4 + zzw;
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
                    if (zzM(obj, i13, i11)) {
                        long zzt = zzt(obj, j);
                        zzz3 = zzgr.zzz(i13 << 3);
                        zzA = zzgr.zzA(zzt);
                        i4 = i12;
                        i5 = i;
                        i12 = zzA + zzz3 + i4;
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
                    if (zzM(obj, i13, i11)) {
                        long zzt2 = zzt(obj, j);
                        zzz3 = zzgr.zzz(i13 << 3);
                        zzA = zzgr.zzA(zzt2);
                        i4 = i12;
                        i5 = i;
                        i12 = zzA + zzz3 + i4;
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
                    if (zzM(obj, i13, i11)) {
                        long zzo = zzo(obj, j);
                        zzz3 = zzgr.zzz(i13 << 3);
                        zzA = zzgr.zzA(zzo);
                        i4 = i12;
                        i5 = i;
                        i12 = zzA + zzz3 + i4;
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
                    if (zzM(obj, i13, i11)) {
                        zzz = zzgr.zzz(i13 << 3);
                        i4 = i12;
                        i5 = i;
                        zzw = zzz + 8;
                        i12 = i4 + zzw;
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
                    if (zzM(obj, i13, i11)) {
                        zzz2 = zzgr.zzz(i13 << 3);
                        i4 = i12;
                        i5 = i;
                        zzw = zzz2 + 4;
                        i12 = i4 + zzw;
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
                    if (zzM(obj, i13, i11)) {
                        zzz4 = zzgr.zzz(i13 << 3);
                        i5 = i;
                        zzw = zzz4 + 1;
                        i4 = i12;
                        i12 = i4 + zzw;
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
                    if (zzM(obj, i13, i11)) {
                        int i39 = i13 << 3;
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzgk) {
                            zzz5 = zzgr.zzz(i39);
                            zzd = ((zzgk) object2).zzd();
                            zzz6 = zzgr.zzz(zzd);
                            i5 = i;
                            i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
                            i11 += 3;
                            z = false;
                            i8 = 1048575;
                            i10 = i2;
                            i9 = i5;
                        } else {
                            zzz3 = zzgr.zzz(i39);
                            zzA = zzgr.zzy((String) object2);
                            i4 = i12;
                            i5 = i;
                            i12 = zzA + zzz3 + i4;
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
                    if (zzM(obj, i13, i11)) {
                        zzh = zziz.zzh(i13, unsafe.getObject(obj, j), zzv(i11));
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
                    if (zzM(obj, i13, i11)) {
                        zzgk zzgkVar2 = (zzgk) unsafe.getObject(obj, j);
                        zzz5 = zzgr.zzz(i13 << 3);
                        zzd = zzgkVar2.zzd();
                        zzz6 = zzgr.zzz(zzd);
                        i5 = i;
                        i12 = V1.m2501for(zzz6, zzd, zzz5, i12);
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
                    if (zzM(obj, i13, i11)) {
                        int zzo2 = zzo(obj, j);
                        zzz3 = zzgr.zzz(i13 << 3);
                        zzA = zzgr.zzz(zzo2);
                        i4 = i12;
                        i5 = i;
                        i12 = zzA + zzz3 + i4;
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
                    if (zzM(obj, i13, i11)) {
                        long zzo3 = zzo(obj, j);
                        zzz3 = zzgr.zzz(i13 << 3);
                        zzA = zzgr.zzA(zzo3);
                        i4 = i12;
                        i5 = i;
                        i12 = zzA + zzz3 + i4;
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
                    if (zzM(obj, i13, i11)) {
                        zzz2 = zzgr.zzz(i13 << 3);
                        i4 = i12;
                        i5 = i;
                        zzw = zzz2 + 4;
                        i12 = i4 + zzw;
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
                    if (zzM(obj, i13, i11)) {
                        zzz = zzgr.zzz(i13 << 3);
                        i4 = i12;
                        i5 = i;
                        zzw = zzz + 8;
                        i12 = i4 + zzw;
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
                    if (zzM(obj, i13, i11)) {
                        int zzo4 = zzo(obj, j);
                        zzz3 = zzgr.zzz(i13 << 3);
                        zzA = zzgr.zzz((zzo4 >> 31) ^ (zzo4 + zzo4));
                        i4 = i12;
                        i5 = i;
                        i12 = zzA + zzz3 + i4;
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
                    if (zzM(obj, i13, i11)) {
                        long zzt3 = zzt(obj, j);
                        zzz3 = zzgr.zzz(i13 << 3);
                        zzA = zzgr.zzA((zzt3 >> 63) ^ (zzt3 + zzt3));
                        i4 = i12;
                        i5 = i;
                        i12 = zzA + zzz3 + i4;
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
                    if (zzM(obj, i13, i11)) {
                        zzw = zzgr.zzw(i13, (zzim) unsafe.getObject(obj, j), zzv(i11));
                        i4 = i12;
                        i5 = i;
                        i12 = i4 + zzw;
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
        int zza3 = ((zzhk) obj).zzc.zza() + i12;
        if (!this.zzh) {
            return zza3;
        }
        zzhb zzhbVar = ((zzhh) obj).zzb;
        int zzc2 = zzhbVar.zza.zzc();
        int i40 = 0;
        for (int i41 = 0; i41 < zzc2; i41++) {
            Map.Entry zzg = zzhbVar.zza.zzg(i41);
            i40 += zzhb.zzb((zzha) ((zzjb) zzg).zza(), zzg.getValue());
        }
        for (Map.Entry entry2 : zzhbVar.zza.zzd()) {
            i40 += zzhb.zzb((zzha) entry2.getKey(), entry2.getValue());
        }
        return zza3 + i40;
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final int zzb(Object obj) {
        int i;
        long doubleToLongBits;
        int i2;
        int floatToIntBits;
        int i3;
        int zzc;
        int i4;
        int i5 = 0;
        for (int i6 = 0; i6 < this.zzc.length; i6 += 3) {
            int zzs = zzs(i6);
            int[] iArr = this.zzc;
            int i7 = 1048575 & zzs;
            int zzr = zzr(zzs);
            int i8 = iArr[i6];
            long j = i7;
            int i9 = 37;
            switch (zzr) {
                case 0:
                    i = i5 * 53;
                    doubleToLongBits = Double.doubleToLongBits(zzjq.zza(obj, j));
                    byte[] bArr = zzhp.zzb;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 1:
                    i2 = i5 * 53;
                    floatToIntBits = Float.floatToIntBits(zzjq.zzb(obj, j));
                    i5 = floatToIntBits + i2;
                    break;
                case 2:
                    i = i5 * 53;
                    doubleToLongBits = zzjq.zzd(obj, j);
                    byte[] bArr2 = zzhp.zzb;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 3:
                    i = i5 * 53;
                    doubleToLongBits = zzjq.zzd(obj, j);
                    byte[] bArr3 = zzhp.zzb;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 4:
                    i3 = i5 * 53;
                    zzc = zzjq.zzc(obj, j);
                    i5 = i3 + zzc;
                    break;
                case 5:
                    i = i5 * 53;
                    doubleToLongBits = zzjq.zzd(obj, j);
                    byte[] bArr4 = zzhp.zzb;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 6:
                    i3 = i5 * 53;
                    zzc = zzjq.zzc(obj, j);
                    i5 = i3 + zzc;
                    break;
                case 7:
                    i2 = i5 * 53;
                    floatToIntBits = zzhp.zza(zzjq.zzw(obj, j));
                    i5 = floatToIntBits + i2;
                    break;
                case 8:
                    i2 = i5 * 53;
                    floatToIntBits = ((String) zzjq.zzf(obj, j)).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 9:
                    i4 = i5 * 53;
                    Object zzf = zzjq.zzf(obj, j);
                    if (zzf != null) {
                        i9 = zzf.hashCode();
                    }
                    i5 = i4 + i9;
                    break;
                case 10:
                    i2 = i5 * 53;
                    floatToIntBits = zzjq.zzf(obj, j).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 11:
                    i3 = i5 * 53;
                    zzc = zzjq.zzc(obj, j);
                    i5 = i3 + zzc;
                    break;
                case 12:
                    i3 = i5 * 53;
                    zzc = zzjq.zzc(obj, j);
                    i5 = i3 + zzc;
                    break;
                case 13:
                    i3 = i5 * 53;
                    zzc = zzjq.zzc(obj, j);
                    i5 = i3 + zzc;
                    break;
                case 14:
                    i = i5 * 53;
                    doubleToLongBits = zzjq.zzd(obj, j);
                    byte[] bArr5 = zzhp.zzb;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 15:
                    i3 = i5 * 53;
                    zzc = zzjq.zzc(obj, j);
                    i5 = i3 + zzc;
                    break;
                case 16:
                    i = i5 * 53;
                    doubleToLongBits = zzjq.zzd(obj, j);
                    byte[] bArr6 = zzhp.zzb;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 17:
                    i4 = i5 * 53;
                    Object zzf2 = zzjq.zzf(obj, j);
                    if (zzf2 != null) {
                        i9 = zzf2.hashCode();
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
                    floatToIntBits = zzjq.zzf(obj, j).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 50:
                    i2 = i5 * 53;
                    floatToIntBits = zzjq.zzf(obj, j).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 51:
                    if (zzM(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = Double.doubleToLongBits(zzm(obj, j));
                        byte[] bArr7 = zzhp.zzb;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzM(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = Float.floatToIntBits(zzn(obj, j));
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzM(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzt(obj, j);
                        byte[] bArr8 = zzhp.zzb;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzM(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzt(obj, j);
                        byte[] bArr9 = zzhp.zzb;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzM(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzc = zzo(obj, j);
                        i5 = i3 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzM(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzt(obj, j);
                        byte[] bArr10 = zzhp.zzb;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzM(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzc = zzo(obj, j);
                        i5 = i3 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzM(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = zzhp.zza(zzN(obj, j));
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzM(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = ((String) zzjq.zzf(obj, j)).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzM(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = zzjq.zzf(obj, j).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzM(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = zzjq.zzf(obj, j).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzM(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzc = zzo(obj, j);
                        i5 = i3 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzM(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzc = zzo(obj, j);
                        i5 = i3 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzM(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzc = zzo(obj, j);
                        i5 = i3 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzM(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzt(obj, j);
                        byte[] bArr11 = zzhp.zzb;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzM(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzc = zzo(obj, j);
                        i5 = i3 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzM(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzt(obj, j);
                        byte[] bArr12 = zzhp.zzb;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzM(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = zzjq.zzf(obj, j).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = ((zzhk) obj).zzc.hashCode() + (i5 * 53);
        return this.zzh ? (hashCode * 53) + ((zzhh) obj).zzb.zza.hashCode() : hashCode;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0d7e, code lost:
    
        if (r6 == r2) goto L580;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0d80, code lost:
    
        r26.putInt(r12, r6, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0d86, code lost:
    
        r2 = r7.zzj;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0d8a, code lost:
    
        if (r2 >= r7.zzk) goto L700;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0d8c, code lost:
    
        r3 = r7.zzi;
        r5 = r7.zzc;
        r3 = r3[r2];
        r5 = r5[r3];
        r5 = com.google.android.gms.internal.play_billing.zzjq.zzf(r12, r7.zzs(r3) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0da1, code lost:
    
        if (r5 != null) goto L586;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0da8, code lost:
    
        if (r7.zzu(r3) != null) goto L699;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0dad, code lost:
    
        r5 = (com.google.android.gms.internal.play_billing.zzig) r5;
        r0 = (com.google.android.gms.internal.play_billing.zzif) r7.zzw(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0db5, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0daa, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0db8, code lost:
    
        if (r0 != 0) goto L598;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0dbc, code lost:
    
        if (r1 != r41) goto L596;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0dc4, code lost:
    
        throw new com.google.android.gms.internal.play_billing.zzhr("Failed to parse the message.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0dcb, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0dc7, code lost:
    
        if (r1 > r41) goto L602;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0dc9, code lost:
    
        if (r4 != r0) goto L602;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0dd1, code lost:
    
        throw new com.google.android.gms.internal.play_billing.zzhr("Failed to parse the message.");
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0a5d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0a6d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0cf2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0d06 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:642:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0d23  */
    /* JADX WARN: Removed duplicated region for block: B:754:0x0059 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(java.lang.Object r38, byte[] r39, int r40, int r41, int r42, com.google.android.gms.internal.play_billing.zzfz r43) {
        /*
            Method dump skipped, instructions count: 3682
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzip.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.play_billing.zzfz):int");
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final Object zze() {
        return ((zzhk) this.zzg).zzp();
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final void zzf(Object obj) {
        if (zzL(obj)) {
            if (obj instanceof zzhk) {
                zzhk zzhkVar = (zzhk) obj;
                zzhkVar.zzy(Api.BaseClientBuilder.API_PRIORITY_OTHER);
                zzhkVar.zza = 0;
                zzhkVar.zzw();
            }
            int[] iArr = this.zzc;
            for (int i = 0; i < iArr.length; i += 3) {
                int zzs = zzs(i);
                int i2 = 1048575 & zzs;
                int zzr = zzr(zzs);
                long j = i2;
                if (zzr != 9) {
                    if (zzr != 60 && zzr != 68) {
                        switch (zzr) {
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
                                ((zzho) zzjq.zzf(obj, j)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzig) object).zzc();
                                    unsafe.putObject(obj, j, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzM(obj, this.zzc[i], i)) {
                        zzv(i).zzf(zzb.getObject(obj, j));
                    }
                }
                if (zzI(obj, i)) {
                    zzv(i).zzf(zzb.getObject(obj, j));
                }
            }
            this.zzl.zza(obj);
            if (this.zzh) {
                this.zzm.zza(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final void zzg(Object obj, Object obj2) {
        zzA(obj);
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzs = zzs(i);
            int i2 = 1048575 & zzs;
            int[] iArr = this.zzc;
            int zzr = zzr(zzs);
            int i3 = iArr[i];
            long j = i2;
            switch (zzr) {
                case 0:
                    if (zzI(obj2, i)) {
                        zzjq.zzo(obj, j, zzjq.zza(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzI(obj2, i)) {
                        zzjq.zzp(obj, j, zzjq.zzb(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzI(obj2, i)) {
                        zzjq.zzr(obj, j, zzjq.zzd(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzI(obj2, i)) {
                        zzjq.zzr(obj, j, zzjq.zzd(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzI(obj2, i)) {
                        zzjq.zzq(obj, j, zzjq.zzc(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzI(obj2, i)) {
                        zzjq.zzr(obj, j, zzjq.zzd(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzI(obj2, i)) {
                        zzjq.zzq(obj, j, zzjq.zzc(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzI(obj2, i)) {
                        zzjq.zzm(obj, j, zzjq.zzw(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzI(obj2, i)) {
                        zzjq.zzs(obj, j, zzjq.zzf(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzB(obj, obj2, i);
                    break;
                case 10:
                    if (zzI(obj2, i)) {
                        zzjq.zzs(obj, j, zzjq.zzf(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzI(obj2, i)) {
                        zzjq.zzq(obj, j, zzjq.zzc(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzI(obj2, i)) {
                        zzjq.zzq(obj, j, zzjq.zzc(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzI(obj2, i)) {
                        zzjq.zzq(obj, j, zzjq.zzc(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzI(obj2, i)) {
                        zzjq.zzr(obj, j, zzjq.zzd(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzI(obj2, i)) {
                        zzjq.zzq(obj, j, zzjq.zzc(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzI(obj2, i)) {
                        zzjq.zzr(obj, j, zzjq.zzd(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzB(obj, obj2, i);
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
                    zzho zzhoVar = (zzho) zzjq.zzf(obj, j);
                    zzho zzhoVar2 = (zzho) zzjq.zzf(obj2, j);
                    int size = zzhoVar.size();
                    int size2 = zzhoVar2.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzhoVar.zzc()) {
                            zzhoVar = zzhoVar.zzd(size2 + size);
                        }
                        zzhoVar.addAll(zzhoVar2);
                    }
                    if (size > 0) {
                        zzhoVar2 = zzhoVar;
                    }
                    zzjq.zzs(obj, j, zzhoVar2);
                    break;
                case 50:
                    int i4 = zziz.zza;
                    zzjq.zzs(obj, j, zzih.zza(zzjq.zzf(obj, j), zzjq.zzf(obj2, j)));
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
                    if (zzM(obj2, i3, i)) {
                        zzjq.zzs(obj, j, zzjq.zzf(obj2, j));
                        zzE(obj, i3, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzC(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzM(obj2, i3, i)) {
                        zzjq.zzs(obj, j, zzjq.zzf(obj2, j));
                        zzE(obj, i3, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzC(obj, obj2, i);
                    break;
            }
        }
        zziz.zzp(this.zzl, obj, obj2);
        if (this.zzh) {
            zziz.zzo(this.zzm, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzfz zzfzVar) {
        zzc(obj, bArr, i, i2, 0, zzfzVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:237:0x05fb  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0604  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0033  */
    @Override // com.google.android.gms.internal.play_billing.zzix
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzi(java.lang.Object r20, com.google.android.gms.internal.play_billing.zzjw r21) {
        /*
            Method dump skipped, instructions count: 1690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzip.zzi(java.lang.Object, com.google.android.gms.internal.play_billing.zzjw):void");
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final boolean zzj(Object obj, Object obj2) {
        boolean zzE;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzs = zzs(i);
            long j = zzs & 1048575;
            switch (zzr(zzs)) {
                case 0:
                    if (zzH(obj, obj2, i) && Double.doubleToLongBits(zzjq.zza(obj, j)) == Double.doubleToLongBits(zzjq.zza(obj2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzH(obj, obj2, i) && Float.floatToIntBits(zzjq.zzb(obj, j)) == Float.floatToIntBits(zzjq.zzb(obj2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzH(obj, obj2, i) && zzjq.zzd(obj, j) == zzjq.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzH(obj, obj2, i) && zzjq.zzd(obj, j) == zzjq.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzH(obj, obj2, i) && zzjq.zzc(obj, j) == zzjq.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzH(obj, obj2, i) && zzjq.zzd(obj, j) == zzjq.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzH(obj, obj2, i) && zzjq.zzc(obj, j) == zzjq.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzH(obj, obj2, i) && zzjq.zzw(obj, j) == zzjq.zzw(obj2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzH(obj, obj2, i) && zziz.zzE(zzjq.zzf(obj, j), zzjq.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzH(obj, obj2, i) && zziz.zzE(zzjq.zzf(obj, j), zzjq.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzH(obj, obj2, i) && zziz.zzE(zzjq.zzf(obj, j), zzjq.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzH(obj, obj2, i) && zzjq.zzc(obj, j) == zzjq.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzH(obj, obj2, i) && zzjq.zzc(obj, j) == zzjq.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzH(obj, obj2, i) && zzjq.zzc(obj, j) == zzjq.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzH(obj, obj2, i) && zzjq.zzd(obj, j) == zzjq.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzH(obj, obj2, i) && zzjq.zzc(obj, j) == zzjq.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzH(obj, obj2, i) && zzjq.zzd(obj, j) == zzjq.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzH(obj, obj2, i) && zziz.zzE(zzjq.zzf(obj, j), zzjq.zzf(obj2, j))) {
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
                    zzE = zziz.zzE(zzjq.zzf(obj, j), zzjq.zzf(obj2, j));
                    break;
                case 50:
                    zzE = zziz.zzE(zzjq.zzf(obj, j), zzjq.zzf(obj2, j));
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
                    long zzp = zzp(i) & 1048575;
                    if (zzjq.zzc(obj, zzp) == zzjq.zzc(obj2, zzp) && zziz.zzE(zzjq.zzf(obj, j), zzjq.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzE) {
                return false;
            }
        }
        if (!((zzhk) obj).zzc.equals(((zzhk) obj2).zzc)) {
            return false;
        }
        if (this.zzh) {
            return ((zzhh) obj).zzb.equals(((zzhh) obj2).zzb);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final boolean zzk(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzj) {
            int[] iArr = this.zzi;
            int[] iArr2 = this.zzc;
            int i6 = iArr[i5];
            int i7 = iArr2[i6];
            int zzs = zzs(i6);
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
            if ((268435456 & zzs) != 0 && !zzJ(obj, i6, i, i2, i10)) {
                return false;
            }
            int zzr = zzr(zzs);
            if (zzr != 9 && zzr != 17) {
                if (zzr != 27) {
                    if (zzr == 60 || zzr == 68) {
                        if (zzM(obj, i7, i6) && !zzK(obj, zzs, zzv(i6))) {
                            return false;
                        }
                    } else if (zzr != 49) {
                        if (zzr == 50 && !((zzig) zzjq.zzf(obj, zzs & 1048575)).isEmpty()) {
                            throw null;
                        }
                    }
                }
                List list = (List) zzjq.zzf(obj, zzs & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzix zzv = zzv(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzv.zzk(list.get(i11))) {
                            return false;
                        }
                    }
                }
            } else if (zzJ(obj, i6, i, i2, i10) && !zzK(obj, zzs, zzv(i6))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        return !this.zzh || ((zzhh) obj).zzb.zzh();
    }
}
