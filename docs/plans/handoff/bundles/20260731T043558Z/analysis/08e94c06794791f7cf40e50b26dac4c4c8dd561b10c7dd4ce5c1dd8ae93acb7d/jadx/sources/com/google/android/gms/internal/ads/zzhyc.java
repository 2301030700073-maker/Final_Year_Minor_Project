package com.google.android.gms.internal.ads;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.facebook.soloader.Elf64;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.bouncycastle.asn1.eac.EACTags;
import sun.misc.Unsafe;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhyc<T> implements zzhyr<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhzj.zzt();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzhxz zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzhzc zzm;
    private final zzhvz zzn;

    private zzhyc(int[] iArr, Object[] objArr, int i, int i2, zzhxz zzhxzVar, boolean z, int[] iArr2, int i3, int i4, zzhyf zzhyfVar, zzhxl zzhxlVar, zzhzc zzhzcVar, zzhvz zzhvzVar, zzhxu zzhxuVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzhxzVar instanceof zzhwo;
        boolean z2 = false;
        if (zzhvzVar != null && (zzhxzVar instanceof zzhwk)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzj = iArr2;
        this.zzk = i3;
        this.zzl = i4;
        this.zzm = zzhzcVar;
        this.zzn = zzhvzVar;
        this.zzg = zzhxzVar;
    }

    private final int zzA(int i) {
        return this.zzc[i + 1];
    }

    private final int zzB(int i) {
        return this.zzc[i + 2];
    }

    private static int zzC(int i) {
        return (i >>> 20) & 255;
    }

    private static boolean zzD(int i) {
        return (i & 536870912) != 0;
    }

    private static boolean zzE(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzhwo) {
            return ((zzhwo) obj).zzaX();
        }
        return true;
    }

    private static void zzF(Object obj) {
        if (zzE(obj)) {
            return;
        }
        String valueOf = String.valueOf(obj);
        String.valueOf(valueOf);
        throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(valueOf)));
    }

    private static double zzG(Object obj, long j) {
        return ((Double) zzhzj.zzn(obj, j)).doubleValue();
    }

    private static float zzH(Object obj, long j) {
        return ((Float) zzhzj.zzn(obj, j)).floatValue();
    }

    private static int zzI(Object obj, long j) {
        return ((Integer) zzhzj.zzn(obj, j)).intValue();
    }

    private static long zzJ(Object obj, long j) {
        return ((Long) zzhzj.zzn(obj, j)).longValue();
    }

    private static boolean zzK(Object obj, long j) {
        return ((Boolean) zzhzj.zzn(obj, j)).booleanValue();
    }

    private final boolean zzL(Object obj, Object obj2, int i) {
        return zzN(obj, i) == zzN(obj2, i);
    }

    private final boolean zzM(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzN(obj, i) : (i3 & i4) != 0;
    }

    private final boolean zzN(Object obj, int i) {
        int zzB = zzB(i);
        long j = zzB & 1048575;
        if (j != 1048575) {
            return (zzhzj.zzd(obj, j) & (1 << (zzB >>> 20))) != 0;
        }
        int zzA = zzA(i);
        long j2 = zzA & 1048575;
        switch (zzC(zzA)) {
            case 0:
                return Double.doubleToRawLongBits(zzhzj.zzl(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzhzj.zzj(obj, j2)) != 0;
            case 2:
                return zzhzj.zzf(obj, j2) != 0;
            case 3:
                return zzhzj.zzf(obj, j2) != 0;
            case 4:
                return zzhzj.zzd(obj, j2) != 0;
            case 5:
                return zzhzj.zzf(obj, j2) != 0;
            case 6:
                return zzhzj.zzd(obj, j2) != 0;
            case 7:
                return zzhzj.zzh(obj, j2);
            case 8:
                Object zzn = zzhzj.zzn(obj, j2);
                if (zzn instanceof String) {
                    return !((String) zzn).isEmpty();
                }
                if (zzn instanceof zzhvi) {
                    return !zzhvi.zzb.equals(zzn);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzhzj.zzn(obj, j2) != null;
            case 10:
                return !zzhvi.zzb.equals(zzhzj.zzn(obj, j2));
            case 11:
                return zzhzj.zzd(obj, j2) != 0;
            case 12:
                return zzhzj.zzd(obj, j2) != 0;
            case 13:
                return zzhzj.zzd(obj, j2) != 0;
            case 14:
                return zzhzj.zzf(obj, j2) != 0;
            case 15:
                return zzhzj.zzd(obj, j2) != 0;
            case 16:
                return zzhzj.zzf(obj, j2) != 0;
            case 17:
                return zzhzj.zzn(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final void zzO(Object obj, int i) {
        int zzB = zzB(i);
        long j = 1048575 & zzB;
        if (j == 1048575) {
            return;
        }
        zzhzj.zze(obj, j, (1 << (zzB >>> 20)) | zzhzj.zzd(obj, j));
    }

    private final boolean zzP(Object obj, int i, int i2) {
        return zzhzj.zzd(obj, (long) (zzB(i2) & 1048575)) == i;
    }

    private final void zzQ(Object obj, int i, int i2) {
        zzhzj.zze(obj, zzB(i2) & 1048575, i);
    }

    private final int zzR(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzS(i, 0);
    }

    private final int zzS(int i, int i2) {
        int[] iArr = this.zzc;
        int length = (iArr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
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

    private static final int zzT(byte[] bArr, int i, int i2, zzhzp zzhzpVar, Class cls, zzhuw zzhuwVar) throws IOException {
        int i3;
        zzhzp zzhzpVar2 = zzhzp.DOUBLE;
        switch (zzhzpVar) {
            case DOUBLE:
                i3 = i + 8;
                zzhuwVar.zzc = Double.valueOf(Double.longBitsToDouble(zzhux.zze(bArr, i)));
                break;
            case FLOAT:
                i3 = i + 4;
                zzhuwVar.zzc = Float.valueOf(Float.intBitsToFloat(zzhux.zzd(bArr, i)));
                break;
            case INT64:
            case UINT64:
                int zzc = zzhux.zzc(bArr, i, zzhuwVar);
                zzhuwVar.zzc = Long.valueOf(zzhuwVar.zzb);
                return zzc;
            case INT32:
            case UINT32:
            case ENUM:
                int zza2 = zzhux.zza(bArr, i, zzhuwVar);
                zzhuwVar.zzc = Integer.valueOf(zzhuwVar.zza);
                return zza2;
            case FIXED64:
            case SFIXED64:
                i3 = i + 8;
                zzhuwVar.zzc = Long.valueOf(zzhux.zze(bArr, i));
                break;
            case FIXED32:
            case SFIXED32:
                i3 = i + 4;
                zzhuwVar.zzc = Integer.valueOf(zzhux.zzd(bArr, i));
                break;
            case BOOL:
                int zzc2 = zzhux.zzc(bArr, i, zzhuwVar);
                zzhuwVar.zzc = Boolean.valueOf(zzhuwVar.zzb != 0);
                return zzc2;
            case STRING:
                return zzhux.zzf(bArr, i, zzhuwVar);
            case GROUP:
            default:
                throw new RuntimeException("unsupported field type.");
            case MESSAGE:
                return zzhux.zzh(zzhyj.zza().zzb(cls), bArr, i, i2, zzhuwVar);
            case BYTES:
                return zzhux.zzg(bArr, i, zzhuwVar);
            case SINT32:
                int zza3 = zzhux.zza(bArr, i, zzhuwVar);
                zzhuwVar.zzc = Integer.valueOf(zzhvn.zzK(zzhuwVar.zza));
                return zza3;
            case SINT64:
                int zzc3 = zzhux.zzc(bArr, i, zzhuwVar);
                zzhuwVar.zzc = Long.valueOf(zzhvn.zzL(zzhuwVar.zzb));
                return zzc3;
        }
        return i3;
    }

    private static final void zzU(int i, Object obj, zzhzr zzhzrVar) throws IOException {
        if (obj instanceof String) {
            zzhzrVar.zzm(i, (String) obj);
        } else {
            zzhzrVar.zzn(i, (zzhvi) obj);
        }
    }

    static zzhzd zzh(Object obj) {
        zzhwo zzhwoVar = (zzhwo) obj;
        zzhzd zzhzdVar = zzhwoVar.zzt;
        if (zzhzdVar != zzhzd.zza()) {
            return zzhzdVar;
        }
        zzhzd zzb2 = zzhzd.zzb();
        zzhwoVar.zzt = zzb2;
        return zzb2;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0268  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.google.android.gms.internal.ads.zzhyc zzm(java.lang.Class r34, com.google.android.gms.internal.ads.zzhxw r35, com.google.android.gms.internal.ads.zzhyf r36, com.google.android.gms.internal.ads.zzhxl r37, com.google.android.gms.internal.ads.zzhzc r38, com.google.android.gms.internal.ads.zzhvz r39, com.google.android.gms.internal.ads.zzhxu r40) {
        /*
            Method dump skipped, instructions count: 1036
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhyc.zzm(java.lang.Class, com.google.android.gms.internal.ads.zzhxw, com.google.android.gms.internal.ads.zzhyf, com.google.android.gms.internal.ads.zzhxl, com.google.android.gms.internal.ads.zzhzc, com.google.android.gms.internal.ads.zzhvz, com.google.android.gms.internal.ads.zzhxu):com.google.android.gms.internal.ads.zzhyc");
    }

    private static Field zzn(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(name).length() + 29 + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString(), e);
        }
    }

    private final void zzo(Object obj, Object obj2, int i) {
        if (zzN(obj2, i)) {
            int zzA = zzA(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = zzA;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                int i2 = this.zzc[i];
                String obj3 = obj2.toString();
                StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 38 + obj3.length());
                sb.append("Source subfield ");
                sb.append(i2);
                sb.append(" is present but null: ");
                sb.append(obj3);
                throw new IllegalStateException(sb.toString());
            }
            zzhyr zzq = zzq(i);
            if (!zzN(obj, i)) {
                if (zzE(object)) {
                    Object zza2 = zzq.zza();
                    zzq.zzd(zza2, object);
                    unsafe.putObject(obj, j, zza2);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzO(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzE(object2)) {
                Object zza3 = zzq.zza();
                zzq.zzd(zza3, object2);
                unsafe.putObject(obj, j, zza3);
                object2 = zza3;
            }
            zzq.zzd(object2, object);
        }
    }

    private final void zzp(Object obj, Object obj2, int i) {
        int[] iArr = this.zzc;
        int i2 = iArr[i];
        if (zzP(obj2, i2, i)) {
            int zzA = zzA(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = zzA;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                int i3 = iArr[i];
                String obj3 = obj2.toString();
                StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 38 + obj3.length());
                sb.append("Source subfield ");
                sb.append(i3);
                sb.append(" is present but null: ");
                sb.append(obj3);
                throw new IllegalStateException(sb.toString());
            }
            zzhyr zzq = zzq(i);
            if (!zzP(obj, i2, i)) {
                if (zzE(object)) {
                    Object zza2 = zzq.zza();
                    zzq.zzd(zza2, object);
                    unsafe.putObject(obj, j, zza2);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzQ(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzE(object2)) {
                Object zza3 = zzq.zza();
                zzq.zzd(zza3, object2);
                unsafe.putObject(obj, j, zza3);
                object2 = zza3;
            }
            zzq.zzd(object2, object);
        }
    }

    private final zzhyr zzq(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzhyr zzhyrVar = (zzhyr) objArr[i3];
        if (zzhyrVar != null) {
            return zzhyrVar;
        }
        zzhyr zzb2 = zzhyj.zza().zzb((Class) objArr[i3 + 1]);
        objArr[i3] = zzb2;
        return zzb2;
    }

    private final Object zzr(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final zzhwu zzs(int i) {
        int i2 = i / 3;
        return (zzhwu) this.zzd[i2 + i2 + 1];
    }

    private final Object zzt(Object obj, int i) {
        zzhyr zzq = zzq(i);
        int zzA = zzA(i) & 1048575;
        if (!zzN(obj, i)) {
            return zzq.zza();
        }
        Object object = zzb.getObject(obj, zzA);
        if (zzE(object)) {
            return object;
        }
        Object zza2 = zzq.zza();
        if (object != null) {
            zzq.zzd(zza2, object);
        }
        return zza2;
    }

    private final void zzu(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzA(i) & 1048575, obj2);
        zzO(obj, i);
    }

    private final Object zzv(Object obj, int i, int i2) {
        zzhyr zzq = zzq(i2);
        if (!zzP(obj, i, i2)) {
            return zzq.zza();
        }
        Object object = zzb.getObject(obj, zzA(i2) & 1048575);
        if (zzE(object)) {
            return object;
        }
        Object zza2 = zzq.zza();
        if (object != null) {
            zzq.zzd(zza2, object);
        }
        return zza2;
    }

    private final void zzw(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzA(i2) & 1048575, obj2);
        zzQ(obj, i, i2);
    }

    private final Object zzx(Object obj, int i, Object obj2, zzhzc zzhzcVar, Object obj3) {
        zzhwu zzs;
        int i2 = this.zzc[i];
        Object zzn = zzhzj.zzn(obj, zzA(i) & 1048575);
        if (zzn == null || (zzs = zzs(i)) == null) {
            return obj2;
        }
        zzhxr zze = ((zzhxs) zzr(i)).zze();
        Iterator it = ((zzhxt) zzn).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!zzs.zza(((Integer) entry.getValue()).intValue())) {
                if (obj2 == null) {
                    obj2 = zzhzcVar.zzh(obj3);
                }
                int zzc = zzhxs.zzc(zze, entry.getKey(), entry.getValue());
                zzhvi zzhviVar = zzhvi.zzb;
                byte[] bArr = new byte[zzc];
                int i3 = zzhvt.zzf;
                zzhvq zzhvqVar = new zzhvq(bArr, 0, zzc);
                try {
                    zzhxs.zzb(zzhvqVar, zze, entry.getKey(), entry.getValue());
                    zzhzcVar.zzd(obj2, i2, zzhve.zza(zzhvqVar, bArr));
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return obj2;
    }

    private static boolean zzy(Object obj, int i, zzhyr zzhyrVar) {
        return zzhyrVar.zzl(zzhzj.zzn(obj, i & 1048575));
    }

    private final void zzz(Object obj, int i, zzhym zzhymVar) throws IOException {
        long j = i & 1048575;
        if (zzD(i)) {
            zzhzj.zzo(obj, j, zzhymVar.zzn());
        } else if (this.zzi) {
            zzhzj.zzo(obj, j, zzhymVar.zzm());
        } else {
            zzhzj.zzo(obj, j, zzhymVar.zzq());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final Object zza() {
        return ((zzhwo) this.zzg).zzbg();
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final boolean zzb(Object obj, Object obj2) {
        boolean zzG;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzA = zzA(i);
            long j = zzA & 1048575;
            switch (zzC(zzA)) {
                case 0:
                    if (zzL(obj, obj2, i) && Double.doubleToLongBits(zzhzj.zzl(obj, j)) == Double.doubleToLongBits(zzhzj.zzl(obj2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzL(obj, obj2, i) && Float.floatToIntBits(zzhzj.zzj(obj, j)) == Float.floatToIntBits(zzhzj.zzj(obj2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzL(obj, obj2, i) && zzhzj.zzf(obj, j) == zzhzj.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzL(obj, obj2, i) && zzhzj.zzf(obj, j) == zzhzj.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzL(obj, obj2, i) && zzhzj.zzd(obj, j) == zzhzj.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzL(obj, obj2, i) && zzhzj.zzf(obj, j) == zzhzj.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzL(obj, obj2, i) && zzhzj.zzd(obj, j) == zzhzj.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzL(obj, obj2, i) && zzhzj.zzh(obj, j) == zzhzj.zzh(obj2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzL(obj, obj2, i) && zzhyt.zzG(zzhzj.zzn(obj, j), zzhzj.zzn(obj2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzL(obj, obj2, i) && zzhyt.zzG(zzhzj.zzn(obj, j), zzhzj.zzn(obj2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzL(obj, obj2, i) && zzhyt.zzG(zzhzj.zzn(obj, j), zzhzj.zzn(obj2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzL(obj, obj2, i) && zzhzj.zzd(obj, j) == zzhzj.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzL(obj, obj2, i) && zzhzj.zzd(obj, j) == zzhzj.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzL(obj, obj2, i) && zzhzj.zzd(obj, j) == zzhzj.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzL(obj, obj2, i) && zzhzj.zzf(obj, j) == zzhzj.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzL(obj, obj2, i) && zzhzj.zzd(obj, j) == zzhzj.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzL(obj, obj2, i) && zzhzj.zzf(obj, j) == zzhzj.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzL(obj, obj2, i) && zzhyt.zzG(zzhzj.zzn(obj, j), zzhzj.zzn(obj2, j))) {
                        continue;
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
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
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    zzG = zzhyt.zzG(zzhzj.zzn(obj, j), zzhzj.zzn(obj2, j));
                    break;
                case 50:
                    zzG = zzhyt.zzG(zzhzj.zzn(obj, j), zzhzj.zzn(obj2, j));
                    break;
                case 51:
                case 52:
                case EACTags.SEX /* 53 */:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                case 60:
                case 61:
                case Elf64.Ehdr.E_SHSTRNDX /* 62 */:
                case 63:
                case 64:
                case 65:
                case EACTags.ADDRESS /* 66 */:
                case 67:
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    long zzB = zzB(i) & 1048575;
                    if (zzhzj.zzd(obj, zzB) == zzhzj.zzd(obj2, zzB) && zzhyt.zzG(zzhzj.zzn(obj, j), zzhzj.zzn(obj2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzG) {
                return false;
            }
        }
        if (!((zzhwo) obj).zzt.equals(((zzhwo) obj2).zzt)) {
            return false;
        }
        if (this.zzh) {
            return ((zzhwk) obj).zza.equals(((zzhwk) obj2).zza);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final int zzc(Object obj) {
        int i;
        long doubleToLongBits;
        int floatToIntBits;
        int i2;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i3 >= iArr.length) {
                int hashCode = (i4 * 53) + ((zzhwo) obj).zzt.hashCode();
                return this.zzh ? (hashCode * 53) + ((zzhwk) obj).zza.zza.hashCode() : hashCode;
            }
            int zzA = zzA(i3);
            int i5 = 1048575 & zzA;
            int zzC = zzC(zzA);
            int i6 = iArr[i3];
            long j = i5;
            int i7 = 37;
            switch (zzC) {
                case 0:
                    i = i4 * 53;
                    doubleToLongBits = Double.doubleToLongBits(zzhzj.zzl(obj, j));
                    byte[] bArr = zzhxb.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i4 = i + floatToIntBits;
                    break;
                case 1:
                    i = i4 * 53;
                    floatToIntBits = Float.floatToIntBits(zzhzj.zzj(obj, j));
                    i4 = i + floatToIntBits;
                    break;
                case 2:
                    i = i4 * 53;
                    doubleToLongBits = zzhzj.zzf(obj, j);
                    byte[] bArr2 = zzhxb.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i4 = i + floatToIntBits;
                    break;
                case 3:
                    i = i4 * 53;
                    doubleToLongBits = zzhzj.zzf(obj, j);
                    byte[] bArr3 = zzhxb.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i4 = i + floatToIntBits;
                    break;
                case 4:
                    i = i4 * 53;
                    floatToIntBits = zzhzj.zzd(obj, j);
                    i4 = i + floatToIntBits;
                    break;
                case 5:
                    i = i4 * 53;
                    doubleToLongBits = zzhzj.zzf(obj, j);
                    byte[] bArr4 = zzhxb.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i4 = i + floatToIntBits;
                    break;
                case 6:
                    i = i4 * 53;
                    floatToIntBits = zzhzj.zzd(obj, j);
                    i4 = i + floatToIntBits;
                    break;
                case 7:
                    i = i4 * 53;
                    floatToIntBits = zzhxb.zzb(zzhzj.zzh(obj, j));
                    i4 = i + floatToIntBits;
                    break;
                case 8:
                    i = i4 * 53;
                    floatToIntBits = ((String) zzhzj.zzn(obj, j)).hashCode();
                    i4 = i + floatToIntBits;
                    break;
                case 9:
                    i2 = i4 * 53;
                    Object zzn = zzhzj.zzn(obj, j);
                    if (zzn != null) {
                        i7 = zzn.hashCode();
                    }
                    i4 = i2 + i7;
                    break;
                case 10:
                    i = i4 * 53;
                    floatToIntBits = zzhzj.zzn(obj, j).hashCode();
                    i4 = i + floatToIntBits;
                    break;
                case 11:
                    i = i4 * 53;
                    floatToIntBits = zzhzj.zzd(obj, j);
                    i4 = i + floatToIntBits;
                    break;
                case 12:
                    i = i4 * 53;
                    floatToIntBits = zzhzj.zzd(obj, j);
                    i4 = i + floatToIntBits;
                    break;
                case 13:
                    i = i4 * 53;
                    floatToIntBits = zzhzj.zzd(obj, j);
                    i4 = i + floatToIntBits;
                    break;
                case 14:
                    i = i4 * 53;
                    doubleToLongBits = zzhzj.zzf(obj, j);
                    byte[] bArr5 = zzhxb.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i4 = i + floatToIntBits;
                    break;
                case 15:
                    i = i4 * 53;
                    floatToIntBits = zzhzj.zzd(obj, j);
                    i4 = i + floatToIntBits;
                    break;
                case 16:
                    i = i4 * 53;
                    doubleToLongBits = zzhzj.zzf(obj, j);
                    byte[] bArr6 = zzhxb.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i4 = i + floatToIntBits;
                    break;
                case 17:
                    i2 = i4 * 53;
                    Object zzn2 = zzhzj.zzn(obj, j);
                    if (zzn2 != null) {
                        i7 = zzn2.hashCode();
                    }
                    i4 = i2 + i7;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
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
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    i = i4 * 53;
                    floatToIntBits = zzhzj.zzn(obj, j).hashCode();
                    i4 = i + floatToIntBits;
                    break;
                case 50:
                    i = i4 * 53;
                    floatToIntBits = zzhzj.zzn(obj, j).hashCode();
                    i4 = i + floatToIntBits;
                    break;
                case 51:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        doubleToLongBits = Double.doubleToLongBits(zzG(obj, j));
                        byte[] bArr7 = zzhxb.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 52:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = Float.floatToIntBits(zzH(obj, j));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case EACTags.SEX /* 53 */:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        doubleToLongBits = zzJ(obj, j);
                        byte[] bArr8 = zzhxb.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 54:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        doubleToLongBits = zzJ(obj, j);
                        byte[] bArr9 = zzhxb.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 55:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzI(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 56:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        doubleToLongBits = zzJ(obj, j);
                        byte[] bArr10 = zzhxb.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 57:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzI(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 58:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzhxb.zzb(zzK(obj, j));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = ((String) zzhzj.zzn(obj, j)).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 60:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzhzj.zzn(obj, j).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 61:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzhzj.zzn(obj, j).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    }
                case Elf64.Ehdr.E_SHSTRNDX /* 62 */:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzI(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 63:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzI(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 64:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzI(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 65:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        doubleToLongBits = zzJ(obj, j);
                        byte[] bArr11 = zzhxb.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case EACTags.ADDRESS /* 66 */:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzI(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 67:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        doubleToLongBits = zzJ(obj, j);
                        byte[] bArr12 = zzhxb.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (!zzP(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzhzj.zzn(obj, j).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    }
            }
            i3 += 3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final void zzd(Object obj, Object obj2) {
        zzF(obj);
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i >= iArr.length) {
                zzhyt.zzI(this.zzm, obj, obj2);
                if (this.zzh) {
                    zzhyt.zzH(this.zzn, obj, obj2);
                    return;
                }
                return;
            }
            int zzA = zzA(i);
            int i2 = 1048575 & zzA;
            int zzC = zzC(zzA);
            int i3 = iArr[i];
            long j = i2;
            switch (zzC) {
                case 0:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zzm(obj, j, zzhzj.zzl(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 1:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zzk(obj, j, zzhzj.zzj(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 2:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zzg(obj, j, zzhzj.zzf(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 3:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zzg(obj, j, zzhzj.zzf(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 4:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zze(obj, j, zzhzj.zzd(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 5:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zzg(obj, j, zzhzj.zzf(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 6:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zze(obj, j, zzhzj.zzd(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 7:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zzi(obj, j, zzhzj.zzh(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 8:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zzo(obj, j, zzhzj.zzn(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 9:
                    zzo(obj, obj2, i);
                    break;
                case 10:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zzo(obj, j, zzhzj.zzn(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 11:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zze(obj, j, zzhzj.zzd(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 12:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zze(obj, j, zzhzj.zzd(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 13:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zze(obj, j, zzhzj.zzd(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 14:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zzg(obj, j, zzhzj.zzf(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 15:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zze(obj, j, zzhzj.zzd(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 16:
                    if (!zzN(obj2, i)) {
                        break;
                    } else {
                        zzhzj.zzg(obj, j, zzhzj.zzf(obj2, j));
                        zzO(obj, i);
                        break;
                    }
                case 17:
                    zzo(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
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
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    zzhxa zzhxaVar = (zzhxa) zzhzj.zzn(obj, j);
                    zzhxa zzhxaVar2 = (zzhxa) zzhzj.zzn(obj2, j);
                    int size = zzhxaVar.size();
                    int size2 = zzhxaVar2.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzhxaVar.zza()) {
                            zzhxaVar = zzhxaVar.zzh(size2 + size);
                        }
                        zzhxaVar.addAll(zzhxaVar2);
                    }
                    if (size > 0) {
                        zzhxaVar2 = zzhxaVar;
                    }
                    zzhzj.zzo(obj, j, zzhxaVar2);
                    break;
                case 50:
                    int i4 = zzhyt.zza;
                    zzhzj.zzo(obj, j, zzhxu.zzb(zzhzj.zzn(obj, j), zzhzj.zzn(obj2, j)));
                    break;
                case 51:
                case 52:
                case EACTags.SEX /* 53 */:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (!zzP(obj2, i3, i)) {
                        break;
                    } else {
                        zzhzj.zzo(obj, j, zzhzj.zzn(obj2, j));
                        zzQ(obj, i3, i);
                        break;
                    }
                case 60:
                    zzp(obj, obj2, i);
                    break;
                case 61:
                case Elf64.Ehdr.E_SHSTRNDX /* 62 */:
                case 63:
                case 64:
                case 65:
                case EACTags.ADDRESS /* 66 */:
                case 67:
                    if (!zzP(obj2, i3, i)) {
                        break;
                    } else {
                        zzhzj.zzo(obj, j, zzhzj.zzn(obj2, j));
                        zzQ(obj, i3, i);
                        break;
                    }
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    zzp(obj, obj2, i);
                    break;
            }
            i += 3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v115, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v118, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v120, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v137 */
    /* JADX WARN: Type inference failed for: r0v185, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v253, types: [int] */
    /* JADX WARN: Type inference failed for: r0v260, types: [int] */
    /* JADX WARN: Type inference failed for: r0v265 */
    /* JADX WARN: Type inference failed for: r0v266 */
    /* JADX WARN: Type inference failed for: r0v267 */
    /* JADX WARN: Type inference failed for: r0v268 */
    /* JADX WARN: Type inference failed for: r0v269 */
    /* JADX WARN: Type inference failed for: r0v270 */
    /* JADX WARN: Type inference failed for: r0v271 */
    /* JADX WARN: Type inference failed for: r0v272 */
    /* JADX WARN: Type inference failed for: r0v273 */
    /* JADX WARN: Type inference failed for: r0v274 */
    /* JADX WARN: Type inference failed for: r0v275 */
    /* JADX WARN: Type inference failed for: r0v276 */
    /* JADX WARN: Type inference failed for: r0v277 */
    /* JADX WARN: Type inference failed for: r0v278 */
    /* JADX WARN: Type inference failed for: r0v279 */
    /* JADX WARN: Type inference failed for: r0v280 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v118, types: [int] */
    /* JADX WARN: Type inference failed for: r1v121, types: [int] */
    /* JADX WARN: Type inference failed for: r1v158 */
    /* JADX WARN: Type inference failed for: r1v161 */
    /* JADX WARN: Type inference failed for: r1v162 */
    /* JADX WARN: Type inference failed for: r1v163 */
    /* JADX WARN: Type inference failed for: r1v164 */
    /* JADX WARN: Type inference failed for: r1v78, types: [int] */
    /* JADX WARN: Type inference failed for: r1v80 */
    /* JADX WARN: Type inference failed for: r2v31, types: [int] */
    /* JADX WARN: Type inference failed for: r2v39, types: [int] */
    /* JADX WARN: Type inference failed for: r2v43, types: [int] */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v52, types: [int] */
    /* JADX WARN: Type inference failed for: r2v80 */
    /* JADX WARN: Type inference failed for: r2v81, types: [int] */
    /* JADX WARN: Type inference failed for: r2v83 */
    /* JADX WARN: Type inference failed for: r2v84, types: [int] */
    /* JADX WARN: Type inference failed for: r2v94 */
    /* JADX WARN: Type inference failed for: r2v95 */
    /* JADX WARN: Type inference failed for: r2v96 */
    /* JADX WARN: Type inference failed for: r2v97 */
    /* JADX WARN: Type inference failed for: r2v98 */
    /* JADX WARN: Type inference failed for: r2v99 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28, types: [int] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31, types: [int] */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v38, types: [int] */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r3v45, types: [int] */
    /* JADX WARN: Type inference failed for: r3v54 */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r3v58 */
    /* JADX WARN: Type inference failed for: r3v59 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30, types: [int] */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v37, types: [int] */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v41 */
    /* JADX WARN: Type inference failed for: r4v42 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    @Override // com.google.android.gms.internal.ads.zzhyr
    public final int zze(Object obj) {
        int i;
        int i2;
        ?? r5;
        int zzA;
        int zzA2;
        int zzA3;
        int zzB;
        int zzA4;
        int zzA5;
        int zzc;
        int zzA6;
        ?? zzs;
        int size;
        int zzA7;
        int zzC;
        int zzC2;
        ?? r3;
        int zzaT;
        int zzA8;
        ?? r1;
        ?? r0;
        int zzB2;
        int zzA9;
        int zzA10;
        ?? r4;
        Unsafe unsafe = zzb;
        boolean z = false;
        int i3 = 1048575;
        ?? r12 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (true) {
            int[] iArr = this.zzc;
            if (i4 >= iArr.length) {
                int zzi = i5 + ((zzhwo) obj).zzt.zzi();
                if (!this.zzh) {
                    return zzi;
                }
                zzhyy zzhyyVar = ((zzhwk) obj).zza.zza;
                int zzc2 = zzhyyVar.zzc();
                int i7 = 0;
                for (int i8 = 0; i8 < zzc2; i8++) {
                    Map.Entry zzd = zzhyyVar.zzd(i8);
                    i7 += zzhwd.zzj((zzhwc) ((zzhyv) zzd).zza(), zzd.getValue());
                }
                for (Map.Entry entry : zzhyyVar.zze()) {
                    i7 += zzhwd.zzj((zzhwc) entry.getKey(), entry.getValue());
                }
                return zzi + i7;
            }
            int zzA11 = zzA(i4);
            int zzC3 = zzC(zzA11);
            int i9 = iArr[i4];
            int i10 = iArr[i4 + 2];
            int i11 = i10 & i3;
            if (zzC3 <= 17) {
                if (i11 != i6) {
                    r12 = i11 == i3 ? z : unsafe.getInt(obj, i11);
                    i6 = i11;
                }
                i = i6;
                i2 = r12;
                r5 = 1 << (i10 >>> 20);
            } else {
                i = i6;
                i2 = r12;
                r5 = z;
            }
            int i12 = zzA11 & i3;
            if (zzC3 >= zzhwe.DOUBLE_LIST_PACKED.zza()) {
                zzhwe.SINT64_LIST_PACKED.zza();
            }
            long j = i12;
            switch (zzC3) {
                case 0:
                    if (zzM(obj, i4, i, i2, r5)) {
                        zzA = zzhvt.zzA(i9 << 3);
                        r0 = zzA + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzM(obj, i4, i, i2, r5)) {
                        zzA2 = zzhvt.zzA(i9 << 3);
                        r0 = zzA2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzM(obj, i4, i, i2, r5)) {
                        long j2 = unsafe.getLong(obj, j);
                        zzA3 = zzhvt.zzA(i9 << 3);
                        zzB = zzhvt.zzB(j2);
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzM(obj, i4, i, i2, r5)) {
                        long j3 = unsafe.getLong(obj, j);
                        zzA3 = zzhvt.zzA(i9 << 3);
                        zzB = zzhvt.zzB(j3);
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzM(obj, i4, i, i2, r5)) {
                        long j4 = unsafe.getInt(obj, j);
                        zzA3 = zzhvt.zzA(i9 << 3);
                        zzB = zzhvt.zzB(j4);
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzM(obj, i4, i, i2, r5)) {
                        zzA = zzhvt.zzA(i9 << 3);
                        r0 = zzA + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzM(obj, i4, i, i2, r5)) {
                        zzA2 = zzhvt.zzA(i9 << 3);
                        r0 = zzA2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzM(obj, i4, i, i2, r5)) {
                        zzA4 = zzhvt.zzA(i9 << 3);
                        r0 = zzA4 + 1;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zzM(obj, i4, i, i2, r5)) {
                        break;
                    } else {
                        int i13 = i9 << 3;
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzhvi) {
                            zzA5 = zzhvt.zzA(i13);
                            zzc = ((zzhvi) object).zzc();
                            zzA6 = zzhvt.zzA(zzc);
                            r0 = zzA5 + zzA6 + zzc;
                            i5 += r0;
                            break;
                        } else {
                            zzA3 = zzhvt.zzA(i13);
                            zzB = zzhvt.zzC((String) object);
                            r0 = zzA3 + zzB;
                            i5 += r0;
                        }
                    }
                case 9:
                    if (zzM(obj, i4, i, i2, r5)) {
                        r0 = zzhyt.zzD(i9, unsafe.getObject(obj, j), zzq(i4));
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zzM(obj, i4, i, i2, r5)) {
                        zzhvi zzhviVar = (zzhvi) unsafe.getObject(obj, j);
                        zzA5 = zzhvt.zzA(i9 << 3);
                        zzc = zzhviVar.zzc();
                        zzA6 = zzhvt.zzA(zzc);
                        r0 = zzA5 + zzA6 + zzc;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzM(obj, i4, i, i2, r5)) {
                        int i14 = unsafe.getInt(obj, j);
                        zzA3 = zzhvt.zzA(i9 << 3);
                        zzB = zzhvt.zzA(i14);
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzM(obj, i4, i, i2, r5)) {
                        long j5 = unsafe.getInt(obj, j);
                        zzA3 = zzhvt.zzA(i9 << 3);
                        zzB = zzhvt.zzB(j5);
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzM(obj, i4, i, i2, r5)) {
                        zzA2 = zzhvt.zzA(i9 << 3);
                        r0 = zzA2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzM(obj, i4, i, i2, r5)) {
                        zzA = zzhvt.zzA(i9 << 3);
                        r0 = zzA + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzM(obj, i4, i, i2, r5)) {
                        int i15 = unsafe.getInt(obj, j);
                        zzA3 = zzhvt.zzA(i9 << 3);
                        zzB = zzhvt.zzA((i15 >> 31) ^ (i15 + i15));
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzM(obj, i4, i, i2, r5)) {
                        long j6 = unsafe.getLong(obj, j);
                        zzA3 = zzhvt.zzA(i9 << 3);
                        zzB = zzhvt.zzB((j6 >> 63) ^ (j6 + j6));
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zzM(obj, i4, i, i2, r5)) {
                        r0 = zzhyt.zzE(i9, (zzhxz) unsafe.getObject(obj, j), zzq(i4));
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    r0 = zzhyt.zzC(i9, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 19:
                    r0 = zzhyt.zzA(i9, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j);
                    int i16 = zzhyt.zza;
                    if (list.size() != 0) {
                        zzs = zzhyt.zzs(list) + (list.size() * zzhvt.zzA(i9 << 3));
                        i5 += zzs;
                        break;
                    }
                    zzs = z;
                    i5 += zzs;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j);
                    int i17 = zzhyt.zza;
                    size = list2.size();
                    if (size != 0) {
                        zzA3 = zzhyt.zzt(list2);
                        zzA7 = zzhvt.zzA(i9 << 3);
                        zzB = size * zzA7;
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i18 = zzhyt.zza;
                    size = list3.size();
                    if (size != 0) {
                        zzA3 = zzhyt.zzw(list3);
                        zzA7 = zzhvt.zzA(i9 << 3);
                        zzB = size * zzA7;
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 23:
                    r0 = zzhyt.zzC(i9, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 24:
                    r0 = zzhyt.zzA(i9, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j);
                    int i19 = zzhyt.zza;
                    int size2 = list4.size();
                    if (size2 != 0) {
                        r0 = size2 * (zzhvt.zzA(i9 << 3) + 1);
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 26:
                    ?? r02 = (List) unsafe.getObject(obj, j);
                    int i20 = zzhyt.zza;
                    int size3 = r02.size();
                    if (size3 != 0) {
                        int zzA12 = zzhvt.zzA(i9 << 3) * size3;
                        if (r02 instanceof zzhxk) {
                            zzhxk zzhxkVar = (zzhxk) r02;
                            zzs = zzA12;
                            for (?? r32 = z; r32 < size3; r32++) {
                                Object zzc3 = zzhxkVar.zzc();
                                if (zzc3 instanceof zzhvi) {
                                    int zzc4 = ((zzhvi) zzc3).zzc();
                                    zzC2 = zzs + zzhvt.zzA(zzc4) + zzc4;
                                } else {
                                    zzC2 = zzs + zzhvt.zzC((String) zzc3);
                                }
                                zzs = zzC2;
                            }
                        } else {
                            zzs = zzA12;
                            for (?? r33 = z; r33 < size3; r33++) {
                                Object obj2 = r02.get(r33);
                                if (obj2 instanceof zzhvi) {
                                    int zzc5 = ((zzhvi) obj2).zzc();
                                    zzC = zzs + zzhvt.zzA(zzc5) + zzc5;
                                } else {
                                    zzC = zzs + zzhvt.zzC((String) obj2);
                                }
                                zzs = zzC;
                            }
                        }
                        i5 += zzs;
                        break;
                    }
                    zzs = z;
                    i5 += zzs;
                case 27:
                    ?? r03 = (List) unsafe.getObject(obj, j);
                    zzhyr zzq = zzq(i4);
                    int i21 = zzhyt.zza;
                    int size4 = r03.size();
                    if (size4 == 0) {
                        r3 = z;
                    } else {
                        r3 = zzhvt.zzA(i9 << 3) * size4;
                        for (?? r42 = z; r42 < size4; r42++) {
                            Object obj3 = r03.get(r42);
                            if (obj3 instanceof zzhxj) {
                                zzaT = ((zzhxj) obj3).zzb();
                                zzA8 = zzhvt.zzA(zzaT);
                            } else {
                                zzaT = ((zzhur) obj3).zzaT(zzq);
                                zzA8 = zzhvt.zzA(zzaT);
                            }
                            r3 = (r3 == true ? 1 : 0) + zzA8 + zzaT;
                        }
                    }
                    i5 += r3;
                    break;
                case 28:
                    ?? r04 = (List) unsafe.getObject(obj, j);
                    int i22 = zzhyt.zza;
                    int size5 = r04.size();
                    if (size5 == 0) {
                        r1 = z;
                    } else {
                        r1 = size5 * zzhvt.zzA(i9 << 3);
                        for (?? r2 = z; r2 < r04.size(); r2++) {
                            int zzc6 = ((zzhvi) r04.get(r2)).zzc();
                            r1 += zzhvt.zzA(zzc6) + zzc6;
                        }
                    }
                    i5 += r1;
                    break;
                case 29:
                    List list5 = (List) unsafe.getObject(obj, j);
                    int i23 = zzhyt.zza;
                    size = list5.size();
                    if (size != 0) {
                        zzA3 = zzhyt.zzx(list5);
                        zzA7 = zzhvt.zzA(i9 << 3);
                        zzB = size * zzA7;
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 30:
                    List list6 = (List) unsafe.getObject(obj, j);
                    int i24 = zzhyt.zza;
                    size = list6.size();
                    if (size != 0) {
                        zzA3 = zzhyt.zzv(list6);
                        zzA7 = zzhvt.zzA(i9 << 3);
                        zzB = size * zzA7;
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 31:
                    r0 = zzhyt.zzA(i9, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 32:
                    r0 = zzhyt.zzC(i9, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 33:
                    List list7 = (List) unsafe.getObject(obj, j);
                    int i25 = zzhyt.zza;
                    size = list7.size();
                    if (size != 0) {
                        zzA3 = zzhyt.zzy(list7);
                        zzA7 = zzhvt.zzA(i9 << 3);
                        zzB = size * zzA7;
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 34:
                    List list8 = (List) unsafe.getObject(obj, j);
                    int i26 = zzhyt.zza;
                    size = list8.size();
                    if (size != 0) {
                        zzA3 = zzhyt.zzu(list8);
                        zzA7 = zzhvt.zzA(i9 << 3);
                        zzB = size * zzA7;
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 35:
                    zzB2 = zzhyt.zzB((List) unsafe.getObject(obj, j));
                    if (zzB2 > 0) {
                        zzA9 = zzhvt.zzA(i9 << 3);
                        zzA10 = zzhvt.zzA(zzB2);
                        r1 = zzA9 + zzA10 + zzB2;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    zzB2 = zzhyt.zzz((List) unsafe.getObject(obj, j));
                    if (zzB2 > 0) {
                        zzA9 = zzhvt.zzA(i9 << 3);
                        zzA10 = zzhvt.zzA(zzB2);
                        r1 = zzA9 + zzA10 + zzB2;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    zzB2 = zzhyt.zzs((List) unsafe.getObject(obj, j));
                    if (zzB2 > 0) {
                        zzA9 = zzhvt.zzA(i9 << 3);
                        zzA10 = zzhvt.zzA(zzB2);
                        r1 = zzA9 + zzA10 + zzB2;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    zzB2 = zzhyt.zzt((List) unsafe.getObject(obj, j));
                    if (zzB2 > 0) {
                        zzA9 = zzhvt.zzA(i9 << 3);
                        zzA10 = zzhvt.zzA(zzB2);
                        r1 = zzA9 + zzA10 + zzB2;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    zzB2 = zzhyt.zzw((List) unsafe.getObject(obj, j));
                    if (zzB2 > 0) {
                        zzA9 = zzhvt.zzA(i9 << 3);
                        zzA10 = zzhvt.zzA(zzB2);
                        r1 = zzA9 + zzA10 + zzB2;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    zzB2 = zzhyt.zzB((List) unsafe.getObject(obj, j));
                    if (zzB2 > 0) {
                        zzA9 = zzhvt.zzA(i9 << 3);
                        zzA10 = zzhvt.zzA(zzB2);
                        r1 = zzA9 + zzA10 + zzB2;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    zzB2 = zzhyt.zzz((List) unsafe.getObject(obj, j));
                    if (zzB2 > 0) {
                        zzA9 = zzhvt.zzA(i9 << 3);
                        zzA10 = zzhvt.zzA(zzB2);
                        r1 = zzA9 + zzA10 + zzB2;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    List list9 = (List) unsafe.getObject(obj, j);
                    int i27 = zzhyt.zza;
                    zzB2 = list9.size();
                    if (zzB2 > 0) {
                        zzA9 = zzhvt.zzA(i9 << 3);
                        zzA10 = zzhvt.zzA(zzB2);
                        r1 = zzA9 + zzA10 + zzB2;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    zzB2 = zzhyt.zzx((List) unsafe.getObject(obj, j));
                    if (zzB2 > 0) {
                        zzA9 = zzhvt.zzA(i9 << 3);
                        zzA10 = zzhvt.zzA(zzB2);
                        r1 = zzA9 + zzA10 + zzB2;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    zzB2 = zzhyt.zzv((List) unsafe.getObject(obj, j));
                    if (zzB2 > 0) {
                        zzA9 = zzhvt.zzA(i9 << 3);
                        zzA10 = zzhvt.zzA(zzB2);
                        r1 = zzA9 + zzA10 + zzB2;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    zzB2 = zzhyt.zzz((List) unsafe.getObject(obj, j));
                    if (zzB2 > 0) {
                        zzA9 = zzhvt.zzA(i9 << 3);
                        zzA10 = zzhvt.zzA(zzB2);
                        r1 = zzA9 + zzA10 + zzB2;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    zzB2 = zzhyt.zzB((List) unsafe.getObject(obj, j));
                    if (zzB2 > 0) {
                        zzA9 = zzhvt.zzA(i9 << 3);
                        zzA10 = zzhvt.zzA(zzB2);
                        r1 = zzA9 + zzA10 + zzB2;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    zzB2 = zzhyt.zzy((List) unsafe.getObject(obj, j));
                    if (zzB2 > 0) {
                        zzA9 = zzhvt.zzA(i9 << 3);
                        zzA10 = zzhvt.zzA(zzB2);
                        r1 = zzA9 + zzA10 + zzB2;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    zzB2 = zzhyt.zzu((List) unsafe.getObject(obj, j));
                    if (zzB2 > 0) {
                        zzA9 = zzhvt.zzA(i9 << 3);
                        zzA10 = zzhvt.zzA(zzB2);
                        r1 = zzA9 + zzA10 + zzB2;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    ?? r05 = (List) unsafe.getObject(obj, j);
                    zzhyr zzq2 = zzq(i4);
                    int i28 = zzhyt.zza;
                    int size6 = r05.size();
                    if (size6 == 0) {
                        r4 = z;
                    } else {
                        boolean z2 = z;
                        r4 = z2;
                        ?? r34 = z2;
                        while (r34 < size6) {
                            int zzE = zzhyt.zzE(i9, (zzhxz) r05.get(r34), zzq2);
                            r34++;
                            r4 = (r4 == true ? 1 : 0) + zzE;
                        }
                    }
                    i5 += r4;
                    break;
                case 50:
                    zzhxt zzhxtVar = (zzhxt) unsafe.getObject(obj, j);
                    zzhxs zzhxsVar = (zzhxs) zzr(i4);
                    if (!zzhxtVar.isEmpty()) {
                        zzs = z;
                        for (Map.Entry entry2 : zzhxtVar.entrySet()) {
                            zzs += zzhxsVar.zzd(i9, entry2.getKey(), entry2.getValue());
                        }
                        i5 += zzs;
                        break;
                    }
                    zzs = z;
                    i5 += zzs;
                case 51:
                    if (zzP(obj, i9, i4)) {
                        zzA = zzhvt.zzA(i9 << 3);
                        r0 = zzA + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzP(obj, i9, i4)) {
                        zzA2 = zzhvt.zzA(i9 << 3);
                        r0 = zzA2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case EACTags.SEX /* 53 */:
                    if (zzP(obj, i9, i4)) {
                        long zzJ = zzJ(obj, j);
                        zzA3 = zzhvt.zzA(i9 << 3);
                        zzB = zzhvt.zzB(zzJ);
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzP(obj, i9, i4)) {
                        long zzJ2 = zzJ(obj, j);
                        zzA3 = zzhvt.zzA(i9 << 3);
                        zzB = zzhvt.zzB(zzJ2);
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzP(obj, i9, i4)) {
                        long zzI = zzI(obj, j);
                        zzA3 = zzhvt.zzA(i9 << 3);
                        zzB = zzhvt.zzB(zzI);
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzP(obj, i9, i4)) {
                        zzA = zzhvt.zzA(i9 << 3);
                        r0 = zzA + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzP(obj, i9, i4)) {
                        zzA2 = zzhvt.zzA(i9 << 3);
                        r0 = zzA2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzP(obj, i9, i4)) {
                        zzA4 = zzhvt.zzA(i9 << 3);
                        r0 = zzA4 + 1;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (!zzP(obj, i9, i4)) {
                        break;
                    } else {
                        int i29 = i9 << 3;
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzhvi) {
                            zzA5 = zzhvt.zzA(i29);
                            zzc = ((zzhvi) object2).zzc();
                            zzA6 = zzhvt.zzA(zzc);
                            r0 = zzA5 + zzA6 + zzc;
                            i5 += r0;
                            break;
                        } else {
                            zzA3 = zzhvt.zzA(i29);
                            zzB = zzhvt.zzC((String) object2);
                            r0 = zzA3 + zzB;
                            i5 += r0;
                        }
                    }
                case 60:
                    if (zzP(obj, i9, i4)) {
                        r0 = zzhyt.zzD(i9, unsafe.getObject(obj, j), zzq(i4));
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzP(obj, i9, i4)) {
                        zzhvi zzhviVar2 = (zzhvi) unsafe.getObject(obj, j);
                        zzA5 = zzhvt.zzA(i9 << 3);
                        zzc = zzhviVar2.zzc();
                        zzA6 = zzhvt.zzA(zzc);
                        r0 = zzA5 + zzA6 + zzc;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case Elf64.Ehdr.E_SHSTRNDX /* 62 */:
                    if (zzP(obj, i9, i4)) {
                        int zzI2 = zzI(obj, j);
                        zzA3 = zzhvt.zzA(i9 << 3);
                        zzB = zzhvt.zzA(zzI2);
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzP(obj, i9, i4)) {
                        long zzI3 = zzI(obj, j);
                        zzA3 = zzhvt.zzA(i9 << 3);
                        zzB = zzhvt.zzB(zzI3);
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzP(obj, i9, i4)) {
                        zzA2 = zzhvt.zzA(i9 << 3);
                        r0 = zzA2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzP(obj, i9, i4)) {
                        zzA = zzhvt.zzA(i9 << 3);
                        r0 = zzA + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case EACTags.ADDRESS /* 66 */:
                    if (zzP(obj, i9, i4)) {
                        int zzI4 = zzI(obj, j);
                        zzA3 = zzhvt.zzA(i9 << 3);
                        zzB = zzhvt.zzA((zzI4 >> 31) ^ (zzI4 + zzI4));
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzP(obj, i9, i4)) {
                        long zzJ3 = zzJ(obj, j);
                        zzA3 = zzhvt.zzA(i9 << 3);
                        zzB = zzhvt.zzB((zzJ3 >> 63) ^ (zzJ3 + zzJ3));
                        r0 = zzA3 + zzB;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (zzP(obj, i9, i4)) {
                        r0 = zzhyt.zzE(i9, (zzhxz) unsafe.getObject(obj, j), zzq(i4));
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
            }
            i4 += 3;
            i6 = i;
            r12 = i2;
            z = false;
            i3 = 1048575;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0366  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0452  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0473  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x04dc  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x04fd  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x051e  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x053f  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0560  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0581  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x05a1  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x05c1  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x05f2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
    @Override // com.google.android.gms.internal.ads.zzhyr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzf(java.lang.Object r22, com.google.android.gms.internal.ads.zzhzr r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhyc.zzf(java.lang.Object, com.google.android.gms.internal.ads.zzhzr):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:314:0x0525 A[LOOP:5: B:312:0x0521->B:314:0x0525, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0536  */
    @Override // com.google.android.gms.internal.ads.zzhyr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzg(java.lang.Object r11, com.google.android.gms.internal.ads.zzhym r12, com.google.android.gms.internal.ads.zzhvy r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhyc.zzg(java.lang.Object, com.google.android.gms.internal.ads.zzhym, com.google.android.gms.internal.ads.zzhvy):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:195:0x0a26, code lost:
    
        throw new com.google.android.gms.internal.ads.zzhxd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0d6e, code lost:
    
        if (r5 == 1048575) goto L539;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0d70, code lost:
    
        r11.putInt(r7, r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0d74, code lost:
    
        r9 = r12.zzk;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0d7b, code lost:
    
        if (r9 >= r12.zzl) goto L657;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0d7d, code lost:
    
        r3 = (com.google.android.gms.internal.ads.zzhzd) zzx(r36, r12.zzj[r9], r3, r12.zzm, r36);
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0d93, code lost:
    
        if (r3 == null) goto L545;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0d95, code lost:
    
        r12.zzm.zzi(r7, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0d9a, code lost:
    
        if (r8 != 0) goto L551;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0d9e, code lost:
    
        if (r6 != r39) goto L549;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0da8, code lost:
    
        throw new com.google.android.gms.internal.ads.zzhxd(r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0db1, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0da9, code lost:
    
        r1 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0dad, code lost:
    
        if (r6 > r39) goto L555;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0daf, code lost:
    
        if (r10 != r8) goto L555;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0db7, code lost:
    
        throw new com.google.android.gms.internal.ads.zzhxd(r1);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:215:0x08f8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0908 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0cee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0cff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0d06 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0d14  */
    /* JADX WARN: Type inference failed for: r1v155, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int zzi(java.lang.Object r36, byte[] r37, int r38, int r39, int r40, com.google.android.gms.internal.ads.zzhuw r41) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3656
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhyc.zzi(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzhuw):int");
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final void zzj(Object obj, byte[] bArr, int i, int i2, zzhuw zzhuwVar) throws IOException {
        zzi(obj, bArr, i, i2, 0, zzhuwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final void zzk(Object obj) {
        if (zzE(obj)) {
            if (obj instanceof zzhwo) {
                zzhwo zzhwoVar = (zzhwo) obj;
                zzhwoVar.zzbq();
                zzhwoVar.zzbb();
                zzhwoVar.zzaY();
            }
            int[] iArr = this.zzc;
            for (int i = 0; i < iArr.length; i += 3) {
                int zzA = zzA(i);
                int i2 = 1048575 & zzA;
                int zzC = zzC(zzA);
                long j = i2;
                if (zzC != 9) {
                    if (zzC != 60 && zzC != 68) {
                        switch (zzC) {
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
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
                            case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                                ((zzhxa) zzhzj.zzn(obj, j)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzhxt) object).zzd();
                                    unsafe.putObject(obj, j, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzP(obj, iArr[i], i)) {
                        zzq(i).zzk(zzb.getObject(obj, j));
                    }
                }
                if (zzN(obj, i)) {
                    zzq(i).zzk(zzb.getObject(obj, j));
                }
            }
            this.zzm.zzj(obj);
            if (this.zzh) {
                this.zzn.zza(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final boolean zzl(Object obj) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i4 < this.zzk) {
            int[] iArr = this.zzj;
            int[] iArr2 = this.zzc;
            int i6 = iArr[i4];
            int i7 = iArr2[i6];
            int zzA = zzA(i6);
            int i8 = iArr2[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i5) {
                if (i9 != 1048575) {
                    i3 = zzb.getInt(obj, i9);
                }
                i2 = i3;
                i = i9;
            } else {
                i = i5;
                i2 = i3;
            }
            if ((268435456 & zzA) != 0 && !zzM(obj, i6, i, i2, i10)) {
                return false;
            }
            int zzC = zzC(zzA);
            if (zzC != 9 && zzC != 17) {
                if (zzC != 27) {
                    if (zzC == 60 || zzC == 68) {
                        if (zzP(obj, i7, i6) && !zzy(obj, zzA, zzq(i6))) {
                            return false;
                        }
                    } else if (zzC != 49) {
                        if (zzC != 50) {
                            continue;
                        } else {
                            zzhxt zzhxtVar = (zzhxt) zzhzj.zzn(obj, zzA & 1048575);
                            if (!zzhxtVar.isEmpty() && ((zzhxs) zzr(i6)).zze().zzc.zza() == zzhzq.MESSAGE) {
                                zzhyr zzhyrVar = null;
                                for (Object obj2 : zzhxtVar.values()) {
                                    if (zzhyrVar == null) {
                                        zzhyrVar = zzhyj.zza().zzb(obj2.getClass());
                                    }
                                    if (!zzhyrVar.zzl(obj2)) {
                                        return false;
                                    }
                                }
                            }
                        }
                    }
                }
                List list = (List) zzhzj.zzn(obj, zzA & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzhyr zzq = zzq(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzq.zzl(list.get(i11))) {
                            return false;
                        }
                    }
                }
            } else if (zzM(obj, i6, i, i2, i10) && !zzy(obj, zzA, zzq(i6))) {
                return false;
            }
            i4++;
            i5 = i;
            i3 = i2;
        }
        return !this.zzh || ((zzhwk) obj).zza.zze();
    }
}
