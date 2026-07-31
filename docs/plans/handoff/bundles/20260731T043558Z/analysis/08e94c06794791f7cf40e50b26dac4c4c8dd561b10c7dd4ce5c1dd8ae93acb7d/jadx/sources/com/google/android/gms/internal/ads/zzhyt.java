package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhyt {
    public static final /* synthetic */ int zza = 0;
    private static final zzhzc zzb;

    static {
        int i = zzhuv.zza;
        zzb = new zzhze();
    }

    static int zzA(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzhvt.zzA(i << 3) + 4);
    }

    static int zzB(List list) {
        return list.size() * 8;
    }

    static int zzC(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzhvt.zzA(i << 3) + 8);
    }

    static int zzD(int i, Object obj, zzhyr zzhyrVar) {
        int zzA;
        int zzaT;
        int zzA2;
        int i2 = i << 3;
        if (obj instanceof zzhxj) {
            zzA = zzhvt.zzA(i2);
            zzaT = ((zzhxj) obj).zzb();
            zzA2 = zzhvt.zzA(zzaT);
        } else {
            zzA = zzhvt.zzA(i2);
            zzaT = ((zzhur) obj).zzaT(zzhyrVar);
            zzA2 = zzhvt.zzA(zzaT);
        }
        return zzA + zzA2 + zzaT;
    }

    @Deprecated
    static int zzE(int i, zzhxz zzhxzVar, zzhyr zzhyrVar) {
        int zzA = zzhvt.zzA(i << 3);
        return zzA + zzA + ((zzhur) zzhxzVar).zzaT(zzhyrVar);
    }

    public static zzhzc zzF() {
        return zzb;
    }

    static boolean zzG(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static void zzH(zzhvz zzhvzVar, Object obj, Object obj2) {
        if (((zzhwk) obj2).zza.zza.isEmpty()) {
            return;
        }
        throw null;
    }

    static void zzI(zzhzc zzhzcVar, Object obj, Object obj2) {
        zzhwo zzhwoVar = (zzhwo) obj;
        zzhzd zzhzdVar = zzhwoVar.zzt;
        zzhzd zzhzdVar2 = ((zzhwo) obj2).zzt;
        if (!zzhzd.zza().equals(zzhzdVar2)) {
            if (zzhzd.zza().equals(zzhzdVar)) {
                zzhzdVar = zzhzd.zzc(zzhzdVar, zzhzdVar2);
            } else {
                zzhzdVar.zzm(zzhzdVar2);
            }
        }
        zzhwoVar.zzt = zzhzdVar;
    }

    static Object zzJ(Object obj, int i, List list, zzhwu zzhwuVar, Object obj2, zzhzc zzhzcVar) {
        if (zzhwuVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = ((Integer) list.get(i3)).intValue();
                if (zzhwuVar.zza(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    obj2 = zzK(obj, i, intValue, obj2, zzhzcVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return obj2;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = ((Integer) it.next()).intValue();
                if (!zzhwuVar.zza(intValue2)) {
                    obj2 = zzK(obj, i, intValue2, obj2, zzhzcVar);
                    it.remove();
                }
            }
        }
        return obj2;
    }

    static Object zzK(Object obj, int i, int i2, Object obj2, zzhzc zzhzcVar) {
        if (obj2 == null) {
            obj2 = zzhzcVar.zzh(obj);
        }
        zzhzcVar.zza(obj2, i, i2);
        return obj2;
    }

    public static void zza(int i, List list, zzhzr zzhzrVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzC(i, list, z);
    }

    public static void zzb(int i, List list, zzhzr zzhzrVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzB(i, list, z);
    }

    public static void zzc(int i, List list, zzhzr zzhzrVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzy(i, list, z);
    }

    public static void zzd(int i, List list, zzhzr zzhzrVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzz(i, list, z);
    }

    public static void zze(int i, List list, zzhzr zzhzrVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzL(i, list, z);
    }

    public static void zzf(int i, List list, zzhzr zzhzrVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzA(i, list, z);
    }

    public static void zzg(int i, List list, zzhzr zzhzrVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzJ(i, list, z);
    }

    public static void zzh(int i, List list, zzhzr zzhzrVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzw(i, list, z);
    }

    public static void zzi(int i, List list, zzhzr zzhzrVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzH(i, list, z);
    }

    public static void zzj(int i, List list, zzhzr zzhzrVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzK(i, list, z);
    }

    public static void zzk(int i, List list, zzhzr zzhzrVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzx(i, list, z);
    }

    public static void zzl(int i, List list, zzhzr zzhzrVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzI(i, list, z);
    }

    public static void zzm(int i, List list, zzhzr zzhzrVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzD(i, list, z);
    }

    public static void zzn(int i, List list, zzhzr zzhzrVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzE(i, list, z);
    }

    public static void zzo(int i, List list, zzhzr zzhzrVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzF(i, list);
    }

    public static void zzp(int i, List list, zzhzr zzhzrVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhzrVar.zzG(i, list);
    }

    public static void zzq(int i, List list, zzhzr zzhzrVar, zzhyr zzhyrVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            ((zzhvu) zzhzrVar).zzr(i, list.get(i2), zzhyrVar);
        }
    }

    public static void zzr(int i, List list, zzhzr zzhzrVar, zzhyr zzhyrVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            ((zzhvu) zzhzrVar).zzs(i, list.get(i2), zzhyrVar);
        }
    }

    static int zzs(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzhxn) {
            zzhxn zzhxnVar = (zzhxn) list;
            i = 0;
            while (i2 < size) {
                i += zzhvt.zzB(zzhxnVar.zzc(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzhvt.zzB(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    static int zzt(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzhxn) {
            zzhxn zzhxnVar = (zzhxn) list;
            i = 0;
            while (i2 < size) {
                i += zzhvt.zzB(zzhxnVar.zzc(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzhvt.zzB(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    static int zzu(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzhxn) {
            zzhxn zzhxnVar = (zzhxn) list;
            i = 0;
            while (i2 < size) {
                long zzc = zzhxnVar.zzc(i2);
                i += zzhvt.zzB((zzc >> 63) ^ (zzc + zzc));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                long longValue = ((Long) list.get(i2)).longValue();
                i += zzhvt.zzB((longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
        }
        return i;
    }

    static int zzv(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzhwp) {
            zzhwp zzhwpVar = (zzhwp) list;
            i = 0;
            while (i2 < size) {
                i += zzhvt.zzB(zzhwpVar.zzf(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzhvt.zzB(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    static int zzw(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzhwp) {
            zzhwp zzhwpVar = (zzhwp) list;
            i = 0;
            while (i2 < size) {
                i += zzhvt.zzB(zzhwpVar.zzf(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzhvt.zzB(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    static int zzx(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzhwp) {
            zzhwp zzhwpVar = (zzhwp) list;
            i = 0;
            while (i2 < size) {
                i += zzhvt.zzA(zzhwpVar.zzf(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzhvt.zzA(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    static int zzy(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzhwp) {
            zzhwp zzhwpVar = (zzhwp) list;
            i = 0;
            while (i2 < size) {
                int zzf = zzhwpVar.zzf(i2);
                i += zzhvt.zzA((zzf >> 31) ^ (zzf + zzf));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                int intValue = ((Integer) list.get(i2)).intValue();
                i += zzhvt.zzA((intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
        }
        return i;
    }

    static int zzz(List list) {
        return list.size() * 4;
    }
}
