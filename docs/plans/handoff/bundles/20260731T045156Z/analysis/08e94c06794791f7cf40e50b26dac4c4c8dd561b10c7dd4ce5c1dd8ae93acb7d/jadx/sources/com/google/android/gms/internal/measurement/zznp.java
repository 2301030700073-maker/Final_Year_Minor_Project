package com.google.android.gms.internal.measurement;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.facebook.soloader.Elf64;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.bouncycastle.asn1.eac.EACTags;
import sun.misc.Unsafe;

/* compiled from: com.google.android.gms:play-services-measurement-base@@23.0.0 */
/* loaded from: classes4.dex */
final class zznp<T> implements zznx<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzop.zzq();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zznm zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzoi zzl;
    private final zzls zzm;

    private zznp(int[] iArr, Object[] objArr, int i, int i2, zznm zznmVar, boolean z, int[] iArr2, int i3, int i4, zznr zznrVar, zzmy zzmyVar, zzoi zzoiVar, zzls zzlsVar, zznh zznhVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        boolean z2 = false;
        if (zzlsVar != null && (zznmVar instanceof zzmc)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzi = iArr2;
        this.zzj = i3;
        this.zzk = i4;
        this.zzl = zzoiVar;
        this.zzm = zzlsVar;
        this.zzg = zznmVar;
    }

    private static boolean zzA(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzmf) {
            return ((zzmf) obj).zzcf();
        }
        return true;
    }

    private static void zzB(Object obj) {
        if (zzA(obj)) {
            return;
        }
        String valueOf = String.valueOf(obj);
        String.valueOf(valueOf);
        throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(valueOf)));
    }

    private static double zzC(Object obj, long j) {
        return ((Double) zzop.zzn(obj, j)).doubleValue();
    }

    private static float zzD(Object obj, long j) {
        return ((Float) zzop.zzn(obj, j)).floatValue();
    }

    private static int zzE(Object obj, long j) {
        return ((Integer) zzop.zzn(obj, j)).intValue();
    }

    private static long zzF(Object obj, long j) {
        return ((Long) zzop.zzn(obj, j)).longValue();
    }

    private static boolean zzG(Object obj, long j) {
        return ((Boolean) zzop.zzn(obj, j)).booleanValue();
    }

    private final boolean zzH(Object obj, Object obj2, int i) {
        return zzJ(obj, i) == zzJ(obj2, i);
    }

    private final boolean zzI(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzJ(obj, i) : (i3 & i4) != 0;
    }

    private final boolean zzJ(Object obj, int i) {
        int zzy = zzy(i);
        long j = zzy & 1048575;
        if (j != 1048575) {
            return (zzop.zzd(obj, j) & (1 << (zzy >>> 20))) != 0;
        }
        int zzx = zzx(i);
        long j2 = zzx & 1048575;
        switch (zzz(zzx)) {
            case 0:
                return Double.doubleToRawLongBits(zzop.zzl(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzop.zzj(obj, j2)) != 0;
            case 2:
                return zzop.zzf(obj, j2) != 0;
            case 3:
                return zzop.zzf(obj, j2) != 0;
            case 4:
                return zzop.zzd(obj, j2) != 0;
            case 5:
                return zzop.zzf(obj, j2) != 0;
            case 6:
                return zzop.zzd(obj, j2) != 0;
            case 7:
                return zzop.zzh(obj, j2);
            case 8:
                Object zzn = zzop.zzn(obj, j2);
                if (zzn instanceof String) {
                    return !((String) zzn).isEmpty();
                }
                if (zzn instanceof zzlh) {
                    return !zzlh.zzb.equals(zzn);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzop.zzn(obj, j2) != null;
            case 10:
                return !zzlh.zzb.equals(zzop.zzn(obj, j2));
            case 11:
                return zzop.zzd(obj, j2) != 0;
            case 12:
                return zzop.zzd(obj, j2) != 0;
            case 13:
                return zzop.zzd(obj, j2) != 0;
            case 14:
                return zzop.zzf(obj, j2) != 0;
            case 15:
                return zzop.zzd(obj, j2) != 0;
            case 16:
                return zzop.zzf(obj, j2) != 0;
            case 17:
                return zzop.zzn(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final void zzK(Object obj, int i) {
        int zzy = zzy(i);
        long j = 1048575 & zzy;
        if (j == 1048575) {
            return;
        }
        zzop.zze(obj, j, (1 << (zzy >>> 20)) | zzop.zzd(obj, j));
    }

    private final boolean zzL(Object obj, int i, int i2) {
        return zzop.zzd(obj, (long) (zzy(i2) & 1048575)) == i;
    }

    private final void zzM(Object obj, int i, int i2) {
        zzop.zze(obj, zzy(i2) & 1048575, i);
    }

    private final int zzN(int i, int i2) {
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

    private static final int zzO(byte[] bArr, int i, int i2, zzot zzotVar, Class cls, zzkw zzkwVar) throws IOException {
        int i3;
        zzot zzotVar2 = zzot.DOUBLE;
        switch (zzotVar) {
            case DOUBLE:
                i3 = i + 8;
                zzkwVar.zzc = Double.valueOf(Double.longBitsToDouble(zzkx.zze(bArr, i)));
                break;
            case FLOAT:
                i3 = i + 4;
                zzkwVar.zzc = Float.valueOf(Float.intBitsToFloat(zzkx.zzd(bArr, i)));
                break;
            case INT64:
            case UINT64:
                int zzc = zzkx.zzc(bArr, i, zzkwVar);
                zzkwVar.zzc = Long.valueOf(zzkwVar.zzb);
                return zzc;
            case INT32:
            case UINT32:
            case ENUM:
                int zza2 = zzkx.zza(bArr, i, zzkwVar);
                zzkwVar.zzc = Integer.valueOf(zzkwVar.zza);
                return zza2;
            case FIXED64:
            case SFIXED64:
                i3 = i + 8;
                zzkwVar.zzc = Long.valueOf(zzkx.zze(bArr, i));
                break;
            case FIXED32:
            case SFIXED32:
                i3 = i + 4;
                zzkwVar.zzc = Integer.valueOf(zzkx.zzd(bArr, i));
                break;
            case BOOL:
                int zzc2 = zzkx.zzc(bArr, i, zzkwVar);
                zzkwVar.zzc = Boolean.valueOf(zzkwVar.zzb != 0);
                return zzc2;
            case STRING:
                return zzkx.zzf(bArr, i, zzkwVar);
            case GROUP:
            default:
                throw new RuntimeException("unsupported field type.");
            case MESSAGE:
                return zzkx.zzh(zznu.zza().zzb(cls), bArr, i, i2, zzkwVar);
            case BYTES:
                return zzkx.zzg(bArr, i, zzkwVar);
            case SINT32:
                int zza3 = zzkx.zza(bArr, i, zzkwVar);
                zzkwVar.zzc = Integer.valueOf(zzlj.zzb(zzkwVar.zza));
                return zza3;
            case SINT64:
                int zzc3 = zzkx.zzc(bArr, i, zzkwVar);
                zzkwVar.zzc = Long.valueOf(zzlj.zzc(zzkwVar.zzb));
                return zzc3;
        }
        return i3;
    }

    private static final void zzP(int i, Object obj, zzov zzovVar) throws IOException {
        if (obj instanceof String) {
            zzovVar.zzm(i, (String) obj);
        } else {
            zzovVar.zzn(i, (zzlh) obj);
        }
    }

    static zzoj zzg(Object obj) {
        zzmf zzmfVar = (zzmf) obj;
        zzoj zzojVar = zzmfVar.zzc;
        if (zzojVar != zzoj.zza()) {
            return zzojVar;
        }
        zzoj zzb2 = zzoj.zzb();
        zzmfVar.zzc = zzb2;
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
    static com.google.android.gms.internal.measurement.zznp zzl(java.lang.Class r34, com.google.android.gms.internal.measurement.zznj r35, com.google.android.gms.internal.measurement.zznr r36, com.google.android.gms.internal.measurement.zzmy r37, com.google.android.gms.internal.measurement.zzoi r38, com.google.android.gms.internal.measurement.zzls r39, com.google.android.gms.internal.measurement.zznh r40) {
        /*
            Method dump skipped, instructions count: 1036
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zznp.zzl(java.lang.Class, com.google.android.gms.internal.measurement.zznj, com.google.android.gms.internal.measurement.zznr, com.google.android.gms.internal.measurement.zzmy, com.google.android.gms.internal.measurement.zzoi, com.google.android.gms.internal.measurement.zzls, com.google.android.gms.internal.measurement.zznh):com.google.android.gms.internal.measurement.zznp");
    }

    private static Field zzm(Class cls, String str) {
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

    private final void zzn(Object obj, Object obj2, int i) {
        if (zzJ(obj2, i)) {
            int zzx = zzx(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = zzx;
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
            zznx zzp = zzp(i);
            if (!zzJ(obj, i)) {
                if (zzA(object)) {
                    Object zza2 = zzp.zza();
                    zzp.zzd(zza2, object);
                    unsafe.putObject(obj, j, zza2);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzK(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzA(object2)) {
                Object zza3 = zzp.zza();
                zzp.zzd(zza3, object2);
                unsafe.putObject(obj, j, zza3);
                object2 = zza3;
            }
            zzp.zzd(object2, object);
        }
    }

    private final void zzo(Object obj, Object obj2, int i) {
        int[] iArr = this.zzc;
        int i2 = iArr[i];
        if (zzL(obj2, i2, i)) {
            int zzx = zzx(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = zzx;
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
            zznx zzp = zzp(i);
            if (!zzL(obj, i2, i)) {
                if (zzA(object)) {
                    Object zza2 = zzp.zza();
                    zzp.zzd(zza2, object);
                    unsafe.putObject(obj, j, zza2);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzM(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzA(object2)) {
                Object zza3 = zzp.zza();
                zzp.zzd(zza3, object2);
                unsafe.putObject(obj, j, zza3);
                object2 = zza3;
            }
            zzp.zzd(object2, object);
        }
    }

    private final zznx zzp(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zznx zznxVar = (zznx) objArr[i3];
        if (zznxVar != null) {
            return zznxVar;
        }
        zznx zzb2 = zznu.zza().zzb((Class) objArr[i3 + 1]);
        objArr[i3] = zzb2;
        return zzb2;
    }

    private final Object zzq(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final zzmk zzr(int i) {
        int i2 = i / 3;
        return (zzmk) this.zzd[i2 + i2 + 1];
    }

    private final Object zzs(Object obj, int i) {
        zznx zzp = zzp(i);
        int zzx = zzx(i) & 1048575;
        if (!zzJ(obj, i)) {
            return zzp.zza();
        }
        Object object = zzb.getObject(obj, zzx);
        if (zzA(object)) {
            return object;
        }
        Object zza2 = zzp.zza();
        if (object != null) {
            zzp.zzd(zza2, object);
        }
        return zza2;
    }

    private final void zzt(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzx(i) & 1048575, obj2);
        zzK(obj, i);
    }

    private final Object zzu(Object obj, int i, int i2) {
        zznx zzp = zzp(i2);
        if (!zzL(obj, i, i2)) {
            return zzp.zza();
        }
        Object object = zzb.getObject(obj, zzx(i2) & 1048575);
        if (zzA(object)) {
            return object;
        }
        Object zza2 = zzp.zza();
        if (object != null) {
            zzp.zzd(zza2, object);
        }
        return zza2;
    }

    private final void zzv(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzx(i2) & 1048575, obj2);
        zzM(obj, i, i2);
    }

    private static boolean zzw(Object obj, int i, zznx zznxVar) {
        return zznxVar.zzk(zzop.zzn(obj, i & 1048575));
    }

    private final int zzx(int i) {
        return this.zzc[i + 1];
    }

    private final int zzy(int i) {
        return this.zzc[i + 2];
    }

    private static int zzz(int i) {
        return (i >>> 20) & 255;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final Object zza() {
        return ((zzmf) this.zzg).zzch();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zzb(Object obj, Object obj2) {
        boolean zzB;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzx = zzx(i);
            long j = zzx & 1048575;
            switch (zzz(zzx)) {
                case 0:
                    if (zzH(obj, obj2, i) && Double.doubleToLongBits(zzop.zzl(obj, j)) == Double.doubleToLongBits(zzop.zzl(obj2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzH(obj, obj2, i) && Float.floatToIntBits(zzop.zzj(obj, j)) == Float.floatToIntBits(zzop.zzj(obj2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzH(obj, obj2, i) && zzop.zzf(obj, j) == zzop.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzH(obj, obj2, i) && zzop.zzf(obj, j) == zzop.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzH(obj, obj2, i) && zzop.zzd(obj, j) == zzop.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzH(obj, obj2, i) && zzop.zzf(obj, j) == zzop.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzH(obj, obj2, i) && zzop.zzd(obj, j) == zzop.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzH(obj, obj2, i) && zzop.zzh(obj, j) == zzop.zzh(obj2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzH(obj, obj2, i) && zznz.zzB(zzop.zzn(obj, j), zzop.zzn(obj2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzH(obj, obj2, i) && zznz.zzB(zzop.zzn(obj, j), zzop.zzn(obj2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzH(obj, obj2, i) && zznz.zzB(zzop.zzn(obj, j), zzop.zzn(obj2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzH(obj, obj2, i) && zzop.zzd(obj, j) == zzop.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzH(obj, obj2, i) && zzop.zzd(obj, j) == zzop.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzH(obj, obj2, i) && zzop.zzd(obj, j) == zzop.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzH(obj, obj2, i) && zzop.zzf(obj, j) == zzop.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzH(obj, obj2, i) && zzop.zzd(obj, j) == zzop.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzH(obj, obj2, i) && zzop.zzf(obj, j) == zzop.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzH(obj, obj2, i) && zznz.zzB(zzop.zzn(obj, j), zzop.zzn(obj2, j))) {
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
                    zzB = zznz.zzB(zzop.zzn(obj, j), zzop.zzn(obj2, j));
                    break;
                case 50:
                    zzB = zznz.zzB(zzop.zzn(obj, j), zzop.zzn(obj2, j));
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
                    long zzy = zzy(i) & 1048575;
                    if (zzop.zzd(obj, zzy) == zzop.zzd(obj2, zzy) && zznz.zzB(zzop.zzn(obj, j), zzop.zzn(obj2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzB) {
                return false;
            }
        }
        if (!((zzmf) obj).zzc.equals(((zzmf) obj2).zzc)) {
            return false;
        }
        if (this.zzh) {
            return ((zzmc) obj).zzb.equals(((zzmc) obj2).zzb);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
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
                int hashCode = (i4 * 53) + ((zzmf) obj).zzc.hashCode();
                return this.zzh ? (hashCode * 53) + ((zzmc) obj).zzb.zza.hashCode() : hashCode;
            }
            int zzx = zzx(i3);
            int i5 = 1048575 & zzx;
            int zzz = zzz(zzx);
            int i6 = iArr[i3];
            long j = i5;
            int i7 = 37;
            switch (zzz) {
                case 0:
                    i = i4 * 53;
                    doubleToLongBits = Double.doubleToLongBits(zzop.zzl(obj, j));
                    byte[] bArr = zzmp.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i4 = i + floatToIntBits;
                    break;
                case 1:
                    i = i4 * 53;
                    floatToIntBits = Float.floatToIntBits(zzop.zzj(obj, j));
                    i4 = i + floatToIntBits;
                    break;
                case 2:
                    i = i4 * 53;
                    doubleToLongBits = zzop.zzf(obj, j);
                    byte[] bArr2 = zzmp.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i4 = i + floatToIntBits;
                    break;
                case 3:
                    i = i4 * 53;
                    doubleToLongBits = zzop.zzf(obj, j);
                    byte[] bArr3 = zzmp.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i4 = i + floatToIntBits;
                    break;
                case 4:
                    i = i4 * 53;
                    floatToIntBits = zzop.zzd(obj, j);
                    i4 = i + floatToIntBits;
                    break;
                case 5:
                    i = i4 * 53;
                    doubleToLongBits = zzop.zzf(obj, j);
                    byte[] bArr4 = zzmp.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i4 = i + floatToIntBits;
                    break;
                case 6:
                    i = i4 * 53;
                    floatToIntBits = zzop.zzd(obj, j);
                    i4 = i + floatToIntBits;
                    break;
                case 7:
                    i = i4 * 53;
                    floatToIntBits = zzmp.zzb(zzop.zzh(obj, j));
                    i4 = i + floatToIntBits;
                    break;
                case 8:
                    i = i4 * 53;
                    floatToIntBits = ((String) zzop.zzn(obj, j)).hashCode();
                    i4 = i + floatToIntBits;
                    break;
                case 9:
                    i2 = i4 * 53;
                    Object zzn = zzop.zzn(obj, j);
                    if (zzn != null) {
                        i7 = zzn.hashCode();
                    }
                    i4 = i2 + i7;
                    break;
                case 10:
                    i = i4 * 53;
                    floatToIntBits = zzop.zzn(obj, j).hashCode();
                    i4 = i + floatToIntBits;
                    break;
                case 11:
                    i = i4 * 53;
                    floatToIntBits = zzop.zzd(obj, j);
                    i4 = i + floatToIntBits;
                    break;
                case 12:
                    i = i4 * 53;
                    floatToIntBits = zzop.zzd(obj, j);
                    i4 = i + floatToIntBits;
                    break;
                case 13:
                    i = i4 * 53;
                    floatToIntBits = zzop.zzd(obj, j);
                    i4 = i + floatToIntBits;
                    break;
                case 14:
                    i = i4 * 53;
                    doubleToLongBits = zzop.zzf(obj, j);
                    byte[] bArr5 = zzmp.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i4 = i + floatToIntBits;
                    break;
                case 15:
                    i = i4 * 53;
                    floatToIntBits = zzop.zzd(obj, j);
                    i4 = i + floatToIntBits;
                    break;
                case 16:
                    i = i4 * 53;
                    doubleToLongBits = zzop.zzf(obj, j);
                    byte[] bArr6 = zzmp.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i4 = i + floatToIntBits;
                    break;
                case 17:
                    i2 = i4 * 53;
                    Object zzn2 = zzop.zzn(obj, j);
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
                    floatToIntBits = zzop.zzn(obj, j).hashCode();
                    i4 = i + floatToIntBits;
                    break;
                case 50:
                    i = i4 * 53;
                    floatToIntBits = zzop.zzn(obj, j).hashCode();
                    i4 = i + floatToIntBits;
                    break;
                case 51:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        doubleToLongBits = Double.doubleToLongBits(zzC(obj, j));
                        byte[] bArr7 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 52:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = Float.floatToIntBits(zzD(obj, j));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case EACTags.SEX /* 53 */:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        doubleToLongBits = zzF(obj, j);
                        byte[] bArr8 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 54:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        doubleToLongBits = zzF(obj, j);
                        byte[] bArr9 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 55:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzE(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 56:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        doubleToLongBits = zzF(obj, j);
                        byte[] bArr10 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 57:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzE(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 58:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzmp.zzb(zzG(obj, j));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = ((String) zzop.zzn(obj, j)).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 60:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzop.zzn(obj, j).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 61:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzop.zzn(obj, j).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    }
                case Elf64.Ehdr.E_SHSTRNDX /* 62 */:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzE(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 63:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzE(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 64:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzE(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 65:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        doubleToLongBits = zzF(obj, j);
                        byte[] bArr11 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case EACTags.ADDRESS /* 66 */:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzE(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    }
                case 67:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        doubleToLongBits = zzF(obj, j);
                        byte[] bArr12 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    }
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (!zzL(obj, i6, i3)) {
                        break;
                    } else {
                        i = i4 * 53;
                        floatToIntBits = zzop.zzn(obj, j).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    }
            }
            i3 += 3;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final void zzd(Object obj, Object obj2) {
        zzB(obj);
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i >= iArr.length) {
                zznz.zzD(this.zzl, obj, obj2);
                if (this.zzh) {
                    zznz.zzC(this.zzm, obj, obj2);
                    return;
                }
                return;
            }
            int zzx = zzx(i);
            int i2 = 1048575 & zzx;
            int zzz = zzz(zzx);
            int i3 = iArr[i];
            long j = i2;
            switch (zzz) {
                case 0:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zzm(obj, j, zzop.zzl(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 1:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zzk(obj, j, zzop.zzj(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 2:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zzg(obj, j, zzop.zzf(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 3:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zzg(obj, j, zzop.zzf(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 4:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zze(obj, j, zzop.zzd(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 5:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zzg(obj, j, zzop.zzf(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 6:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zze(obj, j, zzop.zzd(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 7:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zzi(obj, j, zzop.zzh(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 8:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zzo(obj, j, zzop.zzn(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 9:
                    zzn(obj, obj2, i);
                    break;
                case 10:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zzo(obj, j, zzop.zzn(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 11:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zze(obj, j, zzop.zzd(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 12:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zze(obj, j, zzop.zzd(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 13:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zze(obj, j, zzop.zzd(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 14:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zzg(obj, j, zzop.zzf(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 15:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zze(obj, j, zzop.zzd(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 16:
                    if (!zzJ(obj2, i)) {
                        break;
                    } else {
                        zzop.zzg(obj, j, zzop.zzf(obj2, j));
                        zzK(obj, i);
                        break;
                    }
                case 17:
                    zzn(obj, obj2, i);
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
                    zzmo zzmoVar = (zzmo) zzop.zzn(obj, j);
                    zzmo zzmoVar2 = (zzmo) zzop.zzn(obj2, j);
                    int size = zzmoVar.size();
                    int size2 = zzmoVar2.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzmoVar.zza()) {
                            zzmoVar = zzmoVar.zzg(size2 + size);
                        }
                        zzmoVar.addAll(zzmoVar2);
                    }
                    if (size > 0) {
                        zzmoVar2 = zzmoVar;
                    }
                    zzop.zzo(obj, j, zzmoVar2);
                    break;
                case 50:
                    int i4 = zznz.zza;
                    zzop.zzo(obj, j, zznh.zza(zzop.zzn(obj, j), zzop.zzn(obj2, j)));
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
                    if (!zzL(obj2, i3, i)) {
                        break;
                    } else {
                        zzop.zzo(obj, j, zzop.zzn(obj2, j));
                        zzM(obj, i3, i);
                        break;
                    }
                case 60:
                    zzo(obj, obj2, i);
                    break;
                case 61:
                case Elf64.Ehdr.E_SHSTRNDX /* 62 */:
                case 63:
                case 64:
                case 65:
                case EACTags.ADDRESS /* 66 */:
                case 67:
                    if (!zzL(obj2, i3, i)) {
                        break;
                    } else {
                        zzop.zzo(obj, j, zzop.zzn(obj2, j));
                        zzM(obj, i3, i);
                        break;
                    }
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    zzo(obj, obj2, i);
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
    /* JADX WARN: Type inference failed for: r3v40, types: [int] */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v47, types: [int] */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r3v58 */
    /* JADX WARN: Type inference failed for: r3v59 */
    /* JADX WARN: Type inference failed for: r3v60 */
    /* JADX WARN: Type inference failed for: r3v61 */
    /* JADX WARN: Type inference failed for: r3v62 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30, types: [int] */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v37, types: [int] */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v41 */
    /* JADX WARN: Type inference failed for: r4v42 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    @Override // com.google.android.gms.internal.measurement.zznx
    public final int zze(Object obj) {
        int i;
        int i2;
        ?? r5;
        int zzz;
        int zzz2;
        int zzz3;
        int zzA;
        int zzz4;
        int zzz5;
        int zzc;
        int zzz6;
        ?? zzo;
        int size;
        int zzz7;
        int zzB;
        int zzB2;
        ?? r3;
        int zzD;
        ?? r1;
        ?? r0;
        int zzx;
        int zzz8;
        int zzz9;
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
                int zzi = i5 + ((zzmf) obj).zzc.zzi();
                if (!this.zzh) {
                    return zzi;
                }
                zzoe zzoeVar = ((zzmc) obj).zzb.zza;
                int zzc2 = zzoeVar.zzc();
                int i7 = 0;
                for (int i8 = 0; i8 < zzc2; i8++) {
                    Map.Entry zzd = zzoeVar.zzd(i8);
                    i7 += zzlw.zzj((zzlv) ((zzob) zzd).zza(), zzd.getValue());
                }
                for (Map.Entry entry : zzoeVar.zze()) {
                    i7 += zzlw.zzj((zzlv) entry.getKey(), entry.getValue());
                }
                return zzi + i7;
            }
            int zzx2 = zzx(i4);
            int zzz10 = zzz(zzx2);
            int i9 = iArr[i4];
            int i10 = iArr[i4 + 2];
            int i11 = i10 & i3;
            if (zzz10 <= 17) {
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
            int i12 = zzx2 & i3;
            if (zzz10 >= zzlx.DOUBLE_LIST_PACKED.zza()) {
                zzlx.SINT64_LIST_PACKED.zza();
            }
            long j = i12;
            switch (zzz10) {
                case 0:
                    if (zzI(obj, i4, i, i2, r5)) {
                        zzz = zzlm.zzz(i9 << 3);
                        r0 = zzz + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzI(obj, i4, i, i2, r5)) {
                        zzz2 = zzlm.zzz(i9 << 3);
                        r0 = zzz2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzI(obj, i4, i, i2, r5)) {
                        long j2 = unsafe.getLong(obj, j);
                        zzz3 = zzlm.zzz(i9 << 3);
                        zzA = zzlm.zzA(j2);
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzI(obj, i4, i, i2, r5)) {
                        long j3 = unsafe.getLong(obj, j);
                        zzz3 = zzlm.zzz(i9 << 3);
                        zzA = zzlm.zzA(j3);
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzI(obj, i4, i, i2, r5)) {
                        long j4 = unsafe.getInt(obj, j);
                        zzz3 = zzlm.zzz(i9 << 3);
                        zzA = zzlm.zzA(j4);
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzI(obj, i4, i, i2, r5)) {
                        zzz = zzlm.zzz(i9 << 3);
                        r0 = zzz + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzI(obj, i4, i, i2, r5)) {
                        zzz2 = zzlm.zzz(i9 << 3);
                        r0 = zzz2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzI(obj, i4, i, i2, r5)) {
                        zzz4 = zzlm.zzz(i9 << 3);
                        r0 = zzz4 + 1;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zzI(obj, i4, i, i2, r5)) {
                        break;
                    } else {
                        int i13 = i9 << 3;
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzlh) {
                            zzz5 = zzlm.zzz(i13);
                            zzc = ((zzlh) object).zzc();
                            zzz6 = zzlm.zzz(zzc);
                            r0 = zzz5 + zzz6 + zzc;
                            i5 += r0;
                            break;
                        } else {
                            zzz3 = zzlm.zzz(i13);
                            zzA = zzlm.zzB((String) object);
                            r0 = zzz3 + zzA;
                            i5 += r0;
                        }
                    }
                case 9:
                    if (zzI(obj, i4, i, i2, r5)) {
                        r0 = zznz.zzz(i9, unsafe.getObject(obj, j), zzp(i4));
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zzI(obj, i4, i, i2, r5)) {
                        zzlh zzlhVar = (zzlh) unsafe.getObject(obj, j);
                        zzz5 = zzlm.zzz(i9 << 3);
                        zzc = zzlhVar.zzc();
                        zzz6 = zzlm.zzz(zzc);
                        r0 = zzz5 + zzz6 + zzc;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzI(obj, i4, i, i2, r5)) {
                        int i14 = unsafe.getInt(obj, j);
                        zzz3 = zzlm.zzz(i9 << 3);
                        zzA = zzlm.zzz(i14);
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzI(obj, i4, i, i2, r5)) {
                        long j5 = unsafe.getInt(obj, j);
                        zzz3 = zzlm.zzz(i9 << 3);
                        zzA = zzlm.zzA(j5);
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzI(obj, i4, i, i2, r5)) {
                        zzz2 = zzlm.zzz(i9 << 3);
                        r0 = zzz2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzI(obj, i4, i, i2, r5)) {
                        zzz = zzlm.zzz(i9 << 3);
                        r0 = zzz + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzI(obj, i4, i, i2, r5)) {
                        int i15 = unsafe.getInt(obj, j);
                        zzz3 = zzlm.zzz(i9 << 3);
                        zzA = zzlm.zzz((i15 >> 31) ^ (i15 + i15));
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzI(obj, i4, i, i2, r5)) {
                        long j6 = unsafe.getLong(obj, j);
                        zzz3 = zzlm.zzz(i9 << 3);
                        zzA = zzlm.zzA((j6 >> 63) ^ (j6 + j6));
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zzI(obj, i4, i, i2, r5)) {
                        r0 = zzlm.zzG(i9, (zznm) unsafe.getObject(obj, j), zzp(i4));
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    r0 = zznz.zzy(i9, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 19:
                    r0 = zznz.zzw(i9, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j);
                    int i16 = zznz.zza;
                    if (list.size() != 0) {
                        zzo = zznz.zzo(list) + (list.size() * zzlm.zzz(i9 << 3));
                        i5 += zzo;
                        break;
                    }
                    zzo = z;
                    i5 += zzo;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j);
                    int i17 = zznz.zza;
                    size = list2.size();
                    if (size != 0) {
                        zzz3 = zznz.zzp(list2);
                        zzz7 = zzlm.zzz(i9 << 3);
                        zzA = size * zzz7;
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i18 = zznz.zza;
                    size = list3.size();
                    if (size != 0) {
                        zzz3 = zznz.zzs(list3);
                        zzz7 = zzlm.zzz(i9 << 3);
                        zzA = size * zzz7;
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 23:
                    r0 = zznz.zzy(i9, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 24:
                    r0 = zznz.zzw(i9, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j);
                    int i19 = zznz.zza;
                    int size2 = list4.size();
                    if (size2 != 0) {
                        r0 = size2 * (zzlm.zzz(i9 << 3) + 1);
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 26:
                    ?? r02 = (List) unsafe.getObject(obj, j);
                    int i20 = zznz.zza;
                    int size3 = r02.size();
                    if (size3 != 0) {
                        int zzz11 = zzlm.zzz(i9 << 3) * size3;
                        if (r02 instanceof zzmx) {
                            zzmx zzmxVar = (zzmx) r02;
                            zzo = zzz11;
                            for (?? r32 = z; r32 < size3; r32++) {
                                Object zzc3 = zzmxVar.zzc();
                                if (zzc3 instanceof zzlh) {
                                    int zzc4 = ((zzlh) zzc3).zzc();
                                    zzB2 = zzo + zzlm.zzz(zzc4) + zzc4;
                                } else {
                                    zzB2 = zzo + zzlm.zzB((String) zzc3);
                                }
                                zzo = zzB2;
                            }
                        } else {
                            zzo = zzz11;
                            for (?? r33 = z; r33 < size3; r33++) {
                                Object obj2 = r02.get(r33);
                                if (obj2 instanceof zzlh) {
                                    int zzc5 = ((zzlh) obj2).zzc();
                                    zzB = zzo + zzlm.zzz(zzc5) + zzc5;
                                } else {
                                    zzB = zzo + zzlm.zzB((String) obj2);
                                }
                                zzo = zzB;
                            }
                        }
                        i5 += zzo;
                        break;
                    }
                    zzo = z;
                    i5 += zzo;
                case 27:
                    ?? r03 = (List) unsafe.getObject(obj, j);
                    zznx zzp = zzp(i4);
                    int i21 = zznz.zza;
                    int size4 = r03.size();
                    if (size4 == 0) {
                        r3 = z;
                    } else {
                        r3 = zzlm.zzz(i9 << 3) * size4;
                        for (?? r42 = z; r42 < size4; r42++) {
                            Object obj3 = r03.get(r42);
                            if (obj3 instanceof zzmw) {
                                int zzb2 = ((zzmw) obj3).zzb();
                                zzD = (r3 == true ? 1 : 0) + zzlm.zzz(zzb2) + zzb2;
                            } else {
                                zzD = (r3 == true ? 1 : 0) + zzlm.zzD((zznm) obj3, zzp);
                            }
                            r3 = zzD;
                        }
                    }
                    i5 += r3;
                    break;
                case 28:
                    ?? r04 = (List) unsafe.getObject(obj, j);
                    int i22 = zznz.zza;
                    int size5 = r04.size();
                    if (size5 == 0) {
                        r1 = z;
                    } else {
                        r1 = size5 * zzlm.zzz(i9 << 3);
                        for (?? r2 = z; r2 < r04.size(); r2++) {
                            int zzc6 = ((zzlh) r04.get(r2)).zzc();
                            r1 += zzlm.zzz(zzc6) + zzc6;
                        }
                    }
                    i5 += r1;
                    break;
                case 29:
                    List list5 = (List) unsafe.getObject(obj, j);
                    int i23 = zznz.zza;
                    size = list5.size();
                    if (size != 0) {
                        zzz3 = zznz.zzt(list5);
                        zzz7 = zzlm.zzz(i9 << 3);
                        zzA = size * zzz7;
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 30:
                    List list6 = (List) unsafe.getObject(obj, j);
                    int i24 = zznz.zza;
                    size = list6.size();
                    if (size != 0) {
                        zzz3 = zznz.zzr(list6);
                        zzz7 = zzlm.zzz(i9 << 3);
                        zzA = size * zzz7;
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 31:
                    r0 = zznz.zzw(i9, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 32:
                    r0 = zznz.zzy(i9, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 33:
                    List list7 = (List) unsafe.getObject(obj, j);
                    int i25 = zznz.zza;
                    size = list7.size();
                    if (size != 0) {
                        zzz3 = zznz.zzu(list7);
                        zzz7 = zzlm.zzz(i9 << 3);
                        zzA = size * zzz7;
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 34:
                    List list8 = (List) unsafe.getObject(obj, j);
                    int i26 = zznz.zza;
                    size = list8.size();
                    if (size != 0) {
                        zzz3 = zznz.zzq(list8);
                        zzz7 = zzlm.zzz(i9 << 3);
                        zzA = size * zzz7;
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 35:
                    zzx = zznz.zzx((List) unsafe.getObject(obj, j));
                    if (zzx > 0) {
                        zzz8 = zzlm.zzz(i9 << 3);
                        zzz9 = zzlm.zzz(zzx);
                        r1 = zzz8 + zzz9 + zzx;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    zzx = zznz.zzv((List) unsafe.getObject(obj, j));
                    if (zzx > 0) {
                        zzz8 = zzlm.zzz(i9 << 3);
                        zzz9 = zzlm.zzz(zzx);
                        r1 = zzz8 + zzz9 + zzx;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    zzx = zznz.zzo((List) unsafe.getObject(obj, j));
                    if (zzx > 0) {
                        zzz8 = zzlm.zzz(i9 << 3);
                        zzz9 = zzlm.zzz(zzx);
                        r1 = zzz8 + zzz9 + zzx;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    zzx = zznz.zzp((List) unsafe.getObject(obj, j));
                    if (zzx > 0) {
                        zzz8 = zzlm.zzz(i9 << 3);
                        zzz9 = zzlm.zzz(zzx);
                        r1 = zzz8 + zzz9 + zzx;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    zzx = zznz.zzs((List) unsafe.getObject(obj, j));
                    if (zzx > 0) {
                        zzz8 = zzlm.zzz(i9 << 3);
                        zzz9 = zzlm.zzz(zzx);
                        r1 = zzz8 + zzz9 + zzx;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    zzx = zznz.zzx((List) unsafe.getObject(obj, j));
                    if (zzx > 0) {
                        zzz8 = zzlm.zzz(i9 << 3);
                        zzz9 = zzlm.zzz(zzx);
                        r1 = zzz8 + zzz9 + zzx;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    zzx = zznz.zzv((List) unsafe.getObject(obj, j));
                    if (zzx > 0) {
                        zzz8 = zzlm.zzz(i9 << 3);
                        zzz9 = zzlm.zzz(zzx);
                        r1 = zzz8 + zzz9 + zzx;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    List list9 = (List) unsafe.getObject(obj, j);
                    int i27 = zznz.zza;
                    zzx = list9.size();
                    if (zzx > 0) {
                        zzz8 = zzlm.zzz(i9 << 3);
                        zzz9 = zzlm.zzz(zzx);
                        r1 = zzz8 + zzz9 + zzx;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    zzx = zznz.zzt((List) unsafe.getObject(obj, j));
                    if (zzx > 0) {
                        zzz8 = zzlm.zzz(i9 << 3);
                        zzz9 = zzlm.zzz(zzx);
                        r1 = zzz8 + zzz9 + zzx;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    zzx = zznz.zzr((List) unsafe.getObject(obj, j));
                    if (zzx > 0) {
                        zzz8 = zzlm.zzz(i9 << 3);
                        zzz9 = zzlm.zzz(zzx);
                        r1 = zzz8 + zzz9 + zzx;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    zzx = zznz.zzv((List) unsafe.getObject(obj, j));
                    if (zzx > 0) {
                        zzz8 = zzlm.zzz(i9 << 3);
                        zzz9 = zzlm.zzz(zzx);
                        r1 = zzz8 + zzz9 + zzx;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    zzx = zznz.zzx((List) unsafe.getObject(obj, j));
                    if (zzx > 0) {
                        zzz8 = zzlm.zzz(i9 << 3);
                        zzz9 = zzlm.zzz(zzx);
                        r1 = zzz8 + zzz9 + zzx;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    zzx = zznz.zzu((List) unsafe.getObject(obj, j));
                    if (zzx > 0) {
                        zzz8 = zzlm.zzz(i9 << 3);
                        zzz9 = zzlm.zzz(zzx);
                        r1 = zzz8 + zzz9 + zzx;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    zzx = zznz.zzq((List) unsafe.getObject(obj, j));
                    if (zzx > 0) {
                        zzz8 = zzlm.zzz(i9 << 3);
                        zzz9 = zzlm.zzz(zzx);
                        r1 = zzz8 + zzz9 + zzx;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    ?? r05 = (List) unsafe.getObject(obj, j);
                    zznx zzp2 = zzp(i4);
                    int i28 = zznz.zza;
                    int size6 = r05.size();
                    if (size6 == 0) {
                        r4 = z;
                    } else {
                        boolean z2 = z;
                        r4 = z2;
                        ?? r34 = z2;
                        while (r34 < size6) {
                            int zzG = zzlm.zzG(i9, (zznm) r05.get(r34), zzp2);
                            r34++;
                            r4 = (r4 == true ? 1 : 0) + zzG;
                        }
                    }
                    i5 += r4;
                    break;
                case 50:
                    zzng zzngVar = (zzng) unsafe.getObject(obj, j);
                    zznf zznfVar = (zznf) zzq(i4);
                    if (!zzngVar.isEmpty()) {
                        zzo = z;
                        for (Map.Entry entry2 : zzngVar.entrySet()) {
                            zzo += zznfVar.zzd(i9, entry2.getKey(), entry2.getValue());
                        }
                        i5 += zzo;
                        break;
                    }
                    zzo = z;
                    i5 += zzo;
                case 51:
                    if (zzL(obj, i9, i4)) {
                        zzz = zzlm.zzz(i9 << 3);
                        r0 = zzz + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzL(obj, i9, i4)) {
                        zzz2 = zzlm.zzz(i9 << 3);
                        r0 = zzz2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case EACTags.SEX /* 53 */:
                    if (zzL(obj, i9, i4)) {
                        long zzF = zzF(obj, j);
                        zzz3 = zzlm.zzz(i9 << 3);
                        zzA = zzlm.zzA(zzF);
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzL(obj, i9, i4)) {
                        long zzF2 = zzF(obj, j);
                        zzz3 = zzlm.zzz(i9 << 3);
                        zzA = zzlm.zzA(zzF2);
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzL(obj, i9, i4)) {
                        long zzE = zzE(obj, j);
                        zzz3 = zzlm.zzz(i9 << 3);
                        zzA = zzlm.zzA(zzE);
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzL(obj, i9, i4)) {
                        zzz = zzlm.zzz(i9 << 3);
                        r0 = zzz + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzL(obj, i9, i4)) {
                        zzz2 = zzlm.zzz(i9 << 3);
                        r0 = zzz2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzL(obj, i9, i4)) {
                        zzz4 = zzlm.zzz(i9 << 3);
                        r0 = zzz4 + 1;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    if (!zzL(obj, i9, i4)) {
                        break;
                    } else {
                        int i29 = i9 << 3;
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzlh) {
                            zzz5 = zzlm.zzz(i29);
                            zzc = ((zzlh) object2).zzc();
                            zzz6 = zzlm.zzz(zzc);
                            r0 = zzz5 + zzz6 + zzc;
                            i5 += r0;
                            break;
                        } else {
                            zzz3 = zzlm.zzz(i29);
                            zzA = zzlm.zzB((String) object2);
                            r0 = zzz3 + zzA;
                            i5 += r0;
                        }
                    }
                case 60:
                    if (zzL(obj, i9, i4)) {
                        r0 = zznz.zzz(i9, unsafe.getObject(obj, j), zzp(i4));
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzL(obj, i9, i4)) {
                        zzlh zzlhVar2 = (zzlh) unsafe.getObject(obj, j);
                        zzz5 = zzlm.zzz(i9 << 3);
                        zzc = zzlhVar2.zzc();
                        zzz6 = zzlm.zzz(zzc);
                        r0 = zzz5 + zzz6 + zzc;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case Elf64.Ehdr.E_SHSTRNDX /* 62 */:
                    if (zzL(obj, i9, i4)) {
                        int zzE2 = zzE(obj, j);
                        zzz3 = zzlm.zzz(i9 << 3);
                        zzA = zzlm.zzz(zzE2);
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzL(obj, i9, i4)) {
                        long zzE3 = zzE(obj, j);
                        zzz3 = zzlm.zzz(i9 << 3);
                        zzA = zzlm.zzA(zzE3);
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzL(obj, i9, i4)) {
                        zzz2 = zzlm.zzz(i9 << 3);
                        r0 = zzz2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzL(obj, i9, i4)) {
                        zzz = zzlm.zzz(i9 << 3);
                        r0 = zzz + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case EACTags.ADDRESS /* 66 */:
                    if (zzL(obj, i9, i4)) {
                        int zzE4 = zzE(obj, j);
                        zzz3 = zzlm.zzz(i9 << 3);
                        zzA = zzlm.zzz((zzE4 >> 31) ^ (zzE4 + zzE4));
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzL(obj, i9, i4)) {
                        long zzF3 = zzF(obj, j);
                        zzz3 = zzlm.zzz(i9 << 3);
                        zzA = zzlm.zzA((zzF3 >> 63) ^ (zzF3 + zzF3));
                        r0 = zzz3 + zzA;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    if (zzL(obj, i9, i4)) {
                        r0 = zzlm.zzG(i9, (zznm) unsafe.getObject(obj, j), zzp(i4));
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

    /* JADX WARN: Removed duplicated region for block: B:235:0x05be  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x05ca  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0031  */
    @Override // com.google.android.gms.internal.measurement.zznx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzf(java.lang.Object r20, com.google.android.gms.internal.measurement.zzov r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zznp.zzf(java.lang.Object, com.google.android.gms.internal.measurement.zzov):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0e69, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0e6f, code lost:
    
        throw new java.lang.RuntimeException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0e73, code lost:
    
        r3 = r3 + 1;
        r1 = r31;
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0e7f, code lost:
    
        if (r4 == null) goto L592;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0e81, code lost:
    
        ((com.google.android.gms.internal.measurement.zzmf) r0).zzc = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0e88, code lost:
    
        if (r11 != 0) goto L598;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0e8c, code lost:
    
        if (r2 != r35) goto L596;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0e96, code lost:
    
        throw new com.google.android.gms.internal.measurement.zzmr(r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0e9f, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0e97, code lost:
    
        r1 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0e9b, code lost:
    
        if (r2 > r35) goto L602;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0e9d, code lost:
    
        if (r5 != r11) goto L602;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0ea5, code lost:
    
        throw new com.google.android.gms.internal.measurement.zzmr(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0afb, code lost:
    
        throw new com.google.android.gms.internal.measurement.zzmr("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0dcb, code lost:
    
        if (r7 == 1048575) goto L568;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0dcd, code lost:
    
        r15.putInt(r0, r7, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0dd1, code lost:
    
        r3 = r1.zzj;
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0dd7, code lost:
    
        if (r3 >= r1.zzk) goto L704;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0dd9, code lost:
    
        r6 = r1.zzi;
        r7 = r1.zzl;
        r8 = r1.zzc;
        r6 = r6[r3];
        r8 = r8[r6];
        r9 = com.google.android.gms.internal.measurement.zzop.zzn(r0, r1.zzx(r6) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0df0, code lost:
    
        if (r9 == null) goto L705;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0df2, code lost:
    
        r12 = r1.zzr(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0df6, code lost:
    
        if (r12 == null) goto L706;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0df8, code lost:
    
        r6 = ((com.google.android.gms.internal.measurement.zznf) r1.zzq(r6)).zze();
        r9 = ((com.google.android.gms.internal.measurement.zzng) r9).entrySet().iterator();
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0e10, code lost:
    
        if (r9.hasNext() == false) goto L707;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0e12, code lost:
    
        r13 = (java.util.Map.Entry) r9.next();
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0e26, code lost:
    
        if (r12.zza(((java.lang.Integer) r13.getValue()).intValue()) != false) goto L708;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0e28, code lost:
    
        if (r4 != null) goto L582;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0e2a, code lost:
    
        r4 = r7.zza(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0e2e, code lost:
    
        r14 = com.google.android.gms.internal.measurement.zznf.zzc(r6, r13.getKey(), r13.getValue());
        r15 = com.google.android.gms.internal.measurement.zzlh.zzb;
        r15 = new byte[r14];
        r16 = com.google.android.gms.internal.measurement.zzlm.zzb;
        r10 = new com.google.android.gms.internal.measurement.zzlk(r15, 0, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0e46, code lost:
    
        com.google.android.gms.internal.measurement.zznf.zzb(r10, r6, r13.getKey(), r13.getValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0e51, code lost:
    
        r4.zzk((r8 << 3) | 2, com.google.android.gms.internal.measurement.zzle.zza(r10, r15));
        r9.remove();
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0e70, code lost:
    
        r4 = r4;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0d81  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0d65  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0d6d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x09ba A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x09c9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:749:0x005b A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v191, types: [int] */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int zzh(java.lang.Object r32, byte[] r33, int r34, int r35, int r36, com.google.android.gms.internal.measurement.zzkw r37) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3894
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zznp.zzh(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzkw):int");
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzkw zzkwVar) throws IOException {
        zzh(obj, bArr, i, i2, 0, zzkwVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final void zzj(Object obj) {
        if (zzA(obj)) {
            if (obj instanceof zzmf) {
                zzmf zzmfVar = (zzmf) obj;
                zzmfVar.zzcm(Integer.MAX_VALUE);
                zzmfVar.zza = 0;
                zzmfVar.zzcg();
            }
            int[] iArr = this.zzc;
            for (int i = 0; i < iArr.length; i += 3) {
                int zzx = zzx(i);
                int i2 = 1048575 & zzx;
                int zzz = zzz(zzx);
                long j = i2;
                if (zzz != 9) {
                    if (zzz != 60 && zzz != 68) {
                        switch (zzz) {
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
                                ((zzmo) zzop.zzn(obj, j)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzng) object).zzd();
                                    unsafe.putObject(obj, j, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzL(obj, iArr[i], i)) {
                        zzp(i).zzj(zzb.getObject(obj, j));
                    }
                }
                if (zzJ(obj, i)) {
                    zzp(i).zzj(zzb.getObject(obj, j));
                }
            }
            this.zzl.zzb(obj);
            if (this.zzh) {
                this.zzm.zza(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zzk(Object obj) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i4 < this.zzj) {
            int[] iArr = this.zzi;
            int[] iArr2 = this.zzc;
            int i6 = iArr[i4];
            int i7 = iArr2[i6];
            int zzx = zzx(i6);
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
            if ((268435456 & zzx) != 0 && !zzI(obj, i6, i, i2, i10)) {
                return false;
            }
            int zzz = zzz(zzx);
            if (zzz != 9 && zzz != 17) {
                if (zzz != 27) {
                    if (zzz == 60 || zzz == 68) {
                        if (zzL(obj, i7, i6) && !zzw(obj, zzx, zzp(i6))) {
                            return false;
                        }
                    } else if (zzz != 49) {
                        if (zzz != 50) {
                            continue;
                        } else {
                            zzng zzngVar = (zzng) zzop.zzn(obj, zzx & 1048575);
                            if (!zzngVar.isEmpty() && ((zznf) zzq(i6)).zze().zzc.zza() == zzou.MESSAGE) {
                                zznx zznxVar = null;
                                for (Object obj2 : zzngVar.values()) {
                                    if (zznxVar == null) {
                                        zznxVar = zznu.zza().zzb(obj2.getClass());
                                    }
                                    if (!zznxVar.zzk(obj2)) {
                                        return false;
                                    }
                                }
                            }
                        }
                    }
                }
                List list = (List) zzop.zzn(obj, zzx & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zznx zzp = zzp(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzp.zzk(list.get(i11))) {
                            return false;
                        }
                    }
                }
            } else if (zzI(obj, i6, i, i2, i10) && !zzw(obj, zzx, zzp(i6))) {
                return false;
            }
            i4++;
            i5 = i;
            i3 = i2;
        }
        return !this.zzh || ((zzmc) obj).zzb.zze();
    }
}
