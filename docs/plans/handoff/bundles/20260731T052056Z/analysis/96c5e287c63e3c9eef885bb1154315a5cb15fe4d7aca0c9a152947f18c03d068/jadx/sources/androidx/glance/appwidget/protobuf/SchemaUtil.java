package androidx.glance.appwidget.protobuf;

import androidx.glance.appwidget.protobuf.Internal;
import java.util.Arrays;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SchemaUtil {
    public static final Class GENERATED_MESSAGE_CLASS;
    public static final UnknownFieldSetLiteSchema UNKNOWN_FIELD_SET_FULL_SCHEMA;
    public static final UnknownFieldSetLiteSchema UNKNOWN_FIELD_SET_LITE_SCHEMA;

    static {
        Class<?> cls;
        Class<?> cls2;
        Protobuf protobuf = Protobuf.INSTANCE;
        UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = null;
        try {
            cls = Class.forName("androidx.glance.appwidget.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        GENERATED_MESSAGE_CLASS = cls;
        try {
            Protobuf protobuf2 = Protobuf.INSTANCE;
            try {
                cls2 = Class.forName("androidx.glance.appwidget.protobuf.UnknownFieldSetSchema");
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
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(((Integer) list.get(i2)).intValue());
        }
        return i;
    }

    public static int computeSizeFixed32List(List list, int i) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream$OutputStreamEncoder.computeTagSize(i) + 4) * size;
    }

    public static int computeSizeFixed64List(List list, int i) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream$OutputStreamEncoder.computeTagSize(i) + 8) * size;
    }

    public static int computeSizeInt32ListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(((Integer) list.get(i2)).intValue());
        }
        return i;
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
            byte b = ((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0;
            if (codedOutputStream$OutputStreamEncoder.position == codedOutputStream$OutputStreamEncoder.limit) {
                codedOutputStream$OutputStreamEncoder.doFlush();
            }
            byte[] bArr = codedOutputStream$OutputStreamEncoder.buffer;
            int i5 = codedOutputStream$OutputStreamEncoder.position;
            codedOutputStream$OutputStreamEncoder.position = i5 + 1;
            bArr[i5] = b;
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
            i3 += CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(((Integer) list.get(i4)).intValue());
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
            i3 += CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(((Integer) list.get(i4)).intValue());
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
            ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeMessage(i, (AbstractMessageLite) list.get(i2), schema);
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
        manifestSchemaFactory.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeString(i, (String) list.get(i2));
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

    public static Object filterUnknownEnumList(Object obj, int i, Internal.ProtobufList protobufList, Object obj2, UnknownFieldSetLiteSchema unknownFieldSetLiteSchema) {
        return obj2;
    }
}
