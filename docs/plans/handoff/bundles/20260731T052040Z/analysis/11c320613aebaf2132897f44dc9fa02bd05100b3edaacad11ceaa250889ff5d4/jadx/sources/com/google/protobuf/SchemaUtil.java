package com.google.protobuf;

import java.util.Arrays;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SchemaUtil {
    public static final Class GENERATED_MESSAGE_CLASS;
    public static final UnknownFieldSetLiteSchema UNKNOWN_FIELD_SET_FULL_SCHEMA;
    public static final UnknownFieldSetLiteSchema UNKNOWN_FIELD_SET_LITE_SCHEMA;

    static {
        Class<?> cls;
        Class<?> cls2;
        Class cls3 = Android.MEMORY_CLASS;
        UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        GENERATED_MESSAGE_CLASS = cls;
        try {
            Class cls4 = Android.MEMORY_CLASS;
            try {
                cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
            } catch (Throwable unused2) {
                cls2 = null;
            }
            if (cls2 != null) {
                unknownFieldSetLiteSchema = (UnknownFieldSetLiteSchema) cls2.getConstructor(null).newInstance(null);
            }
        } catch (Throwable unused3) {
        }
        UNKNOWN_FIELD_SET_FULL_SCHEMA = unknownFieldSetLiteSchema;
        UNKNOWN_FIELD_SET_LITE_SCHEMA = new UnknownFieldSetLiteSchema();
    }

    public static int computeSizeEnumListNoTag(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof IntArrayList)) {
            int i2 = 0;
            while (i < size) {
                i2 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int i3 = 0;
        while (i < size) {
            i3 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(intArrayList.getInt(i));
            i++;
        }
        return i3;
    }

    public static int computeSizeFixed32List(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream$ArrayEncoder.computeTagSize(i) + 4) * size;
    }

    public static int computeSizeFixed64List(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream$ArrayEncoder.computeTagSize(i) + 8) * size;
    }

    public static int computeSizeInt32ListNoTag(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof IntArrayList)) {
            int i2 = 0;
            while (i < size) {
                i2 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int i3 = 0;
        while (i < size) {
            i3 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(intArrayList.getInt(i));
            i++;
        }
        return i3;
    }

    public static int computeSizeInt64ListNoTag(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof LongArrayList)) {
            int i2 = 0;
            while (i < size) {
                i2 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(((Long) list.get(i)).longValue());
                i++;
            }
            return i2;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int i3 = 0;
        while (i < size) {
            i3 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(longArrayList.getLong(i));
            i++;
        }
        return i3;
    }

    public static int computeSizeSInt32ListNoTag(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof IntArrayList)) {
            int i2 = 0;
            while (i < size) {
                i2 += CodedOutputStream$ArrayEncoder.computeSInt32SizeNoTag(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int i3 = 0;
        while (i < size) {
            i3 += CodedOutputStream$ArrayEncoder.computeSInt32SizeNoTag(intArrayList.getInt(i));
            i++;
        }
        return i3;
    }

    public static int computeSizeSInt64ListNoTag(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof LongArrayList)) {
            int i2 = 0;
            while (i < size) {
                i2 += CodedOutputStream$ArrayEncoder.computeSInt64SizeNoTag(((Long) list.get(i)).longValue());
                i++;
            }
            return i2;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int i3 = 0;
        while (i < size) {
            i3 += CodedOutputStream$ArrayEncoder.computeSInt64SizeNoTag(longArrayList.getLong(i));
            i++;
        }
        return i3;
    }

    public static int computeSizeUInt32ListNoTag(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof IntArrayList)) {
            int i2 = 0;
            while (i < size) {
                i2 += CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int i3 = 0;
        while (i < size) {
            i3 += CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(intArrayList.getInt(i));
            i++;
        }
        return i3;
    }

    public static int computeSizeUInt64ListNoTag(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof LongArrayList)) {
            int i2 = 0;
            while (i < size) {
                i2 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(((Long) list.get(i)).longValue());
                i++;
            }
            return i2;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int i3 = 0;
        while (i < size) {
            i3 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(longArrayList.getLong(i));
            i++;
        }
        return i3;
    }

    public static void mergeUnknownFields(UnknownFieldSetLiteSchema unknownFieldSetLiteSchema, Object obj, Object obj2) {
        unknownFieldSetLiteSchema.getClass();
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        UnknownFieldSetLite unknownFieldSetLite2 = ((GeneratedMessageLite) obj2).unknownFields;
        UnknownFieldSetLite unknownFieldSetLite3 = UnknownFieldSetLite.DEFAULT_INSTANCE;
        if (!unknownFieldSetLite3.equals(unknownFieldSetLite2)) {
            if (unknownFieldSetLite3.equals(unknownFieldSetLite)) {
                int i = unknownFieldSetLite.count + unknownFieldSetLite2.count;
                int[] copyOf = Arrays.copyOf(unknownFieldSetLite.tags, i);
                System.arraycopy(unknownFieldSetLite2.tags, 0, copyOf, unknownFieldSetLite.count, unknownFieldSetLite2.count);
                Object[] copyOf2 = Arrays.copyOf(unknownFieldSetLite.objects, i);
                System.arraycopy(unknownFieldSetLite2.objects, 0, copyOf2, unknownFieldSetLite.count, unknownFieldSetLite2.count);
                unknownFieldSetLite = new UnknownFieldSetLite(i, copyOf, copyOf2, true);
            } else {
                unknownFieldSetLite.getClass();
                if (!unknownFieldSetLite2.equals(unknownFieldSetLite3)) {
                    if (!unknownFieldSetLite.isMutable) {
                        throw new UnsupportedOperationException();
                    }
                    int i2 = unknownFieldSetLite.count + unknownFieldSetLite2.count;
                    unknownFieldSetLite.ensureCapacity(i2);
                    System.arraycopy(unknownFieldSetLite2.tags, 0, unknownFieldSetLite.tags, unknownFieldSetLite.count, unknownFieldSetLite2.count);
                    System.arraycopy(unknownFieldSetLite2.objects, 0, unknownFieldSetLite.objects, unknownFieldSetLite.count, unknownFieldSetLite2.count);
                    unknownFieldSetLite.count = i2;
                }
            }
        }
        generatedMessageLite.unknownFields = unknownFieldSetLite;
    }

    public static boolean safeEquals(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void writeBoolList(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = list instanceof BooleanArrayList;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        if (z2) {
            if (z) {
                codedOutputStream$ArrayEncoder.writeTag(i, 2);
                codedOutputStream$ArrayEncoder.writeUInt32NoTag(0);
                return;
            }
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                boolean booleanValue = ((Boolean) list.get(i2)).booleanValue();
                codedOutputStream$ArrayEncoder.writeTag(i, 0);
                codedOutputStream$ArrayEncoder.write(booleanValue ? (byte) 1 : (byte) 0);
            }
            return;
        }
        codedOutputStream$ArrayEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).getClass();
            boolean z3 = CodedOutputStream$ArrayEncoder.HAS_UNSAFE_ARRAY_OPERATIONS;
            i3++;
        }
        codedOutputStream$ArrayEncoder.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            codedOutputStream$ArrayEncoder.write(((Boolean) list.get(i5)).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    public static void writeDoubleList(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = list instanceof DoubleArrayList;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z2) {
            if (!z) {
                while (i2 < list.size()) {
                    double doubleValue = ((Double) list.get(i2)).doubleValue();
                    codedOutputStream$ArrayEncoder.getClass();
                    codedOutputStream$ArrayEncoder.writeFixed64(i, Double.doubleToRawLongBits(doubleValue));
                    i2++;
                }
                return;
            }
            codedOutputStream$ArrayEncoder.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Double) list.get(i4)).getClass();
                boolean z3 = CodedOutputStream$ArrayEncoder.HAS_UNSAFE_ARRAY_OPERATIONS;
                i3 += 8;
            }
            codedOutputStream$ArrayEncoder.writeUInt32NoTag(i3);
            while (i2 < list.size()) {
                codedOutputStream$ArrayEncoder.writeFixed64NoTag(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        DoubleArrayList doubleArrayList = (DoubleArrayList) list;
        if (!z) {
            while (i2 < 0) {
                doubleArrayList.ensureIndexInRange$1(i2);
                double d = doubleArrayList.array[i2];
                codedOutputStream$ArrayEncoder.getClass();
                codedOutputStream$ArrayEncoder.writeFixed64(i, Double.doubleToRawLongBits(d));
                i2++;
            }
            return;
        }
        codedOutputStream$ArrayEncoder.writeTag(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            doubleArrayList.ensureIndexInRange$1(i6);
            double d2 = doubleArrayList.array[i6];
            boolean z4 = CodedOutputStream$ArrayEncoder.HAS_UNSAFE_ARRAY_OPERATIONS;
            i5 += 8;
        }
        codedOutputStream$ArrayEncoder.writeUInt32NoTag(i5);
        while (i2 < 0) {
            doubleArrayList.ensureIndexInRange$1(i2);
            codedOutputStream$ArrayEncoder.writeFixed64NoTag(Double.doubleToRawLongBits(doubleArrayList.array[i2]));
            i2++;
        }
    }

    public static void writeEnumList(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = list instanceof IntArrayList;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z2) {
            if (!z) {
                while (i2 < list.size()) {
                    codedOutputStream$ArrayEncoder.writeInt32(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            codedOutputStream$ArrayEncoder.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(((Integer) list.get(i4)).intValue());
            }
            codedOutputStream$ArrayEncoder.writeUInt32NoTag(i3);
            while (i2 < list.size()) {
                codedOutputStream$ArrayEncoder.writeInt32NoTag(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        if (!z) {
            while (i2 < 0) {
                codedOutputStream$ArrayEncoder.writeInt32(i, intArrayList.getInt(i2));
                i2++;
            }
            return;
        }
        codedOutputStream$ArrayEncoder.writeTag(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            i5 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(intArrayList.getInt(i6));
        }
        codedOutputStream$ArrayEncoder.writeUInt32NoTag(i5);
        while (i2 < 0) {
            codedOutputStream$ArrayEncoder.writeInt32NoTag(intArrayList.getInt(i2));
            i2++;
        }
    }

    public static void writeFixed32List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = list instanceof IntArrayList;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z2) {
            if (!z) {
                while (i2 < list.size()) {
                    codedOutputStream$ArrayEncoder.writeFixed32(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            codedOutputStream$ArrayEncoder.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                boolean z3 = CodedOutputStream$ArrayEncoder.HAS_UNSAFE_ARRAY_OPERATIONS;
                i3 += 4;
            }
            codedOutputStream$ArrayEncoder.writeUInt32NoTag(i3);
            while (i2 < list.size()) {
                codedOutputStream$ArrayEncoder.writeFixed32NoTag(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        if (!z) {
            while (i2 < 0) {
                codedOutputStream$ArrayEncoder.writeFixed32(i, intArrayList.getInt(i2));
                i2++;
            }
            return;
        }
        codedOutputStream$ArrayEncoder.writeTag(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            intArrayList.getInt(i6);
            boolean z4 = CodedOutputStream$ArrayEncoder.HAS_UNSAFE_ARRAY_OPERATIONS;
            i5 += 4;
        }
        codedOutputStream$ArrayEncoder.writeUInt32NoTag(i5);
        while (i2 < 0) {
            codedOutputStream$ArrayEncoder.writeFixed32NoTag(intArrayList.getInt(i2));
            i2++;
        }
    }

    public static void writeFixed64List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = list instanceof LongArrayList;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z2) {
            if (!z) {
                while (i2 < list.size()) {
                    codedOutputStream$ArrayEncoder.writeFixed64(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            codedOutputStream$ArrayEncoder.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                boolean z3 = CodedOutputStream$ArrayEncoder.HAS_UNSAFE_ARRAY_OPERATIONS;
                i3 += 8;
            }
            codedOutputStream$ArrayEncoder.writeUInt32NoTag(i3);
            while (i2 < list.size()) {
                codedOutputStream$ArrayEncoder.writeFixed64NoTag(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        if (!z) {
            while (i2 < 0) {
                codedOutputStream$ArrayEncoder.writeFixed64(i, longArrayList.getLong(i2));
                i2++;
            }
            return;
        }
        codedOutputStream$ArrayEncoder.writeTag(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            longArrayList.getLong(i6);
            boolean z4 = CodedOutputStream$ArrayEncoder.HAS_UNSAFE_ARRAY_OPERATIONS;
            i5 += 8;
        }
        codedOutputStream$ArrayEncoder.writeUInt32NoTag(i5);
        while (i2 < 0) {
            codedOutputStream$ArrayEncoder.writeFixed64NoTag(longArrayList.getLong(i2));
            i2++;
        }
    }

    public static void writeFloatList(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = list instanceof FloatArrayList;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z2) {
            if (!z) {
                while (i2 < list.size()) {
                    float floatValue = ((Float) list.get(i2)).floatValue();
                    codedOutputStream$ArrayEncoder.getClass();
                    codedOutputStream$ArrayEncoder.writeFixed32(i, Float.floatToRawIntBits(floatValue));
                    i2++;
                }
                return;
            }
            codedOutputStream$ArrayEncoder.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Float) list.get(i4)).getClass();
                boolean z3 = CodedOutputStream$ArrayEncoder.HAS_UNSAFE_ARRAY_OPERATIONS;
                i3 += 4;
            }
            codedOutputStream$ArrayEncoder.writeUInt32NoTag(i3);
            while (i2 < list.size()) {
                codedOutputStream$ArrayEncoder.writeFixed32NoTag(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        FloatArrayList floatArrayList = (FloatArrayList) list;
        if (!z) {
            while (i2 < 0) {
                floatArrayList.ensureIndexInRange$2(i2);
                float f = floatArrayList.array[i2];
                codedOutputStream$ArrayEncoder.getClass();
                codedOutputStream$ArrayEncoder.writeFixed32(i, Float.floatToRawIntBits(f));
                i2++;
            }
            return;
        }
        codedOutputStream$ArrayEncoder.writeTag(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            floatArrayList.ensureIndexInRange$2(i6);
            float f2 = floatArrayList.array[i6];
            boolean z4 = CodedOutputStream$ArrayEncoder.HAS_UNSAFE_ARRAY_OPERATIONS;
            i5 += 4;
        }
        codedOutputStream$ArrayEncoder.writeUInt32NoTag(i5);
        while (i2 < 0) {
            floatArrayList.ensureIndexInRange$2(i2);
            codedOutputStream$ArrayEncoder.writeFixed32NoTag(Float.floatToRawIntBits(floatArrayList.array[i2]));
            i2++;
        }
    }

    public static void writeInt32List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = list instanceof IntArrayList;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z2) {
            if (!z) {
                while (i2 < list.size()) {
                    codedOutputStream$ArrayEncoder.writeInt32(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            codedOutputStream$ArrayEncoder.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(((Integer) list.get(i4)).intValue());
            }
            codedOutputStream$ArrayEncoder.writeUInt32NoTag(i3);
            while (i2 < list.size()) {
                codedOutputStream$ArrayEncoder.writeInt32NoTag(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        if (!z) {
            while (i2 < 0) {
                codedOutputStream$ArrayEncoder.writeInt32(i, intArrayList.getInt(i2));
                i2++;
            }
            return;
        }
        codedOutputStream$ArrayEncoder.writeTag(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            i5 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(intArrayList.getInt(i6));
        }
        codedOutputStream$ArrayEncoder.writeUInt32NoTag(i5);
        while (i2 < 0) {
            codedOutputStream$ArrayEncoder.writeInt32NoTag(intArrayList.getInt(i2));
            i2++;
        }
    }

    public static void writeInt64List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = list instanceof LongArrayList;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z2) {
            if (!z) {
                while (i2 < list.size()) {
                    codedOutputStream$ArrayEncoder.writeUInt64(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            codedOutputStream$ArrayEncoder.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(((Long) list.get(i4)).longValue());
            }
            codedOutputStream$ArrayEncoder.writeUInt32NoTag(i3);
            while (i2 < list.size()) {
                codedOutputStream$ArrayEncoder.writeUInt64NoTag(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        if (!z) {
            while (i2 < 0) {
                codedOutputStream$ArrayEncoder.writeUInt64(i, longArrayList.getLong(i2));
                i2++;
            }
            return;
        }
        codedOutputStream$ArrayEncoder.writeTag(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            i5 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(longArrayList.getLong(i6));
        }
        codedOutputStream$ArrayEncoder.writeUInt32NoTag(i5);
        while (i2 < 0) {
            codedOutputStream$ArrayEncoder.writeUInt64NoTag(longArrayList.getLong(i2));
            i2++;
        }
    }

    public static void writeSFixed32List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = list instanceof IntArrayList;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z2) {
            if (!z) {
                while (i2 < list.size()) {
                    codedOutputStream$ArrayEncoder.writeFixed32(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            codedOutputStream$ArrayEncoder.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                boolean z3 = CodedOutputStream$ArrayEncoder.HAS_UNSAFE_ARRAY_OPERATIONS;
                i3 += 4;
            }
            codedOutputStream$ArrayEncoder.writeUInt32NoTag(i3);
            while (i2 < list.size()) {
                codedOutputStream$ArrayEncoder.writeFixed32NoTag(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        if (!z) {
            while (i2 < 0) {
                codedOutputStream$ArrayEncoder.writeFixed32(i, intArrayList.getInt(i2));
                i2++;
            }
            return;
        }
        codedOutputStream$ArrayEncoder.writeTag(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            intArrayList.getInt(i6);
            boolean z4 = CodedOutputStream$ArrayEncoder.HAS_UNSAFE_ARRAY_OPERATIONS;
            i5 += 4;
        }
        codedOutputStream$ArrayEncoder.writeUInt32NoTag(i5);
        while (i2 < 0) {
            codedOutputStream$ArrayEncoder.writeFixed32NoTag(intArrayList.getInt(i2));
            i2++;
        }
    }

    public static void writeSFixed64List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = list instanceof LongArrayList;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z2) {
            if (!z) {
                while (i2 < list.size()) {
                    codedOutputStream$ArrayEncoder.writeFixed64(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            codedOutputStream$ArrayEncoder.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                boolean z3 = CodedOutputStream$ArrayEncoder.HAS_UNSAFE_ARRAY_OPERATIONS;
                i3 += 8;
            }
            codedOutputStream$ArrayEncoder.writeUInt32NoTag(i3);
            while (i2 < list.size()) {
                codedOutputStream$ArrayEncoder.writeFixed64NoTag(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        if (!z) {
            while (i2 < 0) {
                codedOutputStream$ArrayEncoder.writeFixed64(i, longArrayList.getLong(i2));
                i2++;
            }
            return;
        }
        codedOutputStream$ArrayEncoder.writeTag(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            longArrayList.getLong(i6);
            boolean z4 = CodedOutputStream$ArrayEncoder.HAS_UNSAFE_ARRAY_OPERATIONS;
            i5 += 8;
        }
        codedOutputStream$ArrayEncoder.writeUInt32NoTag(i5);
        while (i2 < 0) {
            codedOutputStream$ArrayEncoder.writeFixed64NoTag(longArrayList.getLong(i2));
            i2++;
        }
    }

    public static void writeSInt32List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = list instanceof IntArrayList;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z2) {
            if (!z) {
                while (i2 < list.size()) {
                    int intValue = ((Integer) list.get(i2)).intValue();
                    codedOutputStream$ArrayEncoder.writeUInt32(i, (intValue >> 31) ^ (intValue << 1));
                    i2++;
                }
                return;
            }
            codedOutputStream$ArrayEncoder.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += CodedOutputStream$ArrayEncoder.computeSInt32SizeNoTag(((Integer) list.get(i4)).intValue());
            }
            codedOutputStream$ArrayEncoder.writeUInt32NoTag(i3);
            while (i2 < list.size()) {
                int intValue2 = ((Integer) list.get(i2)).intValue();
                codedOutputStream$ArrayEncoder.writeUInt32NoTag((intValue2 >> 31) ^ (intValue2 << 1));
                i2++;
            }
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        if (!z) {
            while (i2 < 0) {
                int i5 = intArrayList.getInt(i2);
                codedOutputStream$ArrayEncoder.writeUInt32(i, (i5 >> 31) ^ (i5 << 1));
                i2++;
            }
            return;
        }
        codedOutputStream$ArrayEncoder.writeTag(i, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < 0; i7++) {
            i6 += CodedOutputStream$ArrayEncoder.computeSInt32SizeNoTag(intArrayList.getInt(i7));
        }
        codedOutputStream$ArrayEncoder.writeUInt32NoTag(i6);
        while (i2 < 0) {
            int i8 = intArrayList.getInt(i2);
            codedOutputStream$ArrayEncoder.writeUInt32NoTag((i8 >> 31) ^ (i8 << 1));
            i2++;
        }
    }

    public static void writeSInt64List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = list instanceof LongArrayList;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z2) {
            if (!z) {
                while (i2 < list.size()) {
                    long longValue = ((Long) list.get(i2)).longValue();
                    codedOutputStream$ArrayEncoder.writeUInt64(i, (longValue >> 63) ^ (longValue << 1));
                    i2++;
                }
                return;
            }
            codedOutputStream$ArrayEncoder.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += CodedOutputStream$ArrayEncoder.computeSInt64SizeNoTag(((Long) list.get(i4)).longValue());
            }
            codedOutputStream$ArrayEncoder.writeUInt32NoTag(i3);
            while (i2 < list.size()) {
                long longValue2 = ((Long) list.get(i2)).longValue();
                codedOutputStream$ArrayEncoder.writeUInt64NoTag((longValue2 >> 63) ^ (longValue2 << 1));
                i2++;
            }
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        if (!z) {
            while (i2 < 0) {
                long j = longArrayList.getLong(i2);
                codedOutputStream$ArrayEncoder.writeUInt64(i, (j >> 63) ^ (j << 1));
                i2++;
            }
            return;
        }
        codedOutputStream$ArrayEncoder.writeTag(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            i5 += CodedOutputStream$ArrayEncoder.computeSInt64SizeNoTag(longArrayList.getLong(i6));
        }
        codedOutputStream$ArrayEncoder.writeUInt32NoTag(i5);
        while (i2 < 0) {
            long j2 = longArrayList.getLong(i2);
            codedOutputStream$ArrayEncoder.writeUInt64NoTag((j2 >> 63) ^ (j2 << 1));
            i2++;
        }
    }

    public static void writeUInt32List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = list instanceof IntArrayList;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z2) {
            if (!z) {
                while (i2 < list.size()) {
                    codedOutputStream$ArrayEncoder.writeUInt32(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            codedOutputStream$ArrayEncoder.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(((Integer) list.get(i4)).intValue());
            }
            codedOutputStream$ArrayEncoder.writeUInt32NoTag(i3);
            while (i2 < list.size()) {
                codedOutputStream$ArrayEncoder.writeUInt32NoTag(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        if (!z) {
            while (i2 < 0) {
                codedOutputStream$ArrayEncoder.writeUInt32(i, intArrayList.getInt(i2));
                i2++;
            }
            return;
        }
        codedOutputStream$ArrayEncoder.writeTag(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            i5 += CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(intArrayList.getInt(i6));
        }
        codedOutputStream$ArrayEncoder.writeUInt32NoTag(i5);
        while (i2 < 0) {
            codedOutputStream$ArrayEncoder.writeUInt32NoTag(intArrayList.getInt(i2));
            i2++;
        }
    }

    public static void writeUInt64List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = list instanceof LongArrayList;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z2) {
            if (!z) {
                while (i2 < list.size()) {
                    codedOutputStream$ArrayEncoder.writeUInt64(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            codedOutputStream$ArrayEncoder.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(((Long) list.get(i4)).longValue());
            }
            codedOutputStream$ArrayEncoder.writeUInt32NoTag(i3);
            while (i2 < list.size()) {
                codedOutputStream$ArrayEncoder.writeUInt64NoTag(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        if (!z) {
            while (i2 < 0) {
                codedOutputStream$ArrayEncoder.writeUInt64(i, longArrayList.getLong(i2));
                i2++;
            }
            return;
        }
        codedOutputStream$ArrayEncoder.writeTag(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < 0; i6++) {
            i5 += CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(longArrayList.getLong(i6));
        }
        codedOutputStream$ArrayEncoder.writeUInt32NoTag(i5);
        while (i2 < 0) {
            codedOutputStream$ArrayEncoder.writeUInt64NoTag(longArrayList.getLong(i2));
            i2++;
        }
    }
}
