package com.google.android.gms.internal;

import com.google.android.gms.internal.zzrc;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzrb {

    public static class zza {
        public final zzrc zzaVj;
        public final List<Asset> zzaVk;

        public zza(zzrc zzrcVar, List<Asset> list) {
            this.zzaVj = zzrcVar;
            this.zzaVk = list;
        }
    }

    private static int zza(String str, zzrc.zza.C0163zza[] c0163zzaArr) {
        int i = 14;
        for (zzrc.zza.C0163zza c0163zza : c0163zzaArr) {
            if (i != 14) {
                if (c0163zza.type != i) {
                    throw new IllegalArgumentException("The ArrayList elements should all be the same type, but ArrayList with key " + str + " contains items of type " + i + " and " + c0163zza.type);
                }
            } else if (c0163zza.type == 9 || c0163zza.type == 2 || c0163zza.type == 6) {
                i = c0163zza.type;
            } else if (c0163zza.type != 14) {
                throw new IllegalArgumentException("Unexpected TypedValue type: " + c0163zza.type + " for key " + str);
            }
        }
        return i;
    }

    static int zza(List<Asset> list, Asset asset) {
        list.add(asset);
        return list.size() - 1;
    }

    public static zza zza(DataMap dataMap) {
        zzrc zzrcVar = new zzrc();
        ArrayList arrayList = new ArrayList();
        zzrcVar.zzaVl = zza(dataMap, arrayList);
        return new zza(zzrcVar, arrayList);
    }

    private static zzrc.zza.C0163zza zza(List<Asset> list, Object obj) {
        zzrc.zza.C0163zza c0163zza = new zzrc.zza.C0163zza();
        if (obj == null) {
            c0163zza.type = 14;
            return c0163zza;
        }
        c0163zza.zzaVp = new zzrc.zza.C0163zza.C0164zza();
        if (obj instanceof String) {
            c0163zza.type = 2;
            c0163zza.zzaVp.zzaVr = (String) obj;
            return c0163zza;
        }
        if (obj instanceof Integer) {
            c0163zza.type = 6;
            c0163zza.zzaVp.zzaVv = ((Integer) obj).intValue();
            return c0163zza;
        }
        if (obj instanceof Long) {
            c0163zza.type = 5;
            c0163zza.zzaVp.zzaVu = ((Long) obj).longValue();
            return c0163zza;
        }
        if (obj instanceof Double) {
            c0163zza.type = 3;
            c0163zza.zzaVp.zzaVs = ((Double) obj).doubleValue();
            return c0163zza;
        }
        if (obj instanceof Float) {
            c0163zza.type = 4;
            c0163zza.zzaVp.zzaVt = ((Float) obj).floatValue();
            return c0163zza;
        }
        if (obj instanceof Boolean) {
            c0163zza.type = 8;
            c0163zza.zzaVp.zzaVx = ((Boolean) obj).booleanValue();
            return c0163zza;
        }
        if (obj instanceof Byte) {
            c0163zza.type = 7;
            c0163zza.zzaVp.zzaVw = ((Byte) obj).byteValue();
            return c0163zza;
        }
        if (obj instanceof byte[]) {
            c0163zza.type = 1;
            c0163zza.zzaVp.zzaVq = (byte[]) obj;
            return c0163zza;
        }
        if (obj instanceof String[]) {
            c0163zza.type = 11;
            c0163zza.zzaVp.zzaVA = (String[]) obj;
            return c0163zza;
        }
        if (obj instanceof long[]) {
            c0163zza.type = 12;
            c0163zza.zzaVp.zzaVB = (long[]) obj;
            return c0163zza;
        }
        if (obj instanceof float[]) {
            c0163zza.type = 15;
            c0163zza.zzaVp.zzaVC = (float[]) obj;
            return c0163zza;
        }
        if (obj instanceof Asset) {
            c0163zza.type = 13;
            c0163zza.zzaVp.zzaVD = zza(list, (Asset) obj);
            return c0163zza;
        }
        int i = 0;
        if (obj instanceof DataMap) {
            c0163zza.type = 9;
            DataMap dataMap = (DataMap) obj;
            Set<String> keySet = dataMap.keySet();
            zzrc.zza[] zzaVarArr = new zzrc.zza[keySet.size()];
            for (String str : keySet) {
                zzaVarArr[i] = new zzrc.zza();
                zzaVarArr[i].name = str;
                zzaVarArr[i].zzaVn = zza(list, dataMap.get(str));
                i++;
            }
            c0163zza.zzaVp.zzaVy = zzaVarArr;
            return c0163zza;
        }
        if (!(obj instanceof ArrayList)) {
            throw new RuntimeException("newFieldValueFromValue: unexpected value " + obj.getClass().getSimpleName());
        }
        c0163zza.type = 10;
        ArrayList arrayList = (ArrayList) obj;
        zzrc.zza.C0163zza[] c0163zzaArr = new zzrc.zza.C0163zza[arrayList.size()];
        int size = arrayList.size();
        Object obj2 = null;
        int i2 = 14;
        while (i < size) {
            Object obj3 = arrayList.get(i);
            zzrc.zza.C0163zza zza2 = zza(list, obj3);
            if (zza2.type != 14 && zza2.type != 2 && zza2.type != 6 && zza2.type != 9) {
                throw new IllegalArgumentException("The only ArrayList element types supported by DataBundleUtil are String, Integer, Bundle, and null, but this ArrayList contains a " + obj3.getClass());
            }
            if (i2 == 14 && zza2.type != 14) {
                i2 = zza2.type;
                obj2 = obj3;
            } else if (zza2.type != i2) {
                throw new IllegalArgumentException("ArrayList elements must all be of the sameclass, but this one contains a " + obj2.getClass() + " and a " + obj3.getClass());
            }
            c0163zzaArr[i] = zza2;
            i++;
        }
        c0163zza.zzaVp.zzaVz = c0163zzaArr;
        return c0163zza;
    }

    public static DataMap zza(zza zzaVar) {
        DataMap dataMap = new DataMap();
        for (zzrc.zza zzaVar2 : zzaVar.zzaVj.zzaVl) {
            zza(zzaVar.zzaVk, dataMap, zzaVar2.name, zzaVar2.zzaVn);
        }
        return dataMap;
    }

    private static ArrayList zza(List<Asset> list, zzrc.zza.C0163zza.C0164zza c0164zza, int i) {
        Object valueOf;
        ArrayList arrayList = new ArrayList(c0164zza.zzaVz.length);
        for (zzrc.zza.C0163zza c0163zza : c0164zza.zzaVz) {
            if (c0163zza.type == 14) {
                valueOf = null;
            } else if (i == 9) {
                DataMap dataMap = new DataMap();
                for (zzrc.zza zzaVar : c0163zza.zzaVp.zzaVy) {
                    zza(list, dataMap, zzaVar.name, zzaVar.zzaVn);
                }
                arrayList.add(dataMap);
            } else if (i == 2) {
                valueOf = c0163zza.zzaVp.zzaVr;
            } else {
                if (i != 6) {
                    throw new IllegalArgumentException("Unexpected typeOfArrayList: " + i);
                }
                valueOf = Integer.valueOf(c0163zza.zzaVp.zzaVv);
            }
            arrayList.add(valueOf);
        }
        return arrayList;
    }

    private static void zza(List<Asset> list, DataMap dataMap, String str, zzrc.zza.C0163zza c0163zza) {
        int i = c0163zza.type;
        if (i == 14) {
            dataMap.putString(str, null);
            return;
        }
        zzrc.zza.C0163zza.C0164zza c0164zza = c0163zza.zzaVp;
        if (i == 1) {
            dataMap.putByteArray(str, c0164zza.zzaVq);
            return;
        }
        if (i == 11) {
            dataMap.putStringArray(str, c0164zza.zzaVA);
            return;
        }
        if (i == 12) {
            dataMap.putLongArray(str, c0164zza.zzaVB);
            return;
        }
        if (i == 15) {
            dataMap.putFloatArray(str, c0164zza.zzaVC);
            return;
        }
        if (i == 2) {
            dataMap.putString(str, c0164zza.zzaVr);
            return;
        }
        if (i == 3) {
            dataMap.putDouble(str, c0164zza.zzaVs);
            return;
        }
        if (i == 4) {
            dataMap.putFloat(str, c0164zza.zzaVt);
            return;
        }
        if (i == 5) {
            dataMap.putLong(str, c0164zza.zzaVu);
            return;
        }
        if (i == 6) {
            dataMap.putInt(str, c0164zza.zzaVv);
            return;
        }
        if (i == 7) {
            dataMap.putByte(str, (byte) c0164zza.zzaVw);
            return;
        }
        if (i == 8) {
            dataMap.putBoolean(str, c0164zza.zzaVx);
            return;
        }
        if (i == 13) {
            if (list != null) {
                dataMap.putAsset(str, list.get((int) c0164zza.zzaVD));
                return;
            }
            throw new RuntimeException("populateBundle: unexpected type for: " + str);
        }
        if (i == 9) {
            DataMap dataMap2 = new DataMap();
            for (zzrc.zza zzaVar : c0164zza.zzaVy) {
                zza(list, dataMap2, zzaVar.name, zzaVar.zzaVn);
            }
            dataMap.putDataMap(str, dataMap2);
            return;
        }
        if (i != 10) {
            throw new RuntimeException("populateBundle: unexpected type " + i);
        }
        int zza2 = zza(str, c0164zza.zzaVz);
        ArrayList<Integer> zza3 = zza(list, c0164zza, zza2);
        if (zza2 != 14) {
            if (zza2 == 9) {
                dataMap.putDataMapArrayList(str, zza3);
                return;
            }
            if (zza2 != 2) {
                if (zza2 == 6) {
                    dataMap.putIntegerArrayList(str, zza3);
                    return;
                }
                throw new IllegalStateException("Unexpected typeOfArrayList: " + zza2);
            }
        }
        dataMap.putStringArrayList(str, zza3);
    }

    private static zzrc.zza[] zza(DataMap dataMap, List<Asset> list) {
        Set<String> keySet = dataMap.keySet();
        zzrc.zza[] zzaVarArr = new zzrc.zza[keySet.size()];
        int i = 0;
        for (String str : keySet) {
            Object obj = dataMap.get(str);
            zzaVarArr[i] = new zzrc.zza();
            zzaVarArr[i].name = str;
            zzaVarArr[i].zzaVn = zza(list, obj);
            i++;
        }
        return zzaVarArr;
    }
}
