package androidx.work;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* compiled from: Data_.kt */
/* loaded from: classes.dex */
public final class Data {
    public static final Companion Companion = new Companion(null);
    public static final Data EMPTY = new Builder().build();
    private final Map values;

    public static final Data fromByteArray(byte[] bArr) {
        return Companion.fromByteArray(bArr);
    }

    public static final byte[] toByteArrayInternalV1(Data data) {
        return Companion.toByteArrayInternalV1(data);
    }

    public Data(Data other) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.values = new HashMap(other.values);
    }

    public Data(Map values) {
        Intrinsics.checkNotNullParameter(values, "values");
        this.values = new HashMap(values);
    }

    public final boolean getBoolean(String key, boolean z) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object valueOf = Boolean.valueOf(z);
        Object obj = this.values.get(key);
        if (obj instanceof Boolean) {
            valueOf = obj;
        }
        return ((Boolean) valueOf).booleanValue();
    }

    public final int getInt(String key, int i) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object valueOf = Integer.valueOf(i);
        Object obj = this.values.get(key);
        if (obj instanceof Integer) {
            valueOf = obj;
        }
        return ((Number) valueOf).intValue();
    }

    public final long getLong(String key, long j) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object valueOf = Long.valueOf(j);
        Object obj = this.values.get(key);
        if (obj instanceof Long) {
            valueOf = obj;
        }
        return ((Number) valueOf).longValue();
    }

    public final String getString(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object obj = this.values.get(key);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public final Map getKeyValueMap() {
        Map unmodifiableMap = Collections.unmodifiableMap(this.values);
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "unmodifiableMap(values)");
        return unmodifiableMap;
    }

    public final boolean hasKeyWithValueOfType(String key, Class klass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(klass, "klass");
        Object obj = this.values.get(key);
        return obj != null && klass.isAssignableFrom(obj.getClass());
    }

    public final int size() {
        return this.values.size();
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(Data.class, obj.getClass())) {
            return false;
        }
        Data data = (Data) obj;
        Set<String> keySet = this.values.keySet();
        if (!Intrinsics.areEqual(keySet, data.values.keySet())) {
            return false;
        }
        for (String str : keySet) {
            Object obj2 = this.values.get(str);
            Object obj3 = data.values.get(str);
            if (obj2 == null || obj3 == null) {
                z = obj2 == obj3;
            } else {
                if (obj2 instanceof Object[]) {
                    Object[] objArr = (Object[]) obj2;
                    if (obj3 instanceof Object[]) {
                        z = ArraysKt.contentDeepEquals(objArr, (Object[]) obj3);
                    }
                }
                z = Intrinsics.areEqual(obj2, obj3);
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        for (Map.Entry entry : this.values.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Object[]) {
                hashCode = Objects.hashCode(entry.getKey()) ^ ArraysKt.contentDeepHashCode((Object[]) value);
            } else {
                hashCode = entry.hashCode();
            }
            i += hashCode;
        }
        return i * 31;
    }

    public String toString() {
        String str = "Data {" + CollectionsKt.joinToString$default(this.values.entrySet(), null, null, null, 0, null, new Function1() { // from class: androidx.work.Data$toString$1$content$1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(Map.Entry entry) {
                Intrinsics.checkNotNullParameter(entry, "<name for destructuring parameter 0>");
                String str2 = (String) entry.getKey();
                Object value = entry.getValue();
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(" : ");
                if (value instanceof Object[]) {
                    value = Arrays.toString((Object[]) value);
                    Intrinsics.checkNotNullExpressionValue(value, "toString(this)");
                }
                sb.append(value);
                return sb.toString();
            }
        }, 31, null) + "}";
        Intrinsics.checkNotNullExpressionValue(str, "StringBuilder().apply(builderAction).toString()");
        return str;
    }

    /* compiled from: Data_.kt */
    public static final class Builder {
        private final Map values = new LinkedHashMap();

        private final Builder putDirect(String str, Object obj) {
            this.values.put(str, obj);
            return this;
        }

        public final Builder putBoolean(String key, boolean z) {
            Intrinsics.checkNotNullParameter(key, "key");
            return putDirect(key, Boolean.valueOf(z));
        }

        public final Builder putInt(String key, int i) {
            Intrinsics.checkNotNullParameter(key, "key");
            return putDirect(key, Integer.valueOf(i));
        }

        public final Builder putString(String key, String str) {
            Intrinsics.checkNotNullParameter(key, "key");
            return putDirect(key, str);
        }

        public final Builder putAll(Data data) {
            Intrinsics.checkNotNullParameter(data, "data");
            putAll(data.values);
            return this;
        }

        public final Builder put(String key, Object obj) {
            Intrinsics.checkNotNullParameter(key, "key");
            Map map = this.values;
            if (obj == null) {
                obj = null;
            } else {
                KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(obj.getClass());
                if (!(Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean.TYPE)) ? true : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Byte.TYPE)) ? true : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer.TYPE)) ? true : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Long.TYPE)) ? true : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Float.TYPE)) ? true : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Double.TYPE)) ? true : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String.class)) ? true : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean[].class)) ? true : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Byte[].class)) ? true : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer[].class)) ? true : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Long[].class)) ? true : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Float[].class)) ? true : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Double[].class)) ? true : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String[].class)))) {
                    if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(boolean[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((boolean[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(byte[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((byte[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(int[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((int[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(long[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((long[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(float[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((float[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(double[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((double[]) obj);
                    } else {
                        throw new IllegalArgumentException("Key " + key + " has invalid type " + orCreateKotlinClass);
                    }
                }
            }
            map.put(key, obj);
            return this;
        }

        public final Data build() {
            Data data = new Data(this.values);
            Data.Companion.toByteArrayInternalV1(data);
            return data;
        }

        public final Builder putAll(Map values) {
            Intrinsics.checkNotNullParameter(values, "values");
            for (Map.Entry entry : values.entrySet()) {
                put((String) entry.getKey(), entry.getValue());
            }
            return this;
        }
    }

    /* compiled from: Data_.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private static final void toByteArrayInternalV1$writeHeader(DataOutputStream dataOutputStream) {
            dataOutputStream.writeShort(-21521);
            dataOutputStream.writeShort(1);
        }

        private static final void toByteArrayInternalV1$writeArray(DataOutputStream dataOutputStream, Object[] objArr) {
            int i;
            KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(objArr.getClass());
            if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean[].class))) {
                i = 8;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Byte[].class))) {
                i = 9;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer[].class))) {
                i = 10;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Long[].class))) {
                i = 11;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Float[].class))) {
                i = 12;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Double[].class))) {
                i = 13;
            } else {
                if (!Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String[].class))) {
                    throw new IllegalArgumentException("Unsupported value type " + Reflection.getOrCreateKotlinClass(objArr.getClass()).getQualifiedName());
                }
                i = 14;
            }
            dataOutputStream.writeByte(i);
            dataOutputStream.writeInt(objArr.length);
            for (Object obj : objArr) {
                if (i == 8) {
                    Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
                    dataOutputStream.writeBoolean(bool != null ? bool.booleanValue() : false);
                } else if (i == 9) {
                    Byte b = obj instanceof Byte ? (Byte) obj : null;
                    dataOutputStream.writeByte(b != null ? b.byteValue() : (byte) 0);
                } else if (i == 10) {
                    Integer num = obj instanceof Integer ? (Integer) obj : null;
                    dataOutputStream.writeInt(num != null ? num.intValue() : 0);
                } else if (i == 11) {
                    Long l = obj instanceof Long ? (Long) obj : null;
                    dataOutputStream.writeLong(l != null ? l.longValue() : 0L);
                } else if (i == 12) {
                    Float f = obj instanceof Float ? (Float) obj : null;
                    dataOutputStream.writeFloat(f != null ? f.floatValue() : 0.0f);
                } else if (i == 13) {
                    Double d = obj instanceof Double ? (Double) obj : null;
                    dataOutputStream.writeDouble(d != null ? d.doubleValue() : 0.0d);
                } else if (i == 14) {
                    String str = obj instanceof String ? (String) obj : null;
                    if (str == null) {
                        str = "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d";
                    }
                    dataOutputStream.writeUTF(str);
                }
            }
        }

        private static final void toByteArrayInternalV1$writeEntry(DataOutputStream dataOutputStream, String str, Object obj) {
            if (obj == null) {
                dataOutputStream.writeByte(0);
            } else if (obj instanceof Boolean) {
                dataOutputStream.writeByte(1);
                dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
            } else if (obj instanceof Byte) {
                dataOutputStream.writeByte(2);
                dataOutputStream.writeByte(((Number) obj).byteValue());
            } else if (obj instanceof Integer) {
                dataOutputStream.writeByte(3);
                dataOutputStream.writeInt(((Number) obj).intValue());
            } else if (obj instanceof Long) {
                dataOutputStream.writeByte(4);
                dataOutputStream.writeLong(((Number) obj).longValue());
            } else if (obj instanceof Float) {
                dataOutputStream.writeByte(5);
                dataOutputStream.writeFloat(((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                dataOutputStream.writeByte(6);
                dataOutputStream.writeDouble(((Number) obj).doubleValue());
            } else if (obj instanceof String) {
                dataOutputStream.writeByte(7);
                dataOutputStream.writeUTF((String) obj);
            } else if (obj instanceof Object[]) {
                toByteArrayInternalV1$writeArray(dataOutputStream, (Object[]) obj);
            } else {
                throw new IllegalArgumentException("Unsupported value type " + Reflection.getOrCreateKotlinClass(obj.getClass()).getSimpleName());
            }
            dataOutputStream.writeUTF(str);
        }

        public final byte[] toByteArrayInternalV1(Data data) {
            String str;
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    toByteArrayInternalV1$writeHeader(dataOutputStream);
                    dataOutputStream.writeInt(data.size());
                    for (Map.Entry entry : data.values.entrySet()) {
                        toByteArrayInternalV1$writeEntry(dataOutputStream, (String) entry.getKey(), entry.getValue());
                    }
                    dataOutputStream.flush();
                    if (dataOutputStream.size() > 10240) {
                        throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    CloseableKt.closeFinally(dataOutputStream, null);
                    Intrinsics.checkNotNullExpressionValue(byteArray, "{\n                ByteAr…          }\n            }");
                    return byteArray;
                } finally {
                }
            } catch (IOException e) {
                str = Data_Kt.TAG;
                Logger.get().error(str, "Error in Data#toByteArray: ", e);
                return new byte[0];
            }
        }

        private static final boolean fromByteArray$isObjectStream(ByteArrayInputStream byteArrayInputStream) {
            byte[] bArr = new byte[2];
            byteArrayInputStream.read(bArr);
            byte b = (byte) (-21267);
            boolean z = false;
            if (bArr[0] == ((byte) 16777132) && bArr[1] == b) {
                z = true;
            }
            byteArrayInputStream.reset();
            return z;
        }

        private static final void fromByteArray$readHeader(DataInputStream dataInputStream) {
            short readShort = dataInputStream.readShort();
            if (readShort != -21521) {
                throw new IllegalStateException(("Magic number doesn't match: " + ((int) readShort)).toString());
            }
            short readShort2 = dataInputStream.readShort();
            if (readShort2 == 1) {
                return;
            }
            throw new IllegalStateException(("Unsupported version number: " + ((int) readShort2)).toString());
        }

        private static final Object fromByteArray$readValue(DataInputStream dataInputStream, byte b) {
            if (b == 0) {
                return null;
            }
            if (b == 1) {
                return Boolean.valueOf(dataInputStream.readBoolean());
            }
            if (b == 2) {
                return Byte.valueOf(dataInputStream.readByte());
            }
            if (b == 3) {
                return Integer.valueOf(dataInputStream.readInt());
            }
            if (b == 4) {
                return Long.valueOf(dataInputStream.readLong());
            }
            if (b == 5) {
                return Float.valueOf(dataInputStream.readFloat());
            }
            if (b == 6) {
                return Double.valueOf(dataInputStream.readDouble());
            }
            if (b == 7) {
                return dataInputStream.readUTF();
            }
            int i = 0;
            if (b == 8) {
                int readInt = dataInputStream.readInt();
                Boolean[] boolArr = new Boolean[readInt];
                while (i < readInt) {
                    boolArr[i] = Boolean.valueOf(dataInputStream.readBoolean());
                    i++;
                }
                return boolArr;
            }
            if (b == 9) {
                int readInt2 = dataInputStream.readInt();
                Byte[] bArr = new Byte[readInt2];
                while (i < readInt2) {
                    bArr[i] = Byte.valueOf(dataInputStream.readByte());
                    i++;
                }
                return bArr;
            }
            if (b == 10) {
                int readInt3 = dataInputStream.readInt();
                Integer[] numArr = new Integer[readInt3];
                while (i < readInt3) {
                    numArr[i] = Integer.valueOf(dataInputStream.readInt());
                    i++;
                }
                return numArr;
            }
            if (b == 11) {
                int readInt4 = dataInputStream.readInt();
                Long[] lArr = new Long[readInt4];
                while (i < readInt4) {
                    lArr[i] = Long.valueOf(dataInputStream.readLong());
                    i++;
                }
                return lArr;
            }
            if (b == 12) {
                int readInt5 = dataInputStream.readInt();
                Float[] fArr = new Float[readInt5];
                while (i < readInt5) {
                    fArr[i] = Float.valueOf(dataInputStream.readFloat());
                    i++;
                }
                return fArr;
            }
            if (b == 13) {
                int readInt6 = dataInputStream.readInt();
                Double[] dArr = new Double[readInt6];
                while (i < readInt6) {
                    dArr[i] = Double.valueOf(dataInputStream.readDouble());
                    i++;
                }
                return dArr;
            }
            if (b == 14) {
                int readInt7 = dataInputStream.readInt();
                String[] strArr = new String[readInt7];
                while (i < readInt7) {
                    String readUTF = dataInputStream.readUTF();
                    if (Intrinsics.areEqual(readUTF, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d")) {
                        readUTF = null;
                    }
                    strArr[i] = readUTF;
                    i++;
                }
                return strArr;
            }
            throw new IllegalStateException("Unsupported type " + ((int) b));
        }

        public final Data fromByteArray(byte[] bytes) {
            String str;
            String str2;
            Intrinsics.checkNotNullParameter(bytes, "bytes");
            if (bytes.length > 10240) {
                throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
            }
            if (bytes.length == 0) {
                return Data.EMPTY;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
                int i = 0;
                if (fromByteArray$isObjectStream(byteArrayInputStream)) {
                    ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        int readInt = objectInputStream.readInt();
                        while (i < readInt) {
                            String readUTF = objectInputStream.readUTF();
                            Intrinsics.checkNotNullExpressionValue(readUTF, "readUTF()");
                            linkedHashMap.put(readUTF, objectInputStream.readObject());
                            i++;
                        }
                        CloseableKt.closeFinally(objectInputStream, null);
                    } finally {
                    }
                } else {
                    DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
                    try {
                        fromByteArray$readHeader(dataInputStream);
                        int readInt2 = dataInputStream.readInt();
                        while (i < readInt2) {
                            Object fromByteArray$readValue = fromByteArray$readValue(dataInputStream, dataInputStream.readByte());
                            String key = dataInputStream.readUTF();
                            Intrinsics.checkNotNullExpressionValue(key, "key");
                            linkedHashMap.put(key, fromByteArray$readValue);
                            i++;
                        }
                        CloseableKt.closeFinally(dataInputStream, null);
                    } finally {
                    }
                }
            } catch (IOException e) {
                str2 = Data_Kt.TAG;
                Logger.get().error(str2, "Error in Data#fromByteArray: ", e);
            } catch (ClassNotFoundException e2) {
                str = Data_Kt.TAG;
                Logger.get().error(str, "Error in Data#fromByteArray: ", e2);
            }
            return new Data(linkedHashMap);
        }
    }
}
