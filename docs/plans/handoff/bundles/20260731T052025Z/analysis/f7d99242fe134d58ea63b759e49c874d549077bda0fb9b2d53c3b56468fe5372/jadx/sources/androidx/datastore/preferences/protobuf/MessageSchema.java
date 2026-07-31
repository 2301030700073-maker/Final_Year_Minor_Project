package androidx.datastore.preferences.protobuf;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.CircularArray;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.MapEntryLite;
import androidx.datastore.preferences.protobuf.UnsafeUtil;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageSchema implements Schema {
    public static final int[] EMPTY_INT_ARRAY = new int[0];
    public static final Unsafe UNSAFE = UnsafeUtil.getUnsafe();
    public final int[] buffer;
    public final int checkInitializedCount;
    public final AbstractMessageLite defaultInstance;
    public final int[] intArray;
    public final ListFieldSchemaLite listFieldSchema;
    public final boolean lite;
    public final MapFieldSchemaLite mapFieldSchema;
    public final int maxFieldNumber;
    public final int minFieldNumber;
    public final NewInstanceSchemaLite newInstanceSchema;
    public final Object[] objects;
    public final int repeatedFieldOffsetStart;
    public final UnknownFieldSetLiteSchema unknownFieldSchema;

    public MessageSchema(int[] iArr, Object[] objArr, int i, int i2, AbstractMessageLite abstractMessageLite, int[] iArr2, int i3, int i4, NewInstanceSchemaLite newInstanceSchemaLite, ListFieldSchemaLite listFieldSchemaLite, UnknownFieldSetLiteSchema unknownFieldSetLiteSchema, ExtensionSchemaLite extensionSchemaLite, MapFieldSchemaLite mapFieldSchemaLite) {
        this.buffer = iArr;
        this.objects = objArr;
        this.minFieldNumber = i;
        this.maxFieldNumber = i2;
        this.lite = abstractMessageLite instanceof GeneratedMessageLite;
        this.intArray = iArr2;
        this.checkInitializedCount = i3;
        this.repeatedFieldOffsetStart = i4;
        this.newInstanceSchema = newInstanceSchemaLite;
        this.listFieldSchema = listFieldSchemaLite;
        this.unknownFieldSchema = unknownFieldSetLiteSchema;
        this.defaultInstance = abstractMessageLite;
        this.mapFieldSchema = mapFieldSchemaLite;
    }

    public static boolean isMutable(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) obj).isMutable();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x025e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.datastore.preferences.protobuf.MessageSchema newSchemaForRawMessageInfo(androidx.datastore.preferences.protobuf.RawMessageInfo r34, androidx.datastore.preferences.protobuf.NewInstanceSchemaLite r35, androidx.datastore.preferences.protobuf.ListFieldSchemaLite r36, androidx.datastore.preferences.protobuf.UnknownFieldSetLiteSchema r37, androidx.datastore.preferences.protobuf.ExtensionSchemaLite r38, androidx.datastore.preferences.protobuf.MapFieldSchemaLite r39) {
        /*
            Method dump skipped, instructions count: 1019
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.newSchemaForRawMessageInfo(androidx.datastore.preferences.protobuf.RawMessageInfo, androidx.datastore.preferences.protobuf.NewInstanceSchemaLite, androidx.datastore.preferences.protobuf.ListFieldSchemaLite, androidx.datastore.preferences.protobuf.UnknownFieldSetLiteSchema, androidx.datastore.preferences.protobuf.ExtensionSchemaLite, androidx.datastore.preferences.protobuf.MapFieldSchemaLite):androidx.datastore.preferences.protobuf.MessageSchema");
    }

    public static long offset(int i) {
        return i & 1048575;
    }

    public static int oneofIntAt(long j, Object obj) {
        return ((Integer) UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj)).intValue();
    }

    public static long oneofLongAt(long j, Object obj) {
        return ((Long) UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj)).longValue();
    }

    public static Field reflectField(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder m31m = CameraDevices$CC.m31m("Field ", str, " for ");
            m31m.append(cls.getName());
            m31m.append(" not found. Known fields are ");
            m31m.append(Arrays.toString(declaredFields));
            throw new RuntimeException(m31m.toString());
        }
    }

    public static int type(int i) {
        return (i & 267386880) >>> 20;
    }

    public final boolean arePresentForEquals(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2, int i) {
        return isFieldPresent(i, generatedMessageLite) == isFieldPresent(i, generatedMessageLite2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0074, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.safeEquals(r5.getObject(r7, r12), r5.getObject(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008a, code lost:
    
        if (r5.getLong(r7, r12) == r5.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009e, code lost:
    
        if (r5.getInt(r7, r12) == r5.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b4, code lost:
    
        if (r5.getLong(r7, r12) == r5.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c8, code lost:
    
        if (r5.getInt(r7, r12) == r5.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00dc, code lost:
    
        if (r5.getInt(r7, r12) == r5.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f0, code lost:
    
        if (r5.getInt(r7, r12) == r5.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0108, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.safeEquals(r5.getObject(r7, r12), r5.getObject(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0120, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.safeEquals(r5.getObject(r7, r12), r5.getObject(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0138, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.safeEquals(r5.getObject(r7, r12), r5.getObject(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x014c, code lost:
    
        if (r5.getBoolean(r7, r12) == r5.getBoolean(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0160, code lost:
    
        if (r5.getInt(r7, r12) == r5.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0176, code lost:
    
        if (r5.getLong(r7, r12) == r5.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x018a, code lost:
    
        if (r5.getInt(r7, r12) == r5.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x019f, code lost:
    
        if (r5.getLong(r7, r12) == r5.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01b4, code lost:
    
        if (r5.getLong(r7, r12) == r5.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01cf, code lost:
    
        if (java.lang.Float.floatToIntBits(r5.getFloat(r7, r12)) == java.lang.Float.floatToIntBits(r5.getFloat(r7, r13))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01ec, code lost:
    
        if (java.lang.Double.doubleToLongBits(r5.getDouble(r7, r12)) == java.lang.Double.doubleToLongBits(r5.getDouble(r7, r13))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0039, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.safeEquals(r9.getObject(r7, r12), r9.getObject(r7, r13)) != false) goto L105;
     */
    @Override // androidx.datastore.preferences.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(androidx.datastore.preferences.protobuf.GeneratedMessageLite r12, androidx.datastore.preferences.protobuf.GeneratedMessageLite r13) {
        /*
            Method dump skipped, instructions count: 660
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.equals(androidx.datastore.preferences.protobuf.GeneratedMessageLite, androidx.datastore.preferences.protobuf.GeneratedMessageLite):boolean");
    }

    public final void filterMapUnknownEnumValues(int i, Object obj, Object obj2) {
        int i2 = this.buffer[i];
        if (UnsafeUtil.MEMORY_ACCESSOR.getObject(typeAndOffsetAt(i) & 1048575, obj) == null) {
            return;
        }
        getEnumFieldVerifier(i);
    }

    public final void getEnumFieldVerifier(int i) {
        if (this.objects[((i / 3) * 2) + 1] == null) {
            return;
        }
        DBUtil$$ExternalSyntheticBUOutline0.m();
    }

    public final Schema getMessageFieldSchema(int i) {
        int i2 = (i / 3) * 2;
        Object[] objArr = this.objects;
        Schema schema = (Schema) objArr[i2];
        if (schema != null) {
            return schema;
        }
        Schema schemaFor = Protobuf.INSTANCE.schemaFor((Class) objArr[i2 + 1]);
        objArr[i2] = schemaFor;
        return schemaFor;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final int getSerializedSize(GeneratedMessageLite generatedMessageLite) {
        int i;
        int computeTagSize;
        int computeTagSize2;
        int computeTagSize3;
        int computeUInt64SizeNoTag;
        int computeTagSize4;
        int computeUInt64SizeNoTag2;
        int computeTagSize5;
        int computeTagSize6;
        int computeBytesSize;
        int computeTagSize7;
        int serializedSize;
        int computeSizeFixed64List;
        int computeTagSize8;
        int size;
        int computeSizeUInt64ListNoTag;
        int computeTagSize9;
        int computeTagSize10;
        int size2;
        int computeTagSize11;
        int computeUInt32SizeNoTag;
        int i2;
        int i3;
        int computeTagSize12;
        int computeUInt32SizeNoTag2;
        MessageSchema messageSchema = this;
        GeneratedMessageLite generatedMessageLite2 = generatedMessageLite;
        Unsafe unsafe = UNSAFE;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int[] iArr = messageSchema.buffer;
            if (i5 >= iArr.length) {
                messageSchema.unknownFieldSchema.getClass();
                return generatedMessageLite2.unknownFields.getSerializedSize() + i7;
            }
            int typeAndOffsetAt = messageSchema.typeAndOffsetAt(i5);
            int type = type(typeAndOffsetAt);
            int i8 = iArr[i5];
            int i9 = iArr[i5 + 2];
            int i10 = i9 & 1048575;
            if (type <= 17) {
                if (i10 != i4) {
                    i6 = i10 == 1048575 ? 0 : unsafe.getInt(generatedMessageLite2, i10);
                    i4 = i10;
                }
                i = 1 << (i9 >>> 20);
            } else {
                i = 0;
            }
            long j = typeAndOffsetAt & 1048575;
            if (type >= FieldType.DOUBLE_LIST_PACKED.id) {
                int i11 = FieldType.SINT64_LIST_PACKED.id;
            }
            switch (type) {
                case 0:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        computeTagSize = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize + 8;
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        computeTagSize2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize2 + 4;
                        i7 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    break;
                case 2:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        long j2 = unsafe.getLong(generatedMessageLite2, j);
                        computeTagSize3 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(j2);
                        i7 += computeUInt64SizeNoTag + computeTagSize3;
                    }
                    messageSchema = this;
                    break;
                case 3:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        long j3 = unsafe.getLong(generatedMessageLite2, j);
                        computeTagSize3 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(j3);
                        i7 += computeUInt64SizeNoTag + computeTagSize3;
                    }
                    messageSchema = this;
                    break;
                case 4:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        int i12 = unsafe.getInt(generatedMessageLite2, j);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(i12);
                        computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize4;
                        i7 += computeBytesSize;
                    }
                    messageSchema = this;
                    break;
                case 5:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        computeTagSize5 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize5 + 8;
                        i7 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    break;
                case 6:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        computeTagSize2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize2 + 4;
                        i7 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        computeTagSize6 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) + 1;
                        i7 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        Object object = unsafe.getObject(generatedMessageLite2, j);
                        i7 = (object instanceof ByteString$LiteralByteString ? CodedOutputStream$OutputStreamEncoder.computeBytesSize(i8, (ByteString$LiteralByteString) object) : CodedOutputStream$OutputStreamEncoder.computeStringSizeNoTag((String) object) + CodedOutputStream$OutputStreamEncoder.computeTagSize(i8)) + i7;
                    }
                    messageSchema = this;
                    break;
                case 9:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        Object object2 = unsafe.getObject(generatedMessageLite2, j);
                        Schema messageFieldSchema = messageSchema.getMessageFieldSchema(i5);
                        Class cls = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        int computeTagSize13 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        int serializedSize2 = ((AbstractMessageLite) object2).getSerializedSize(messageFieldSchema);
                        i7 += CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(serializedSize2) + serializedSize2 + computeTagSize13;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        computeBytesSize = CodedOutputStream$OutputStreamEncoder.computeBytesSize(i8, (ByteString$LiteralByteString) unsafe.getObject(generatedMessageLite2, j));
                        i7 += computeBytesSize;
                    }
                    messageSchema = this;
                    break;
                case 11:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        int i13 = unsafe.getInt(generatedMessageLite2, j);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(i13);
                        computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize4;
                        i7 += computeBytesSize;
                    }
                    messageSchema = this;
                    break;
                case BasicTextKt.ShiftMeta /* 12 */:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        int i14 = unsafe.getInt(generatedMessageLite2, j);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(i14);
                        computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize4;
                        i7 += computeBytesSize;
                    }
                    messageSchema = this;
                    break;
                case 13:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        computeTagSize2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize2 + 4;
                        i7 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    break;
                case 14:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        computeTagSize5 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize5 + 8;
                        i7 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    break;
                case OffsetKt.Horizontal /* 15 */:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        int i15 = unsafe.getInt(generatedMessageLite2, j);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag((i15 >> 31) ^ (i15 << 1));
                        computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize4;
                        i7 += computeBytesSize;
                    }
                    messageSchema = this;
                    break;
                case 16:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        long j4 = unsafe.getLong(generatedMessageLite2, j);
                        computeTagSize3 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag((j4 << 1) ^ (j4 >> 63));
                        i7 += computeUInt64SizeNoTag + computeTagSize3;
                    }
                    messageSchema = this;
                    break;
                case 17:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i5, i4, i6, i)) {
                        AbstractMessageLite abstractMessageLite = (AbstractMessageLite) unsafe.getObject(generatedMessageLite2, j);
                        Schema messageFieldSchema2 = messageSchema.getMessageFieldSchema(i5);
                        computeTagSize7 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) * 2;
                        serializedSize = abstractMessageLite.getSerializedSize(messageFieldSchema2);
                        computeSizeFixed64List = serializedSize + computeTagSize7;
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed64List(i8, (List) unsafe.getObject(generatedMessageLite2, j));
                    i7 += computeSizeFixed64List;
                    break;
                case 19:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed32List(i8, (List) unsafe.getObject(generatedMessageLite2, j));
                    i7 += computeSizeFixed64List;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls2 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    if (list.size() != 0) {
                        computeTagSize8 = (CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) * list.size()) + SchemaUtil.computeSizeInt64ListNoTag(list);
                        i7 += computeTagSize8;
                        break;
                    }
                    computeTagSize8 = 0;
                    i7 += computeTagSize8;
                case 21:
                    List list2 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls3 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list2.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeUInt64ListNoTag(list2);
                        computeTagSize9 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize8 = (computeTagSize9 * size) + computeSizeUInt64ListNoTag;
                        i7 += computeTagSize8;
                        break;
                    }
                    computeTagSize8 = 0;
                    i7 += computeTagSize8;
                case 22:
                    List list3 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls4 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list3.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeInt32ListNoTag(list3);
                        computeTagSize9 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize8 = (computeTagSize9 * size) + computeSizeUInt64ListNoTag;
                        i7 += computeTagSize8;
                        break;
                    }
                    computeTagSize8 = 0;
                    i7 += computeTagSize8;
                case 23:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed64List(i8, (List) unsafe.getObject(generatedMessageLite2, j));
                    i7 += computeSizeFixed64List;
                    break;
                case 24:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed32List(i8, (List) unsafe.getObject(generatedMessageLite2, j));
                    i7 += computeSizeFixed64List;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls5 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size3 = list4.size();
                    i7 += size3 == 0 ? 0 : (CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) + 1) * size3;
                    break;
                case 26:
                    List list5 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls6 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size4 = list5.size();
                    if (size4 != 0) {
                        computeTagSize8 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) * size4;
                        for (int i16 = 0; i16 < size4; i16++) {
                            Object obj = list5.get(i16);
                            if (obj instanceof ByteString$LiteralByteString) {
                                int size5 = ((ByteString$LiteralByteString) obj).size();
                                computeTagSize8 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size5) + size5 + computeTagSize8;
                            } else {
                                computeTagSize8 = CodedOutputStream$OutputStreamEncoder.computeStringSizeNoTag((String) obj) + computeTagSize8;
                            }
                        }
                        i7 += computeTagSize8;
                        break;
                    }
                    computeTagSize8 = 0;
                    i7 += computeTagSize8;
                case 27:
                    List list6 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Schema messageFieldSchema3 = messageSchema.getMessageFieldSchema(i5);
                    Class cls7 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size6 = list6.size();
                    if (size6 != 0) {
                        computeTagSize10 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) * size6;
                        for (int i17 = 0; i17 < size6; i17++) {
                            int serializedSize3 = ((AbstractMessageLite) list6.get(i17)).getSerializedSize(messageFieldSchema3);
                            computeTagSize10 += CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(serializedSize3) + serializedSize3;
                        }
                        i7 += computeTagSize10;
                        break;
                    }
                    computeTagSize10 = 0;
                    i7 += computeTagSize10;
                case 28:
                    List list7 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls8 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size7 = list7.size();
                    if (size7 != 0) {
                        computeTagSize8 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) * size7;
                        for (int i18 = 0; i18 < list7.size(); i18++) {
                            int size8 = ((ByteString$LiteralByteString) list7.get(i18)).size();
                            computeTagSize8 += CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size8) + size8;
                        }
                        i7 += computeTagSize8;
                        break;
                    }
                    computeTagSize8 = 0;
                    i7 += computeTagSize8;
                case 29:
                    List list8 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls9 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list8.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeUInt32ListNoTag(list8);
                        computeTagSize9 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize8 = (computeTagSize9 * size) + computeSizeUInt64ListNoTag;
                        i7 += computeTagSize8;
                        break;
                    }
                    computeTagSize8 = 0;
                    i7 += computeTagSize8;
                case 30:
                    List list9 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls10 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list9.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeEnumListNoTag(list9);
                        computeTagSize9 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize8 = (computeTagSize9 * size) + computeSizeUInt64ListNoTag;
                        i7 += computeTagSize8;
                        break;
                    }
                    computeTagSize8 = 0;
                    i7 += computeTagSize8;
                case 31:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed32List(i8, (List) unsafe.getObject(generatedMessageLite2, j));
                    i7 += computeSizeFixed64List;
                    break;
                case 32:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed64List(i8, (List) unsafe.getObject(generatedMessageLite2, j));
                    i7 += computeSizeFixed64List;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls11 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list10.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeSInt32ListNoTag(list10);
                        computeTagSize9 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize8 = (computeTagSize9 * size) + computeSizeUInt64ListNoTag;
                        i7 += computeTagSize8;
                        break;
                    }
                    computeTagSize8 = 0;
                    i7 += computeTagSize8;
                case 34:
                    List list11 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls12 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list11.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeSInt64ListNoTag(list11);
                        computeTagSize9 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize8 = (computeTagSize9 * size) + computeSizeUInt64ListNoTag;
                        i7 += computeTagSize8;
                        break;
                    }
                    computeTagSize8 = 0;
                    i7 += computeTagSize8;
                case 35:
                    List list12 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls13 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list12.size() * 8;
                    if (size2 > 0) {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i2 = computeUInt32SizeNoTag + computeTagSize11;
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    List list13 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls14 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list13.size() * 4;
                    if (size2 > 0) {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i2 = computeUInt32SizeNoTag + computeTagSize11;
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    size2 = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i2 = computeUInt32SizeNoTag + computeTagSize11;
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    size2 = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i2 = computeUInt32SizeNoTag + computeTagSize11;
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    size2 = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i2 = computeUInt32SizeNoTag + computeTagSize11;
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    List list14 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls15 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list14.size() * 8;
                    if (size2 > 0) {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i2 = computeUInt32SizeNoTag + computeTagSize11;
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    List list15 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls16 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list15.size() * 4;
                    if (size2 > 0) {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i2 = computeUInt32SizeNoTag + computeTagSize11;
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    List list16 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls17 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list16.size();
                    if (size2 > 0) {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i2 = computeUInt32SizeNoTag + computeTagSize11;
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    size2 = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i2 = computeUInt32SizeNoTag + computeTagSize11;
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    size2 = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i2 = computeUInt32SizeNoTag + computeTagSize11;
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    List list17 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls18 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list17.size() * 4;
                    if (size2 > 0) {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i2 = computeUInt32SizeNoTag + computeTagSize11;
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    List list18 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls19 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list18.size() * 8;
                    if (size2 > 0) {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i2 = computeUInt32SizeNoTag + computeTagSize11;
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    size2 = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i2 = computeUInt32SizeNoTag + computeTagSize11;
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    size2 = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i2 = computeUInt32SizeNoTag + computeTagSize11;
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    List list19 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Schema messageFieldSchema4 = messageSchema.getMessageFieldSchema(i5);
                    Class cls20 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size9 = list19.size();
                    if (size9 == 0) {
                        i3 = 0;
                    } else {
                        i3 = 0;
                        for (int i19 = 0; i19 < size9; i19++) {
                            i3 += ((AbstractMessageLite) list19.get(i19)).getSerializedSize(messageFieldSchema4) + (CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) * 2);
                        }
                    }
                    i7 += i3;
                    break;
                case 50:
                    Object object3 = unsafe.getObject(generatedMessageLite2, j);
                    Object obj2 = messageSchema.objects[(i5 / 3) * 2];
                    messageSchema.mapFieldSchema.getClass();
                    MapFieldLite mapFieldLite = (MapFieldLite) object3;
                    MapEntryLite mapEntryLite = (MapEntryLite) obj2;
                    if (!mapFieldLite.isEmpty()) {
                        computeTagSize10 = 0;
                        for (Map.Entry entry : mapFieldLite.entrySet()) {
                            Object key = entry.getKey();
                            Object value = entry.getValue();
                            mapEntryLite.getClass();
                            int computeTagSize14 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                            int computeSerializedSize = MapEntryLite.computeSerializedSize(mapEntryLite.metadata, key, value);
                            computeTagSize10 += CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(computeSerializedSize) + computeSerializedSize + computeTagSize14;
                        }
                        i7 += computeTagSize10;
                        break;
                    }
                    computeTagSize10 = 0;
                    i7 += computeTagSize10;
                case 51:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        computeTagSize = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize + 8;
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize12 + 4;
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        long oneofLongAt = oneofLongAt(j, generatedMessageLite2);
                        size2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        i2 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(oneofLongAt);
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        long oneofLongAt2 = oneofLongAt(j, generatedMessageLite2);
                        size2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        i2 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(oneofLongAt2);
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        int oneofIntAt = oneofIntAt(j, generatedMessageLite2);
                        computeTagSize7 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        serializedSize = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(oneofIntAt);
                        computeSizeFixed64List = serializedSize + computeTagSize7;
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        computeTagSize = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize + 8;
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize12 + 4;
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        computeSizeFixed64List = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) + 1;
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        Object object4 = unsafe.getObject(generatedMessageLite2, j);
                        i7 = (object4 instanceof ByteString$LiteralByteString ? CodedOutputStream$OutputStreamEncoder.computeBytesSize(i8, (ByteString$LiteralByteString) object4) : CodedOutputStream$OutputStreamEncoder.computeStringSizeNoTag((String) object4) + CodedOutputStream$OutputStreamEncoder.computeTagSize(i8)) + i7;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        Object object5 = unsafe.getObject(generatedMessageLite2, j);
                        Schema messageFieldSchema5 = messageSchema.getMessageFieldSchema(i5);
                        Class cls21 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        int computeTagSize15 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        int serializedSize4 = ((AbstractMessageLite) object5).getSerializedSize(messageFieldSchema5);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(serializedSize4) + serializedSize4 + computeTagSize15;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        computeSizeFixed64List = CodedOutputStream$OutputStreamEncoder.computeBytesSize(i8, (ByteString$LiteralByteString) unsafe.getObject(generatedMessageLite2, j));
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        int oneofIntAt2 = oneofIntAt(j, generatedMessageLite2);
                        computeTagSize7 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        serializedSize = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(oneofIntAt2);
                        computeSizeFixed64List = serializedSize + computeTagSize7;
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        int oneofIntAt3 = oneofIntAt(j, generatedMessageLite2);
                        computeTagSize7 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        serializedSize = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(oneofIntAt3);
                        computeSizeFixed64List = serializedSize + computeTagSize7;
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize12 + 4;
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        computeTagSize = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize + 8;
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        int oneofIntAt4 = oneofIntAt(j, generatedMessageLite2);
                        computeTagSize7 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        serializedSize = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag((oneofIntAt4 >> 31) ^ (oneofIntAt4 << 1));
                        computeSizeFixed64List = serializedSize + computeTagSize7;
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        long oneofLongAt3 = oneofLongAt(j, generatedMessageLite2);
                        size2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        i2 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag((oneofLongAt3 << 1) ^ (oneofLongAt3 >> 63));
                        computeUInt32SizeNoTag2 = i2 + size2;
                        i7 += computeUInt32SizeNoTag2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (messageSchema.isOneofPresent(i8, i5, generatedMessageLite2)) {
                        computeSizeFixed64List = ((AbstractMessageLite) unsafe.getObject(generatedMessageLite2, j)).getSerializedSize(messageSchema.getMessageFieldSchema(i5)) + (CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) * 2);
                        i7 += computeSizeFixed64List;
                        break;
                    } else {
                        break;
                    }
            }
            i5 += 3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0216, code lost:
    
        if (r4 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00df, code lost:
    
        if (r4 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e1, code lost:
    
        r8 = 1231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e2, code lost:
    
        r3 = r8 + r3;
     */
    @Override // androidx.datastore.preferences.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int hashCode(androidx.datastore.preferences.protobuf.GeneratedMessageLite r12) {
        /*
            Method dump skipped, instructions count: 794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.hashCode(androidx.datastore.preferences.protobuf.GeneratedMessageLite):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0111 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0110 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isFieldPresent(int r8, java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.isFieldPresent(int, java.lang.Object):boolean");
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean isInitialized(Object obj) {
        int i;
        int i2;
        int i3;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i6 < this.checkInitializedCount) {
            int i7 = this.intArray[i6];
            int[] iArr = this.buffer;
            int i8 = iArr[i7];
            int typeAndOffsetAt = typeAndOffsetAt(i7);
            int i9 = iArr[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i4) {
                if (i10 != 1048575) {
                    i5 = UNSAFE.getInt(obj, i10);
                }
                i2 = i7;
                i3 = i5;
                i = i10;
            } else {
                int i12 = i5;
                i = i4;
                i2 = i7;
                i3 = i12;
            }
            if ((268435456 & typeAndOffsetAt) == 0 || isFieldPresent(obj, i2, i, i3, i11)) {
                int type = type(typeAndOffsetAt);
                if (type == 9 || type == 17) {
                    if (isFieldPresent(obj, i2, i, i3, i11)) {
                        if (!getMessageFieldSchema(i2).isInitialized(UnsafeUtil.MEMORY_ACCESSOR.getObject(typeAndOffsetAt & 1048575, obj))) {
                        }
                    } else {
                        continue;
                    }
                    i6++;
                    i4 = i;
                    i5 = i3;
                } else {
                    if (type != 27) {
                        if (type == 60 || type == 68) {
                            if (isOneofPresent(i8, i2, obj)) {
                                if (!getMessageFieldSchema(i2).isInitialized(UnsafeUtil.MEMORY_ACCESSOR.getObject(typeAndOffsetAt & 1048575, obj))) {
                                }
                            } else {
                                continue;
                            }
                            i6++;
                            i4 = i;
                            i5 = i3;
                        } else if (type != 49) {
                            if (type != 50) {
                                continue;
                            } else {
                                Object object = UnsafeUtil.MEMORY_ACCESSOR.getObject(typeAndOffsetAt & 1048575, obj);
                                this.mapFieldSchema.getClass();
                                MapFieldLite mapFieldLite = (MapFieldLite) object;
                                if (mapFieldLite.isEmpty()) {
                                    continue;
                                } else {
                                    if (((MapEntryLite) this.objects[(i2 / 3) * 2]).metadata.valueType.javaType != WireFormat$JavaType.MESSAGE) {
                                        continue;
                                    } else {
                                        Schema schema = null;
                                        for (Object obj2 : mapFieldLite.values()) {
                                            if (schema == null) {
                                                schema = Protobuf.INSTANCE.schemaFor(obj2.getClass());
                                            }
                                            if (!schema.isInitialized(obj2)) {
                                            }
                                        }
                                    }
                                }
                            }
                            i6++;
                            i4 = i;
                            i5 = i3;
                        }
                    }
                    List list = (List) UnsafeUtil.MEMORY_ACCESSOR.getObject(typeAndOffsetAt & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        Schema messageFieldSchema = getMessageFieldSchema(i2);
                        for (int i13 = 0; i13 < list.size(); i13++) {
                            if (messageFieldSchema.isInitialized(list.get(i13))) {
                            }
                        }
                    }
                    i6++;
                    i4 = i;
                    i5 = i3;
                }
            }
            return false;
        }
        return true;
    }

    public final boolean isOneofPresent(int i, int i2, Object obj) {
        return UnsafeUtil.MEMORY_ACCESSOR.getInt((long) (this.buffer[i2 + 2] & 1048575), obj) == i;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void makeImmutable(Object obj) {
        if (isMutable(obj)) {
            if (obj instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
                generatedMessageLite.setMemoizedSerializedSize(Integer.MAX_VALUE);
                generatedMessageLite.memoizedHashCode = 0;
                generatedMessageLite.markImmutable();
            }
            int[] iArr = this.buffer;
            int length = iArr.length;
            for (int i = 0; i < length; i += 3) {
                int typeAndOffsetAt = typeAndOffsetAt(i);
                long j = 1048575 & typeAndOffsetAt;
                int type = type(typeAndOffsetAt);
                if (type != 9) {
                    if (type != 60 && type != 68) {
                        switch (type) {
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                this.listFieldSchema.getClass();
                                ProtobufArrayList protobufArrayList = (ProtobufArrayList) ((Internal.ProtobufList) UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj));
                                if (protobufArrayList.isMutable) {
                                    protobufArrayList.isMutable = false;
                                    break;
                                } else {
                                    break;
                                }
                            case 50:
                                Unsafe unsafe = UNSAFE;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    this.mapFieldSchema.getClass();
                                    ((MapFieldLite) object).isMutable = false;
                                    unsafe.putObject(obj, j, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (isOneofPresent(iArr[i], i, obj)) {
                        getMessageFieldSchema(i).makeImmutable(UNSAFE.getObject(obj, j));
                    }
                }
                if (isFieldPresent(i, obj)) {
                    getMessageFieldSchema(i).makeImmutable(UNSAFE.getObject(obj, j));
                }
            }
            this.unknownFieldSchema.getClass();
            UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) obj).unknownFields;
            if (unknownFieldSetLite.isMutable) {
                unknownFieldSetLite.isMutable = false;
            }
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void mergeFrom(java.lang.Object r19, androidx.collection.CircularArray r20, androidx.datastore.preferences.protobuf.ExtensionRegistryLite r21) {
        /*
            Method dump skipped, instructions count: 1922
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.mergeFrom(java.lang.Object, androidx.collection.CircularArray, androidx.datastore.preferences.protobuf.ExtensionRegistryLite):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x009b, code lost:
    
        r9.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x009e, code lost:
    
        r10.popLimit(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00a1, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mergeMap(java.lang.Object r8, int r9, java.lang.Object r10, androidx.datastore.preferences.protobuf.ExtensionRegistryLite r11, androidx.collection.CircularArray r12) {
        /*
            r7 = this;
            int r9 = r7.typeAndOffsetAt(r9)
            r0 = 1048575(0xfffff, float:1.469367E-39)
            r9 = r9 & r0
            long r0 = (long) r9
            androidx.datastore.preferences.protobuf.UnsafeUtil$MemoryAccessor r9 = androidx.datastore.preferences.protobuf.UnsafeUtil.MEMORY_ACCESSOR
            java.lang.Object r9 = r9.getObject(r0, r8)
            androidx.datastore.preferences.protobuf.MapFieldSchemaLite r7 = r7.mapFieldSchema
            if (r9 != 0) goto L20
            r7.getClass()
            androidx.datastore.preferences.protobuf.MapFieldLite r9 = androidx.datastore.preferences.protobuf.MapFieldLite.EMPTY_MAP_FIELD
            androidx.datastore.preferences.protobuf.MapFieldLite r9 = r9.mutableCopy()
            androidx.datastore.preferences.protobuf.UnsafeUtil.putObject(r8, r0, r9)
            goto L37
        L20:
            r7.getClass()
            r2 = r9
            androidx.datastore.preferences.protobuf.MapFieldLite r2 = (androidx.datastore.preferences.protobuf.MapFieldLite) r2
            boolean r2 = r2.isMutable
            if (r2 != 0) goto L37
            androidx.datastore.preferences.protobuf.MapFieldLite r2 = androidx.datastore.preferences.protobuf.MapFieldLite.EMPTY_MAP_FIELD
            androidx.datastore.preferences.protobuf.MapFieldLite r2 = r2.mutableCopy()
            androidx.datastore.preferences.protobuf.MapFieldSchemaLite.mergeFrom(r2, r9)
            androidx.datastore.preferences.protobuf.UnsafeUtil.putObject(r8, r0, r2)
            r9 = r2
        L37:
            r7.getClass()
            androidx.datastore.preferences.protobuf.MapFieldLite r9 = (androidx.datastore.preferences.protobuf.MapFieldLite) r9
            androidx.datastore.preferences.protobuf.MapEntryLite r10 = (androidx.datastore.preferences.protobuf.MapEntryLite) r10
            androidx.datastore.preferences.protobuf.MapEntryLite$Metadata r7 = r10.metadata
            r8 = 2
            r12.requireWireType(r8)
            java.lang.Object r10 = r12.elements
            androidx.core.view.WindowInsetsAnimationCompat$Callback r10 = (androidx.core.view.WindowInsetsAnimationCompat.Callback) r10
            int r0 = r10.readUInt32()
            int r0 = r10.pushLimit(r0)
            java.lang.Object r1 = r7.defaultValue
            java.lang.String r2 = ""
            r3 = r1
        L55:
            int r4 = r12.getFieldNumber()     // Catch: java.lang.Throwable -> L79
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L9b
            boolean r5 = r10.isAtEnd()     // Catch: java.lang.Throwable -> L79
            if (r5 == 0) goto L65
            goto L9b
        L65:
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L86
            if (r4 == r8) goto L7b
            boolean r4 = r12.skipField()     // Catch: java.lang.Throwable -> L79 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8e
            if (r4 == 0) goto L73
            goto L55
        L73:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r4 = new androidx.datastore.preferences.protobuf.InvalidProtocolBufferException     // Catch: java.lang.Throwable -> L79 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8e
            r4.<init>(r6)     // Catch: java.lang.Throwable -> L79 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8e
            throw r4     // Catch: java.lang.Throwable -> L79 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8e
        L79:
            r7 = move-exception
            goto La2
        L7b:
            androidx.datastore.preferences.protobuf.WireFormat$FieldType r4 = r7.valueType     // Catch: java.lang.Throwable -> L79 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8e
            java.lang.Class r5 = r1.getClass()     // Catch: java.lang.Throwable -> L79 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8e
            java.lang.Object r3 = r12.readField(r4, r5, r11)     // Catch: java.lang.Throwable -> L79 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8e
            goto L55
        L86:
            androidx.datastore.preferences.protobuf.WireFormat$FieldType r4 = r7.keyType     // Catch: java.lang.Throwable -> L79 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8e
            r5 = 0
            java.lang.Object r2 = r12.readField(r4, r5, r5)     // Catch: java.lang.Throwable -> L79 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8e
            goto L55
        L8e:
            boolean r4 = r12.skipField()     // Catch: java.lang.Throwable -> L79
            if (r4 == 0) goto L95
            goto L55
        L95:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r7 = new androidx.datastore.preferences.protobuf.InvalidProtocolBufferException     // Catch: java.lang.Throwable -> L79
            r7.<init>(r6)     // Catch: java.lang.Throwable -> L79
            throw r7     // Catch: java.lang.Throwable -> L79
        L9b:
            r9.put(r2, r3)     // Catch: java.lang.Throwable -> L79
            r10.popLimit(r0)
            return
        La2:
            r10.popLimit(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.mergeMap(java.lang.Object, int, java.lang.Object, androidx.datastore.preferences.protobuf.ExtensionRegistryLite, androidx.collection.CircularArray):void");
    }

    public final void mergeMessage(int i, Object obj, Object obj2) {
        if (isFieldPresent(i, obj2)) {
            long typeAndOffsetAt = typeAndOffsetAt(i) & 1048575;
            Unsafe unsafe = UNSAFE;
            Object object = unsafe.getObject(obj2, typeAndOffsetAt);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.buffer[i] + " is present but null: " + obj2);
            }
            Schema messageFieldSchema = getMessageFieldSchema(i);
            if (!isFieldPresent(i, obj)) {
                if (isMutable(object)) {
                    GeneratedMessageLite newInstance = messageFieldSchema.newInstance();
                    messageFieldSchema.mergeFrom(newInstance, object);
                    unsafe.putObject(obj, typeAndOffsetAt, newInstance);
                } else {
                    unsafe.putObject(obj, typeAndOffsetAt, object);
                }
                setFieldPresent(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, typeAndOffsetAt);
            if (!isMutable(object2)) {
                GeneratedMessageLite newInstance2 = messageFieldSchema.newInstance();
                messageFieldSchema.mergeFrom(newInstance2, object2);
                unsafe.putObject(obj, typeAndOffsetAt, newInstance2);
                object2 = newInstance2;
            }
            messageFieldSchema.mergeFrom(object2, object);
        }
    }

    public final void mergeOneofMessage(int i, Object obj, Object obj2) {
        int[] iArr = this.buffer;
        int i2 = iArr[i];
        if (isOneofPresent(i2, i, obj2)) {
            long typeAndOffsetAt = typeAndOffsetAt(i) & 1048575;
            Unsafe unsafe = UNSAFE;
            Object object = unsafe.getObject(obj2, typeAndOffsetAt);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2);
            }
            Schema messageFieldSchema = getMessageFieldSchema(i);
            if (!isOneofPresent(i2, i, obj)) {
                if (isMutable(object)) {
                    GeneratedMessageLite newInstance = messageFieldSchema.newInstance();
                    messageFieldSchema.mergeFrom(newInstance, object);
                    unsafe.putObject(obj, typeAndOffsetAt, newInstance);
                } else {
                    unsafe.putObject(obj, typeAndOffsetAt, object);
                }
                setOneofPresent(i2, i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, typeAndOffsetAt);
            if (!isMutable(object2)) {
                GeneratedMessageLite newInstance2 = messageFieldSchema.newInstance();
                messageFieldSchema.mergeFrom(newInstance2, object2);
                unsafe.putObject(obj, typeAndOffsetAt, newInstance2);
                object2 = newInstance2;
            }
            messageFieldSchema.mergeFrom(object2, object);
        }
    }

    public final Object mutableMessageFieldForMerge(int i, Object obj) {
        Schema messageFieldSchema = getMessageFieldSchema(i);
        long typeAndOffsetAt = typeAndOffsetAt(i) & 1048575;
        if (!isFieldPresent(i, obj)) {
            return messageFieldSchema.newInstance();
        }
        Object object = UNSAFE.getObject(obj, typeAndOffsetAt);
        if (isMutable(object)) {
            return object;
        }
        GeneratedMessageLite newInstance = messageFieldSchema.newInstance();
        if (object != null) {
            messageFieldSchema.mergeFrom(newInstance, object);
        }
        return newInstance;
    }

    public final Object mutableOneofMessageFieldForMerge(int i, int i2, Object obj) {
        Schema messageFieldSchema = getMessageFieldSchema(i2);
        if (!isOneofPresent(i, i2, obj)) {
            return messageFieldSchema.newInstance();
        }
        Object object = UNSAFE.getObject(obj, typeAndOffsetAt(i2) & 1048575);
        if (isMutable(object)) {
            return object;
        }
        GeneratedMessageLite newInstance = messageFieldSchema.newInstance();
        if (object != null) {
            messageFieldSchema.mergeFrom(newInstance, object);
        }
        return newInstance;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final GeneratedMessageLite newInstance() {
        this.newInstanceSchema.getClass();
        return ((GeneratedMessageLite) this.defaultInstance).newMutableInstance$1();
    }

    public final int positionForFieldNumber(int i) {
        if (i < this.minFieldNumber || i > this.maxFieldNumber) {
            return -1;
        }
        int[] iArr = this.buffer;
        int length = (iArr.length / 3) - 1;
        int i2 = 0;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    public final void readGroupList(Object obj, long j, CircularArray circularArray, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        int readTag;
        this.listFieldSchema.getClass();
        Internal.ProtobufList mutableListAt = ListFieldSchemaLite.mutableListAt(j, obj);
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) circularArray.elements;
        int i = circularArray.head;
        if ((i & 7) != 3) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            GeneratedMessageLite newInstance = schema.newInstance();
            circularArray.mergeGroupFieldInternal(newInstance, schema, extensionRegistryLite);
            schema.makeImmutable(newInstance);
            ((ProtobufArrayList) mutableListAt).add(newInstance);
            if (callback.isAtEnd() || circularArray.capacityBitmask != 0) {
                return;
            } else {
                readTag = callback.readTag();
            }
        } while (readTag == i);
        circularArray.capacityBitmask = readTag;
    }

    public final void readMessageList(Object obj, int i, CircularArray circularArray, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        int readTag;
        this.listFieldSchema.getClass();
        Internal.ProtobufList mutableListAt = ListFieldSchemaLite.mutableListAt(i & 1048575, obj);
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) circularArray.elements;
        int i2 = circularArray.head;
        if ((i2 & 7) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            GeneratedMessageLite newInstance = schema.newInstance();
            circularArray.mergeMessageFieldInternal(newInstance, schema, extensionRegistryLite);
            schema.makeImmutable(newInstance);
            ((ProtobufArrayList) mutableListAt).add(newInstance);
            if (callback.isAtEnd() || circularArray.capacityBitmask != 0) {
                return;
            } else {
                readTag = callback.readTag();
            }
        } while (readTag == i2);
        circularArray.capacityBitmask = readTag;
    }

    public final void readString(int i, CircularArray circularArray, Object obj) {
        if ((536870912 & i) != 0) {
            circularArray.requireWireType(2);
            UnsafeUtil.putObject(obj, i & 1048575, ((WindowInsetsAnimationCompat.Callback) circularArray.elements).readStringRequireUtf8());
        } else if (!this.lite) {
            UnsafeUtil.putObject(obj, i & 1048575, circularArray.readBytes());
        } else {
            circularArray.requireWireType(2);
            UnsafeUtil.putObject(obj, i & 1048575, ((WindowInsetsAnimationCompat.Callback) circularArray.elements).readString());
        }
    }

    public final void readStringList(int i, CircularArray circularArray, Object obj) {
        boolean z = (536870912 & i) != 0;
        ListFieldSchemaLite listFieldSchemaLite = this.listFieldSchema;
        if (z) {
            listFieldSchemaLite.getClass();
            circularArray.readStringListInternal(ListFieldSchemaLite.mutableListAt(i & 1048575, obj), true);
        } else {
            listFieldSchemaLite.getClass();
            circularArray.readStringListInternal(ListFieldSchemaLite.mutableListAt(i & 1048575, obj), false);
        }
    }

    public final void setFieldPresent(int i, Object obj) {
        int i2 = this.buffer[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        UnsafeUtil.putInt(obj, j, (1 << (i2 >>> 20)) | UnsafeUtil.MEMORY_ACCESSOR.getInt(j, obj));
    }

    public final void setOneofPresent(int i, int i2, Object obj) {
        UnsafeUtil.putInt(obj, this.buffer[i2 + 2] & 1048575, i);
    }

    public final void storeMessageField(Object obj, int i, AbstractMessageLite abstractMessageLite) {
        UNSAFE.putObject(obj, typeAndOffsetAt(i) & 1048575, abstractMessageLite);
        setFieldPresent(i, obj);
    }

    public final void storeOneofMessageField(Object obj, int i, int i2, AbstractMessageLite abstractMessageLite) {
        UNSAFE.putObject(obj, typeAndOffsetAt(i2) & 1048575, abstractMessageLite);
        setOneofPresent(i, i2, obj);
    }

    public final int typeAndOffsetAt(int i) {
        return this.buffer[i + 1];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void writeFieldsInAscendingOrder(Object obj, ManifestSchemaFactory manifestSchemaFactory) {
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        MessageSchema messageSchema = this;
        int[] iArr = messageSchema.buffer;
        int length = iArr.length;
        Unsafe unsafe = UNSAFE;
        int i5 = 1048575;
        int i6 = 1048575;
        int i7 = 0;
        int i8 = 0;
        while (i7 < length) {
            int typeAndOffsetAt = messageSchema.typeAndOffsetAt(i7);
            int i9 = iArr[i7];
            int type = type(typeAndOffsetAt);
            if (type <= 17) {
                int i10 = iArr[i7 + 2];
                int i11 = i10 & i5;
                if (i11 != i6) {
                    i8 = i11 == i5 ? 0 : unsafe.getInt(obj, i11);
                    i6 = i11;
                }
                i = typeAndOffsetAt;
                i2 = 1 << (i10 >>> 20);
            } else {
                i = typeAndOffsetAt;
                i2 = 0;
            }
            long j = i & i5;
            switch (type) {
                case 0:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        double d = UnsafeUtil.MEMORY_ACCESSOR.getDouble(j, obj);
                        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
                        codedOutputStream$OutputStreamEncoder.getClass();
                        codedOutputStream$OutputStreamEncoder.writeFixed64(i9, Double.doubleToRawLongBits(d));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        float f = UnsafeUtil.MEMORY_ACCESSOR.getFloat(j, obj);
                        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder2 = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
                        codedOutputStream$OutputStreamEncoder2.getClass();
                        codedOutputStream$OutputStreamEncoder2.writeFixed32(i9, Float.floatToRawIntBits(f));
                    }
                    messageSchema = this;
                    break;
                case 2:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeUInt64(i9, unsafe.getLong(obj, j));
                    }
                    messageSchema = this;
                    break;
                case 3:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeUInt64(i9, unsafe.getLong(obj, j));
                    }
                    messageSchema = this;
                    break;
                case 4:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeInt32(i9, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    break;
                case 5:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeFixed64(i9, unsafe.getLong(obj, j));
                    }
                    messageSchema = this;
                    break;
                case 6:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeFixed32(i9, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeBool(i9, UnsafeUtil.MEMORY_ACCESSOR.getBoolean(j, obj));
                    }
                    messageSchema = this;
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof String) {
                            ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeString((String) object, i9);
                        } else {
                            ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeBytes(i9, (ByteString$LiteralByteString) object);
                        }
                    }
                    messageSchema = this;
                    break;
                case 9:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeMessage(i9, (AbstractMessageLite) unsafe.getObject(obj, j), messageSchema.getMessageFieldSchema(i7));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeBytes(i9, (ByteString$LiteralByteString) unsafe.getObject(obj, j));
                    }
                    messageSchema = this;
                    break;
                case 11:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeUInt32(i9, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    break;
                case BasicTextKt.ShiftMeta /* 12 */:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeInt32(i9, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    break;
                case 13:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeFixed32(i9, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    break;
                case 14:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeFixed64(i9, unsafe.getLong(obj, j));
                    }
                    messageSchema = this;
                    break;
                case OffsetKt.Horizontal /* 15 */:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        int i12 = unsafe.getInt(obj, j);
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeUInt32(i9, (i12 >> 31) ^ (i12 << 1));
                    }
                    messageSchema = this;
                    break;
                case 16:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        long j2 = unsafe.getLong(obj, j);
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeUInt64(i9, (j2 >> 63) ^ (j2 << 1));
                    }
                    messageSchema = this;
                    break;
                case 17:
                    if (messageSchema.isFieldPresent(obj, i7, i6, i8, i2)) {
                        manifestSchemaFactory.writeGroup(i9, unsafe.getObject(obj, j), messageSchema.getMessageFieldSchema(i7));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    i3 = i6;
                    SchemaUtil.writeDoubleList(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i6 = i3;
                    break;
                case 19:
                    i3 = i6;
                    SchemaUtil.writeFloatList(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i6 = i3;
                    break;
                case 20:
                    i3 = i6;
                    SchemaUtil.writeInt64List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i6 = i3;
                    break;
                case 21:
                    i3 = i6;
                    SchemaUtil.writeUInt64List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i6 = i3;
                    break;
                case 22:
                    i3 = i6;
                    SchemaUtil.writeInt32List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i6 = i3;
                    break;
                case 23:
                    i3 = i6;
                    SchemaUtil.writeFixed64List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i6 = i3;
                    break;
                case 24:
                    i3 = i6;
                    SchemaUtil.writeFixed32List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i6 = i3;
                    break;
                case 25:
                    i3 = i6;
                    SchemaUtil.writeBoolList(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i6 = i3;
                    break;
                case 26:
                    i4 = i6;
                    int i13 = iArr[i7];
                    List list = (List) unsafe.getObject(obj, j);
                    Class cls = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    if (list != null && !list.isEmpty()) {
                        manifestSchemaFactory.getClass();
                        for (int i14 = 0; i14 < list.size(); i14++) {
                            ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeString((String) list.get(i14), i13);
                        }
                    }
                    i6 = i4;
                    break;
                case 27:
                    i4 = i6;
                    int i15 = iArr[i7];
                    List list2 = (List) unsafe.getObject(obj, j);
                    Schema messageFieldSchema = messageSchema.getMessageFieldSchema(i7);
                    Class cls2 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    if (list2 != null && !list2.isEmpty()) {
                        manifestSchemaFactory.getClass();
                        for (int i16 = 0; i16 < list2.size(); i16++) {
                            ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeMessage(i15, (AbstractMessageLite) list2.get(i16), messageFieldSchema);
                        }
                    }
                    i6 = i4;
                    break;
                case 28:
                    i4 = i6;
                    int i17 = iArr[i7];
                    List list3 = (List) unsafe.getObject(obj, j);
                    Class cls3 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    if (list3 != null && !list3.isEmpty()) {
                        manifestSchemaFactory.getClass();
                        for (int i18 = 0; i18 < list3.size(); i18++) {
                            ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeBytes(i17, (ByteString$LiteralByteString) list3.get(i18));
                        }
                    }
                    i6 = i4;
                    break;
                case 29:
                    i3 = i6;
                    z = false;
                    SchemaUtil.writeUInt32List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i6 = i3;
                    break;
                case 30:
                    i3 = i6;
                    z = false;
                    SchemaUtil.writeEnumList(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i6 = i3;
                    break;
                case 31:
                    i3 = i6;
                    z = false;
                    SchemaUtil.writeSFixed32List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i6 = i3;
                    break;
                case 32:
                    i3 = i6;
                    z = false;
                    SchemaUtil.writeSFixed64List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i6 = i3;
                    break;
                case 33:
                    i3 = i6;
                    z = false;
                    SchemaUtil.writeSInt32List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i6 = i3;
                    break;
                case 34:
                    i3 = i6;
                    z = false;
                    SchemaUtil.writeSInt64List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i6 = i3;
                    break;
                case 35:
                    i4 = i6;
                    SchemaUtil.writeDoubleList(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    i6 = i4;
                    break;
                case 36:
                    i4 = i6;
                    SchemaUtil.writeFloatList(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    i6 = i4;
                    break;
                case 37:
                    i4 = i6;
                    SchemaUtil.writeInt64List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    i6 = i4;
                    break;
                case 38:
                    i4 = i6;
                    SchemaUtil.writeUInt64List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    i6 = i4;
                    break;
                case 39:
                    i4 = i6;
                    SchemaUtil.writeInt32List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    i6 = i4;
                    break;
                case 40:
                    i4 = i6;
                    SchemaUtil.writeFixed64List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    i6 = i4;
                    break;
                case 41:
                    i4 = i6;
                    SchemaUtil.writeFixed32List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    i6 = i4;
                    break;
                case 42:
                    i4 = i6;
                    SchemaUtil.writeBoolList(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    i6 = i4;
                    break;
                case 43:
                    i4 = i6;
                    SchemaUtil.writeUInt32List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    i6 = i4;
                    break;
                case 44:
                    i4 = i6;
                    SchemaUtil.writeEnumList(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    i6 = i4;
                    break;
                case 45:
                    i4 = i6;
                    SchemaUtil.writeSFixed32List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    i6 = i4;
                    break;
                case 46:
                    i4 = i6;
                    SchemaUtil.writeSFixed64List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    i6 = i4;
                    break;
                case 47:
                    i4 = i6;
                    SchemaUtil.writeSInt32List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    i6 = i4;
                    break;
                case 48:
                    i4 = i6;
                    SchemaUtil.writeSInt64List(iArr[i7], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    i6 = i4;
                    break;
                case 49:
                    i4 = i6;
                    int i19 = iArr[i7];
                    List list4 = (List) unsafe.getObject(obj, j);
                    Schema messageFieldSchema2 = messageSchema.getMessageFieldSchema(i7);
                    Class cls4 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    if (list4 != null && !list4.isEmpty()) {
                        manifestSchemaFactory.getClass();
                        for (int i20 = 0; i20 < list4.size(); i20++) {
                            manifestSchemaFactory.writeGroup(i19, list4.get(i20), messageFieldSchema2);
                        }
                    }
                    i6 = i4;
                    break;
                case 50:
                    Object object2 = unsafe.getObject(obj, j);
                    if (object2 != null) {
                        int i21 = 2;
                        Object obj2 = messageSchema.objects[(i7 / 3) * 2];
                        messageSchema.mapFieldSchema.getClass();
                        MapEntryLite.Metadata metadata = ((MapEntryLite) obj2).metadata;
                        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder3 = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
                        codedOutputStream$OutputStreamEncoder3.getClass();
                        for (Map.Entry entry : ((MapFieldLite) object2).entrySet()) {
                            codedOutputStream$OutputStreamEncoder3.writeTag(i9, i21);
                            codedOutputStream$OutputStreamEncoder3.writeUInt32NoTag(MapEntryLite.computeSerializedSize(metadata, entry.getKey(), entry.getValue()));
                            Object key = entry.getKey();
                            Object value = entry.getValue();
                            FieldSet.writeElement(codedOutputStream$OutputStreamEncoder3, metadata.keyType, 1, key);
                            i21 = 2;
                            FieldSet.writeElement(codedOutputStream$OutputStreamEncoder3, metadata.valueType, 2, value);
                            i6 = i6;
                        }
                    }
                    i4 = i6;
                    i6 = i4;
                    break;
                case 51:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        double doubleValue = ((Double) UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj)).doubleValue();
                        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder4 = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
                        codedOutputStream$OutputStreamEncoder4.getClass();
                        codedOutputStream$OutputStreamEncoder4.writeFixed64(i9, Double.doubleToRawLongBits(doubleValue));
                    }
                    break;
                case 52:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        float floatValue = ((Float) UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj)).floatValue();
                        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder5 = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
                        codedOutputStream$OutputStreamEncoder5.getClass();
                        codedOutputStream$OutputStreamEncoder5.writeFixed32(i9, Float.floatToRawIntBits(floatValue));
                    }
                    break;
                case 53:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeUInt64(i9, oneofLongAt(j, obj));
                    }
                    break;
                case 54:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeUInt64(i9, oneofLongAt(j, obj));
                    }
                    break;
                case 55:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeInt32(i9, oneofIntAt(j, obj));
                    }
                    break;
                case 56:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeFixed64(i9, oneofLongAt(j, obj));
                    }
                    break;
                case 57:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeFixed32(i9, oneofIntAt(j, obj));
                    }
                    break;
                case 58:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeBool(i9, ((Boolean) UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj)).booleanValue());
                    }
                    break;
                case 59:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        Object object3 = unsafe.getObject(obj, j);
                        if (object3 instanceof String) {
                            ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeString((String) object3, i9);
                        } else {
                            ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeBytes(i9, (ByteString$LiteralByteString) object3);
                        }
                    }
                    break;
                case 60:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeMessage(i9, (AbstractMessageLite) unsafe.getObject(obj, j), messageSchema.getMessageFieldSchema(i7));
                    }
                    break;
                case 61:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeBytes(i9, (ByteString$LiteralByteString) unsafe.getObject(obj, j));
                    }
                    break;
                case 62:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeUInt32(i9, oneofIntAt(j, obj));
                    }
                    break;
                case 63:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeInt32(i9, oneofIntAt(j, obj));
                    }
                    break;
                case 64:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeFixed32(i9, oneofIntAt(j, obj));
                    }
                    break;
                case 65:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeFixed64(i9, oneofLongAt(j, obj));
                    }
                    break;
                case 66:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        int oneofIntAt = oneofIntAt(j, obj);
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeUInt32(i9, (oneofIntAt >> 31) ^ (oneofIntAt << 1));
                    }
                    break;
                case 67:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        long oneofLongAt = oneofLongAt(j, obj);
                        ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeUInt64(i9, (oneofLongAt << 1) ^ (oneofLongAt >> 63));
                    }
                    break;
                case 68:
                    if (messageSchema.isOneofPresent(i9, i7, obj)) {
                        manifestSchemaFactory.writeGroup(i9, unsafe.getObject(obj, j), messageSchema.getMessageFieldSchema(i7));
                    }
                    break;
            }
            i7 += 3;
            i5 = 1048575;
        }
        messageSchema.unknownFieldSchema.getClass();
        ((GeneratedMessageLite) obj).unknownFields.writeTo(manifestSchemaFactory);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void writeTo(Object obj, ManifestSchemaFactory manifestSchemaFactory) {
        manifestSchemaFactory.getClass();
        writeFieldsInAscendingOrder(obj, manifestSchemaFactory);
    }

    public final boolean isFieldPresent(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return isFieldPresent(i, obj);
        }
        return (i3 & i4) != 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void mergeFrom(Object obj, Object obj2) {
        Object obj3;
        if (isMutable(obj)) {
            obj2.getClass();
            int i = 0;
            while (true) {
                int[] iArr = this.buffer;
                if (i < iArr.length) {
                    int typeAndOffsetAt = typeAndOffsetAt(i);
                    long j = 1048575 & typeAndOffsetAt;
                    int i2 = iArr[i];
                    switch (type(typeAndOffsetAt)) {
                        case 0:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.MemoryAccessor memoryAccessor = UnsafeUtil.MEMORY_ACCESSOR;
                                obj3 = obj;
                                memoryAccessor.putDouble(obj3, j, memoryAccessor.getDouble(j, obj2));
                                setFieldPresent(i, obj3);
                                break;
                            }
                            obj3 = obj;
                            break;
                        case 1:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.MemoryAccessor memoryAccessor2 = UnsafeUtil.MEMORY_ACCESSOR;
                                memoryAccessor2.putFloat(obj, j, memoryAccessor2.getFloat(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 2:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putLong(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getLong(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 3:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putLong(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getLong(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 4:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putInt(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getInt(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 5:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putLong(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getLong(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 6:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putInt(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getInt(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.MemoryAccessor memoryAccessor3 = UnsafeUtil.MEMORY_ACCESSOR;
                                memoryAccessor3.putBoolean(obj, j, memoryAccessor3.getBoolean(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putObject(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 9:
                            mergeMessage(i, obj, obj2);
                            obj3 = obj;
                            break;
                        case 10:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putObject(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 11:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putInt(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getInt(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case BasicTextKt.ShiftMeta /* 12 */:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putInt(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getInt(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 13:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putInt(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getInt(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 14:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putLong(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getLong(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case OffsetKt.Horizontal /* 15 */:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putInt(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getInt(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 16:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putLong(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getLong(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 17:
                            mergeMessage(i, obj, obj2);
                            obj3 = obj;
                            break;
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                            this.listFieldSchema.getClass();
                            UnsafeUtil.MemoryAccessor memoryAccessor4 = UnsafeUtil.MEMORY_ACCESSOR;
                            Internal.ProtobufList protobufList = (Internal.ProtobufList) memoryAccessor4.getObject(j, obj);
                            Internal.ProtobufList protobufList2 = (Internal.ProtobufList) memoryAccessor4.getObject(j, obj2);
                            int i3 = ((ProtobufArrayList) protobufList).size;
                            int i4 = ((ProtobufArrayList) protobufList2).size;
                            if (i3 > 0 && i4 > 0) {
                                if (!((ProtobufArrayList) protobufList).isMutable) {
                                    protobufList = ((ProtobufArrayList) protobufList).mutableCopyWithCapacity(i4 + i3);
                                }
                                ((ProtobufArrayList) protobufList).addAll(protobufList2);
                            }
                            if (i3 > 0) {
                                protobufList2 = protobufList;
                            }
                            UnsafeUtil.putObject(obj, j, protobufList2);
                            obj3 = obj;
                            break;
                        case 50:
                            Class cls = SchemaUtil.GENERATED_MESSAGE_CLASS;
                            UnsafeUtil.MemoryAccessor memoryAccessor5 = UnsafeUtil.MEMORY_ACCESSOR;
                            Object object = memoryAccessor5.getObject(j, obj);
                            Object object2 = memoryAccessor5.getObject(j, obj2);
                            this.mapFieldSchema.getClass();
                            UnsafeUtil.putObject(obj, j, MapFieldSchemaLite.mergeFrom(object, object2));
                            obj3 = obj;
                            break;
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                        case 55:
                        case 56:
                        case 57:
                        case 58:
                        case 59:
                            if (isOneofPresent(i2, i, obj2)) {
                                UnsafeUtil.putObject(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj2));
                                setOneofPresent(i2, i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 60:
                            mergeOneofMessage(i, obj, obj2);
                            obj3 = obj;
                            break;
                        case 61:
                        case 62:
                        case 63:
                        case 64:
                        case 65:
                        case 66:
                        case 67:
                            if (isOneofPresent(i2, i, obj2)) {
                                UnsafeUtil.putObject(obj, j, UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj2));
                                setOneofPresent(i2, i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 68:
                            mergeOneofMessage(i, obj, obj2);
                            obj3 = obj;
                            break;
                        default:
                            obj3 = obj;
                            break;
                    }
                    i += 3;
                    obj = obj3;
                } else {
                    SchemaUtil.mergeUnknownFields(this.unknownFieldSchema, obj, obj2);
                    return;
                }
            }
        } else {
            Regex$$ExternalSyntheticBUOutline0.m$2(obj, "Mutating immutable message: ");
        }
    }
}
