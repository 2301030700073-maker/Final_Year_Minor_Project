package androidx.datastore.preferences.protobuf;

import java.util.Arrays;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SchemaUtil {
    public static final Class GENERATED_MESSAGE_CLASS;
    public static final UnknownFieldSetLiteSchema PROTO2_UNKNOWN_FIELD_SET_SCHEMA;
    public static final UnknownFieldSetLiteSchema PROTO3_UNKNOWN_FIELD_SET_SCHEMA;
    public static final UnknownFieldSetLiteSchema UNKNOWN_FIELD_SET_LITE_SCHEMA;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("androidx.datastore.preferences.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        GENERATED_MESSAGE_CLASS = cls;
        PROTO2_UNKNOWN_FIELD_SET_SCHEMA = getUnknownFieldSetSchema(false);
        PROTO3_UNKNOWN_FIELD_SET_SCHEMA = getUnknownFieldSetSchema(true);
        UNKNOWN_FIELD_SET_LITE_SCHEMA = new UnknownFieldSetLiteSchema();
    }

    public static int computeSizeByteStringList(List list, int i) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeTagSize = CodedOutputStream$OutputStreamEncoder.computeTagSize(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            computeTagSize += CodedOutputStream$OutputStreamEncoder.computeBytesSizeNoTag((ByteString$LiteralByteString) list.get(i2));
        }
        return computeTagSize;
    }

    public static int computeSizeEnumList(List list, int i) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream$OutputStreamEncoder.computeTagSize(i) * size) + computeSizeEnumListNoTag(list);
    }

    public static int computeSizeEnumListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += CodedOutputStream$OutputStreamEncoder.computeInt32SizeNoTag(((Integer) list.get(i2)).intValue());
        }
        return i;
    }

    public static int computeSizeFixed32List(List list, int i) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return CodedOutputStream$OutputStreamEncoder.computeFixed32Size(i) * size;
    }

    public static int computeSizeFixed32ListNoTag(List list) {
        return list.size() * 4;
    }

    public static int computeSizeFixed64List(List list, int i) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return CodedOutputStream$OutputStreamEncoder.computeFixed64Size(i) * size;
    }

    public static int computeSizeFixed64ListNoTag(List list) {
        return list.size() * 8;
    }

    public static int computeSizeInt32List(List list, int i) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream$OutputStreamEncoder.computeTagSize(i) * size) + computeSizeInt32ListNoTag(list);
    }

    public static int computeSizeInt32ListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += CodedOutputStream$OutputStreamEncoder.computeInt32SizeNoTag(((Integer) list.get(i2)).intValue());
        }
        return i;
    }

    public static int computeSizeInt64List(List list, int i) {
        if (list.size() == 0) {
            return 0;
        }
        return (CodedOutputStream$OutputStreamEncoder.computeTagSize(i) * list.size()) + computeSizeInt64ListNoTag(list);
    }

    public static int computeSizeInt64ListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(((Long) list.get(i2)).longValue());
        }
        return i;
    }

    public static int computeSizeMessageList(int i, List list, Schema schema) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeTagSize = CodedOutputStream$OutputStreamEncoder.computeTagSize(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            int serializedSize = ((AbstractMessageLite) list.get(i2)).getSerializedSize(schema);
            computeTagSize += CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(serializedSize) + serializedSize;
        }
        return computeTagSize;
    }

    public static int computeSizeSInt32List(List list, int i) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream$OutputStreamEncoder.computeTagSize(i) * size) + computeSizeSInt32ListNoTag(list);
    }

    public static int computeSizeSInt32ListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            int intValue = ((Integer) list.get(i2)).intValue();
            i += CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag((intValue >> 31) ^ (intValue << 1));
        }
        return i;
    }

    public static int computeSizeSInt64List(List list, int i) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream$OutputStreamEncoder.computeTagSize(i) * size) + computeSizeSInt64ListNoTag(list);
    }

    public static int computeSizeSInt64ListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            long longValue = ((Long) list.get(i2)).longValue();
            i += CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag((longValue >> 63) ^ (longValue << 1));
        }
        return i;
    }

    public static int computeSizeStringList(List list, int i) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int computeTagSize = CodedOutputStream$OutputStreamEncoder.computeTagSize(i) * size;
        if (!(list instanceof LazyStringList)) {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof ByteString$LiteralByteString) {
                    int size2 = ((ByteString$LiteralByteString) obj).size();
                    computeTagSize = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2) + size2 + computeTagSize;
                } else {
                    computeTagSize = CodedOutputStream$OutputStreamEncoder.computeStringSizeNoTag((String) obj) + computeTagSize;
                }
                i2++;
            }
            return computeTagSize;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        while (i2 < size) {
            Object raw = lazyStringList.getRaw(i2);
            if (raw instanceof ByteString$LiteralByteString) {
                int size3 = ((ByteString$LiteralByteString) raw).size();
                computeTagSize = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size3) + size3 + computeTagSize;
            } else {
                computeTagSize = CodedOutputStream$OutputStreamEncoder.computeStringSizeNoTag((String) raw) + computeTagSize;
            }
            i2++;
        }
        return computeTagSize;
    }

    public static int computeSizeUInt32List(List list, int i) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream$OutputStreamEncoder.computeTagSize(i) * size) + computeSizeUInt32ListNoTag(list);
    }

    public static int computeSizeUInt32ListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(((Integer) list.get(i2)).intValue());
        }
        return i;
    }

    public static int computeSizeUInt64List(List list, int i) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream$OutputStreamEncoder.computeTagSize(i) * size) + computeSizeUInt64ListNoTag(list);
    }

    public static int computeSizeUInt64ListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(((Long) list.get(i2)).longValue());
        }
        return i;
    }

    public static UnknownFieldSetLiteSchema getUnknownFieldSetSchema(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("androidx.datastore.preferences.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls != null) {
            try {
                return (UnknownFieldSetLiteSchema) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            } catch (Throwable unused2) {
            }
        }
        return null;
    }

    public static void mergeUnknownFields(UnknownFieldSetLiteSchema unknownFieldSetLiteSchema, GeneratedMessageLite generatedMessageLite, Object obj) {
        unknownFieldSetLiteSchema.getClass();
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        UnknownFieldSetLite unknownFieldSetLite2 = ((GeneratedMessageLite) obj).unknownFields;
        if (!unknownFieldSetLite2.equals(UnknownFieldSetLite.DEFAULT_INSTANCE)) {
            int i = unknownFieldSetLite.count + unknownFieldSetLite2.count;
            int[] copyOf = Arrays.copyOf(unknownFieldSetLite.tags, i);
            System.arraycopy(unknownFieldSetLite2.tags, 0, copyOf, unknownFieldSetLite.count, unknownFieldSetLite2.count);
            Object[] copyOf2 = Arrays.copyOf(unknownFieldSetLite.objects, i);
            System.arraycopy(unknownFieldSetLite2.objects, 0, copyOf2, unknownFieldSetLite.count, unknownFieldSetLite2.count);
            unknownFieldSetLite = new UnknownFieldSetLite(i, copyOf, copyOf2, true);
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
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream$OutputStreamEncoder.writeBool(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).getClass();
            i3++;
        }
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(i3);
        while (i2 < list.size()) {
            codedOutputStream$OutputStreamEncoder.write(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static void writeBytesList(int i, List list, ManifestSchemaFactory manifestSchemaFactory) {
        if (list == null || list.isEmpty()) {
            return;
        }
        manifestSchemaFactory.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeBytes(i, (ByteString$LiteralByteString) list.get(i2));
        }
    }

    public static void writeDoubleList(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream$OutputStreamEncoder.writeFixed64(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()), i);
                i2++;
            }
            return;
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            i3 += 8;
        }
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(i3);
        while (i2 < list.size()) {
            codedOutputStream$OutputStreamEncoder.writeFixed64NoTag(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    public static void writeEnumList(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream$OutputStreamEncoder.writeInt32(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream$OutputStreamEncoder.computeInt32SizeNoTag(((Integer) list.get(i4)).intValue());
        }
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(i3);
        while (i2 < list.size()) {
            codedOutputStream$OutputStreamEncoder.writeInt32NoTag(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void writeFixed32List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream$OutputStreamEncoder.writeFixed32(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).getClass();
            i3 += 4;
        }
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(i3);
        while (i2 < list.size()) {
            codedOutputStream$OutputStreamEncoder.writeFixed32NoTag(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void writeFixed64List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream$OutputStreamEncoder.writeFixed64(((Long) list.get(i2)).longValue(), i);
                i2++;
            }
            return;
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            i3 += 8;
        }
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(i3);
        while (i2 < list.size()) {
            codedOutputStream$OutputStreamEncoder.writeFixed64NoTag(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void writeFloatList(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream$OutputStreamEncoder.writeFixed32(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).getClass();
            i3 += 4;
        }
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(i3);
        while (i2 < list.size()) {
            codedOutputStream$OutputStreamEncoder.writeFixed32NoTag(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    public static void writeGroupList(int i, List list, ManifestSchemaFactory manifestSchemaFactory, Schema schema) {
        if (list == null || list.isEmpty()) {
            return;
        }
        manifestSchemaFactory.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            manifestSchemaFactory.writeGroup(i, list.get(i2), schema);
        }
    }

    public static void writeInt32List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream$OutputStreamEncoder.writeInt32(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream$OutputStreamEncoder.computeInt32SizeNoTag(((Integer) list.get(i4)).intValue());
        }
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(i3);
        while (i2 < list.size()) {
            codedOutputStream$OutputStreamEncoder.writeInt32NoTag(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void writeInt64List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream$OutputStreamEncoder.writeUInt64(((Long) list.get(i2)).longValue(), i);
                i2++;
            }
            return;
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(((Long) list.get(i4)).longValue());
        }
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(i3);
        while (i2 < list.size()) {
            codedOutputStream$OutputStreamEncoder.writeUInt64NoTag(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void writeMessageList(int i, List list, ManifestSchemaFactory manifestSchemaFactory, Schema schema) {
        if (list == null || list.isEmpty()) {
            return;
        }
        manifestSchemaFactory.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            manifestSchemaFactory.writeMessage(i, list.get(i2), schema);
        }
    }

    public static void writeSFixed32List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream$OutputStreamEncoder.writeFixed32(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).getClass();
            i3 += 4;
        }
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(i3);
        while (i2 < list.size()) {
            codedOutputStream$OutputStreamEncoder.writeFixed32NoTag(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void writeSFixed64List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream$OutputStreamEncoder.writeFixed64(((Long) list.get(i2)).longValue(), i);
                i2++;
            }
            return;
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            i3 += 8;
        }
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(i3);
        while (i2 < list.size()) {
            codedOutputStream$OutputStreamEncoder.writeFixed64NoTag(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void writeSInt32List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                int intValue = ((Integer) list.get(i2)).intValue();
                codedOutputStream$OutputStreamEncoder.writeUInt32(i, (intValue >> 31) ^ (intValue << 1));
                i2++;
            }
            return;
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = ((Integer) list.get(i4)).intValue();
            i3 += CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag((intValue2 >> 31) ^ (intValue2 << 1));
        }
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(i3);
        while (i2 < list.size()) {
            int intValue3 = ((Integer) list.get(i2)).intValue();
            codedOutputStream$OutputStreamEncoder.writeUInt32NoTag((intValue3 >> 31) ^ (intValue3 << 1));
            i2++;
        }
    }

    public static void writeSInt64List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                long longValue = ((Long) list.get(i2)).longValue();
                codedOutputStream$OutputStreamEncoder.writeUInt64((longValue >> 63) ^ (longValue << 1), i);
                i2++;
            }
            return;
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = ((Long) list.get(i4)).longValue();
            i3 += CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag((longValue2 >> 63) ^ (longValue2 << 1));
        }
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(i3);
        while (i2 < list.size()) {
            long longValue3 = ((Long) list.get(i2)).longValue();
            codedOutputStream$OutputStreamEncoder.writeUInt64NoTag((longValue3 >> 63) ^ (longValue3 << 1));
            i2++;
        }
    }

    public static void writeStringList(int i, List list, ManifestSchemaFactory manifestSchemaFactory) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!(list instanceof LazyStringList)) {
            while (i2 < list.size()) {
                codedOutputStream$OutputStreamEncoder.writeString(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        while (i2 < list.size()) {
            Object raw = lazyStringList.getRaw(i2);
            if (raw instanceof String) {
                codedOutputStream$OutputStreamEncoder.writeString(i, (String) raw);
            } else {
                codedOutputStream$OutputStreamEncoder.writeBytes(i, (ByteString$LiteralByteString) raw);
            }
            i2++;
        }
    }

    public static void writeUInt32List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream$OutputStreamEncoder.writeUInt32(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(((Integer) list.get(i4)).intValue());
        }
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(i3);
        while (i2 < list.size()) {
            codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void writeUInt64List(int i, List list, ManifestSchemaFactory manifestSchemaFactory, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                codedOutputStream$OutputStreamEncoder.writeUInt64(((Long) list.get(i2)).longValue(), i);
                i2++;
            }
            return;
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(((Long) list.get(i4)).longValue());
        }
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(i3);
        while (i2 < list.size()) {
            codedOutputStream$OutputStreamEncoder.writeUInt64NoTag(((Long) list.get(i2)).longValue());
            i2++;
        }
    }
}
