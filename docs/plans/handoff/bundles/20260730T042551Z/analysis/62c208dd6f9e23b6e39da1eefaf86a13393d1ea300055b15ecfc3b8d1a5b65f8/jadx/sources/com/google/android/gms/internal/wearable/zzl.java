package com.google.android.gms.internal.wearable;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataMap;
import defpackage.C4122zt;
import defpackage.Cif;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

@VisibleForTesting
/* loaded from: classes3.dex */
public final class zzl {
    public static DataMap zza(zzk zzkVar) {
        DataMap dataMap = new DataMap();
        for (zzw zzwVar : zzkVar.zza.zze()) {
            zzd(zzkVar.zzb, dataMap, zzwVar.zzd(), zzwVar.zzb());
        }
        return dataMap;
    }

    public static zzk zzb(DataMap dataMap) {
        ArrayList arrayList = new ArrayList();
        zzn zza = zzx.zza();
        TreeSet treeSet = new TreeSet(dataMap.keySet());
        ArrayList arrayList2 = new ArrayList();
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Object obj = dataMap.get(str);
            zzo zza2 = zzw.zza();
            zza2.zza(str);
            zza2.zzb(zzc(arrayList, obj));
            arrayList2.add((zzw) zza2.zzt());
        }
        zza.zza(arrayList2);
        return new zzk((zzx) zza.zzt(), arrayList);
    }

    private static zzv zzc(List list, Object obj) {
        zzp zza = zzv.zza();
        zza.zzb(1);
        if (obj == null) {
            zza.zzb(14);
            return (zzv) zza.zzt();
        }
        zzt zzh = zzu.zzh();
        if (obj instanceof String) {
            zza.zzb(2);
            zzh.zzn((String) obj);
        } else if (obj instanceof Integer) {
            zza.zzb(6);
            zzh.zzl(((Integer) obj).intValue());
        } else if (obj instanceof Long) {
            zza.zzb(5);
            zzh.zzm(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zza.zzb(3);
            zzh.zzj(((Double) obj).doubleValue());
        } else if (obj instanceof Float) {
            zza.zzb(4);
            zzh.zzk(((Float) obj).floatValue());
        } else if (obj instanceof Boolean) {
            zza.zzb(8);
            zzh.zzg(((Boolean) obj).booleanValue());
        } else if (obj instanceof Byte) {
            zza.zzb(7);
            zzh.zzh(((Byte) obj).byteValue());
        } else if (obj instanceof byte[]) {
            zza.zzb(1);
            zzh.zzi(zzaw.zzm((byte[]) obj));
        } else if (obj instanceof String[]) {
            zza.zzb(11);
            zzh.zzd(Arrays.asList((String[]) obj));
        } else if (obj instanceof long[]) {
            zza.zzb(12);
            zzh.zzc(zzae.zzb((long[]) obj));
        } else if (obj instanceof float[]) {
            zza.zzb(15);
            zzh.zzb(zzab.zzb((float[]) obj));
        } else if (obj instanceof Asset) {
            zza.zzb(13);
            list.add((Asset) obj);
            zzh.zzf(list.size() - 1);
        } else {
            int i = 0;
            if (obj instanceof DataMap) {
                zza.zzb(9);
                DataMap dataMap = (DataMap) obj;
                TreeSet treeSet = new TreeSet(dataMap.keySet());
                zzw[] zzwVarArr = new zzw[treeSet.size()];
                Iterator it = treeSet.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    zzo zza2 = zzw.zza();
                    zza2.zza(str);
                    zza2.zzb(zzc(list, dataMap.get(str)));
                    zzwVarArr[i] = (zzw) zza2.zzt();
                    i++;
                }
                zzh.zza(Arrays.asList(zzwVarArr));
            } else {
                if (!(obj instanceof ArrayList)) {
                    throw new RuntimeException("newFieldValueFromValue: unexpected value ".concat(obj.getClass().getSimpleName()));
                }
                zza.zzb(10);
                ArrayList arrayList = (ArrayList) obj;
                int size = arrayList.size();
                Object obj2 = null;
                int i2 = 14;
                while (i < size) {
                    Object obj3 = arrayList.get(i);
                    zzv zzc = zzc(list, obj3);
                    if (zzc.zzf() != 14 && zzc.zzf() != 2 && zzc.zzf() != 6 && zzc.zzf() != 9) {
                        throw new IllegalArgumentException("The only ArrayList element types supported by DataBundleUtil are String, Integer, Bundle, and null, but this ArrayList contains a ".concat(String.valueOf(obj3.getClass())));
                    }
                    if (i2 == 14) {
                        if (zzc.zzf() != 14) {
                            i2 = zzc.zzf();
                            obj2 = obj3;
                            zzh.zze(zzc);
                            i++;
                        } else {
                            i2 = 14;
                        }
                    }
                    if (zzc.zzf() != i2) {
                        throw new IllegalArgumentException(C4122zt.m8827new("ArrayList elements must all be of the sameclass, but this one contains a ", String.valueOf(obj2.getClass()), " and a ", String.valueOf(obj3.getClass())));
                    }
                    zzh.zze(zzc);
                    i++;
                }
            }
        }
        zza.zza(zzh);
        return (zzv) zza.zzt();
    }

    private static void zzd(List list, DataMap dataMap, String str, zzv zzvVar) {
        int zzf = zzvVar.zzf();
        if (zzf == 14) {
            dataMap.putString(str, null);
            return;
        }
        zzu zzb = zzvVar.zzb();
        if (zzf == 1) {
            dataMap.putByteArray(str, zzb.zzk().zzq());
            return;
        }
        int i = 0;
        if (zzf == 11) {
            dataMap.putStringArray(str, (String[]) zzb.zzq().toArray(new String[0]));
            return;
        }
        if (zzf == 12) {
            Object[] array = zzb.zzp().toArray();
            int length = array.length;
            long[] jArr = new long[length];
            while (i < length) {
                Object obj = array[i];
                obj.getClass();
                jArr[i] = ((Number) obj).longValue();
                i++;
            }
            dataMap.putLongArray(str, jArr);
            return;
        }
        if (zzf == 15) {
            Object[] array2 = zzb.zzo().toArray();
            int length2 = array2.length;
            float[] fArr = new float[length2];
            while (i < length2) {
                Object obj2 = array2[i];
                obj2.getClass();
                fArr[i] = ((Number) obj2).floatValue();
                i++;
            }
            dataMap.putFloatArray(str, fArr);
            return;
        }
        if (zzf == 2) {
            dataMap.putString(str, zzb.zzl());
            return;
        }
        if (zzf == 3) {
            dataMap.putDouble(str, zzb.zza());
            return;
        }
        if (zzf == 4) {
            dataMap.putFloat(str, zzb.zzb());
            return;
        }
        if (zzf == 5) {
            dataMap.putLong(str, zzb.zzg());
            return;
        }
        if (zzf == 6) {
            dataMap.putInt(str, zzb.zze());
            return;
        }
        if (zzf == 7) {
            dataMap.putByte(str, (byte) zzb.zzd());
            return;
        }
        if (zzf == 8) {
            dataMap.putBoolean(str, zzb.zzF());
            return;
        }
        if (zzf == 13) {
            dataMap.putAsset(str, (Asset) list.get((int) zzb.zzf()));
            return;
        }
        if (zzf == 9) {
            DataMap dataMap2 = new DataMap();
            for (zzw zzwVar : zzb.zzn()) {
                zzd(list, dataMap2, zzwVar.zzd(), zzwVar.zzb());
            }
            dataMap.putDataMap(str, dataMap2);
            return;
        }
        if (zzf != 10) {
            throw new RuntimeException("populateBundle: unexpected type ".concat(Integer.toString(zzf)));
        }
        int i2 = 14;
        for (zzv zzvVar2 : zzb.zzm()) {
            if (i2 != 14) {
                if (zzvVar2.zzf() != i2) {
                    String num = Integer.toString(i2);
                    String num2 = Integer.toString(zzvVar2.zzf());
                    StringBuilder m6919this = Cif.m6919this("The ArrayList elements should all be the same type, but ArrayList with key ", str, " contains items of type ", num, " and ");
                    m6919this.append(num2);
                    throw new IllegalArgumentException(m6919this.toString());
                }
            } else if (zzvVar2.zzf() == 9 || zzvVar2.zzf() == 2 || zzvVar2.zzf() == 6) {
                i2 = zzvVar2.zzf();
            } else if (zzvVar2.zzf() != 14) {
                throw new IllegalArgumentException(C4122zt.m8827new("Unexpected TypedValue type: ", Integer.toString(zzvVar2.zzf()), " for key ", str));
            }
        }
        ArrayList<Integer> arrayList = new ArrayList<>(zzb.zzc());
        for (zzv zzvVar3 : zzb.zzm()) {
            if (zzvVar3.zzf() == 14) {
                arrayList.add(null);
            } else if (i2 == 9) {
                DataMap dataMap3 = new DataMap();
                for (zzw zzwVar2 : zzvVar3.zzb().zzn()) {
                    zzd(list, dataMap3, zzwVar2.zzd(), zzwVar2.zzb());
                }
                arrayList.add(dataMap3);
            } else if (i2 == 2) {
                arrayList.add(zzvVar3.zzb().zzl());
            } else {
                if (i2 != 6) {
                    throw new IllegalArgumentException("Unexpected typeOfArrayList: ".concat(Integer.toString(i2)));
                }
                arrayList.add(Integer.valueOf(zzvVar3.zzb().zze()));
            }
        }
        if (i2 == 14) {
            dataMap.putStringArrayList(str, arrayList);
            return;
        }
        if (i2 == 9) {
            dataMap.putDataMapArrayList(str, arrayList);
        } else if (i2 == 2) {
            dataMap.putStringArrayList(str, arrayList);
        } else {
            if (i2 != 6) {
                throw new IllegalStateException("Unexpected typeOfArrayList: ".concat(Integer.toString(i2)));
            }
            dataMap.putIntegerArrayList(str, arrayList);
        }
    }
}
