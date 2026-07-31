package androidx.work;

import android.util.Log;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.lifecycle.viewmodel.ViewModelInitializer;
import androidx.room.migration.Migration;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.model.WorkGenerationalId;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.network.NetworkHeaders;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Data {
    public static final Data EMPTY;
    public final HashMap values;

    static {
        Data data = new Data(new LinkedHashMap());
        Cookie.Companion.toByteArrayInternalV1(data);
        EMPTY = data;
    }

    public Data(Data data) {
        data.getClass();
        this.values = new HashMap(data.values);
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this != obj) {
            if (obj != null && Data.class.equals(obj.getClass())) {
                HashMap hashMap = ((Data) obj).values;
                HashMap hashMap2 = this.values;
                Set<String> keySet = hashMap2.keySet();
                if (Intrinsics.areEqual(keySet, hashMap.keySet())) {
                    for (String str : keySet) {
                        Object obj2 = hashMap2.get(str);
                        Object obj3 = hashMap.get(str);
                        if (obj2 == null || obj3 == null) {
                            z = obj2 == obj3;
                        } else {
                            if (obj2 instanceof Object[]) {
                                Object[] objArr = (Object[]) obj2;
                                if (obj3 instanceof Object[]) {
                                    z = ArraysKt.contentDeepEquals(objArr, (Object[]) obj3);
                                }
                            }
                            z = obj2.equals(obj3);
                        }
                        if (!z) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int getInt(int i, String str) {
        Object valueOf = Integer.valueOf(i);
        Object obj = this.values.get(str);
        if (obj instanceof Integer) {
            valueOf = obj;
        }
        return ((Number) valueOf).intValue();
    }

    public final String getString(String str) {
        Object obj = this.values.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public final boolean hasKeyWithValueOfType(String str) {
        Object obj = this.values.get(str);
        return obj != null && String.class.isAssignableFrom(obj.getClass());
    }

    public final int hashCode() {
        int i = 0;
        for (Map.Entry entry : this.values.entrySet()) {
            Object value = entry.getValue();
            i += value instanceof Object[] ? Objects.hashCode(entry.getKey()) ^ Arrays.deepHashCode((Object[]) value) : entry.hashCode();
        }
        return i * 31;
    }

    public final String toString() {
        return Modifier.CC.m(new StringBuilder("Data {"), CollectionsKt.joinToString$default(this.values.entrySet(), null, null, null, new Data$$ExternalSyntheticLambda0(0), 31), "}");
    }

    public Data(LinkedHashMap linkedHashMap) {
        linkedHashMap.getClass();
        this.values = new HashMap(linkedHashMap);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder {
        public final LinkedHashMap values;

        public Builder(int i) {
            switch (i) {
                case 1:
                    this.values = new LinkedHashMap(0, 0.75f, true);
                    break;
                case 2:
                    this.values = new LinkedHashMap();
                    break;
                case 3:
                    this.values = new LinkedHashMap();
                    break;
                case 4:
                    this.values = new LinkedHashMap();
                    break;
                default:
                    this.values = new LinkedHashMap();
                    break;
            }
        }

        public void addInitializer(ClassReference classReference, Function1 function1) {
            LinkedHashMap linkedHashMap = this.values;
            if (linkedHashMap.containsKey(classReference)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("A `initializer` with the same `clazz` has already been added: ", classReference.getQualifiedName(), "."));
            } else {
                linkedHashMap.put(classReference, new ViewModelInitializer(classReference, function1));
            }
        }

        public void addMigration(Migration migration) {
            migration.getClass();
            int i = migration.startVersion;
            int i2 = migration.endVersion;
            Integer valueOf = Integer.valueOf(i);
            LinkedHashMap linkedHashMap = this.values;
            Object obj = linkedHashMap.get(valueOf);
            if (obj == null) {
                obj = new TreeMap();
                linkedHashMap.put(valueOf, obj);
            }
            TreeMap treeMap = (TreeMap) obj;
            if (treeMap.containsKey(Integer.valueOf(i2))) {
                Log.w("ROOM", "Overriding migration " + treeMap.get(Integer.valueOf(i2)) + " with " + migration);
            }
            treeMap.put(Integer.valueOf(i2), migration);
        }

        public InitializerViewModelFactory build() {
            Collection values = this.values.values();
            values.getClass();
            ViewModelInitializer[] viewModelInitializerArr = (ViewModelInitializer[]) values.toArray(new ViewModelInitializer[0]);
            return new InitializerViewModelFactory((ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length));
        }

        public void put(Object obj, String str) {
            Object[] objArr;
            str.getClass();
            if (obj == null) {
                obj = null;
            } else {
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(obj.getClass());
                if (!orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Boolean.TYPE)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Byte.TYPE)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Integer.TYPE)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Long.TYPE)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Float.TYPE)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Double.TYPE)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(String.class)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Boolean[].class)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Byte[].class)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Integer[].class)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Long[].class)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Float[].class)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Double[].class)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(String[].class))) {
                    int i = 0;
                    if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(boolean[].class))) {
                        boolean[] zArr = (boolean[]) obj;
                        String str2 = Data_Kt.TAG;
                        int length = zArr.length;
                        objArr = new Boolean[length];
                        while (i < length) {
                            objArr[i] = Boolean.valueOf(zArr[i]);
                            i++;
                        }
                    } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(byte[].class))) {
                        byte[] bArr = (byte[]) obj;
                        String str3 = Data_Kt.TAG;
                        int length2 = bArr.length;
                        objArr = new Byte[length2];
                        while (i < length2) {
                            objArr[i] = Byte.valueOf(bArr[i]);
                            i++;
                        }
                    } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(int[].class))) {
                        int[] iArr = (int[]) obj;
                        String str4 = Data_Kt.TAG;
                        int length3 = iArr.length;
                        objArr = new Integer[length3];
                        while (i < length3) {
                            objArr[i] = Integer.valueOf(iArr[i]);
                            i++;
                        }
                    } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(long[].class))) {
                        long[] jArr = (long[]) obj;
                        String str5 = Data_Kt.TAG;
                        int length4 = jArr.length;
                        objArr = new Long[length4];
                        while (i < length4) {
                            objArr[i] = Long.valueOf(jArr[i]);
                            i++;
                        }
                    } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(float[].class))) {
                        float[] fArr = (float[]) obj;
                        String str6 = Data_Kt.TAG;
                        int length5 = fArr.length;
                        objArr = new Float[length5];
                        while (i < length5) {
                            objArr[i] = Float.valueOf(fArr[i]);
                            i++;
                        }
                    } else {
                        if (!orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(double[].class))) {
                            DecodeUtils$$ExternalSyntheticBUOutline0.m$1("Key ", str, " has invalid type ", orCreateKotlinClass);
                            return;
                        }
                        double[] dArr = (double[]) obj;
                        String str7 = Data_Kt.TAG;
                        int length6 = dArr.length;
                        objArr = new Double[length6];
                        while (i < length6) {
                            objArr[i] = Double.valueOf(dArr[i]);
                            i++;
                        }
                    }
                    obj = objArr;
                }
            }
            this.values.put(str, obj);
        }

        public void putAll(HashMap hashMap) {
            hashMap.getClass();
            for (Map.Entry entry : hashMap.entrySet()) {
                put(entry.getValue(), (String) entry.getKey());
            }
        }

        public List remove(String str) {
            str.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = this.values;
            for (Map.Entry entry : linkedHashMap2.entrySet()) {
                if (Intrinsics.areEqual(((WorkGenerationalId) entry.getKey()).workSpecId, str)) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            Iterator it = linkedHashMap.keySet().iterator();
            while (it.hasNext()) {
                linkedHashMap2.remove((WorkGenerationalId) it.next());
            }
            return CollectionsKt.toList(linkedHashMap.values());
        }

        public void set(String str) {
            String lowerCase = "Cache-Control".toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            this.values.put(lowerCase, Jsoup.mutableListOf(str));
        }

        public StartStopToken tokenFor(WorkGenerationalId workGenerationalId) {
            LinkedHashMap linkedHashMap = this.values;
            Object obj = linkedHashMap.get(workGenerationalId);
            if (obj == null) {
                obj = new StartStopToken(workGenerationalId);
                linkedHashMap.put(workGenerationalId, obj);
            }
            return (StartStopToken) obj;
        }

        /* renamed from: build, reason: collision with other method in class */
        public Data m475build() {
            Data data = new Data(this.values);
            Cookie.Companion.toByteArrayInternalV1(data);
            return data;
        }

        public Builder(NetworkHeaders networkHeaders) {
            Map map = networkHeaders.data;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : map.entrySet()) {
                linkedHashMap.put(entry.getKey(), CollectionsKt.toMutableList((Collection) entry.getValue()));
            }
            this.values = linkedHashMap;
        }

        public StartStopToken remove(WorkGenerationalId workGenerationalId) {
            workGenerationalId.getClass();
            return (StartStopToken) this.values.remove(workGenerationalId);
        }
    }
}
