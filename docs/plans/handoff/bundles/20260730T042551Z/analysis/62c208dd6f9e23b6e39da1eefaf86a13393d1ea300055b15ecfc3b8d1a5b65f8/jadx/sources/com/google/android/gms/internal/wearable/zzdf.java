package com.google.android.gms.internal.wearable;

import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.ConnectionResult;
import defpackage.Cif;
import defpackage.V1;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
final class zzdf<T> implements zzdn<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzeo.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzdc zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzcq zzm;
    private final zzee zzn;
    private final zzbk zzo;
    private final zzdh zzp;
    private final zzcx zzq;

    private zzdf(int[] iArr, Object[] objArr, int i, int i2, zzdc zzdcVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzdh zzdhVar, zzcq zzcqVar, zzee zzeeVar, zzbk zzbkVar, zzcx zzcxVar, byte[] bArr) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = z;
        boolean z3 = false;
        if (zzbkVar != null && zzbkVar.zzc(zzdcVar)) {
            z3 = true;
        }
        this.zzh = z3;
        this.zzj = iArr2;
        this.zzk = i3;
        this.zzl = i4;
        this.zzp = zzdhVar;
        this.zzm = zzcqVar;
        this.zzn = zzeeVar;
        this.zzo = zzbkVar;
        this.zzg = zzdcVar;
        this.zzq = zzcxVar;
    }

    private static int zzA(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzB(int i) {
        return this.zzc[i + 1];
    }

    private static long zzC(Object obj, long j) {
        return ((Long) zzeo.zzf(obj, j)).longValue();
    }

    private final zzbz zzD(int i) {
        int i2 = i / 3;
        return (zzbz) this.zzd[i2 + i2 + 1];
    }

    private final zzdn zzE(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzdn zzdnVar = (zzdn) this.zzd[i3];
        if (zzdnVar != null) {
            return zzdnVar;
        }
        zzdn zzb2 = zzdk.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzF(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private static Field zzG(Class cls, String str) {
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

    private final void zzH(Object obj, Object obj2, int i) {
        long zzB = zzB(i) & 1048575;
        if (zzO(obj2, i)) {
            Object zzf = zzeo.zzf(obj, zzB);
            Object zzf2 = zzeo.zzf(obj2, zzB);
            if (zzf != null && zzf2 != null) {
                zzeo.zzs(obj, zzB, zzcd.zzg(zzf, zzf2));
                zzJ(obj, i);
            } else if (zzf2 != null) {
                zzeo.zzs(obj, zzB, zzf2);
                zzJ(obj, i);
            }
        }
    }

    private final void zzI(Object obj, Object obj2, int i) {
        int zzB = zzB(i);
        int i2 = this.zzc[i];
        long j = zzB & 1048575;
        if (zzR(obj2, i2, i)) {
            Object zzf = zzR(obj, i2, i) ? zzeo.zzf(obj, j) : null;
            Object zzf2 = zzeo.zzf(obj2, j);
            if (zzf != null && zzf2 != null) {
                zzeo.zzs(obj, j, zzcd.zzg(zzf, zzf2));
                zzK(obj, i2, i);
            } else if (zzf2 != null) {
                zzeo.zzs(obj, j, zzf2);
                zzK(obj, i2, i);
            }
        }
    }

    private final void zzJ(Object obj, int i) {
        int zzy = zzy(i);
        long j = 1048575 & zzy;
        if (j == 1048575) {
            return;
        }
        zzeo.zzq(obj, j, (1 << (zzy >>> 20)) | zzeo.zzc(obj, j));
    }

    private final void zzK(Object obj, int i, int i2) {
        zzeo.zzq(obj, zzy(i2) & 1048575, i);
    }

    private final void zzL(Object obj, zzew zzewVar) {
        int i;
        if (this.zzh) {
            this.zzo.zza(obj);
            throw null;
        }
        int length = this.zzc.length;
        Unsafe unsafe = zzb;
        int i2 = 1048575;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i3 < length) {
            int zzB = zzB(i3);
            int[] iArr = this.zzc;
            int i6 = iArr[i3];
            int zzA = zzA(zzB);
            if (zzA <= 17) {
                int i7 = iArr[i3 + 2];
                int i8 = i7 & i2;
                if (i8 != i5) {
                    i4 = unsafe.getInt(obj, i8);
                    i5 = i8;
                }
                i = 1 << (i7 >>> 20);
            } else {
                i = 0;
            }
            long j = zzB & i2;
            switch (zzA) {
                case 0:
                    if ((i4 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzf(i6, zzeo.zza(obj, j));
                        continue;
                    }
                case 1:
                    if ((i4 & i) != 0) {
                        zzewVar.zzo(i6, zzeo.zzb(obj, j));
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    if ((i4 & i) != 0) {
                        zzewVar.zzt(i6, unsafe.getLong(obj, j));
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    if ((i4 & i) != 0) {
                        zzewVar.zzJ(i6, unsafe.getLong(obj, j));
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    if ((i4 & i) != 0) {
                        zzewVar.zzr(i6, unsafe.getInt(obj, j));
                        break;
                    } else {
                        continue;
                    }
                case 5:
                    if ((i4 & i) != 0) {
                        zzewVar.zzm(i6, unsafe.getLong(obj, j));
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    if ((i4 & i) != 0) {
                        zzewVar.zzk(i6, unsafe.getInt(obj, j));
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    if ((i4 & i) != 0) {
                        zzewVar.zzb(i6, zzeo.zzw(obj, j));
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if ((i4 & i) != 0) {
                        zzT(i6, unsafe.getObject(obj, j), zzewVar);
                        break;
                    } else {
                        continue;
                    }
                case 9:
                    if ((i4 & i) != 0) {
                        zzewVar.zzv(i6, unsafe.getObject(obj, j), zzE(i3));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    if ((i4 & i) != 0) {
                        zzewVar.zzd(i6, (zzaw) unsafe.getObject(obj, j));
                        break;
                    } else {
                        continue;
                    }
                case 11:
                    if ((i4 & i) != 0) {
                        zzewVar.zzH(i6, unsafe.getInt(obj, j));
                        break;
                    } else {
                        continue;
                    }
                case 12:
                    if ((i4 & i) != 0) {
                        zzewVar.zzi(i6, unsafe.getInt(obj, j));
                        break;
                    } else {
                        continue;
                    }
                case 13:
                    if ((i4 & i) != 0) {
                        zzewVar.zzw(i6, unsafe.getInt(obj, j));
                        break;
                    } else {
                        continue;
                    }
                case 14:
                    if ((i4 & i) != 0) {
                        zzewVar.zzy(i6, unsafe.getLong(obj, j));
                        break;
                    } else {
                        continue;
                    }
                case 15:
                    if ((i4 & i) != 0) {
                        zzewVar.zzA(i6, unsafe.getInt(obj, j));
                        break;
                    } else {
                        continue;
                    }
                case 16:
                    if ((i4 & i) != 0) {
                        zzewVar.zzC(i6, unsafe.getLong(obj, j));
                        break;
                    } else {
                        continue;
                    }
                case 17:
                    if ((i4 & i) != 0) {
                        zzewVar.zzq(i6, unsafe.getObject(obj, j), zzE(i3));
                        break;
                    } else {
                        continue;
                    }
                case 18:
                    zzdp.zzJ(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, false);
                    continue;
                case 19:
                    zzdp.zzN(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, false);
                    continue;
                case 20:
                    zzdp.zzQ(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, false);
                    continue;
                case 21:
                    zzdp.zzY(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, false);
                    continue;
                case 22:
                    zzdp.zzP(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, false);
                    continue;
                case ConnectionResult.API_DISABLED /* 23 */:
                    zzdp.zzM(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, false);
                    continue;
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    zzdp.zzL(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, false);
                    continue;
                case Constants.MAX_TREE_DEPTH /* 25 */:
                    zzdp.zzH(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, false);
                    continue;
                case 26:
                    zzdp.zzW(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar);
                    break;
                case 27:
                    zzdp.zzR(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, zzE(i3));
                    break;
                case 28:
                    zzdp.zzI(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar);
                    break;
                case 29:
                    zzdp.zzX(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 30:
                    zzdp.zzK(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 31:
                    zzdp.zzS(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 32:
                    zzdp.zzT(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 33:
                    zzdp.zzU(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 34:
                    zzdp.zzV(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 35:
                    zzdp.zzJ(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 36:
                    zzdp.zzN(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 37:
                    zzdp.zzQ(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 38:
                    zzdp.zzY(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 39:
                    zzdp.zzP(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 40:
                    zzdp.zzM(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 41:
                    zzdp.zzL(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 42:
                    zzdp.zzH(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 43:
                    zzdp.zzX(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 44:
                    zzdp.zzK(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 45:
                    zzdp.zzS(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 46:
                    zzdp.zzT(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 47:
                    zzdp.zzU(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 48:
                    zzdp.zzV(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 49:
                    zzdp.zzO(this.zzc[i3], (List) unsafe.getObject(obj, j), zzewVar, zzE(i3));
                    break;
                case 50:
                    zzM(zzewVar, i6, unsafe.getObject(obj, j), i3);
                    break;
                case 51:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzf(i6, zzn(obj, j));
                        break;
                    }
                    break;
                case 52:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzo(i6, zzo(obj, j));
                        break;
                    }
                    break;
                case 53:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzt(i6, zzC(obj, j));
                        break;
                    }
                    break;
                case 54:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzJ(i6, zzC(obj, j));
                        break;
                    }
                    break;
                case 55:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzr(i6, zzr(obj, j));
                        break;
                    }
                    break;
                case 56:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzm(i6, zzC(obj, j));
                        break;
                    }
                    break;
                case 57:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzk(i6, zzr(obj, j));
                        break;
                    }
                    break;
                case 58:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzb(i6, zzS(obj, j));
                        break;
                    }
                    break;
                case 59:
                    if (zzR(obj, i6, i3)) {
                        zzT(i6, unsafe.getObject(obj, j), zzewVar);
                        break;
                    }
                    break;
                case 60:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzv(i6, unsafe.getObject(obj, j), zzE(i3));
                        break;
                    }
                    break;
                case 61:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzd(i6, (zzaw) unsafe.getObject(obj, j));
                        break;
                    }
                    break;
                case 62:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzH(i6, zzr(obj, j));
                        break;
                    }
                    break;
                case 63:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzi(i6, zzr(obj, j));
                        break;
                    }
                    break;
                case 64:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzw(i6, zzr(obj, j));
                        break;
                    }
                    break;
                case 65:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzy(i6, zzC(obj, j));
                        break;
                    }
                    break;
                case 66:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzA(i6, zzr(obj, j));
                        break;
                    }
                    break;
                case 67:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzC(i6, zzC(obj, j));
                        break;
                    }
                    break;
                case 68:
                    if (zzR(obj, i6, i3)) {
                        zzewVar.zzq(i6, unsafe.getObject(obj, j), zzE(i3));
                        break;
                    }
                    break;
            }
            i3 += 3;
            i2 = 1048575;
        }
        zzee zzeeVar = this.zzn;
        zzeeVar.zzi(zzeeVar.zzc(obj), zzewVar);
    }

    private final void zzM(zzew zzewVar, int i, Object obj, int i2) {
        if (obj == null) {
            return;
        }
        throw null;
    }

    private final boolean zzN(Object obj, Object obj2, int i) {
        return zzO(obj, i) == zzO(obj2, i);
    }

    private final boolean zzO(Object obj, int i) {
        int zzy = zzy(i);
        long j = zzy & 1048575;
        if (j != 1048575) {
            return (zzeo.zzc(obj, j) & (1 << (zzy >>> 20))) != 0;
        }
        int zzB = zzB(i);
        long j2 = zzB & 1048575;
        switch (zzA(zzB)) {
            case 0:
                return Double.doubleToRawLongBits(zzeo.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzeo.zzb(obj, j2)) != 0;
            case 2:
                return zzeo.zzd(obj, j2) != 0;
            case 3:
                return zzeo.zzd(obj, j2) != 0;
            case 4:
                return zzeo.zzc(obj, j2) != 0;
            case 5:
                return zzeo.zzd(obj, j2) != 0;
            case 6:
                return zzeo.zzc(obj, j2) != 0;
            case 7:
                return zzeo.zzw(obj, j2);
            case 8:
                Object zzf = zzeo.zzf(obj, j2);
                if (zzf instanceof String) {
                    return !((String) zzf).isEmpty();
                }
                if (zzf instanceof zzaw) {
                    return !zzaw.zzb.equals(zzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzeo.zzf(obj, j2) != null;
            case 10:
                return !zzaw.zzb.equals(zzeo.zzf(obj, j2));
            case 11:
                return zzeo.zzc(obj, j2) != 0;
            case 12:
                return zzeo.zzc(obj, j2) != 0;
            case 13:
                return zzeo.zzc(obj, j2) != 0;
            case 14:
                return zzeo.zzd(obj, j2) != 0;
            case 15:
                return zzeo.zzc(obj, j2) != 0;
            case 16:
                return zzeo.zzd(obj, j2) != 0;
            case 17:
                return zzeo.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzP(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzO(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zzQ(Object obj, int i, zzdn zzdnVar) {
        return zzdnVar.zzk(zzeo.zzf(obj, i & 1048575));
    }

    private final boolean zzR(Object obj, int i, int i2) {
        return zzeo.zzc(obj, (long) (zzy(i2) & 1048575)) == i;
    }

    private static boolean zzS(Object obj, long j) {
        return ((Boolean) zzeo.zzf(obj, j)).booleanValue();
    }

    private static final void zzT(int i, Object obj, zzew zzewVar) {
        if (obj instanceof String) {
            zzewVar.zzF(i, (String) obj);
        } else {
            zzewVar.zzd(i, (zzaw) obj);
        }
    }

    public static zzef zzd(Object obj) {
        zzbv zzbvVar = (zzbv) obj;
        zzef zzefVar = zzbvVar.zzc;
        if (zzefVar != zzef.zzc()) {
            return zzefVar;
        }
        zzef zze = zzef.zze();
        zzbvVar.zzc = zze;
        return zze;
    }

    public static zzdf zzl(Class cls, zzcz zzczVar, zzdh zzdhVar, zzcq zzcqVar, zzee zzeeVar, zzbk zzbkVar, zzcx zzcxVar) {
        if (zzczVar instanceof zzdm) {
            return zzm((zzdm) zzczVar, zzdhVar, zzcqVar, zzeeVar, zzbkVar, zzcxVar);
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0260  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.wearable.zzdf zzm(com.google.android.gms.internal.wearable.zzdm r33, com.google.android.gms.internal.wearable.zzdh r34, com.google.android.gms.internal.wearable.zzcq r35, com.google.android.gms.internal.wearable.zzee r36, com.google.android.gms.internal.wearable.zzbk r37, com.google.android.gms.internal.wearable.zzcx r38) {
        /*
            Method dump skipped, instructions count: 1008
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.wearable.zzdf.zzm(com.google.android.gms.internal.wearable.zzdm, com.google.android.gms.internal.wearable.zzdh, com.google.android.gms.internal.wearable.zzcq, com.google.android.gms.internal.wearable.zzee, com.google.android.gms.internal.wearable.zzbk, com.google.android.gms.internal.wearable.zzcx):com.google.android.gms.internal.wearable.zzdf");
    }

    private static double zzn(Object obj, long j) {
        return ((Double) zzeo.zzf(obj, j)).doubleValue();
    }

    private static float zzo(Object obj, long j) {
        return ((Float) zzeo.zzf(obj, j)).floatValue();
    }

    private final int zzp(Object obj) {
        int i;
        int zzA;
        int zzA2;
        int zzA3;
        int zzB;
        int zzA4;
        int zzv;
        int zzA5;
        int zzA6;
        int zzd;
        int zzA7;
        int zzo;
        int zzA8;
        int zzB2;
        int zzi;
        int zzz;
        int zzA9;
        int i2;
        int zzA10;
        int zzd2;
        int zzA11;
        Unsafe unsafe = zzb;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 1048575;
        while (i4 < this.zzc.length) {
            int zzB3 = zzB(i4);
            int[] iArr = this.zzc;
            int i8 = iArr[i4];
            int zzA12 = zzA(zzB3);
            if (zzA12 <= 17) {
                int i9 = iArr[i4 + 2];
                int i10 = i9 & i3;
                i = 1 << (i9 >>> 20);
                if (i10 != i7) {
                    i6 = unsafe.getInt(obj, i10);
                    i7 = i10;
                }
            } else {
                i = 0;
            }
            long j = i3 & zzB3;
            switch (zzA12) {
                case 0:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        zzA = zzbe.zzA(i8 << 3);
                        zzo = zzA + 8;
                        i5 += zzo;
                        break;
                    }
                case 1:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        zzA2 = zzbe.zzA(i8 << 3);
                        zzo = zzA2 + 4;
                        i5 += zzo;
                        break;
                    }
                case 2:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        long j2 = unsafe.getLong(obj, j);
                        zzA3 = zzbe.zzA(i8 << 3);
                        zzB = zzbe.zzB(j2);
                        zzo = zzA3 + zzB;
                        i5 += zzo;
                        break;
                    }
                case 3:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        long j3 = unsafe.getLong(obj, j);
                        zzA3 = zzbe.zzA(i8 << 3);
                        zzB = zzbe.zzB(j3);
                        zzo = zzA3 + zzB;
                        i5 += zzo;
                        break;
                    }
                case 4:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        int i11 = unsafe.getInt(obj, j);
                        zzA4 = zzbe.zzA(i8 << 3);
                        zzv = zzbe.zzv(i11);
                        zzo = zzv + zzA4;
                        i5 += zzo;
                        break;
                    }
                case 5:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        zzA = zzbe.zzA(i8 << 3);
                        zzo = zzA + 8;
                        i5 += zzo;
                        break;
                    }
                case 6:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        zzA2 = zzbe.zzA(i8 << 3);
                        zzo = zzA2 + 4;
                        i5 += zzo;
                        break;
                    }
                case 7:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        zzA5 = zzbe.zzA(i8 << 3);
                        zzo = zzA5 + 1;
                        i5 += zzo;
                        break;
                    }
                case 8:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        Object object = unsafe.getObject(obj, j);
                        if (!(object instanceof zzaw)) {
                            zzA4 = zzbe.zzA(i8 << 3);
                            zzv = zzbe.zzy((String) object);
                            zzo = zzv + zzA4;
                            i5 += zzo;
                            break;
                        } else {
                            zzA6 = zzbe.zzA(i8 << 3);
                            zzd = ((zzaw) object).zzd();
                            zzA7 = zzbe.zzA(zzd);
                            i5 = V1.m2501for(zzA7, zzd, zzA6, i5);
                            break;
                        }
                    }
                case 9:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        zzo = zzdp.zzo(i8, unsafe.getObject(obj, j), zzE(i4));
                        i5 += zzo;
                        break;
                    }
                case 10:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        zzaw zzawVar = (zzaw) unsafe.getObject(obj, j);
                        zzA6 = zzbe.zzA(i8 << 3);
                        zzd = zzawVar.zzd();
                        zzA7 = zzbe.zzA(zzd);
                        i5 = V1.m2501for(zzA7, zzd, zzA6, i5);
                        break;
                    }
                case 11:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        int i12 = unsafe.getInt(obj, j);
                        zzA4 = zzbe.zzA(i8 << 3);
                        zzv = zzbe.zzA(i12);
                        zzo = zzv + zzA4;
                        i5 += zzo;
                        break;
                    }
                case 12:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        int i13 = unsafe.getInt(obj, j);
                        zzA4 = zzbe.zzA(i8 << 3);
                        zzv = zzbe.zzv(i13);
                        zzo = zzv + zzA4;
                        i5 += zzo;
                        break;
                    }
                case 13:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        zzA2 = zzbe.zzA(i8 << 3);
                        zzo = zzA2 + 4;
                        i5 += zzo;
                        break;
                    }
                case 14:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        zzA = zzbe.zzA(i8 << 3);
                        zzo = zzA + 8;
                        i5 += zzo;
                        break;
                    }
                case 15:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        int i14 = unsafe.getInt(obj, j);
                        zzA4 = zzbe.zzA(i8 << 3);
                        zzv = zzbe.zzA((i14 >> 31) ^ (i14 + i14));
                        zzo = zzv + zzA4;
                        i5 += zzo;
                        break;
                    }
                case 16:
                    if ((i & i6) == 0) {
                        break;
                    } else {
                        long j4 = unsafe.getLong(obj, j);
                        zzA8 = zzbe.zzA(i8 << 3);
                        zzB2 = zzbe.zzB((j4 >> 63) ^ (j4 + j4));
                        zzo = zzB2 + zzA8;
                        i5 += zzo;
                        break;
                    }
                case 17:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        zzo = zzbe.zzu(i8, (zzdc) unsafe.getObject(obj, j), zzE(i4));
                        i5 += zzo;
                        break;
                    }
                case 18:
                    zzo = zzdp.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    i5 += zzo;
                    break;
                case 19:
                    zzo = zzdp.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    i5 += zzo;
                    break;
                case 20:
                    zzo = zzdp.zzm(i8, (List) unsafe.getObject(obj, j), false);
                    i5 += zzo;
                    break;
                case 21:
                    zzo = zzdp.zzx(i8, (List) unsafe.getObject(obj, j), false);
                    i5 += zzo;
                    break;
                case 22:
                    zzo = zzdp.zzk(i8, (List) unsafe.getObject(obj, j), false);
                    i5 += zzo;
                    break;
                case ConnectionResult.API_DISABLED /* 23 */:
                    zzo = zzdp.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    i5 += zzo;
                    break;
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    zzo = zzdp.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    i5 += zzo;
                    break;
                case Constants.MAX_TREE_DEPTH /* 25 */:
                    zzo = zzdp.zza(i8, (List) unsafe.getObject(obj, j), false);
                    i5 += zzo;
                    break;
                case 26:
                    zzo = zzdp.zzu(i8, (List) unsafe.getObject(obj, j));
                    i5 += zzo;
                    break;
                case 27:
                    zzo = zzdp.zzp(i8, (List) unsafe.getObject(obj, j), zzE(i4));
                    i5 += zzo;
                    break;
                case 28:
                    zzo = zzdp.zzc(i8, (List) unsafe.getObject(obj, j));
                    i5 += zzo;
                    break;
                case 29:
                    zzo = zzdp.zzv(i8, (List) unsafe.getObject(obj, j), false);
                    i5 += zzo;
                    break;
                case 30:
                    zzo = zzdp.zzd(i8, (List) unsafe.getObject(obj, j), false);
                    i5 += zzo;
                    break;
                case 31:
                    zzo = zzdp.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    i5 += zzo;
                    break;
                case 32:
                    zzo = zzdp.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    i5 += zzo;
                    break;
                case 33:
                    zzo = zzdp.zzq(i8, (List) unsafe.getObject(obj, j), false);
                    i5 += zzo;
                    break;
                case 34:
                    zzo = zzdp.zzs(i8, (List) unsafe.getObject(obj, j), false);
                    i5 += zzo;
                    break;
                case 35:
                    zzi = zzdp.zzi((List) unsafe.getObject(obj, j));
                    if (zzi <= 0) {
                        break;
                    } else {
                        zzz = zzbe.zzz(i8);
                        zzA9 = zzbe.zzA(zzi);
                        i2 = zzA9 + zzz + zzi;
                        i5 += i2;
                        break;
                    }
                case 36:
                    zzi = zzdp.zzg((List) unsafe.getObject(obj, j));
                    if (zzi <= 0) {
                        break;
                    } else {
                        zzz = zzbe.zzz(i8);
                        zzA9 = zzbe.zzA(zzi);
                        i2 = zzA9 + zzz + zzi;
                        i5 += i2;
                        break;
                    }
                case 37:
                    zzi = zzdp.zzn((List) unsafe.getObject(obj, j));
                    if (zzi <= 0) {
                        break;
                    } else {
                        zzz = zzbe.zzz(i8);
                        zzA9 = zzbe.zzA(zzi);
                        i2 = zzA9 + zzz + zzi;
                        i5 += i2;
                        break;
                    }
                case 38:
                    zzi = zzdp.zzy((List) unsafe.getObject(obj, j));
                    if (zzi <= 0) {
                        break;
                    } else {
                        zzz = zzbe.zzz(i8);
                        zzA9 = zzbe.zzA(zzi);
                        i2 = zzA9 + zzz + zzi;
                        i5 += i2;
                        break;
                    }
                case 39:
                    zzi = zzdp.zzl((List) unsafe.getObject(obj, j));
                    if (zzi <= 0) {
                        break;
                    } else {
                        zzz = zzbe.zzz(i8);
                        zzA9 = zzbe.zzA(zzi);
                        i2 = zzA9 + zzz + zzi;
                        i5 += i2;
                        break;
                    }
                case 40:
                    zzi = zzdp.zzi((List) unsafe.getObject(obj, j));
                    if (zzi <= 0) {
                        break;
                    } else {
                        zzz = zzbe.zzz(i8);
                        zzA9 = zzbe.zzA(zzi);
                        i2 = zzA9 + zzz + zzi;
                        i5 += i2;
                        break;
                    }
                case 41:
                    zzi = zzdp.zzg((List) unsafe.getObject(obj, j));
                    if (zzi <= 0) {
                        break;
                    } else {
                        zzz = zzbe.zzz(i8);
                        zzA9 = zzbe.zzA(zzi);
                        i2 = zzA9 + zzz + zzi;
                        i5 += i2;
                        break;
                    }
                case 42:
                    zzi = zzdp.zzb((List) unsafe.getObject(obj, j));
                    if (zzi <= 0) {
                        break;
                    } else {
                        zzz = zzbe.zzz(i8);
                        zzA9 = zzbe.zzA(zzi);
                        i2 = zzA9 + zzz + zzi;
                        i5 += i2;
                        break;
                    }
                case 43:
                    zzi = zzdp.zzw((List) unsafe.getObject(obj, j));
                    if (zzi <= 0) {
                        break;
                    } else {
                        zzz = zzbe.zzz(i8);
                        zzA9 = zzbe.zzA(zzi);
                        i2 = zzA9 + zzz + zzi;
                        i5 += i2;
                        break;
                    }
                case 44:
                    zzi = zzdp.zze((List) unsafe.getObject(obj, j));
                    if (zzi <= 0) {
                        break;
                    } else {
                        zzz = zzbe.zzz(i8);
                        zzA9 = zzbe.zzA(zzi);
                        i2 = zzA9 + zzz + zzi;
                        i5 += i2;
                        break;
                    }
                case 45:
                    zzi = zzdp.zzg((List) unsafe.getObject(obj, j));
                    if (zzi <= 0) {
                        break;
                    } else {
                        zzz = zzbe.zzz(i8);
                        zzA9 = zzbe.zzA(zzi);
                        i2 = zzA9 + zzz + zzi;
                        i5 += i2;
                        break;
                    }
                case 46:
                    zzi = zzdp.zzi((List) unsafe.getObject(obj, j));
                    if (zzi <= 0) {
                        break;
                    } else {
                        zzz = zzbe.zzz(i8);
                        zzA9 = zzbe.zzA(zzi);
                        i2 = zzA9 + zzz + zzi;
                        i5 += i2;
                        break;
                    }
                case 47:
                    zzi = zzdp.zzr((List) unsafe.getObject(obj, j));
                    if (zzi <= 0) {
                        break;
                    } else {
                        zzz = zzbe.zzz(i8);
                        zzA9 = zzbe.zzA(zzi);
                        i2 = zzA9 + zzz + zzi;
                        i5 += i2;
                        break;
                    }
                case 48:
                    zzi = zzdp.zzt((List) unsafe.getObject(obj, j));
                    if (zzi <= 0) {
                        break;
                    } else {
                        zzz = zzbe.zzz(i8);
                        zzA9 = zzbe.zzA(zzi);
                        i2 = zzA9 + zzz + zzi;
                        i5 += i2;
                        break;
                    }
                case 49:
                    zzo = zzdp.zzj(i8, (List) unsafe.getObject(obj, j), zzE(i4));
                    i5 += zzo;
                    break;
                case 50:
                    zzcx.zza(i8, unsafe.getObject(obj, j), zzF(i4));
                    break;
                case 51:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        zzA = zzbe.zzA(i8 << 3);
                        zzo = zzA + 8;
                        i5 += zzo;
                        break;
                    }
                case 52:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        zzA2 = zzbe.zzA(i8 << 3);
                        zzo = zzA2 + 4;
                        i5 += zzo;
                        break;
                    }
                case 53:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        long zzC = zzC(obj, j);
                        zzA3 = zzbe.zzA(i8 << 3);
                        zzB = zzbe.zzB(zzC);
                        zzo = zzA3 + zzB;
                        i5 += zzo;
                        break;
                    }
                case 54:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        long zzC2 = zzC(obj, j);
                        zzA3 = zzbe.zzA(i8 << 3);
                        zzB = zzbe.zzB(zzC2);
                        zzo = zzA3 + zzB;
                        i5 += zzo;
                        break;
                    }
                case 55:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        int zzr = zzr(obj, j);
                        zzA4 = zzbe.zzA(i8 << 3);
                        zzv = zzbe.zzv(zzr);
                        zzo = zzv + zzA4;
                        i5 += zzo;
                        break;
                    }
                case 56:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        zzA = zzbe.zzA(i8 << 3);
                        zzo = zzA + 8;
                        i5 += zzo;
                        break;
                    }
                case 57:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        zzA2 = zzbe.zzA(i8 << 3);
                        zzo = zzA2 + 4;
                        i5 += zzo;
                        break;
                    }
                case 58:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        zzA5 = zzbe.zzA(i8 << 3);
                        zzo = zzA5 + 1;
                        i5 += zzo;
                        break;
                    }
                case 59:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        Object object2 = unsafe.getObject(obj, j);
                        if (!(object2 instanceof zzaw)) {
                            zzA4 = zzbe.zzA(i8 << 3);
                            zzv = zzbe.zzy((String) object2);
                            zzo = zzv + zzA4;
                            i5 += zzo;
                            break;
                        } else {
                            zzA10 = zzbe.zzA(i8 << 3);
                            zzd2 = ((zzaw) object2).zzd();
                            zzA11 = zzbe.zzA(zzd2);
                            i2 = zzA11 + zzd2 + zzA10;
                            i5 += i2;
                            break;
                        }
                    }
                case 60:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        zzo = zzdp.zzo(i8, unsafe.getObject(obj, j), zzE(i4));
                        i5 += zzo;
                        break;
                    }
                case 61:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        zzaw zzawVar2 = (zzaw) unsafe.getObject(obj, j);
                        zzA10 = zzbe.zzA(i8 << 3);
                        zzd2 = zzawVar2.zzd();
                        zzA11 = zzbe.zzA(zzd2);
                        i2 = zzA11 + zzd2 + zzA10;
                        i5 += i2;
                        break;
                    }
                case 62:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        int zzr2 = zzr(obj, j);
                        zzA4 = zzbe.zzA(i8 << 3);
                        zzv = zzbe.zzA(zzr2);
                        zzo = zzv + zzA4;
                        i5 += zzo;
                        break;
                    }
                case 63:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        int zzr3 = zzr(obj, j);
                        zzA4 = zzbe.zzA(i8 << 3);
                        zzv = zzbe.zzv(zzr3);
                        zzo = zzv + zzA4;
                        i5 += zzo;
                        break;
                    }
                case 64:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        zzA2 = zzbe.zzA(i8 << 3);
                        zzo = zzA2 + 4;
                        i5 += zzo;
                        break;
                    }
                case 65:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        zzA = zzbe.zzA(i8 << 3);
                        zzo = zzA + 8;
                        i5 += zzo;
                        break;
                    }
                case 66:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        int zzr4 = zzr(obj, j);
                        zzA4 = zzbe.zzA(i8 << 3);
                        zzv = zzbe.zzA((zzr4 >> 31) ^ (zzr4 + zzr4));
                        zzo = zzv + zzA4;
                        i5 += zzo;
                        break;
                    }
                case 67:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        long zzC3 = zzC(obj, j);
                        zzA8 = zzbe.zzA(i8 << 3);
                        zzB2 = zzbe.zzB((zzC3 >> 63) ^ (zzC3 + zzC3));
                        zzo = zzB2 + zzA8;
                        i5 += zzo;
                        break;
                    }
                case 68:
                    if (!zzR(obj, i8, i4)) {
                        break;
                    } else {
                        zzo = zzbe.zzu(i8, (zzdc) unsafe.getObject(obj, j), zzE(i4));
                        i5 += zzo;
                        break;
                    }
            }
            i4 += 3;
            i3 = 1048575;
        }
        zzee zzeeVar = this.zzn;
        int zza2 = i5 + zzeeVar.zza(zzeeVar.zzc(obj));
        if (!this.zzh) {
            return zza2;
        }
        this.zzo.zza(obj);
        throw null;
    }

    private final int zzq(Object obj) {
        int zzA;
        int zzA2;
        int zzA3;
        int zzB;
        int zzA4;
        int zzv;
        int zzA5;
        int zzA6;
        int zzd;
        int zzA7;
        int zzo;
        int zzi;
        int zzz;
        int zzA8;
        int i;
        Unsafe unsafe = zzb;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzc.length; i3 += 3) {
            int zzB2 = zzB(i3);
            int zzA9 = zzA(zzB2);
            int i4 = this.zzc[i3];
            long j = zzB2 & 1048575;
            if (zzA9 >= zzbp.zzJ.zza() && zzA9 <= zzbp.zzW.zza()) {
                int i5 = this.zzc[i3 + 2];
            }
            switch (zzA9) {
                case 0:
                    if (zzO(obj, i3)) {
                        zzA = zzbe.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzO(obj, i3)) {
                        zzA2 = zzbe.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzO(obj, i3)) {
                        long zzd2 = zzeo.zzd(obj, j);
                        zzA3 = zzbe.zzA(i4 << 3);
                        zzB = zzbe.zzB(zzd2);
                        zzo = zzB + zzA3;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzO(obj, i3)) {
                        long zzd3 = zzeo.zzd(obj, j);
                        zzA3 = zzbe.zzA(i4 << 3);
                        zzB = zzbe.zzB(zzd3);
                        zzo = zzB + zzA3;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzO(obj, i3)) {
                        int zzc = zzeo.zzc(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzv(zzc);
                        zzo = zzv + zzA4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzO(obj, i3)) {
                        zzA = zzbe.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzO(obj, i3)) {
                        zzA2 = zzbe.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzO(obj, i3)) {
                        zzA5 = zzbe.zzA(i4 << 3);
                        zzo = zzA5 + 1;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzO(obj, i3)) {
                        Object zzf = zzeo.zzf(obj, j);
                        if (zzf instanceof zzaw) {
                            zzA6 = zzbe.zzA(i4 << 3);
                            zzd = ((zzaw) zzf).zzd();
                            zzA7 = zzbe.zzA(zzd);
                            i = zzA7 + zzd + zzA6;
                            i2 += i;
                            break;
                        } else {
                            zzA4 = zzbe.zzA(i4 << 3);
                            zzv = zzbe.zzy((String) zzf);
                            zzo = zzv + zzA4;
                            i2 += zzo;
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if (zzO(obj, i3)) {
                        zzo = zzdp.zzo(i4, zzeo.zzf(obj, j), zzE(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zzO(obj, i3)) {
                        zzaw zzawVar = (zzaw) zzeo.zzf(obj, j);
                        zzA6 = zzbe.zzA(i4 << 3);
                        zzd = zzawVar.zzd();
                        zzA7 = zzbe.zzA(zzd);
                        i = zzA7 + zzd + zzA6;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzO(obj, i3)) {
                        int zzc2 = zzeo.zzc(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzA(zzc2);
                        zzo = zzv + zzA4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzO(obj, i3)) {
                        int zzc3 = zzeo.zzc(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzv(zzc3);
                        zzo = zzv + zzA4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzO(obj, i3)) {
                        zzA2 = zzbe.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzO(obj, i3)) {
                        zzA = zzbe.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzO(obj, i3)) {
                        int zzc4 = zzeo.zzc(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzA((zzc4 >> 31) ^ (zzc4 + zzc4));
                        zzo = zzv + zzA4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzO(obj, i3)) {
                        long zzd4 = zzeo.zzd(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzB((zzd4 >> 63) ^ (zzd4 + zzd4));
                        zzo = zzv + zzA4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zzO(obj, i3)) {
                        zzo = zzbe.zzu(i4, (zzdc) zzeo.zzf(obj, j), zzE(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzo = zzdp.zzh(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 19:
                    zzo = zzdp.zzf(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 20:
                    zzo = zzdp.zzm(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 21:
                    zzo = zzdp.zzx(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 22:
                    zzo = zzdp.zzk(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case ConnectionResult.API_DISABLED /* 23 */:
                    zzo = zzdp.zzh(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    zzo = zzdp.zzf(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case Constants.MAX_TREE_DEPTH /* 25 */:
                    zzo = zzdp.zza(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 26:
                    zzo = zzdp.zzu(i4, (List) zzeo.zzf(obj, j));
                    i2 += zzo;
                    break;
                case 27:
                    zzo = zzdp.zzp(i4, (List) zzeo.zzf(obj, j), zzE(i3));
                    i2 += zzo;
                    break;
                case 28:
                    zzo = zzdp.zzc(i4, (List) zzeo.zzf(obj, j));
                    i2 += zzo;
                    break;
                case 29:
                    zzo = zzdp.zzv(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 30:
                    zzo = zzdp.zzd(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 31:
                    zzo = zzdp.zzf(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 32:
                    zzo = zzdp.zzh(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 33:
                    zzo = zzdp.zzq(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 34:
                    zzo = zzdp.zzs(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 35:
                    zzi = zzdp.zzi((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzi);
                        i = zzA8 + zzz + zzi;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    zzi = zzdp.zzg((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzi);
                        i = zzA8 + zzz + zzi;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    zzi = zzdp.zzn((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzi);
                        i = zzA8 + zzz + zzi;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    zzi = zzdp.zzy((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzi);
                        i = zzA8 + zzz + zzi;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    zzi = zzdp.zzl((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzi);
                        i = zzA8 + zzz + zzi;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    zzi = zzdp.zzi((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzi);
                        i = zzA8 + zzz + zzi;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    zzi = zzdp.zzg((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzi);
                        i = zzA8 + zzz + zzi;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    zzi = zzdp.zzb((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzi);
                        i = zzA8 + zzz + zzi;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    zzi = zzdp.zzw((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzi);
                        i = zzA8 + zzz + zzi;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    zzi = zzdp.zze((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzi);
                        i = zzA8 + zzz + zzi;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    zzi = zzdp.zzg((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzi);
                        i = zzA8 + zzz + zzi;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    zzi = zzdp.zzi((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzi);
                        i = zzA8 + zzz + zzi;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    zzi = zzdp.zzr((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzi);
                        i = zzA8 + zzz + zzi;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    zzi = zzdp.zzt((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzi);
                        i = zzA8 + zzz + zzi;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    zzo = zzdp.zzj(i4, (List) zzeo.zzf(obj, j), zzE(i3));
                    i2 += zzo;
                    break;
                case 50:
                    zzcx.zza(i4, zzeo.zzf(obj, j), zzF(i3));
                    break;
                case 51:
                    if (zzR(obj, i4, i3)) {
                        zzA = zzbe.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzR(obj, i4, i3)) {
                        zzA2 = zzbe.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzR(obj, i4, i3)) {
                        long zzC = zzC(obj, j);
                        zzA3 = zzbe.zzA(i4 << 3);
                        zzB = zzbe.zzB(zzC);
                        zzo = zzB + zzA3;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzR(obj, i4, i3)) {
                        long zzC2 = zzC(obj, j);
                        zzA3 = zzbe.zzA(i4 << 3);
                        zzB = zzbe.zzB(zzC2);
                        zzo = zzB + zzA3;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzR(obj, i4, i3)) {
                        int zzr = zzr(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzv(zzr);
                        zzo = zzv + zzA4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzR(obj, i4, i3)) {
                        zzA = zzbe.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzR(obj, i4, i3)) {
                        zzA2 = zzbe.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzR(obj, i4, i3)) {
                        zzA5 = zzbe.zzA(i4 << 3);
                        zzo = zzA5 + 1;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzR(obj, i4, i3)) {
                        Object zzf2 = zzeo.zzf(obj, j);
                        if (zzf2 instanceof zzaw) {
                            zzA6 = zzbe.zzA(i4 << 3);
                            zzd = ((zzaw) zzf2).zzd();
                            zzA7 = zzbe.zzA(zzd);
                            i = zzA7 + zzd + zzA6;
                            i2 += i;
                            break;
                        } else {
                            zzA4 = zzbe.zzA(i4 << 3);
                            zzv = zzbe.zzy((String) zzf2);
                            zzo = zzv + zzA4;
                            i2 += zzo;
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (zzR(obj, i4, i3)) {
                        zzo = zzdp.zzo(i4, zzeo.zzf(obj, j), zzE(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzR(obj, i4, i3)) {
                        zzaw zzawVar2 = (zzaw) zzeo.zzf(obj, j);
                        zzA6 = zzbe.zzA(i4 << 3);
                        zzd = zzawVar2.zzd();
                        zzA7 = zzbe.zzA(zzd);
                        i = zzA7 + zzd + zzA6;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzR(obj, i4, i3)) {
                        int zzr2 = zzr(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzA(zzr2);
                        zzo = zzv + zzA4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzR(obj, i4, i3)) {
                        int zzr3 = zzr(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzv(zzr3);
                        zzo = zzv + zzA4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzR(obj, i4, i3)) {
                        zzA2 = zzbe.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzR(obj, i4, i3)) {
                        zzA = zzbe.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzR(obj, i4, i3)) {
                        int zzr4 = zzr(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzA((zzr4 >> 31) ^ (zzr4 + zzr4));
                        zzo = zzv + zzA4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzR(obj, i4, i3)) {
                        long zzC3 = zzC(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzB((zzC3 >> 63) ^ (zzC3 + zzC3));
                        zzo = zzv + zzA4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzR(obj, i4, i3)) {
                        zzo = zzbe.zzu(i4, (zzdc) zzeo.zzf(obj, j), zzE(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
            }
        }
        zzee zzeeVar = this.zzn;
        return i2 + zzeeVar.zza(zzeeVar.zzc(obj));
    }

    private static int zzr(Object obj, long j) {
        return ((Integer) zzeo.zzf(obj, j)).intValue();
    }

    private final int zzs(Object obj, byte[] bArr, int i, int i2, int i3, long j, zzaj zzajVar) {
        Unsafe unsafe = zzb;
        Object zzF = zzF(i3);
        Object object = unsafe.getObject(obj, j);
        if (!((zzcw) object).zze()) {
            zzcw zzb2 = zzcw.zza().zzb();
            zzcx.zzb(zzb2, object);
            unsafe.putObject(obj, j, zzb2);
        }
        throw null;
    }

    private final int zzt(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzaj zzajVar) {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(zzak.zzn(bArr, i))));
                    unsafe.putInt(obj, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(zzak.zzb(bArr, i))));
                    unsafe.putInt(obj, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int zzm = zzak.zzm(bArr, i, zzajVar);
                    unsafe.putObject(obj, j, Long.valueOf(zzajVar.zzb));
                    unsafe.putInt(obj, j2, i4);
                    return zzm;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int zzj = zzak.zzj(bArr, i, zzajVar);
                    unsafe.putObject(obj, j, Integer.valueOf(zzajVar.zza));
                    unsafe.putInt(obj, j2, i4);
                    return zzj;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Long.valueOf(zzak.zzn(bArr, i)));
                    unsafe.putInt(obj, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Integer.valueOf(zzak.zzb(bArr, i)));
                    unsafe.putInt(obj, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int zzm2 = zzak.zzm(bArr, i, zzajVar);
                    unsafe.putObject(obj, j, Boolean.valueOf(zzajVar.zzb != 0));
                    unsafe.putInt(obj, j2, i4);
                    return zzm2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int zzj2 = zzak.zzj(bArr, i, zzajVar);
                    int i9 = zzajVar.zza;
                    if (i9 == 0) {
                        unsafe.putObject(obj, j, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    } else {
                        if ((i6 & 536870912) != 0 && !zzet.zzf(bArr, zzj2, zzj2 + i9)) {
                            throw zzcf.zzc();
                        }
                        unsafe.putObject(obj, j, new String(bArr, zzj2, i9, zzcd.zzb));
                        zzj2 += i9;
                    }
                    unsafe.putInt(obj, j2, i4);
                    return zzj2;
                }
                break;
            case 60:
                if (i5 == 2) {
                    int zzd = zzak.zzd(zzE(i8), bArr, i, i2, zzajVar);
                    Object object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    if (object == null) {
                        unsafe.putObject(obj, j, zzajVar.zzc);
                    } else {
                        unsafe.putObject(obj, j, zzcd.zzg(object, zzajVar.zzc));
                    }
                    unsafe.putInt(obj, j2, i4);
                    return zzd;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int zza2 = zzak.zza(bArr, i, zzajVar);
                    unsafe.putObject(obj, j, zzajVar.zzc);
                    unsafe.putInt(obj, j2, i4);
                    return zza2;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int zzj3 = zzak.zzj(bArr, i, zzajVar);
                    int i10 = zzajVar.zza;
                    zzbz zzD = zzD(i8);
                    if (zzD == null || zzD.zza(i10)) {
                        unsafe.putObject(obj, j, Integer.valueOf(i10));
                        unsafe.putInt(obj, j2, i4);
                    } else {
                        zzd(obj).zzh(i3, Long.valueOf(i10));
                    }
                    return zzj3;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int zzj4 = zzak.zzj(bArr, i, zzajVar);
                    unsafe.putObject(obj, j, Integer.valueOf(zzba.zzb(zzajVar.zza)));
                    unsafe.putInt(obj, j2, i4);
                    return zzj4;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int zzm3 = zzak.zzm(bArr, i, zzajVar);
                    unsafe.putObject(obj, j, Long.valueOf(zzba.zzc(zzajVar.zzb)));
                    unsafe.putInt(obj, j2, i4);
                    return zzm3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    int zzc = zzak.zzc(zzE(i8), bArr, i, i2, (i3 & (-8)) | 4, zzajVar);
                    Object object2 = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(obj, j, zzajVar.zzc);
                    } else {
                        unsafe.putObject(obj, j, zzcd.zzg(object2, zzajVar.zzc));
                    }
                    unsafe.putInt(obj, j2, i4);
                    return zzc;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:65:0x0081. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v21, types: [int] */
    private final int zzu(Object obj, byte[] bArr, int i, int i2, zzaj zzajVar) {
        byte b;
        int i3;
        int i4;
        int i5;
        Unsafe unsafe;
        int i6;
        int i7;
        int i8;
        int zzm;
        int zzd;
        int i9;
        int i10;
        int i11;
        zzdf<T> zzdfVar = this;
        Object obj2 = obj;
        byte[] bArr2 = bArr;
        int i12 = i2;
        zzaj zzajVar2 = zzajVar;
        Unsafe unsafe2 = zzb;
        int i13 = 1048575;
        int i14 = -1;
        int i15 = i;
        int i16 = -1;
        int i17 = 0;
        int i18 = 0;
        int i19 = 1048575;
        while (i15 < i12) {
            int i20 = i15 + 1;
            byte b2 = bArr2[i15];
            if (b2 < 0) {
                i3 = zzak.zzk(b2, bArr2, i20, zzajVar2);
                b = zzajVar2.zza;
            } else {
                b = b2;
                i3 = i20;
            }
            int i21 = b >>> 3;
            int i22 = b & 7;
            int zzx = i21 > i16 ? zzdfVar.zzx(i21, i17 / 3) : zzdfVar.zzw(i21);
            if (zzx == i14) {
                i4 = i3;
                i5 = i21;
                unsafe = unsafe2;
                i6 = 0;
            } else {
                int[] iArr = zzdfVar.zzc;
                int i23 = iArr[zzx + 1];
                int zzA = zzA(i23);
                long j = i23 & i13;
                if (zzA <= 17) {
                    int i24 = iArr[zzx + 2];
                    int i25 = 1 << (i24 >>> 20);
                    int i26 = i24 & 1048575;
                    if (i26 != i19) {
                        if (i19 != 1048575) {
                            unsafe2.putInt(obj2, i19, i18);
                        }
                        if (i26 != 1048575) {
                            i18 = unsafe2.getInt(obj2, i26);
                        }
                        i19 = i26;
                    }
                    switch (zzA) {
                        case 0:
                            zzajVar2 = zzajVar;
                            i7 = zzx;
                            i8 = i3;
                            i5 = i21;
                            if (i22 == 1) {
                                zzeo.zzo(obj2, j, Double.longBitsToDouble(zzak.zzn(bArr2, i8)));
                                i15 = i8 + 8;
                                i18 |= i25;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 1:
                            zzajVar2 = zzajVar;
                            i7 = zzx;
                            i8 = i3;
                            i5 = i21;
                            if (i22 == 5) {
                                zzeo.zzp(obj2, j, Float.intBitsToFloat(zzak.zzb(bArr2, i8)));
                                i15 = i8 + 4;
                                i18 |= i25;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 2:
                        case 3:
                            zzajVar2 = zzajVar;
                            i7 = zzx;
                            i8 = i3;
                            i5 = i21;
                            if (i22 == 0) {
                                zzm = zzak.zzm(bArr2, i8, zzajVar2);
                                unsafe2.putLong(obj, j, zzajVar2.zzb);
                                i18 |= i25;
                                i15 = zzm;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 4:
                        case 11:
                            zzajVar2 = zzajVar;
                            i7 = zzx;
                            i8 = i3;
                            i5 = i21;
                            if (i22 == 0) {
                                i15 = zzak.zzj(bArr2, i8, zzajVar2);
                                unsafe2.putInt(obj2, j, zzajVar2.zza);
                                i18 |= i25;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 5:
                        case 14:
                            zzajVar2 = zzajVar;
                            i7 = zzx;
                            i5 = i21;
                            if (i22 == 1) {
                                i8 = i3;
                                unsafe2.putLong(obj, j, zzak.zzn(bArr2, i3));
                                i15 = i8 + 8;
                                i18 |= i25;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 6:
                        case 13:
                            zzajVar2 = zzajVar;
                            i7 = zzx;
                            i5 = i21;
                            if (i22 == 5) {
                                unsafe2.putInt(obj2, j, zzak.zzb(bArr2, i3));
                                i15 = i3 + 4;
                                i18 |= i25;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 7:
                            zzajVar2 = zzajVar;
                            i7 = zzx;
                            i5 = i21;
                            if (i22 == 0) {
                                i15 = zzak.zzm(bArr2, i3, zzajVar2);
                                zzeo.zzm(obj2, j, zzajVar2.zzb != 0);
                                i18 |= i25;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 8:
                            zzajVar2 = zzajVar;
                            i7 = zzx;
                            i5 = i21;
                            if (i22 == 2) {
                                i15 = (536870912 & i23) == 0 ? zzak.zzg(bArr2, i3, zzajVar2) : zzak.zzh(bArr2, i3, zzajVar2);
                                unsafe2.putObject(obj2, j, zzajVar2.zzc);
                                i18 |= i25;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 9:
                            zzajVar2 = zzajVar;
                            i7 = zzx;
                            i5 = i21;
                            if (i22 == 2) {
                                zzd = zzak.zzd(zzdfVar.zzE(i7), bArr2, i3, i12, zzajVar2);
                                Object object = unsafe2.getObject(obj2, j);
                                if (object == null) {
                                    unsafe2.putObject(obj2, j, zzajVar2.zzc);
                                } else {
                                    unsafe2.putObject(obj2, j, zzcd.zzg(object, zzajVar2.zzc));
                                }
                                i18 |= i25;
                                i15 = zzd;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 10:
                            zzajVar2 = zzajVar;
                            i7 = zzx;
                            i5 = i21;
                            if (i22 == 2) {
                                zzd = zzak.zza(bArr2, i3, zzajVar2);
                                unsafe2.putObject(obj2, j, zzajVar2.zzc);
                                i18 |= i25;
                                i15 = zzd;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 12:
                            zzajVar2 = zzajVar;
                            i7 = zzx;
                            i5 = i21;
                            if (i22 == 0) {
                                zzd = zzak.zzj(bArr2, i3, zzajVar2);
                                unsafe2.putInt(obj2, j, zzajVar2.zza);
                                i18 |= i25;
                                i15 = zzd;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 15:
                            zzajVar2 = zzajVar;
                            i7 = zzx;
                            i5 = i21;
                            if (i22 == 0) {
                                zzd = zzak.zzj(bArr2, i3, zzajVar2);
                                unsafe2.putInt(obj2, j, zzba.zzb(zzajVar2.zza));
                                i18 |= i25;
                                i15 = zzd;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 16:
                            if (i22 != 0) {
                                i5 = i21;
                                i7 = zzx;
                                i8 = i3;
                                i4 = i8;
                                unsafe = unsafe2;
                                i6 = i7;
                                break;
                            } else {
                                zzajVar2 = zzajVar;
                                zzm = zzak.zzm(bArr2, i3, zzajVar2);
                                i7 = zzx;
                                i5 = i21;
                                unsafe2.putLong(obj, j, zzba.zzc(zzajVar2.zzb));
                                i18 |= i25;
                                i15 = zzm;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                        default:
                            i5 = i21;
                            i7 = zzx;
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                    }
                } else {
                    zzajVar2 = zzajVar;
                    i7 = zzx;
                    int i27 = i3;
                    i5 = i21;
                    if (zzA == 27) {
                        if (i22 == 2) {
                            zzcc zzccVar = (zzcc) unsafe2.getObject(obj2, j);
                            if (!zzccVar.zzc()) {
                                int size = zzccVar.size();
                                zzccVar = zzccVar.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj2, j, zzccVar);
                            }
                            i15 = zzak.zze(zzdfVar.zzE(i7), b, bArr, i27, i2, zzccVar, zzajVar);
                            i18 = i18;
                            i17 = i7;
                            i16 = i5;
                        } else {
                            i9 = i27;
                            i10 = i18;
                            i11 = i19;
                            unsafe = unsafe2;
                            i6 = i7;
                        }
                    } else if (zzA <= 49) {
                        i10 = i18;
                        i11 = i19;
                        unsafe = unsafe2;
                        i6 = i7;
                        i15 = zzv(obj, bArr, i27, i2, b, i5, i22, i7, i23, zzA, j, zzajVar);
                        if (i15 != i27) {
                            obj2 = obj;
                            bArr2 = bArr;
                            i12 = i2;
                            zzajVar2 = zzajVar;
                            i19 = i11;
                            i16 = i5;
                            i18 = i10;
                            i17 = i6;
                            unsafe2 = unsafe;
                            i14 = -1;
                            i13 = 1048575;
                            zzdfVar = this;
                        } else {
                            i4 = i15;
                            i19 = i11;
                            i18 = i10;
                        }
                    } else {
                        i9 = i27;
                        i10 = i18;
                        i11 = i19;
                        unsafe = unsafe2;
                        i6 = i7;
                        if (zzA != 50) {
                            i15 = zzt(obj, bArr, i9, i2, b, i5, i22, i23, zzA, j, i6, zzajVar);
                            if (i15 != i9) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i12 = i2;
                                zzajVar2 = zzajVar;
                                i19 = i11;
                                i16 = i5;
                                i18 = i10;
                                i17 = i6;
                                unsafe2 = unsafe;
                                i14 = -1;
                                i13 = 1048575;
                                zzdfVar = this;
                            } else {
                                i4 = i15;
                                i19 = i11;
                                i18 = i10;
                            }
                        } else if (i22 == 2) {
                            i15 = zzs(obj, bArr, i9, i2, i6, j, zzajVar);
                            if (i15 != i9) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i12 = i2;
                                zzajVar2 = zzajVar;
                                i19 = i11;
                                i16 = i5;
                                i18 = i10;
                                i17 = i6;
                                unsafe2 = unsafe;
                                i14 = -1;
                                i13 = 1048575;
                                zzdfVar = this;
                            } else {
                                i4 = i15;
                                i19 = i11;
                                i18 = i10;
                            }
                        }
                    }
                    i4 = i9;
                    i19 = i11;
                    i18 = i10;
                }
                i14 = -1;
                i13 = 1048575;
            }
            i15 = zzak.zzi(b, bArr, i4, i2, zzd(obj), zzajVar);
            zzdfVar = this;
            obj2 = obj;
            bArr2 = bArr;
            i12 = i2;
            zzajVar2 = zzajVar;
            i16 = i5;
            i17 = i6;
            unsafe2 = unsafe;
            i14 = -1;
            i13 = 1048575;
        }
        int i28 = i18;
        int i29 = i19;
        Unsafe unsafe3 = unsafe2;
        if (i29 != 1048575) {
            unsafe3.putInt(obj, i29, i28);
        }
        if (i15 == i2) {
            return i15;
        }
        throw zzcf.zze();
    }

    private final int zzv(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzaj zzajVar) {
        int i8;
        int i9;
        int i10;
        int i11;
        int zzj;
        int i12 = i;
        Unsafe unsafe = zzb;
        zzcc zzccVar = (zzcc) unsafe.getObject(obj, j2);
        if (!zzccVar.zzc()) {
            int size = zzccVar.size();
            zzccVar = zzccVar.zzd(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j2, zzccVar);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    zzbg zzbgVar = (zzbg) zzccVar;
                    int zzj2 = zzak.zzj(bArr, i12, zzajVar);
                    int i13 = zzajVar.zza + zzj2;
                    while (zzj2 < i13) {
                        zzbgVar.zze(Double.longBitsToDouble(zzak.zzn(bArr, zzj2)));
                        zzj2 += 8;
                    }
                    if (zzj2 == i13) {
                        return zzj2;
                    }
                    throw zzcf.zzg();
                }
                if (i5 == 1) {
                    zzbg zzbgVar2 = (zzbg) zzccVar;
                    zzbgVar2.zze(Double.longBitsToDouble(zzak.zzn(bArr, i)));
                    while (true) {
                        i8 = i12 + 8;
                        if (i8 < i2) {
                            i12 = zzak.zzj(bArr, i8, zzajVar);
                            if (i3 == zzajVar.zza) {
                                zzbgVar2.zze(Double.longBitsToDouble(zzak.zzn(bArr, i12)));
                            }
                        }
                    }
                    return i8;
                }
                return i12;
            case 19:
            case 36:
                if (i5 == 2) {
                    zzbq zzbqVar = (zzbq) zzccVar;
                    int zzj3 = zzak.zzj(bArr, i12, zzajVar);
                    int i14 = zzajVar.zza + zzj3;
                    while (zzj3 < i14) {
                        zzbqVar.zzg(Float.intBitsToFloat(zzak.zzb(bArr, zzj3)));
                        zzj3 += 4;
                    }
                    if (zzj3 == i14) {
                        return zzj3;
                    }
                    throw zzcf.zzg();
                }
                if (i5 == 5) {
                    zzbq zzbqVar2 = (zzbq) zzccVar;
                    zzbqVar2.zzg(Float.intBitsToFloat(zzak.zzb(bArr, i)));
                    while (true) {
                        i9 = i12 + 4;
                        if (i9 < i2) {
                            i12 = zzak.zzj(bArr, i9, zzajVar);
                            if (i3 == zzajVar.zza) {
                                zzbqVar2.zzg(Float.intBitsToFloat(zzak.zzb(bArr, i12)));
                            }
                        }
                    }
                    return i9;
                }
                return i12;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    zzcr zzcrVar = (zzcr) zzccVar;
                    int zzj4 = zzak.zzj(bArr, i12, zzajVar);
                    int i15 = zzajVar.zza + zzj4;
                    while (zzj4 < i15) {
                        zzj4 = zzak.zzm(bArr, zzj4, zzajVar);
                        zzcrVar.zzg(zzajVar.zzb);
                    }
                    if (zzj4 == i15) {
                        return zzj4;
                    }
                    throw zzcf.zzg();
                }
                if (i5 == 0) {
                    zzcr zzcrVar2 = (zzcr) zzccVar;
                    int zzm = zzak.zzm(bArr, i12, zzajVar);
                    zzcrVar2.zzg(zzajVar.zzb);
                    while (zzm < i2) {
                        int zzj5 = zzak.zzj(bArr, zzm, zzajVar);
                        if (i3 != zzajVar.zza) {
                            return zzm;
                        }
                        zzm = zzak.zzm(bArr, zzj5, zzajVar);
                        zzcrVar2.zzg(zzajVar.zzb);
                    }
                    return zzm;
                }
                return i12;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return zzak.zzf(bArr, i12, zzccVar, zzajVar);
                }
                if (i5 == 0) {
                    return zzak.zzl(i3, bArr, i, i2, zzccVar, zzajVar);
                }
                return i12;
            case ConnectionResult.API_DISABLED /* 23 */:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    zzcr zzcrVar3 = (zzcr) zzccVar;
                    int zzj6 = zzak.zzj(bArr, i12, zzajVar);
                    int i16 = zzajVar.zza + zzj6;
                    while (zzj6 < i16) {
                        zzcrVar3.zzg(zzak.zzn(bArr, zzj6));
                        zzj6 += 8;
                    }
                    if (zzj6 == i16) {
                        return zzj6;
                    }
                    throw zzcf.zzg();
                }
                if (i5 == 1) {
                    zzcr zzcrVar4 = (zzcr) zzccVar;
                    zzcrVar4.zzg(zzak.zzn(bArr, i));
                    while (true) {
                        i10 = i12 + 8;
                        if (i10 < i2) {
                            i12 = zzak.zzj(bArr, i10, zzajVar);
                            if (i3 == zzajVar.zza) {
                                zzcrVar4.zzg(zzak.zzn(bArr, i12));
                            }
                        }
                    }
                    return i10;
                }
                return i12;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    zzbw zzbwVar = (zzbw) zzccVar;
                    int zzj7 = zzak.zzj(bArr, i12, zzajVar);
                    int i17 = zzajVar.zza + zzj7;
                    while (zzj7 < i17) {
                        zzbwVar.zzf(zzak.zzb(bArr, zzj7));
                        zzj7 += 4;
                    }
                    if (zzj7 == i17) {
                        return zzj7;
                    }
                    throw zzcf.zzg();
                }
                if (i5 == 5) {
                    zzbw zzbwVar2 = (zzbw) zzccVar;
                    zzbwVar2.zzf(zzak.zzb(bArr, i));
                    while (true) {
                        i11 = i12 + 4;
                        if (i11 < i2) {
                            i12 = zzak.zzj(bArr, i11, zzajVar);
                            if (i3 == zzajVar.zza) {
                                zzbwVar2.zzf(zzak.zzb(bArr, i12));
                            }
                        }
                    }
                    return i11;
                }
                return i12;
            case Constants.MAX_TREE_DEPTH /* 25 */:
            case 42:
                if (i5 == 2) {
                    zzal zzalVar = (zzal) zzccVar;
                    zzj = zzak.zzj(bArr, i12, zzajVar);
                    int i18 = zzajVar.zza + zzj;
                    while (zzj < i18) {
                        zzj = zzak.zzm(bArr, zzj, zzajVar);
                        zzalVar.zze(zzajVar.zzb != 0);
                    }
                    if (zzj != i18) {
                        throw zzcf.zzg();
                    }
                    return zzj;
                }
                if (i5 == 0) {
                    zzal zzalVar2 = (zzal) zzccVar;
                    int zzm2 = zzak.zzm(bArr, i12, zzajVar);
                    zzalVar2.zze(zzajVar.zzb != 0);
                    while (zzm2 < i2) {
                        int zzj8 = zzak.zzj(bArr, zzm2, zzajVar);
                        if (i3 != zzajVar.zza) {
                            return zzm2;
                        }
                        zzm2 = zzak.zzm(bArr, zzj8, zzajVar);
                        zzalVar2.zze(zzajVar.zzb != 0);
                    }
                    return zzm2;
                }
                return i12;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        i12 = zzak.zzj(bArr, i12, zzajVar);
                        int i19 = zzajVar.zza;
                        if (i19 < 0) {
                            throw zzcf.zzd();
                        }
                        if (i19 == 0) {
                            zzccVar.add(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        } else {
                            zzccVar.add(new String(bArr, i12, i19, zzcd.zzb));
                            i12 += i19;
                        }
                        while (i12 < i2) {
                            int zzj9 = zzak.zzj(bArr, i12, zzajVar);
                            if (i3 == zzajVar.zza) {
                                i12 = zzak.zzj(bArr, zzj9, zzajVar);
                                int i20 = zzajVar.zza;
                                if (i20 < 0) {
                                    throw zzcf.zzd();
                                }
                                if (i20 == 0) {
                                    zzccVar.add(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                } else {
                                    zzccVar.add(new String(bArr, i12, i20, zzcd.zzb));
                                    i12 += i20;
                                }
                            }
                        }
                    } else {
                        i12 = zzak.zzj(bArr, i12, zzajVar);
                        int i21 = zzajVar.zza;
                        if (i21 < 0) {
                            throw zzcf.zzd();
                        }
                        if (i21 == 0) {
                            zzccVar.add(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        } else {
                            int i22 = i12 + i21;
                            if (!zzet.zzf(bArr, i12, i22)) {
                                throw zzcf.zzc();
                            }
                            zzccVar.add(new String(bArr, i12, i21, zzcd.zzb));
                            i12 = i22;
                        }
                        while (i12 < i2) {
                            int zzj10 = zzak.zzj(bArr, i12, zzajVar);
                            if (i3 == zzajVar.zza) {
                                i12 = zzak.zzj(bArr, zzj10, zzajVar);
                                int i23 = zzajVar.zza;
                                if (i23 < 0) {
                                    throw zzcf.zzd();
                                }
                                if (i23 == 0) {
                                    zzccVar.add(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                } else {
                                    int i24 = i12 + i23;
                                    if (!zzet.zzf(bArr, i12, i24)) {
                                        throw zzcf.zzc();
                                    }
                                    zzccVar.add(new String(bArr, i12, i23, zzcd.zzb));
                                    i12 = i24;
                                }
                            }
                        }
                    }
                }
                return i12;
            case 27:
                if (i5 == 2) {
                    return zzak.zze(zzE(i6), i3, bArr, i, i2, zzccVar, zzajVar);
                }
                return i12;
            case 28:
                if (i5 == 2) {
                    int zzj11 = zzak.zzj(bArr, i12, zzajVar);
                    int i25 = zzajVar.zza;
                    if (i25 < 0) {
                        throw zzcf.zzd();
                    }
                    if (i25 > bArr.length - zzj11) {
                        throw zzcf.zzg();
                    }
                    if (i25 == 0) {
                        zzccVar.add(zzaw.zzb);
                    } else {
                        zzccVar.add(zzaw.zzn(bArr, zzj11, i25));
                        zzj11 += i25;
                    }
                    while (zzj11 < i2) {
                        int zzj12 = zzak.zzj(bArr, zzj11, zzajVar);
                        if (i3 != zzajVar.zza) {
                            return zzj11;
                        }
                        zzj11 = zzak.zzj(bArr, zzj12, zzajVar);
                        int i26 = zzajVar.zza;
                        if (i26 < 0) {
                            throw zzcf.zzd();
                        }
                        if (i26 > bArr.length - zzj11) {
                            throw zzcf.zzg();
                        }
                        if (i26 == 0) {
                            zzccVar.add(zzaw.zzb);
                        } else {
                            zzccVar.add(zzaw.zzn(bArr, zzj11, i26));
                            zzj11 += i26;
                        }
                    }
                    return zzj11;
                }
                return i12;
            case 30:
            case 44:
                if (i5 != 2) {
                    if (i5 == 0) {
                        zzj = zzak.zzl(i3, bArr, i, i2, zzccVar, zzajVar);
                    }
                    return i12;
                }
                zzj = zzak.zzf(bArr, i12, zzccVar, zzajVar);
                zzbv zzbvVar = (zzbv) obj;
                zzef zzefVar = zzbvVar.zzc;
                if (zzefVar == zzef.zzc()) {
                    zzefVar = null;
                }
                Object zzC = zzdp.zzC(i4, zzccVar, zzD(i6), zzefVar, this.zzn);
                if (zzC != null) {
                    zzbvVar.zzc = (zzef) zzC;
                    return zzj;
                }
                return zzj;
            case 33:
            case 47:
                if (i5 == 2) {
                    zzbw zzbwVar3 = (zzbw) zzccVar;
                    int zzj13 = zzak.zzj(bArr, i12, zzajVar);
                    int i27 = zzajVar.zza + zzj13;
                    while (zzj13 < i27) {
                        zzj13 = zzak.zzj(bArr, zzj13, zzajVar);
                        zzbwVar3.zzf(zzba.zzb(zzajVar.zza));
                    }
                    if (zzj13 == i27) {
                        return zzj13;
                    }
                    throw zzcf.zzg();
                }
                if (i5 == 0) {
                    zzbw zzbwVar4 = (zzbw) zzccVar;
                    int zzj14 = zzak.zzj(bArr, i12, zzajVar);
                    zzbwVar4.zzf(zzba.zzb(zzajVar.zza));
                    while (zzj14 < i2) {
                        int zzj15 = zzak.zzj(bArr, zzj14, zzajVar);
                        if (i3 != zzajVar.zza) {
                            return zzj14;
                        }
                        zzj14 = zzak.zzj(bArr, zzj15, zzajVar);
                        zzbwVar4.zzf(zzba.zzb(zzajVar.zza));
                    }
                    return zzj14;
                }
                return i12;
            case 34:
            case 48:
                if (i5 == 2) {
                    zzcr zzcrVar5 = (zzcr) zzccVar;
                    int zzj16 = zzak.zzj(bArr, i12, zzajVar);
                    int i28 = zzajVar.zza + zzj16;
                    while (zzj16 < i28) {
                        zzj16 = zzak.zzm(bArr, zzj16, zzajVar);
                        zzcrVar5.zzg(zzba.zzc(zzajVar.zzb));
                    }
                    if (zzj16 == i28) {
                        return zzj16;
                    }
                    throw zzcf.zzg();
                }
                if (i5 == 0) {
                    zzcr zzcrVar6 = (zzcr) zzccVar;
                    int zzm3 = zzak.zzm(bArr, i12, zzajVar);
                    zzcrVar6.zzg(zzba.zzc(zzajVar.zzb));
                    while (zzm3 < i2) {
                        int zzj17 = zzak.zzj(bArr, zzm3, zzajVar);
                        if (i3 != zzajVar.zza) {
                            return zzm3;
                        }
                        zzm3 = zzak.zzm(bArr, zzj17, zzajVar);
                        zzcrVar6.zzg(zzba.zzc(zzajVar.zzb));
                    }
                    return zzm3;
                }
                return i12;
            default:
                if (i5 == 3) {
                    zzdn zzE = zzE(i6);
                    int i29 = (i3 & (-8)) | 4;
                    int zzc = zzak.zzc(zzE, bArr, i, i2, i29, zzajVar);
                    zzccVar.add(zzajVar.zzc);
                    while (zzc < i2) {
                        int zzj18 = zzak.zzj(bArr, zzc, zzajVar);
                        if (i3 != zzajVar.zza) {
                            return zzc;
                        }
                        zzc = zzak.zzc(zzE, bArr, zzj18, i2, i29, zzajVar);
                        zzccVar.add(zzajVar.zzc);
                    }
                    return zzc;
                }
                return i12;
        }
    }

    private final int zzw(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzz(i, 0);
    }

    private final int zzx(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzz(i, i2);
    }

    private final int zzy(int i) {
        return this.zzc[i + 2];
    }

    private final int zzz(int i, int i2) {
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

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final int zza(Object obj) {
        return this.zzi ? zzq(obj) : zzp(obj);
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final int zzb(Object obj) {
        int i;
        int zzc;
        int i2;
        int zzc2;
        int length = this.zzc.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int zzB = zzB(i4);
            int i5 = this.zzc[i4];
            long j = 1048575 & zzB;
            int i6 = 37;
            switch (zzA(zzB)) {
                case 0:
                    i = i3 * 53;
                    zzc = zzcd.zzc(Double.doubleToLongBits(zzeo.zza(obj, j)));
                    i3 = zzc + i;
                    break;
                case 1:
                    i = i3 * 53;
                    zzc = Float.floatToIntBits(zzeo.zzb(obj, j));
                    i3 = zzc + i;
                    break;
                case 2:
                    i = i3 * 53;
                    zzc = zzcd.zzc(zzeo.zzd(obj, j));
                    i3 = zzc + i;
                    break;
                case 3:
                    i = i3 * 53;
                    zzc = zzcd.zzc(zzeo.zzd(obj, j));
                    i3 = zzc + i;
                    break;
                case 4:
                    i2 = i3 * 53;
                    zzc2 = zzeo.zzc(obj, j);
                    i3 = i2 + zzc2;
                    break;
                case 5:
                    i = i3 * 53;
                    zzc = zzcd.zzc(zzeo.zzd(obj, j));
                    i3 = zzc + i;
                    break;
                case 6:
                    i2 = i3 * 53;
                    zzc2 = zzeo.zzc(obj, j);
                    i3 = i2 + zzc2;
                    break;
                case 7:
                    i = i3 * 53;
                    zzc = zzcd.zza(zzeo.zzw(obj, j));
                    i3 = zzc + i;
                    break;
                case 8:
                    i = i3 * 53;
                    zzc = ((String) zzeo.zzf(obj, j)).hashCode();
                    i3 = zzc + i;
                    break;
                case 9:
                    Object zzf = zzeo.zzf(obj, j);
                    if (zzf != null) {
                        i6 = zzf.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 10:
                    i = i3 * 53;
                    zzc = zzeo.zzf(obj, j).hashCode();
                    i3 = zzc + i;
                    break;
                case 11:
                    i2 = i3 * 53;
                    zzc2 = zzeo.zzc(obj, j);
                    i3 = i2 + zzc2;
                    break;
                case 12:
                    i2 = i3 * 53;
                    zzc2 = zzeo.zzc(obj, j);
                    i3 = i2 + zzc2;
                    break;
                case 13:
                    i2 = i3 * 53;
                    zzc2 = zzeo.zzc(obj, j);
                    i3 = i2 + zzc2;
                    break;
                case 14:
                    i = i3 * 53;
                    zzc = zzcd.zzc(zzeo.zzd(obj, j));
                    i3 = zzc + i;
                    break;
                case 15:
                    i2 = i3 * 53;
                    zzc2 = zzeo.zzc(obj, j);
                    i3 = i2 + zzc2;
                    break;
                case 16:
                    i = i3 * 53;
                    zzc = zzcd.zzc(zzeo.zzd(obj, j));
                    i3 = zzc + i;
                    break;
                case 17:
                    Object zzf2 = zzeo.zzf(obj, j);
                    if (zzf2 != null) {
                        i6 = zzf2.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
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
                    i = i3 * 53;
                    zzc = zzeo.zzf(obj, j).hashCode();
                    i3 = zzc + i;
                    break;
                case 50:
                    i = i3 * 53;
                    zzc = zzeo.zzf(obj, j).hashCode();
                    i3 = zzc + i;
                    break;
                case 51:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzcd.zzc(Double.doubleToLongBits(zzn(obj, j)));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = Float.floatToIntBits(zzo(obj, j));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzcd.zzc(zzC(obj, j));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzcd.zzc(zzC(obj, j));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzR(obj, i5, i4)) {
                        i2 = i3 * 53;
                        zzc2 = zzr(obj, j);
                        i3 = i2 + zzc2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzcd.zzc(zzC(obj, j));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzR(obj, i5, i4)) {
                        i2 = i3 * 53;
                        zzc2 = zzr(obj, j);
                        i3 = i2 + zzc2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzcd.zza(zzS(obj, j));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = ((String) zzeo.zzf(obj, j)).hashCode();
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzeo.zzf(obj, j).hashCode();
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzeo.zzf(obj, j).hashCode();
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzR(obj, i5, i4)) {
                        i2 = i3 * 53;
                        zzc2 = zzr(obj, j);
                        i3 = i2 + zzc2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzR(obj, i5, i4)) {
                        i2 = i3 * 53;
                        zzc2 = zzr(obj, j);
                        i3 = i2 + zzc2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzR(obj, i5, i4)) {
                        i2 = i3 * 53;
                        zzc2 = zzr(obj, j);
                        i3 = i2 + zzc2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzcd.zzc(zzC(obj, j));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzR(obj, i5, i4)) {
                        i2 = i3 * 53;
                        zzc2 = zzr(obj, j);
                        i3 = i2 + zzc2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzcd.zzc(zzC(obj, j));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzeo.zzf(obj, j).hashCode();
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = this.zzn.zzc(obj).hashCode() + (i3 * 53);
        if (!this.zzh) {
            return hashCode;
        }
        this.zzo.zza(obj);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:211:0x0368, code lost:
    
        if (r0 != r21) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x036a, code lost:
    
        r15 = r29;
        r14 = r30;
        r12 = r31;
        r13 = r33;
        r11 = r34;
        r9 = r35;
        r1 = r18;
        r3 = r19;
        r5 = r21;
        r2 = r24;
        r6 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0384, code lost:
    
        r2 = r0;
        r7 = r18;
        r6 = r25;
        r0 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x03b4, code lost:
    
        if (r0 != r15) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x03d9, code lost:
    
        if (r0 != r15) goto L117;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(java.lang.Object r30, byte[] r31, int r32, int r33, int r34, com.google.android.gms.internal.wearable.zzaj r35) {
        /*
            Method dump skipped, instructions count: 1224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.wearable.zzdf.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.wearable.zzaj):int");
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final Object zze() {
        return ((zzbv) this.zzg).zzG(4, null, null);
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final void zzf(Object obj) {
        int i;
        int i2 = this.zzk;
        while (true) {
            i = this.zzl;
            if (i2 >= i) {
                break;
            }
            long zzB = zzB(this.zzj[i2]) & 1048575;
            Object zzf = zzeo.zzf(obj, zzB);
            if (zzf != null) {
                ((zzcw) zzf).zzc();
                zzeo.zzs(obj, zzB, zzf);
            }
            i2++;
        }
        int length = this.zzj.length;
        while (i < length) {
            this.zzm.zza(obj, this.zzj[i]);
            i++;
        }
        this.zzn.zzg(obj);
        if (this.zzh) {
            this.zzo.zzb(obj);
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final void zzg(Object obj, Object obj2) {
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzB = zzB(i);
            long j = 1048575 & zzB;
            int i2 = this.zzc[i];
            switch (zzA(zzB)) {
                case 0:
                    if (zzO(obj2, i)) {
                        zzeo.zzo(obj, j, zzeo.zza(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzO(obj2, i)) {
                        zzeo.zzp(obj, j, zzeo.zzb(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzO(obj2, i)) {
                        zzeo.zzr(obj, j, zzeo.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzO(obj2, i)) {
                        zzeo.zzr(obj, j, zzeo.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzO(obj2, i)) {
                        zzeo.zzq(obj, j, zzeo.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzO(obj2, i)) {
                        zzeo.zzr(obj, j, zzeo.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzO(obj2, i)) {
                        zzeo.zzq(obj, j, zzeo.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzO(obj2, i)) {
                        zzeo.zzm(obj, j, zzeo.zzw(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzO(obj2, i)) {
                        zzeo.zzs(obj, j, zzeo.zzf(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzH(obj, obj2, i);
                    break;
                case 10:
                    if (zzO(obj2, i)) {
                        zzeo.zzs(obj, j, zzeo.zzf(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzO(obj2, i)) {
                        zzeo.zzq(obj, j, zzeo.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzO(obj2, i)) {
                        zzeo.zzq(obj, j, zzeo.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzO(obj2, i)) {
                        zzeo.zzq(obj, j, zzeo.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzO(obj2, i)) {
                        zzeo.zzr(obj, j, zzeo.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzO(obj2, i)) {
                        zzeo.zzq(obj, j, zzeo.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzO(obj2, i)) {
                        zzeo.zzr(obj, j, zzeo.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzH(obj, obj2, i);
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
                    this.zzm.zzb(obj, obj2, j);
                    break;
                case 50:
                    zzdp.zzaa(this.zzq, obj, obj2, j);
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
                    if (zzR(obj2, i2, i)) {
                        zzeo.zzs(obj, j, zzeo.zzf(obj2, j));
                        zzK(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzI(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzR(obj2, i2, i)) {
                        zzeo.zzs(obj, j, zzeo.zzf(obj2, j));
                        zzK(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzI(obj, obj2, i);
                    break;
            }
        }
        zzdp.zzF(this.zzn, obj, obj2);
        if (this.zzh) {
            zzdp.zzE(this.zzo, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzaj zzajVar) {
        if (this.zzi) {
            zzu(obj, bArr, i, i2, zzajVar);
        } else {
            zzc(obj, bArr, i, i2, 0, zzajVar);
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final void zzi(Object obj, zzew zzewVar) {
        if (!this.zzi) {
            zzL(obj, zzewVar);
            return;
        }
        if (this.zzh) {
            this.zzo.zza(obj);
            throw null;
        }
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int zzB = zzB(i);
            int i2 = this.zzc[i];
            switch (zzA(zzB)) {
                case 0:
                    if (zzO(obj, i)) {
                        zzewVar.zzf(i2, zzeo.zza(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzO(obj, i)) {
                        zzewVar.zzo(i2, zzeo.zzb(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzO(obj, i)) {
                        zzewVar.zzt(i2, zzeo.zzd(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzO(obj, i)) {
                        zzewVar.zzJ(i2, zzeo.zzd(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzO(obj, i)) {
                        zzewVar.zzr(i2, zzeo.zzc(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzO(obj, i)) {
                        zzewVar.zzm(i2, zzeo.zzd(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzO(obj, i)) {
                        zzewVar.zzk(i2, zzeo.zzc(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzO(obj, i)) {
                        zzewVar.zzb(i2, zzeo.zzw(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzO(obj, i)) {
                        zzT(i2, zzeo.zzf(obj, zzB & 1048575), zzewVar);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (zzO(obj, i)) {
                        zzewVar.zzv(i2, zzeo.zzf(obj, zzB & 1048575), zzE(i));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zzO(obj, i)) {
                        zzewVar.zzd(i2, (zzaw) zzeo.zzf(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzO(obj, i)) {
                        zzewVar.zzH(i2, zzeo.zzc(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzO(obj, i)) {
                        zzewVar.zzi(i2, zzeo.zzc(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzO(obj, i)) {
                        zzewVar.zzw(i2, zzeo.zzc(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzO(obj, i)) {
                        zzewVar.zzy(i2, zzeo.zzd(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzO(obj, i)) {
                        zzewVar.zzA(i2, zzeo.zzc(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzO(obj, i)) {
                        zzewVar.zzC(i2, zzeo.zzd(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zzO(obj, i)) {
                        zzewVar.zzq(i2, zzeo.zzf(obj, zzB & 1048575), zzE(i));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzdp.zzJ(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                    break;
                case 19:
                    zzdp.zzN(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                    break;
                case 20:
                    zzdp.zzQ(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                    break;
                case 21:
                    zzdp.zzY(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                    break;
                case 22:
                    zzdp.zzP(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                    break;
                case ConnectionResult.API_DISABLED /* 23 */:
                    zzdp.zzM(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                    break;
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    zzdp.zzL(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                    break;
                case Constants.MAX_TREE_DEPTH /* 25 */:
                    zzdp.zzH(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                    break;
                case 26:
                    zzdp.zzW(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar);
                    break;
                case 27:
                    zzdp.zzR(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, zzE(i));
                    break;
                case 28:
                    zzdp.zzI(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar);
                    break;
                case 29:
                    zzdp.zzX(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                    break;
                case 30:
                    zzdp.zzK(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                    break;
                case 31:
                    zzdp.zzS(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                    break;
                case 32:
                    zzdp.zzT(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                    break;
                case 33:
                    zzdp.zzU(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                    break;
                case 34:
                    zzdp.zzV(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                    break;
                case 35:
                    zzdp.zzJ(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                    break;
                case 36:
                    zzdp.zzN(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                    break;
                case 37:
                    zzdp.zzQ(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                    break;
                case 38:
                    zzdp.zzY(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                    break;
                case 39:
                    zzdp.zzP(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                    break;
                case 40:
                    zzdp.zzM(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                    break;
                case 41:
                    zzdp.zzL(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                    break;
                case 42:
                    zzdp.zzH(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                    break;
                case 43:
                    zzdp.zzX(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                    break;
                case 44:
                    zzdp.zzK(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                    break;
                case 45:
                    zzdp.zzS(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                    break;
                case 46:
                    zzdp.zzT(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                    break;
                case 47:
                    zzdp.zzU(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                    break;
                case 48:
                    zzdp.zzV(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                    break;
                case 49:
                    zzdp.zzO(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, zzE(i));
                    break;
                case 50:
                    zzM(zzewVar, i2, zzeo.zzf(obj, zzB & 1048575), i);
                    break;
                case 51:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzf(i2, zzn(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzo(i2, zzo(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzt(i2, zzC(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzJ(i2, zzC(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzr(i2, zzr(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzm(i2, zzC(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzk(i2, zzr(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzb(i2, zzS(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzR(obj, i2, i)) {
                        zzT(i2, zzeo.zzf(obj, zzB & 1048575), zzewVar);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzv(i2, zzeo.zzf(obj, zzB & 1048575), zzE(i));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzd(i2, (zzaw) zzeo.zzf(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzH(i2, zzr(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzi(i2, zzr(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzw(i2, zzr(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzy(i2, zzC(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzA(i2, zzr(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzC(i2, zzC(obj, zzB & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzR(obj, i2, i)) {
                        zzewVar.zzq(i2, zzeo.zzf(obj, zzB & 1048575), zzE(i));
                        break;
                    } else {
                        break;
                    }
            }
        }
        zzee zzeeVar = this.zzn;
        zzeeVar.zzi(zzeeVar.zzc(obj), zzewVar);
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final boolean zzj(Object obj, Object obj2) {
        boolean zzZ;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int zzB = zzB(i);
            long j = zzB & 1048575;
            switch (zzA(zzB)) {
                case 0:
                    if (zzN(obj, obj2, i) && Double.doubleToLongBits(zzeo.zza(obj, j)) == Double.doubleToLongBits(zzeo.zza(obj2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzN(obj, obj2, i) && Float.floatToIntBits(zzeo.zzb(obj, j)) == Float.floatToIntBits(zzeo.zzb(obj2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzN(obj, obj2, i) && zzeo.zzd(obj, j) == zzeo.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzN(obj, obj2, i) && zzeo.zzd(obj, j) == zzeo.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzN(obj, obj2, i) && zzeo.zzc(obj, j) == zzeo.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzN(obj, obj2, i) && zzeo.zzd(obj, j) == zzeo.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzN(obj, obj2, i) && zzeo.zzc(obj, j) == zzeo.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzN(obj, obj2, i) && zzeo.zzw(obj, j) == zzeo.zzw(obj2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzN(obj, obj2, i) && zzdp.zzZ(zzeo.zzf(obj, j), zzeo.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzN(obj, obj2, i) && zzdp.zzZ(zzeo.zzf(obj, j), zzeo.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzN(obj, obj2, i) && zzdp.zzZ(zzeo.zzf(obj, j), zzeo.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzN(obj, obj2, i) && zzeo.zzc(obj, j) == zzeo.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzN(obj, obj2, i) && zzeo.zzc(obj, j) == zzeo.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzN(obj, obj2, i) && zzeo.zzc(obj, j) == zzeo.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzN(obj, obj2, i) && zzeo.zzd(obj, j) == zzeo.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzN(obj, obj2, i) && zzeo.zzc(obj, j) == zzeo.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzN(obj, obj2, i) && zzeo.zzd(obj, j) == zzeo.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzN(obj, obj2, i) && zzdp.zzZ(zzeo.zzf(obj, j), zzeo.zzf(obj2, j))) {
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
                    zzZ = zzdp.zzZ(zzeo.zzf(obj, j), zzeo.zzf(obj2, j));
                    break;
                case 50:
                    zzZ = zzdp.zzZ(zzeo.zzf(obj, j), zzeo.zzf(obj2, j));
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
                    long zzy = zzy(i) & 1048575;
                    if (zzeo.zzc(obj, zzy) == zzeo.zzc(obj2, zzy) && zzdp.zzZ(zzeo.zzf(obj, j), zzeo.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzZ) {
                return false;
            }
        }
        if (!this.zzn.zzc(obj).equals(this.zzn.zzc(obj2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zza(obj);
        this.zzo.zza(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final boolean zzk(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzk) {
            int i6 = this.zzj[i5];
            int i7 = this.zzc[i6];
            int zzB = zzB(i6);
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
            if ((268435456 & zzB) != 0 && !zzP(obj, i6, i, i2, i10)) {
                return false;
            }
            int zzA = zzA(zzB);
            if (zzA != 9 && zzA != 17) {
                if (zzA != 27) {
                    if (zzA == 60 || zzA == 68) {
                        if (zzR(obj, i7, i6) && !zzQ(obj, zzB, zzE(i6))) {
                            return false;
                        }
                    } else if (zzA != 49) {
                        if (zzA == 50 && !((zzcw) zzeo.zzf(obj, zzB & 1048575)).isEmpty()) {
                            throw null;
                        }
                    }
                }
                List list = (List) zzeo.zzf(obj, zzB & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzdn zzE = zzE(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzE.zzk(list.get(i11))) {
                            return false;
                        }
                    }
                }
            } else if (zzP(obj, i6, i, i2, i10) && !zzQ(obj, zzB, zzE(i6))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zza(obj);
        throw null;
    }
}
