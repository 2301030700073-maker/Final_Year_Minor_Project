package kotlin.reflect.jvm.internal.impl.resolve.constants;

import androidx.room.Room;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ConstantValueFactory {
    public static ArrayValue createArrayValue(List list, ModuleDescriptor moduleDescriptor, PrimitiveType primitiveType) {
        List list2 = CollectionsKt.toList(list);
        ArrayList arrayList = new ArrayList();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            ConstantValue createConstantValue = createConstantValue(it.next(), null);
            if (createConstantValue != null) {
                arrayList.add(createConstantValue);
            }
        }
        return moduleDescriptor != null ? new TypedArrayValue(arrayList, moduleDescriptor.getBuiltIns().getPrimitiveArrayKotlinType(primitiveType)) : new ArrayValue(arrayList, new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(18, primitiveType));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.ArrayList] */
    public static ConstantValue createConstantValue(Object obj, ModuleDescriptorImpl moduleDescriptorImpl) {
        if (obj instanceof Byte) {
            return new ByteValue(((Number) obj).byteValue());
        }
        if (obj instanceof Short) {
            return new ShortValue(((Number) obj).shortValue());
        }
        if (obj instanceof Integer) {
            return new IntValue(((Number) obj).intValue());
        }
        if (obj instanceof Long) {
            return new LongValue(((Number) obj).longValue());
        }
        if (obj instanceof Character) {
            return new CharValue((Character) obj);
        }
        if (obj instanceof Float) {
            return new FloatValue(((Number) obj).floatValue());
        }
        if (obj instanceof Double) {
            return new FloatValue(((Number) obj).doubleValue());
        }
        if (obj instanceof Boolean) {
            return new FloatValue((Boolean) obj);
        }
        if (obj instanceof String) {
            return new StringValue((String) obj);
        }
        boolean z = obj instanceof byte[];
        ?? r1 = EmptyList.INSTANCE;
        int i = 0;
        if (z) {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length;
            if (length != 0) {
                if (length != 1) {
                    r1 = new ArrayList(bArr.length);
                    int length2 = bArr.length;
                    while (i < length2) {
                        r1.add(Byte.valueOf(bArr[i]));
                        i++;
                    }
                } else {
                    r1 = Room.listOf(Byte.valueOf(bArr[0]));
                }
            }
            return createArrayValue(r1, moduleDescriptorImpl, PrimitiveType.BYTE);
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int length3 = sArr.length;
            if (length3 != 0) {
                if (length3 != 1) {
                    r1 = new ArrayList(sArr.length);
                    int length4 = sArr.length;
                    while (i < length4) {
                        r1.add(Short.valueOf(sArr[i]));
                        i++;
                    }
                } else {
                    r1 = Room.listOf(Short.valueOf(sArr[0]));
                }
            }
            return createArrayValue(r1, moduleDescriptorImpl, PrimitiveType.SHORT);
        }
        if (obj instanceof int[]) {
            return createArrayValue(ArraysKt___ArraysKt.toList((int[]) obj), moduleDescriptorImpl, PrimitiveType.INT);
        }
        if (obj instanceof long[]) {
            return createArrayValue(ArraysKt___ArraysKt.toList((long[]) obj), moduleDescriptorImpl, PrimitiveType.LONG);
        }
        if (!(obj instanceof char[])) {
            if (obj instanceof float[]) {
                return createArrayValue(ArraysKt___ArraysKt.toList((float[]) obj), moduleDescriptorImpl, PrimitiveType.FLOAT);
            }
            if (obj instanceof double[]) {
                return createArrayValue(ArraysKt___ArraysKt.toList((double[]) obj), moduleDescriptorImpl, PrimitiveType.DOUBLE);
            }
            if (obj instanceof boolean[]) {
                return createArrayValue(ArraysKt___ArraysKt.toList((boolean[]) obj), moduleDescriptorImpl, PrimitiveType.BOOLEAN);
            }
            if (obj == null) {
                return new NullValue(null);
            }
            return null;
        }
        char[] cArr = (char[]) obj;
        int length5 = cArr.length;
        if (length5 != 0) {
            if (length5 != 1) {
                r1 = new ArrayList(cArr.length);
                int length6 = cArr.length;
                while (i < length6) {
                    r1.add(Character.valueOf(cArr[i]));
                    i++;
                }
            } else {
                r1 = Room.listOf(Character.valueOf(cArr[0]));
            }
        }
        return createArrayValue(r1, moduleDescriptorImpl, PrimitiveType.CHAR);
    }
}
