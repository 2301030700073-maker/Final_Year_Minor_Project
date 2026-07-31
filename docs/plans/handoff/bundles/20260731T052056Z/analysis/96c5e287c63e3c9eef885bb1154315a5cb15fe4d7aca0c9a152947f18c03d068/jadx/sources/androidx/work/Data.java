package androidx.work;

import androidx.compose.animation.core.Animation;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.lifecycle.MutableLiveData;
import androidx.work.Operation$State;
import j$.util.Objects;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.uuid.UuidKt;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Data {
    public static final Data EMPTY;
    public final HashMap values;

    static {
        Data data = new Data(new LinkedHashMap());
        UuidKt.toByteArrayInternalV1(data);
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
                                    z = ArraysKt___ArraysKt.contentDeepEquals(objArr, (Object[]) obj3);
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
        return Animation.CC.m(new StringBuilder("Data {"), CollectionsKt.joinToString$default(this.values.entrySet(), null, null, null, new Data$$ExternalSyntheticLambda0(0), 31), "}");
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder {
        public final Object values;
        public static final Operation$State.SUCCESS SUCCESS = new Operation$State.SUCCESS(0);
        public static final Operation$State.SUCCESS IN_PROGRESS = new Operation$State.SUCCESS(1);

        public Builder() {
            this.values = new LinkedHashMap();
        }

        public Data build() {
            Data data = new Data((LinkedHashMap) this.values);
            UuidKt.toByteArrayInternalV1(data);
            return data;
        }

        public void put(String str, Object obj) {
            Object[] objArr;
            str.getClass();
            LinkedHashMap linkedHashMap = (LinkedHashMap) this.values;
            if (obj == null) {
                obj = null;
            } else {
                Class<?> cls = obj.getClass();
                ReflectionFactory reflectionFactory = Reflection.factory;
                KClass orCreateKotlinClass = reflectionFactory.getOrCreateKotlinClass(cls);
                if (!orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Boolean.TYPE)) && !orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Byte.TYPE)) && !orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Integer.TYPE)) && !orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Long.TYPE)) && !orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Float.TYPE)) && !orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Double.TYPE)) && !orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(String.class)) && !orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Boolean[].class)) && !orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Byte[].class)) && !orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Integer[].class)) && !orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Long[].class)) && !orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Float[].class)) && !orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Double[].class)) && !orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(String[].class))) {
                    int i = 0;
                    if (orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(boolean[].class))) {
                        boolean[] zArr = (boolean[]) obj;
                        String str2 = Data_Kt.TAG;
                        int length = zArr.length;
                        objArr = new Boolean[length];
                        while (i < length) {
                            objArr[i] = Boolean.valueOf(zArr[i]);
                            i++;
                        }
                    } else if (orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(byte[].class))) {
                        byte[] bArr = (byte[]) obj;
                        String str3 = Data_Kt.TAG;
                        int length2 = bArr.length;
                        objArr = new Byte[length2];
                        while (i < length2) {
                            objArr[i] = Byte.valueOf(bArr[i]);
                            i++;
                        }
                    } else if (orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(int[].class))) {
                        int[] iArr = (int[]) obj;
                        String str4 = Data_Kt.TAG;
                        int length3 = iArr.length;
                        objArr = new Integer[length3];
                        while (i < length3) {
                            objArr[i] = Integer.valueOf(iArr[i]);
                            i++;
                        }
                    } else if (orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(long[].class))) {
                        long[] jArr = (long[]) obj;
                        String str5 = Data_Kt.TAG;
                        int length4 = jArr.length;
                        objArr = new Long[length4];
                        while (i < length4) {
                            objArr[i] = Long.valueOf(jArr[i]);
                            i++;
                        }
                    } else if (orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(float[].class))) {
                        float[] fArr = (float[]) obj;
                        String str6 = Data_Kt.TAG;
                        int length5 = fArr.length;
                        objArr = new Float[length5];
                        while (i < length5) {
                            objArr[i] = Float.valueOf(fArr[i]);
                            i++;
                        }
                    } else {
                        if (!orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(double[].class))) {
                            Utils$$ExternalSyntheticBUOutline0.m("Key ", str, " has invalid type ", orCreateKotlinClass);
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
            linkedHashMap.put(str, obj);
        }

        public void putAll(HashMap hashMap) {
            for (Map.Entry entry : hashMap.entrySet()) {
                put((String) entry.getKey(), entry.getValue());
            }
        }

        public Builder(MutableLiveData mutableLiveData, CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture) {
            this.values = callbackToFutureAdapter$SafeFuture;
        }
    }

    public Data(LinkedHashMap linkedHashMap) {
        this.values = new HashMap(linkedHashMap);
    }
}
