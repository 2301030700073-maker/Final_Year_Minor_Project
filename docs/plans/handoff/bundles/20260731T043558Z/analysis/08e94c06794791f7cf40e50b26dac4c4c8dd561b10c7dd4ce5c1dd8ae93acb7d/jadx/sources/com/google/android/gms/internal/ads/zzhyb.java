package com.google.android.gms.internal.ads;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhyb {
    private static final char[] zza;

    static {
        char[] cArr = new char[80];
        zza = cArr;
        Arrays.fill(cArr, ' ');
    }

    static String zza(zzhxz zzhxzVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        zzc(zzhxzVar, sb, 0);
        return sb.toString();
    }

    static void zzb(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zzb(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                zzb(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        zzd(i, sb);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i2 = 1; i2 < str.length(); i2++) {
                char charAt = str.charAt(i2);
                if (Character.isUpperCase(charAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(charAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(zzhza.zza(zzhvi.zzs((String) obj)));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzhvi) {
            sb.append(": \"");
            sb.append(zzhza.zza((zzhvi) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzhwo) {
            sb.append(" {");
            zzc((zzhwo) obj, sb, i + 2);
            sb.append("\n");
            zzd(i, sb);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        int i3 = i + 2;
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        zzb(sb, i3, SDKConstants.PARAM_KEY, entry.getKey());
        zzb(sb, i3, "value", entry.getValue());
        sb.append("\n");
        zzd(i, sb);
        sb.append("}");
    }

    private static void zzc(zzhxz zzhxzVar, StringBuilder sb, int i) {
        int i2;
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zzhxzVar.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i3 = 0;
        while (true) {
            i2 = 3;
            if (i3 >= length) {
                break;
            }
            Method method3 = declaredMethods[i3];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        hashMap.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i3++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String substring = ((String) entry.getKey()).substring(i2);
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List") && (method2 = (Method) entry.getValue()) != null && method2.getReturnType().equals(List.class)) {
                zzb(sb, i, substring.substring(0, substring.length() - 4), zzhwo.zzbB(method2, zzhxzVar, new Object[0]));
            } else if (!substring.endsWith("Map") || substring.equals("Map") || (method = (Method) entry.getValue()) == null || !method.getReturnType().equals(Map.class) || method.isAnnotationPresent(Deprecated.class) || !Modifier.isPublic(method.getModifiers())) {
                String.valueOf(substring);
                if (hashSet.contains("set".concat(String.valueOf(substring)))) {
                    if (substring.endsWith("Bytes")) {
                        String substring2 = substring.substring(0, substring.length() - 5);
                        String.valueOf(substring2);
                        if (treeMap.containsKey("get".concat(String.valueOf(substring2)))) {
                        }
                    }
                    Method method4 = (Method) entry.getValue();
                    String.valueOf(substring);
                    Method method5 = (Method) hashMap.get("has".concat(String.valueOf(substring)));
                    if (method4 != null) {
                        Object zzbB = zzhwo.zzbB(method4, zzhxzVar, new Object[0]);
                        if (method5 != null) {
                            if (!((Boolean) zzhwo.zzbB(method5, zzhxzVar, new Object[0])).booleanValue()) {
                            }
                            zzb(sb, i, substring, zzbB);
                        } else if (zzbB instanceof Boolean) {
                            if (!((Boolean) zzbB).booleanValue()) {
                            }
                            zzb(sb, i, substring, zzbB);
                        } else if (zzbB instanceof Integer) {
                            if (((Integer) zzbB).intValue() == 0) {
                            }
                            zzb(sb, i, substring, zzbB);
                        } else if (zzbB instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) zzbB).floatValue()) == 0) {
                            }
                            zzb(sb, i, substring, zzbB);
                        } else if (zzbB instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) zzbB).doubleValue()) == 0) {
                            }
                            zzb(sb, i, substring, zzbB);
                        } else {
                            if (zzbB instanceof String) {
                                equals = zzbB.equals("");
                            } else if (zzbB instanceof zzhvi) {
                                equals = zzbB.equals(zzhvi.zzb);
                            } else if (zzbB instanceof zzhxz) {
                                if (zzbB == ((zzhxz) zzbB).zzbw()) {
                                }
                                zzb(sb, i, substring, zzbB);
                            } else {
                                if ((zzbB instanceof Enum) && ((Enum) zzbB).ordinal() == 0) {
                                }
                                zzb(sb, i, substring, zzbB);
                            }
                            if (equals) {
                            }
                            zzb(sb, i, substring, zzbB);
                        }
                    }
                }
            } else {
                zzb(sb, i, substring.substring(0, substring.length() - 3), zzhwo.zzbB(method, zzhxzVar, new Object[0]));
            }
            i2 = 3;
        }
        if (zzhxzVar instanceof zzhwk) {
            Iterator zzc = ((zzhwk) zzhxzVar).zza.zzc();
            while (zzc.hasNext()) {
                Map.Entry entry2 = (Map.Entry) zzc.next();
                int i4 = ((zzhwl) entry2.getKey()).zza;
                StringBuilder sb2 = new StringBuilder(String.valueOf(i4).length() + 2);
                sb2.append("[");
                sb2.append(i4);
                sb2.append("]");
                zzb(sb, i, sb2.toString(), entry2.getValue());
            }
        }
        zzhzd zzhzdVar = ((zzhwo) zzhxzVar).zzt;
        if (zzhzdVar != null) {
            zzhzdVar.zzj(sb, i);
        }
    }

    private static void zzd(int i, StringBuilder sb) {
        while (i > 0) {
            int i2 = 80;
            if (i <= 80) {
                i2 = i;
            }
            sb.append(zza, 0, i2);
            i -= i2;
        }
    }
}
