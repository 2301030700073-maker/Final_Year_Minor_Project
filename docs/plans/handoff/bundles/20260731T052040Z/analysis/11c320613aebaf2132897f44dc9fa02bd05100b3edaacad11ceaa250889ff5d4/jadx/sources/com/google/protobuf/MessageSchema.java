package com.google.protobuf;

import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.ViewBoundsCheck$BoundFlags;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.util.Log;
import com.google.protobuf.Internal;
import com.google.protobuf.UnsafeUtil;
import java.lang.reflect.Field;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Token;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MessageSchema implements Schema {
    public static final int[] EMPTY_INT_ARRAY = new int[0];
    public static final Unsafe UNSAFE = UnsafeUtil.getUnsafe();
    public final int[] buffer;
    public final int checkInitializedCount;
    public final MessageLite defaultInstance;
    public final int[] intArray;
    public final ListFieldSchemaLite listFieldSchema;
    public final MapFieldSchemaLite mapFieldSchema;
    public final int maxFieldNumber;
    public final int minFieldNumber;
    public final NewInstanceSchemaLite newInstanceSchema;
    public final Object[] objects;
    public final int oneofFieldPositionsStart;
    public final UnknownFieldSetLiteSchema unknownFieldSchema;

    public MessageSchema(int[] iArr, Object[] objArr, int i, int i2, MessageLite messageLite, int[] iArr2, int i3, int i4, NewInstanceSchemaLite newInstanceSchemaLite, ListFieldSchemaLite listFieldSchemaLite, UnknownFieldSetLiteSchema unknownFieldSetLiteSchema, ExtensionSchemaLite extensionSchemaLite, MapFieldSchemaLite mapFieldSchemaLite) {
        this.buffer = iArr;
        this.objects = objArr;
        this.minFieldNumber = i;
        this.maxFieldNumber = i2;
        this.intArray = iArr2;
        this.checkInitializedCount = i3;
        this.oneofFieldPositionsStart = i4;
        this.newInstanceSchema = newInstanceSchemaLite;
        this.listFieldSchema = listFieldSchemaLite;
        this.unknownFieldSchema = unknownFieldSetLiteSchema;
        this.defaultInstance = messageLite;
        this.mapFieldSchema = mapFieldSchemaLite;
    }

    public static void checkMutable(Object obj) {
        if (isMutable(obj)) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(obj, "Mutating immutable message: "));
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

    /* JADX WARN: Removed duplicated region for block: B:116:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0254  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.protobuf.MessageSchema newSchemaForRawMessageInfo(com.google.protobuf.RawMessageInfo r34, com.google.protobuf.NewInstanceSchemaLite r35, com.google.protobuf.ListFieldSchemaLite r36, com.google.protobuf.UnknownFieldSetLiteSchema r37, com.google.protobuf.ExtensionSchemaLite r38, com.google.protobuf.MapFieldSchemaLite r39) {
        /*
            Method dump skipped, instructions count: 1005
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageSchema.newSchemaForRawMessageInfo(com.google.protobuf.RawMessageInfo, com.google.protobuf.NewInstanceSchemaLite, com.google.protobuf.ListFieldSchemaLite, com.google.protobuf.UnknownFieldSetLiteSchema, com.google.protobuf.ExtensionSchemaLite, com.google.protobuf.MapFieldSchemaLite):com.google.protobuf.MessageSchema");
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
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder m180m = Modifier.CC.m180m("Field ", str, " for ");
            m180m.append(cls.getName());
            m180m.append(" not found. Known fields are ");
            m180m.append(Arrays.toString(declaredFields));
            throw new RuntimeException(m180m.toString(), e);
        }
    }

    public static int type(int i) {
        return (i & 267386880) >>> 20;
    }

    public final boolean arePresentForEquals(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2, int i) {
        return isFieldPresent(i, generatedMessageLite) == isFieldPresent(i, generatedMessageLite2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0042, code lost:
    
        if (com.google.protobuf.SchemaUtil.safeEquals(r4.getObject(r8, r12), r4.getObject(r8, r13)) != false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007d, code lost:
    
        if (com.google.protobuf.SchemaUtil.safeEquals(r4.getObject(r8, r12), r4.getObject(r8, r13)) != false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0093, code lost:
    
        if (r4.getLong(r8, r12) == r4.getLong(r8, r13)) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a7, code lost:
    
        if (r4.getInt(r8, r12) == r4.getInt(r8, r13)) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00bd, code lost:
    
        if (r4.getLong(r8, r12) == r4.getLong(r8, r13)) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00d1, code lost:
    
        if (r4.getInt(r8, r12) == r4.getInt(r8, r13)) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00e5, code lost:
    
        if (r4.getInt(r8, r12) == r4.getInt(r8, r13)) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f9, code lost:
    
        if (r4.getInt(r8, r12) == r4.getInt(r8, r13)) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0111, code lost:
    
        if (com.google.protobuf.SchemaUtil.safeEquals(r4.getObject(r8, r12), r4.getObject(r8, r13)) != false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0129, code lost:
    
        if (com.google.protobuf.SchemaUtil.safeEquals(r4.getObject(r8, r12), r4.getObject(r8, r13)) != false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0141, code lost:
    
        if (com.google.protobuf.SchemaUtil.safeEquals(r4.getObject(r8, r12), r4.getObject(r8, r13)) != false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0155, code lost:
    
        if (r4.getBoolean(r8, r12) == r4.getBoolean(r8, r13)) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0169, code lost:
    
        if (r4.getInt(r8, r12) == r4.getInt(r8, r13)) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x017f, code lost:
    
        if (r4.getLong(r8, r12) == r4.getLong(r8, r13)) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0193, code lost:
    
        if (r4.getInt(r8, r12) == r4.getInt(r8, r13)) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01a8, code lost:
    
        if (r4.getLong(r8, r12) == r4.getLong(r8, r13)) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01bd, code lost:
    
        if (r4.getLong(r8, r12) == r4.getLong(r8, r13)) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01d8, code lost:
    
        if (java.lang.Float.floatToIntBits(r4.getFloat(r8, r12)) == java.lang.Float.floatToIntBits(r4.getFloat(r8, r13))) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01f5, code lost:
    
        if (java.lang.Double.doubleToLongBits(r4.getDouble(r8, r12)) == java.lang.Double.doubleToLongBits(r4.getDouble(r8, r13))) goto L110;
     */
    @Override // com.google.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(com.google.protobuf.GeneratedMessageLite r12, com.google.protobuf.GeneratedMessageLite r13) {
        /*
            Method dump skipped, instructions count: 728
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageSchema.equals(com.google.protobuf.GeneratedMessageLite, com.google.protobuf.GeneratedMessageLite):boolean");
    }

    public final void getEnumFieldVerifier(int i) {
        if (this.objects[((i / 3) * 2) + 1] == null) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
    }

    public final Object getMapFieldDefaultEntry(int i) {
        return this.objects[(i / 3) * 2];
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

    @Override // com.google.protobuf.Schema
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
        int computeTagSize7;
        int serializedSize;
        int computeUInt32SizeNoTag;
        int computeBytesSize;
        int computeTagSize8;
        int serializedSize2;
        int computeSizeFixed64List;
        int computeTagSize9;
        int size;
        int computeSizeUInt64ListNoTag;
        int computeTagSize10;
        int encodedLength;
        int computeUInt32SizeNoTag2;
        int computeTagSize11;
        int size2;
        int computeTagSize12;
        int computeUInt32SizeNoTag3;
        int i2;
        int computeTagSize13;
        int computeTagSize14;
        int computeUInt64SizeNoTag3;
        int computeTagSize15;
        int computeUInt64SizeNoTag4;
        int i3;
        MessageSchema messageSchema = this;
        GeneratedMessageLite generatedMessageLite2 = generatedMessageLite;
        Unsafe unsafe = UNSAFE;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 1048575;
        while (true) {
            int[] iArr = messageSchema.buffer;
            if (i4 >= iArr.length) {
                messageSchema.unknownFieldSchema.getClass();
                return generatedMessageLite2.unknownFields.getSerializedSize() + i6;
            }
            int typeAndOffsetAt = messageSchema.typeAndOffsetAt(i4);
            int type = type(typeAndOffsetAt);
            int i8 = iArr[i4];
            int i9 = iArr[i4 + 2];
            int i10 = i9 & 1048575;
            if (type <= 17) {
                if (i10 != i7) {
                    i5 = i10 == 1048575 ? 0 : unsafe.getInt(generatedMessageLite2, i10);
                    i7 = i10;
                }
                i = 1 << (i9 >>> 20);
            } else {
                i = 0;
            }
            long j = typeAndOffsetAt & 1048575;
            if (type >= FieldType.DOUBLE_LIST_PACKED.id()) {
                FieldType.SINT64_LIST_PACKED.id();
            }
            switch (type) {
                case 0:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeTagSize = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize + 8;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 1:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeTagSize2 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize2 + 4;
                        i6 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    i4 += 3;
                case 2:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        long j2 = unsafe.getLong(generatedMessageLite2, j);
                        computeTagSize3 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag = CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(j2);
                        i6 += computeUInt64SizeNoTag + computeTagSize3;
                    }
                    messageSchema = this;
                    i4 += 3;
                case 3:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        long j3 = unsafe.getLong(generatedMessageLite2, j);
                        computeTagSize3 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag = CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(j3);
                        i6 += computeUInt64SizeNoTag + computeTagSize3;
                    }
                    messageSchema = this;
                    i4 += 3;
                case 4:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        int i11 = unsafe.getInt(generatedMessageLite2, j);
                        computeTagSize4 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag2 = CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(i11);
                        computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize4;
                        i6 += computeBytesSize;
                    }
                    messageSchema = this;
                    i4 += 3;
                case 5:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeTagSize5 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize5 + 8;
                        i6 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    i4 += 3;
                case 6:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeTagSize2 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize2 + 4;
                        i6 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    i4 += 3;
                case 7:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeTagSize6 = CodedOutputStream$ArrayEncoder.computeTagSize(i8) + 1;
                        i6 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    i4 += 3;
                case 8:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        Object object = unsafe.getObject(generatedMessageLite2, j);
                        if (object instanceof ByteString) {
                            i6 = CodedOutputStream$ArrayEncoder.computeBytesSize(i8, (ByteString) object) + i6;
                        } else {
                            int computeTagSize16 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                            int encodedLength2 = Utf8.encodedLength((String) object);
                            i6 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(encodedLength2) + encodedLength2 + computeTagSize16 + i6;
                        }
                    }
                    messageSchema = this;
                    i4 += 3;
                case 9:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        Object object2 = unsafe.getObject(generatedMessageLite2, j);
                        Schema messageFieldSchema = messageSchema.getMessageFieldSchema(i4);
                        Class cls = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        computeTagSize7 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        serializedSize = ((AbstractMessageLite) object2).getSerializedSize(messageFieldSchema);
                        computeUInt32SizeNoTag = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(serializedSize);
                        i3 = computeUInt32SizeNoTag + serializedSize + computeTagSize7;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 10:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeBytesSize = CodedOutputStream$ArrayEncoder.computeBytesSize(i8, (ByteString) unsafe.getObject(generatedMessageLite2, j));
                        i6 += computeBytesSize;
                    }
                    messageSchema = this;
                    i4 += 3;
                case 11:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        int i12 = unsafe.getInt(generatedMessageLite2, j);
                        computeTagSize4 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag2 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(i12);
                        computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize4;
                        i6 += computeBytesSize;
                    }
                    messageSchema = this;
                    i4 += 3;
                case 12:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        int i13 = unsafe.getInt(generatedMessageLite2, j);
                        computeTagSize4 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag2 = CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(i13);
                        computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize4;
                        i6 += computeBytesSize;
                    }
                    messageSchema = this;
                    i4 += 3;
                case 13:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeTagSize2 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize2 + 4;
                        i6 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    i4 += 3;
                case 14:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeTagSize5 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize5 + 8;
                        i6 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    i4 += 3;
                case 15:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        int i14 = unsafe.getInt(generatedMessageLite2, j);
                        computeTagSize4 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag2 = CodedOutputStream$ArrayEncoder.computeSInt32SizeNoTag(i14);
                        computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize4;
                        i6 += computeBytesSize;
                    }
                    messageSchema = this;
                    i4 += 3;
                case 16:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        long j4 = unsafe.getLong(generatedMessageLite2, j);
                        computeTagSize3 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag = CodedOutputStream$ArrayEncoder.computeSInt64SizeNoTag(j4);
                        i6 += computeUInt64SizeNoTag + computeTagSize3;
                    }
                    messageSchema = this;
                    i4 += 3;
                case 17:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        MessageLite messageLite = (MessageLite) unsafe.getObject(generatedMessageLite2, j);
                        Schema messageFieldSchema2 = messageSchema.getMessageFieldSchema(i4);
                        Class cls2 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        computeTagSize8 = CodedOutputStream$ArrayEncoder.computeTagSize(i8) * 2;
                        serializedSize2 = ((AbstractMessageLite) messageLite).getSerializedSize(messageFieldSchema2);
                        computeSizeFixed64List = serializedSize2 + computeTagSize8;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 18:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed64List(i8, (List) unsafe.getObject(generatedMessageLite2, j));
                    i6 += computeSizeFixed64List;
                    i4 += 3;
                case 19:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed32List(i8, (List) unsafe.getObject(generatedMessageLite2, j));
                    i6 += computeSizeFixed64List;
                    i4 += 3;
                case 20:
                    List list = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls3 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    if (list.size() != 0) {
                        computeTagSize9 = (CodedOutputStream$ArrayEncoder.computeTagSize(i8) * list.size()) + SchemaUtil.computeSizeInt64ListNoTag(list);
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 21:
                    List list2 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls4 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list2.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeUInt64ListNoTag(list2);
                        computeTagSize10 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeTagSize9 = (computeTagSize10 * size) + computeSizeUInt64ListNoTag;
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 22:
                    List list3 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls5 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list3.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeInt32ListNoTag(list3);
                        computeTagSize10 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeTagSize9 = (computeTagSize10 * size) + computeSizeUInt64ListNoTag;
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 23:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed64List(i8, (List) unsafe.getObject(generatedMessageLite2, j));
                    i6 += computeSizeFixed64List;
                    i4 += 3;
                case 24:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed32List(i8, (List) unsafe.getObject(generatedMessageLite2, j));
                    i6 += computeSizeFixed64List;
                    i4 += 3;
                case 25:
                    List list4 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls6 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size3 = list4.size();
                    i6 += size3 == 0 ? 0 : (CodedOutputStream$ArrayEncoder.computeTagSize(i8) + 1) * size3;
                    i4 += 3;
                case 26:
                    List list5 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls7 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size4 = list5.size();
                    if (size4 != 0) {
                        computeTagSize9 = CodedOutputStream$ArrayEncoder.computeTagSize(i8) * size4;
                        for (int i15 = 0; i15 < size4; i15++) {
                            Object obj = list5.get(i15);
                            if (obj instanceof ByteString) {
                                encodedLength = ((ByteString) obj).size();
                                computeUInt32SizeNoTag2 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(encodedLength);
                            } else {
                                encodedLength = Utf8.encodedLength((String) obj);
                                computeUInt32SizeNoTag2 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(encodedLength);
                            }
                            computeTagSize9 = computeUInt32SizeNoTag2 + encodedLength + computeTagSize9;
                        }
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 27:
                    List list6 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Schema messageFieldSchema3 = messageSchema.getMessageFieldSchema(i4);
                    Class cls8 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size5 = list6.size();
                    if (size5 == 0) {
                        computeTagSize11 = 0;
                    } else {
                        computeTagSize11 = CodedOutputStream$ArrayEncoder.computeTagSize(i8) * size5;
                        for (int i16 = 0; i16 < size5; i16++) {
                            int serializedSize3 = ((AbstractMessageLite) list6.get(i16)).getSerializedSize(messageFieldSchema3);
                            computeTagSize11 += CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(serializedSize3) + serializedSize3;
                        }
                    }
                    i6 += computeTagSize11;
                    i4 += 3;
                case 28:
                    List list7 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls9 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size6 = list7.size();
                    if (size6 != 0) {
                        computeTagSize9 = CodedOutputStream$ArrayEncoder.computeTagSize(i8) * size6;
                        for (int i17 = 0; i17 < list7.size(); i17++) {
                            int size7 = ((ByteString) list7.get(i17)).size();
                            computeTagSize9 += CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size7) + size7;
                        }
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 29:
                    List list8 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls10 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list8.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeUInt32ListNoTag(list8);
                        computeTagSize10 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeTagSize9 = (computeTagSize10 * size) + computeSizeUInt64ListNoTag;
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 30:
                    List list9 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls11 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list9.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeEnumListNoTag(list9);
                        computeTagSize10 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeTagSize9 = (computeTagSize10 * size) + computeSizeUInt64ListNoTag;
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 31:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed32List(i8, (List) unsafe.getObject(generatedMessageLite2, j));
                    i6 += computeSizeFixed64List;
                    i4 += 3;
                case 32:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed64List(i8, (List) unsafe.getObject(generatedMessageLite2, j));
                    i6 += computeSizeFixed64List;
                    i4 += 3;
                case 33:
                    List list10 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls12 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list10.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeSInt32ListNoTag(list10);
                        computeTagSize10 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeTagSize9 = (computeTagSize10 * size) + computeSizeUInt64ListNoTag;
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 34:
                    List list11 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls13 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list11.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeSInt64ListNoTag(list11);
                        computeTagSize10 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeTagSize9 = (computeTagSize10 * size) + computeSizeUInt64ListNoTag;
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 35:
                    List list12 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls14 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list12.size() * 8;
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag3 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 36:
                    List list13 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls15 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list13.size() * 4;
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag3 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.SETPROP /* 37 */:
                    size2 = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag3 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 38:
                    size2 = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag3 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.GETELEM /* 39 */:
                    size2 = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag3 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.GETELEM_SUPER /* 40 */:
                    List list14 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls16 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list14.size() * 8;
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag3 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.SETELEM /* 41 */:
                    List list15 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls17 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list15.size() * 4;
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag3 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 42:
                    List list16 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls18 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list16.size();
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag3 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.CALL /* 43 */:
                    size2 = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag3 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.NAME /* 44 */:
                    size2 = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag3 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.NUMBER /* 45 */:
                    List list17 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls19 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list17.size() * 4;
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag3 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.STRING /* 46 */:
                    List list18 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls20 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list18.size() * 8;
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag3 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.NULL /* 47 */:
                    size2 = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag3 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.THIS /* 48 */:
                    size2 = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag3 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.FALSE /* 49 */:
                    List list19 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Schema messageFieldSchema4 = messageSchema.getMessageFieldSchema(i4);
                    Class cls21 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size8 = list19.size();
                    if (size8 == 0) {
                        i2 = 0;
                    } else {
                        i2 = 0;
                        for (int i18 = 0; i18 < size8; i18++) {
                            i2 += ((AbstractMessageLite) ((MessageLite) list19.get(i18))).getSerializedSize(messageFieldSchema4) + (CodedOutputStream$ArrayEncoder.computeTagSize(i8) * 2);
                        }
                    }
                    i6 += i2;
                    i4 += 3;
                case 50:
                    Object object3 = unsafe.getObject(generatedMessageLite2, j);
                    Object mapFieldDefaultEntry = messageSchema.getMapFieldDefaultEntry(i4);
                    messageSchema.mapFieldSchema.getClass();
                    MapFieldLite mapFieldLite = (MapFieldLite) object3;
                    if (mapFieldDefaultEntry != null) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                        return 0;
                    }
                    if (mapFieldLite.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = mapFieldLite.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i4 += 3;
                case Token.SHEQ /* 51 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeTagSize = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize + 8;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.SHNE /* 52 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeTagSize13 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize13 + 4;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.REGEXP /* 53 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        long oneofLongAt = oneofLongAt(j, generatedMessageLite2);
                        computeTagSize14 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(oneofLongAt);
                        i3 = computeUInt64SizeNoTag3 + computeTagSize14;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.BINDNAME /* 54 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        long oneofLongAt2 = oneofLongAt(j, generatedMessageLite2);
                        computeTagSize14 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(oneofLongAt2);
                        i3 = computeUInt64SizeNoTag3 + computeTagSize14;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.THROW /* 55 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        int oneofIntAt = oneofIntAt(j, generatedMessageLite2);
                        computeTagSize15 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag4 = CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(oneofIntAt);
                        computeSizeFixed64List = computeUInt64SizeNoTag4 + computeTagSize15;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.RETHROW /* 56 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeTagSize = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize + 8;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.IN /* 57 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeTagSize13 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize13 + 4;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.INSTANCEOF /* 58 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeSizeFixed64List = CodedOutputStream$ArrayEncoder.computeTagSize(i8) + 1;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.LOCAL_LOAD /* 59 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        Object object4 = unsafe.getObject(generatedMessageLite2, j);
                        if (object4 instanceof ByteString) {
                            i6 = CodedOutputStream$ArrayEncoder.computeBytesSize(i8, (ByteString) object4) + i6;
                        } else {
                            int computeTagSize17 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                            int encodedLength3 = Utf8.encodedLength((String) object4);
                            i6 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(encodedLength3) + encodedLength3 + computeTagSize17 + i6;
                        }
                    }
                    i4 += 3;
                case Token.GETVAR /* 60 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        Object object5 = unsafe.getObject(generatedMessageLite2, j);
                        Schema messageFieldSchema5 = messageSchema.getMessageFieldSchema(i4);
                        Class cls22 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        computeTagSize7 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        serializedSize = ((AbstractMessageLite) object5).getSerializedSize(messageFieldSchema5);
                        computeUInt32SizeNoTag = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(serializedSize);
                        i3 = computeUInt32SizeNoTag + serializedSize + computeTagSize7;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.SETVAR /* 61 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeSizeFixed64List = CodedOutputStream$ArrayEncoder.computeBytesSize(i8, (ByteString) unsafe.getObject(generatedMessageLite2, j));
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.CATCH_SCOPE /* 62 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        int oneofIntAt2 = oneofIntAt(j, generatedMessageLite2);
                        computeTagSize15 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag4 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(oneofIntAt2);
                        computeSizeFixed64List = computeUInt64SizeNoTag4 + computeTagSize15;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.ENUM_INIT_KEYS /* 63 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        int oneofIntAt3 = oneofIntAt(j, generatedMessageLite2);
                        computeTagSize15 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag4 = CodedOutputStream$ArrayEncoder.computeUInt64SizeNoTag(oneofIntAt3);
                        computeSizeFixed64List = computeUInt64SizeNoTag4 + computeTagSize15;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 64:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeTagSize13 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize13 + 4;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.ENUM_INIT_ARRAY /* 65 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeTagSize = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize + 8;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.ENUM_INIT_VALUES_IN_ORDER /* 66 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        int oneofIntAt4 = oneofIntAt(j, generatedMessageLite2);
                        computeTagSize15 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag4 = CodedOutputStream$ArrayEncoder.computeSInt32SizeNoTag(oneofIntAt4);
                        computeSizeFixed64List = computeUInt64SizeNoTag4 + computeTagSize15;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 67:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        long oneofLongAt3 = oneofLongAt(j, generatedMessageLite2);
                        computeTagSize14 = CodedOutputStream$ArrayEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeSInt64SizeNoTag(oneofLongAt3);
                        i3 = computeUInt64SizeNoTag3 + computeTagSize14;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case Token.ENUM_ID /* 68 */:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        MessageLite messageLite2 = (MessageLite) unsafe.getObject(generatedMessageLite2, j);
                        Schema messageFieldSchema6 = messageSchema.getMessageFieldSchema(i4);
                        Class cls23 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        computeTagSize8 = CodedOutputStream$ArrayEncoder.computeTagSize(i8) * 2;
                        serializedSize2 = ((AbstractMessageLite) messageLite2).getSerializedSize(messageFieldSchema6);
                        computeSizeFixed64List = serializedSize2 + computeTagSize8;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                default:
                    i4 += 3;
            }
        }
    }

    @Override // com.google.protobuf.Schema
    public final int hashCode(GeneratedMessageLite generatedMessageLite) {
        int i;
        int hashLong;
        int length = this.buffer.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int typeAndOffsetAt = typeAndOffsetAt(i3);
            int type = type(typeAndOffsetAt);
            if (type <= 50 || type >= 69) {
                long j = 1048575 & typeAndOffsetAt;
                int i4 = 37;
                switch (type) {
                    case 0:
                        i = i2 * 53;
                        hashLong = Internal.hashLong(Double.doubleToLongBits(UnsafeUtil.MEMORY_ACCESSOR.getDouble(j, generatedMessageLite)));
                        i2 = i + hashLong;
                        break;
                    case 1:
                        i = i2 * 53;
                        hashLong = Float.floatToIntBits(UnsafeUtil.MEMORY_ACCESSOR.getFloat(j, generatedMessageLite));
                        i2 = i + hashLong;
                        break;
                    case 2:
                        i = i2 * 53;
                        hashLong = Internal.hashLong(UnsafeUtil.MEMORY_ACCESSOR.getLong(j, generatedMessageLite));
                        i2 = i + hashLong;
                        break;
                    case 3:
                        i = i2 * 53;
                        hashLong = Internal.hashLong(UnsafeUtil.MEMORY_ACCESSOR.getLong(j, generatedMessageLite));
                        i2 = i + hashLong;
                        break;
                    case 4:
                        i = i2 * 53;
                        hashLong = UnsafeUtil.MEMORY_ACCESSOR.getInt(j, generatedMessageLite);
                        i2 = i + hashLong;
                        break;
                    case 5:
                        i = i2 * 53;
                        hashLong = Internal.hashLong(UnsafeUtil.MEMORY_ACCESSOR.getLong(j, generatedMessageLite));
                        i2 = i + hashLong;
                        break;
                    case 6:
                        i = i2 * 53;
                        hashLong = UnsafeUtil.MEMORY_ACCESSOR.getInt(j, generatedMessageLite);
                        i2 = i + hashLong;
                        break;
                    case 7:
                        i = i2 * 53;
                        boolean z = UnsafeUtil.MEMORY_ACCESSOR.getBoolean(j, generatedMessageLite);
                        byte[] bArr = Internal.EMPTY_BYTE_ARRAY;
                        hashLong = z ? 1231 : 1237;
                        i2 = i + hashLong;
                        break;
                    case 8:
                        i = i2 * 53;
                        hashLong = ((String) UnsafeUtil.MEMORY_ACCESSOR.getObject(j, generatedMessageLite)).hashCode();
                        i2 = i + hashLong;
                        break;
                    case 9:
                        Object object = UnsafeUtil.MEMORY_ACCESSOR.getObject(j, generatedMessageLite);
                        if (object != null) {
                            i4 = object.hashCode();
                        }
                        i2 = (i2 * 53) + i4;
                        break;
                    case 10:
                        i = i2 * 53;
                        hashLong = UnsafeUtil.MEMORY_ACCESSOR.getObject(j, generatedMessageLite).hashCode();
                        i2 = i + hashLong;
                        break;
                    case 11:
                        i = i2 * 53;
                        hashLong = UnsafeUtil.MEMORY_ACCESSOR.getInt(j, generatedMessageLite);
                        i2 = i + hashLong;
                        break;
                    case 12:
                        i = i2 * 53;
                        hashLong = UnsafeUtil.MEMORY_ACCESSOR.getInt(j, generatedMessageLite);
                        i2 = i + hashLong;
                        break;
                    case 13:
                        i = i2 * 53;
                        hashLong = UnsafeUtil.MEMORY_ACCESSOR.getInt(j, generatedMessageLite);
                        i2 = i + hashLong;
                        break;
                    case 14:
                        i = i2 * 53;
                        hashLong = Internal.hashLong(UnsafeUtil.MEMORY_ACCESSOR.getLong(j, generatedMessageLite));
                        i2 = i + hashLong;
                        break;
                    case 15:
                        i = i2 * 53;
                        hashLong = UnsafeUtil.MEMORY_ACCESSOR.getInt(j, generatedMessageLite);
                        i2 = i + hashLong;
                        break;
                    case 16:
                        i = i2 * 53;
                        hashLong = Internal.hashLong(UnsafeUtil.MEMORY_ACCESSOR.getLong(j, generatedMessageLite));
                        i2 = i + hashLong;
                        break;
                    case 17:
                        Object object2 = UnsafeUtil.MEMORY_ACCESSOR.getObject(j, generatedMessageLite);
                        if (object2 != null) {
                            i4 = object2.hashCode();
                        }
                        i2 = (i2 * 53) + i4;
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
                    case Token.SETPROP /* 37 */:
                    case 38:
                    case Token.GETELEM /* 39 */:
                    case Token.GETELEM_SUPER /* 40 */:
                    case Token.SETELEM /* 41 */:
                    case 42:
                    case Token.CALL /* 43 */:
                    case Token.NAME /* 44 */:
                    case Token.NUMBER /* 45 */:
                    case Token.STRING /* 46 */:
                    case Token.NULL /* 47 */:
                    case Token.THIS /* 48 */:
                    case Token.FALSE /* 49 */:
                        i = i2 * 53;
                        hashLong = UnsafeUtil.MEMORY_ACCESSOR.getObject(j, generatedMessageLite).hashCode();
                        i2 = i + hashLong;
                        break;
                    case 50:
                        i = i2 * 53;
                        hashLong = UnsafeUtil.MEMORY_ACCESSOR.getObject(j, generatedMessageLite).hashCode();
                        i2 = i + hashLong;
                        break;
                }
            }
        }
        int i5 = this.oneofFieldPositionsStart;
        while (true) {
            int[] iArr = this.intArray;
            if (i5 >= iArr.length) {
                this.unknownFieldSchema.getClass();
                return generatedMessageLite.unknownFields.hashCode() + (i2 * 53);
            }
            if (!isOneofPresent(0, iArr[i5], generatedMessageLite)) {
                i2 = UnsafeUtil.MEMORY_ACCESSOR.getObject(typeAndOffsetAt(r2) & 1048575, generatedMessageLite).hashCode() + (i2 * 53);
            }
            i5++;
        }
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageSchema.isFieldPresent(int, java.lang.Object):boolean");
    }

    @Override // com.google.protobuf.Schema
    public final boolean isInitialized(Object obj) {
        int i;
        int i2;
        MessageSchema messageSchema;
        Object obj2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i4 < this.checkInitializedCount) {
            int i6 = this.intArray[i4];
            int typeAndOffsetAt = this.typeAndOffsetAt(i6);
            int[] iArr = this.buffer;
            int i7 = iArr[i6 + 2];
            int i8 = i7 & 1048575;
            int i9 = 1 << (i7 >>> 20);
            if (i8 != i3) {
                if (i8 != 1048575) {
                    i5 = UNSAFE.getInt(obj, i8);
                }
                i2 = i5;
                i = i8;
            } else {
                i = i3;
                i2 = i5;
            }
            if ((268435456 & typeAndOffsetAt) != 0) {
                messageSchema = this;
                obj2 = obj;
                if (!messageSchema.isFieldPresent(obj2, i6, i, i2, i9)) {
                    return false;
                }
            } else {
                messageSchema = this;
                obj2 = obj;
            }
            int type = type(typeAndOffsetAt);
            if (type == 9 || type == 17) {
                if (messageSchema.isFieldPresent(obj2, i6, i, i2, i9)) {
                    if (!messageSchema.getMessageFieldSchema(i6).isInitialized(UnsafeUtil.MEMORY_ACCESSOR.getObject(typeAndOffsetAt & 1048575, obj2))) {
                        return false;
                    }
                } else {
                    continue;
                }
                i4++;
                this = messageSchema;
                obj = obj2;
                i3 = i;
                i5 = i2;
            } else {
                if (type != 27) {
                    if (type == 60 || type == 68) {
                        if (messageSchema.isOneofPresent(iArr[i6], i6, obj2)) {
                            if (!messageSchema.getMessageFieldSchema(i6).isInitialized(UnsafeUtil.MEMORY_ACCESSOR.getObject(typeAndOffsetAt & 1048575, obj2))) {
                                return false;
                            }
                        } else {
                            continue;
                        }
                    } else if (type != 49) {
                        if (type != 50) {
                            continue;
                        } else {
                            Object object = UnsafeUtil.MEMORY_ACCESSOR.getObject(typeAndOffsetAt & 1048575, obj2);
                            messageSchema.mapFieldSchema.getClass();
                            if (!((MapFieldLite) object).isEmpty()) {
                                Modifier.CC.m(messageSchema.getMapFieldDefaultEntry(i6));
                                throw null;
                            }
                        }
                    }
                    i4++;
                    this = messageSchema;
                    obj = obj2;
                    i3 = i;
                    i5 = i2;
                }
                List list = (List) UnsafeUtil.MEMORY_ACCESSOR.getObject(typeAndOffsetAt & 1048575, obj2);
                if (list.isEmpty()) {
                    continue;
                } else {
                    Schema messageFieldSchema = messageSchema.getMessageFieldSchema(i6);
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        if (!messageFieldSchema.isInitialized(list.get(i10))) {
                            return false;
                        }
                    }
                }
                i4++;
                this = messageSchema;
                obj = obj2;
                i3 = i;
                i5 = i2;
            }
        }
        return true;
    }

    public final boolean isOneofPresent(int i, int i2, Object obj) {
        return UnsafeUtil.MEMORY_ACCESSOR.getInt((long) (this.buffer[i2 + 2] & 1048575), obj) == i;
    }

    @Override // com.google.protobuf.Schema
    public final void makeImmutable(Object obj) {
        if (isMutable(obj)) {
            if (obj instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
                generatedMessageLite.setMemoizedSerializedSize(Log.LOG_LEVEL_OFF);
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
                            case Token.SETPROP /* 37 */:
                            case 38:
                            case Token.GETELEM /* 39 */:
                            case Token.GETELEM_SUPER /* 40 */:
                            case Token.SETELEM /* 41 */:
                            case 42:
                            case Token.CALL /* 43 */:
                            case Token.NAME /* 44 */:
                            case Token.NUMBER /* 45 */:
                            case Token.STRING /* 46 */:
                            case Token.NULL /* 47 */:
                            case Token.THIS /* 48 */:
                            case Token.FALSE /* 49 */:
                                this.listFieldSchema.getClass();
                                AbstractProtobufList abstractProtobufList = (AbstractProtobufList) ((Internal.ProtobufList) UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj));
                                if (abstractProtobufList.isMutable) {
                                    abstractProtobufList.isMutable = false;
                                    break;
                                } else {
                                    break;
                                }
                            case 50:
                                Unsafe unsafe = UNSAFE;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    this.mapFieldSchema.getClass();
                                    ((MapFieldLite) object).makeImmutable();
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.Schema
    public final void mergeFrom(Object obj, Object obj2) {
        Object obj3;
        checkMutable(obj);
        byte[] bArr = Internal.EMPTY_BYTE_ARRAY;
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.buffer;
            if (i >= iArr.length) {
                SchemaUtil.mergeUnknownFields(this.unknownFieldSchema, obj, obj2);
                return;
            }
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
                        UnsafeUtil.putInt(UnsafeUtil.MEMORY_ACCESSOR.getInt(j, obj2), j, obj);
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
                        UnsafeUtil.putInt(UnsafeUtil.MEMORY_ACCESSOR.getInt(j, obj2), j, obj);
                        setFieldPresent(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 7:
                    if (isFieldPresent(i, obj2)) {
                        UnsafeUtil.MemoryAccessor memoryAccessor3 = UnsafeUtil.MEMORY_ACCESSOR;
                        memoryAccessor3.putBoolean(obj, j, memoryAccessor3.getBoolean(j, obj2));
                        setFieldPresent(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 8:
                    if (isFieldPresent(i, obj2)) {
                        UnsafeUtil.putObject(j, obj, UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj2));
                        setFieldPresent(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 9:
                    mergeMessage(obj, obj2, i);
                    obj3 = obj;
                    break;
                case 10:
                    if (isFieldPresent(i, obj2)) {
                        UnsafeUtil.putObject(j, obj, UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj2));
                        setFieldPresent(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 11:
                    if (isFieldPresent(i, obj2)) {
                        UnsafeUtil.putInt(UnsafeUtil.MEMORY_ACCESSOR.getInt(j, obj2), j, obj);
                        setFieldPresent(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 12:
                    if (isFieldPresent(i, obj2)) {
                        UnsafeUtil.putInt(UnsafeUtil.MEMORY_ACCESSOR.getInt(j, obj2), j, obj);
                        setFieldPresent(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 13:
                    if (isFieldPresent(i, obj2)) {
                        UnsafeUtil.putInt(UnsafeUtil.MEMORY_ACCESSOR.getInt(j, obj2), j, obj);
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
                case 15:
                    if (isFieldPresent(i, obj2)) {
                        UnsafeUtil.putInt(UnsafeUtil.MEMORY_ACCESSOR.getInt(j, obj2), j, obj);
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
                    mergeMessage(obj, obj2, i);
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
                case Token.SETPROP /* 37 */:
                case 38:
                case Token.GETELEM /* 39 */:
                case Token.GETELEM_SUPER /* 40 */:
                case Token.SETELEM /* 41 */:
                case 42:
                case Token.CALL /* 43 */:
                case Token.NAME /* 44 */:
                case Token.NUMBER /* 45 */:
                case Token.STRING /* 46 */:
                case Token.NULL /* 47 */:
                case Token.THIS /* 48 */:
                case Token.FALSE /* 49 */:
                    this.listFieldSchema.getClass();
                    UnsafeUtil.MemoryAccessor memoryAccessor4 = UnsafeUtil.MEMORY_ACCESSOR;
                    Internal.ProtobufList protobufList = (Internal.ProtobufList) memoryAccessor4.getObject(j, obj);
                    Internal.ProtobufList protobufList2 = (Internal.ProtobufList) memoryAccessor4.getObject(j, obj2);
                    int size = protobufList.size();
                    int size2 = protobufList2.size();
                    if (size > 0 && size2 > 0) {
                        if (!((AbstractProtobufList) protobufList).isMutable) {
                            protobufList = protobufList.mutableCopyWithCapacity(size2 + size);
                        }
                        protobufList.addAll(protobufList2);
                    }
                    if (size > 0) {
                        protobufList2 = protobufList;
                    }
                    UnsafeUtil.putObject(j, obj, protobufList2);
                    obj3 = obj;
                    break;
                case 50:
                    Class cls = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    UnsafeUtil.MemoryAccessor memoryAccessor5 = UnsafeUtil.MEMORY_ACCESSOR;
                    Object object = memoryAccessor5.getObject(j, obj);
                    Object object2 = memoryAccessor5.getObject(j, obj2);
                    this.mapFieldSchema.getClass();
                    UnsafeUtil.putObject(j, obj, MapFieldSchemaLite.mergeFrom(object, object2));
                    obj3 = obj;
                    break;
                case Token.SHEQ /* 51 */:
                case Token.SHNE /* 52 */:
                case Token.REGEXP /* 53 */:
                case Token.BINDNAME /* 54 */:
                case Token.THROW /* 55 */:
                case Token.RETHROW /* 56 */:
                case Token.IN /* 57 */:
                case Token.INSTANCEOF /* 58 */:
                case Token.LOCAL_LOAD /* 59 */:
                    if (isOneofPresent(i2, i, obj2)) {
                        UnsafeUtil.putObject(j, obj, UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj2));
                        setOneofPresent(i2, i, obj);
                    }
                    obj3 = obj;
                    break;
                case Token.GETVAR /* 60 */:
                    mergeOneofMessage(obj, obj2, i);
                    obj3 = obj;
                    break;
                case Token.SETVAR /* 61 */:
                case Token.CATCH_SCOPE /* 62 */:
                case Token.ENUM_INIT_KEYS /* 63 */:
                case 64:
                case Token.ENUM_INIT_ARRAY /* 65 */:
                case Token.ENUM_INIT_VALUES_IN_ORDER /* 66 */:
                case 67:
                    if (isOneofPresent(i2, i, obj2)) {
                        UnsafeUtil.putObject(j, obj, UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj2));
                        setOneofPresent(i2, i, obj);
                    }
                    obj3 = obj;
                    break;
                case Token.ENUM_ID /* 68 */:
                    mergeOneofMessage(obj, obj2, i);
                    obj3 = obj;
                    break;
                default:
                    obj3 = obj;
                    break;
            }
            i += 3;
            obj = obj3;
        }
    }

    public final void mergeMessage(Object obj, Object obj2, int i) {
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

    public final void mergeOneofMessage(Object obj, Object obj2, int i) {
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

    @Override // com.google.protobuf.Schema
    public final GeneratedMessageLite newInstance() {
        this.newInstanceSchema.getClass();
        return ((GeneratedMessageLite) this.defaultInstance).newMutableInstance$1();
    }

    public final void parseMapField(int i, long j, Object obj) {
        Unsafe unsafe = UNSAFE;
        Object mapFieldDefaultEntry = getMapFieldDefaultEntry(i);
        Object object = unsafe.getObject(obj, j);
        this.mapFieldSchema.getClass();
        if (!((MapFieldLite) object).isMutable()) {
            MapFieldLite mutableCopy = MapFieldLite.EMPTY_MAP_FIELD.mutableCopy();
            MapFieldSchemaLite.mergeFrom(mutableCopy, object);
            unsafe.putObject(obj, j, mutableCopy);
        }
        Modifier.CC.m(mapFieldDefaultEntry);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:213:0x041b, code lost:
    
        r1 = r15;
        r9 = r17;
        r6 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0132, code lost:
    
        r4 = r31;
        r5 = r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int parseMessage(java.lang.Object r28, byte[] r29, int r30, int r31, int r32, com.google.protobuf.ArrayDecoders$Registers r33) {
        /*
            Method dump skipped, instructions count: 1312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageSchema.parseMessage(java.lang.Object, byte[], int, int, int, com.google.protobuf.ArrayDecoders$Registers):int");
    }

    public final int parseOneofField(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, ArrayDecoders$Registers arrayDecoders$Registers) {
        int i9;
        Unsafe unsafe = UNSAFE;
        long j2 = this.buffer[i8 + 2] & 1048575;
        switch (i7) {
            case Token.SHEQ /* 51 */:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(Cookie.Companion.decodeFixed64(i, bArr))));
                int i10 = i + 8;
                unsafe.putInt(obj, j2, i4);
                return i10;
            case Token.SHNE /* 52 */:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(Cookie.Companion.decodeFixed32(i, bArr))));
                int i11 = i + 4;
                unsafe.putInt(obj, j2, i4);
                return i11;
            case Token.REGEXP /* 53 */:
            case Token.BINDNAME /* 54 */:
                if (i5 != 0) {
                    return i;
                }
                int decodeVarint64 = Cookie.Companion.decodeVarint64(bArr, i, arrayDecoders$Registers);
                unsafe.putObject(obj, j, Long.valueOf(arrayDecoders$Registers.long1));
                unsafe.putInt(obj, j2, i4);
                return decodeVarint64;
            case Token.THROW /* 55 */:
            case Token.CATCH_SCOPE /* 62 */:
                if (i5 != 0) {
                    return i;
                }
                int decodeVarint32 = Cookie.Companion.decodeVarint32(bArr, i, arrayDecoders$Registers);
                unsafe.putObject(obj, j, Integer.valueOf(arrayDecoders$Registers.int1));
                unsafe.putInt(obj, j2, i4);
                return decodeVarint32;
            case Token.RETHROW /* 56 */:
            case Token.ENUM_INIT_ARRAY /* 65 */:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(obj, j, Long.valueOf(Cookie.Companion.decodeFixed64(i, bArr)));
                int i12 = i + 8;
                unsafe.putInt(obj, j2, i4);
                return i12;
            case Token.IN /* 57 */:
            case 64:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(obj, j, Integer.valueOf(Cookie.Companion.decodeFixed32(i, bArr)));
                int i13 = i + 4;
                unsafe.putInt(obj, j2, i4);
                return i13;
            case Token.INSTANCEOF /* 58 */:
                if (i5 != 0) {
                    return i;
                }
                int decodeVarint642 = Cookie.Companion.decodeVarint64(bArr, i, arrayDecoders$Registers);
                unsafe.putObject(obj, j, Boolean.valueOf(arrayDecoders$Registers.long1 != 0));
                unsafe.putInt(obj, j2, i4);
                return decodeVarint642;
            case Token.LOCAL_LOAD /* 59 */:
                if (i5 != 2) {
                    return i;
                }
                int decodeVarint322 = Cookie.Companion.decodeVarint32(bArr, i, arrayDecoders$Registers);
                int i14 = arrayDecoders$Registers.int1;
                if (i14 == 0) {
                    unsafe.putObject(obj, j, "");
                } else {
                    if ((i6 & 536870912) != 0) {
                        if (!Utf8.processor.isValidUtf8(bArr, decodeVarint322, decodeVarint322 + i14)) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    }
                    unsafe.putObject(obj, j, new String(bArr, decodeVarint322, i14, StandardCharsets.UTF_8));
                    decodeVarint322 += i14;
                }
                unsafe.putInt(obj, j2, i4);
                return decodeVarint322;
            case Token.GETVAR /* 60 */:
                i9 = i;
                if (i5 == 2) {
                    Object mutableOneofMessageFieldForMerge = mutableOneofMessageFieldForMerge(i4, i8, obj);
                    int mergeMessageField = Cookie.Companion.mergeMessageField(mutableOneofMessageFieldForMerge, getMessageFieldSchema(i8), bArr, i9, i2, arrayDecoders$Registers);
                    storeOneofMessageField(i4, obj, mutableOneofMessageFieldForMerge, i8);
                    return mergeMessageField;
                }
                return i9;
            case Token.SETVAR /* 61 */:
                i9 = i;
                if (i5 == 2) {
                    int decodeBytes = Cookie.Companion.decodeBytes(bArr, i9, arrayDecoders$Registers);
                    unsafe.putObject(obj, j, arrayDecoders$Registers.object1);
                    unsafe.putInt(obj, j2, i4);
                    return decodeBytes;
                }
                return i9;
            case Token.ENUM_INIT_KEYS /* 63 */:
                i9 = i;
                if (i5 == 0) {
                    int decodeVarint323 = Cookie.Companion.decodeVarint32(bArr, i9, arrayDecoders$Registers);
                    int i15 = arrayDecoders$Registers.int1;
                    getEnumFieldVerifier(i8);
                    unsafe.putObject(obj, j, Integer.valueOf(i15));
                    unsafe.putInt(obj, j2, i4);
                    return decodeVarint323;
                }
                return i9;
            case Token.ENUM_INIT_VALUES_IN_ORDER /* 66 */:
                i9 = i;
                if (i5 == 0) {
                    int decodeVarint324 = Cookie.Companion.decodeVarint32(bArr, i9, arrayDecoders$Registers);
                    unsafe.putObject(obj, j, Integer.valueOf(ViewBoundsCheck$BoundFlags.decodeZigZag32(arrayDecoders$Registers.int1)));
                    unsafe.putInt(obj, j2, i4);
                    return decodeVarint324;
                }
                return i9;
            case 67:
                i9 = i;
                if (i5 == 0) {
                    int decodeVarint643 = Cookie.Companion.decodeVarint64(bArr, i9, arrayDecoders$Registers);
                    unsafe.putObject(obj, j, Long.valueOf(ViewBoundsCheck$BoundFlags.decodeZigZag64(arrayDecoders$Registers.long1)));
                    unsafe.putInt(obj, j2, i4);
                    return decodeVarint643;
                }
                return i9;
            case Token.ENUM_ID /* 68 */:
                if (i5 == 3) {
                    Object mutableOneofMessageFieldForMerge2 = mutableOneofMessageFieldForMerge(i4, i8, obj);
                    int mergeGroupField = Cookie.Companion.mergeGroupField(mutableOneofMessageFieldForMerge2, getMessageFieldSchema(i8), bArr, i, i2, (i3 & (-8)) | 4, arrayDecoders$Registers);
                    storeOneofMessageField(i4, obj, mutableOneofMessageFieldForMerge2, i8);
                    return mergeGroupField;
                }
            default:
                return i;
        }
    }

    public final int parseRepeatedField(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, long j, int i6, long j2, ArrayDecoders$Registers arrayDecoders$Registers) {
        int i7;
        int decodeVarint32List;
        Unsafe unsafe = UNSAFE;
        Internal.ProtobufList protobufList = (Internal.ProtobufList) unsafe.getObject(obj, j2);
        if (!((AbstractProtobufList) protobufList).isMutable) {
            protobufList = protobufList.mutableCopyWithCapacity(protobufList.size() * 2);
            unsafe.putObject(obj, j2, protobufList);
        }
        Internal.ProtobufList protobufList2 = protobufList;
        switch (i6) {
            case 18:
            case 35:
                if (i4 != 2) {
                    if (i4 != 1) {
                        return i;
                    }
                    DoubleArrayList doubleArrayList = (DoubleArrayList) protobufList2;
                    doubleArrayList.addDouble(Double.longBitsToDouble(Cookie.Companion.decodeFixed64(i, bArr)));
                    int i8 = i + 8;
                    while (i8 < i2) {
                        int decodeVarint32 = Cookie.Companion.decodeVarint32(bArr, i8, arrayDecoders$Registers);
                        if (i3 != arrayDecoders$Registers.int1) {
                            return i8;
                        }
                        doubleArrayList.addDouble(Double.longBitsToDouble(Cookie.Companion.decodeFixed64(decodeVarint32, bArr)));
                        i8 = decodeVarint32 + 8;
                    }
                    return i8;
                }
                DoubleArrayList doubleArrayList2 = (DoubleArrayList) protobufList2;
                int decodeVarint322 = Cookie.Companion.decodeVarint32(bArr, i, arrayDecoders$Registers);
                int i9 = arrayDecoders$Registers.int1;
                int i10 = decodeVarint322 + i9;
                if (i10 > bArr.length) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                int i11 = (i9 / 8) + 0;
                double[] dArr = doubleArrayList2.array;
                if (i11 > dArr.length) {
                    if (dArr.length == 0) {
                        doubleArrayList2.array = new double[Math.max(i11, 10)];
                    } else {
                        int length = dArr.length;
                        while (length < i11) {
                            length = RecordTag.m(length, 3, 2, 1, 10);
                        }
                        doubleArrayList2.array = Arrays.copyOf(doubleArrayList2.array, length);
                    }
                }
                while (decodeVarint322 < i10) {
                    doubleArrayList2.addDouble(Double.longBitsToDouble(Cookie.Companion.decodeFixed64(decodeVarint322, bArr)));
                    decodeVarint322 += 8;
                }
                if (decodeVarint322 == i10) {
                    return decodeVarint322;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            case 19:
            case 36:
                if (i4 != 2) {
                    if (i4 != 5) {
                        return i;
                    }
                    FloatArrayList floatArrayList = (FloatArrayList) protobufList2;
                    floatArrayList.addFloat(Float.intBitsToFloat(Cookie.Companion.decodeFixed32(i, bArr)));
                    int i12 = i + 4;
                    while (i12 < i2) {
                        int decodeVarint323 = Cookie.Companion.decodeVarint32(bArr, i12, arrayDecoders$Registers);
                        if (i3 != arrayDecoders$Registers.int1) {
                            return i12;
                        }
                        floatArrayList.addFloat(Float.intBitsToFloat(Cookie.Companion.decodeFixed32(decodeVarint323, bArr)));
                        i12 = decodeVarint323 + 4;
                    }
                    return i12;
                }
                FloatArrayList floatArrayList2 = (FloatArrayList) protobufList2;
                int decodeVarint324 = Cookie.Companion.decodeVarint32(bArr, i, arrayDecoders$Registers);
                int i13 = arrayDecoders$Registers.int1;
                int i14 = decodeVarint324 + i13;
                if (i14 > bArr.length) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                int i15 = (i13 / 4) + 0;
                float[] fArr = floatArrayList2.array;
                if (i15 > fArr.length) {
                    if (fArr.length == 0) {
                        floatArrayList2.array = new float[Math.max(i15, 10)];
                    } else {
                        int length2 = fArr.length;
                        while (length2 < i15) {
                            length2 = RecordTag.m(length2, 3, 2, 1, 10);
                        }
                        floatArrayList2.array = Arrays.copyOf(floatArrayList2.array, length2);
                    }
                }
                while (decodeVarint324 < i14) {
                    floatArrayList2.addFloat(Float.intBitsToFloat(Cookie.Companion.decodeFixed32(decodeVarint324, bArr)));
                    decodeVarint324 += 4;
                }
                if (decodeVarint324 == i14) {
                    return decodeVarint324;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            case 20:
            case 21:
            case Token.SETPROP /* 37 */:
            case 38:
                if (i4 == 2) {
                    LongArrayList longArrayList = (LongArrayList) protobufList2;
                    int decodeVarint325 = Cookie.Companion.decodeVarint32(bArr, i, arrayDecoders$Registers);
                    int i16 = arrayDecoders$Registers.int1 + decodeVarint325;
                    while (decodeVarint325 < i16) {
                        decodeVarint325 = Cookie.Companion.decodeVarint64(bArr, decodeVarint325, arrayDecoders$Registers);
                        longArrayList.addLong(arrayDecoders$Registers.long1);
                    }
                    if (decodeVarint325 == i16) {
                        return decodeVarint325;
                    }
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i4 != 0) {
                    return i;
                }
                LongArrayList longArrayList2 = (LongArrayList) protobufList2;
                int decodeVarint64 = Cookie.Companion.decodeVarint64(bArr, i, arrayDecoders$Registers);
                longArrayList2.addLong(arrayDecoders$Registers.long1);
                while (decodeVarint64 < i2) {
                    int decodeVarint326 = Cookie.Companion.decodeVarint32(bArr, decodeVarint64, arrayDecoders$Registers);
                    if (i3 != arrayDecoders$Registers.int1) {
                        return decodeVarint64;
                    }
                    decodeVarint64 = Cookie.Companion.decodeVarint64(bArr, decodeVarint326, arrayDecoders$Registers);
                    longArrayList2.addLong(arrayDecoders$Registers.long1);
                }
                return decodeVarint64;
            case 22:
            case 29:
            case Token.GETELEM /* 39 */:
            case Token.CALL /* 43 */:
                i7 = i;
                if (i4 == 2) {
                    IntArrayList intArrayList = (IntArrayList) protobufList2;
                    int decodeVarint327 = Cookie.Companion.decodeVarint32(bArr, i7, arrayDecoders$Registers);
                    int i17 = arrayDecoders$Registers.int1 + decodeVarint327;
                    while (decodeVarint327 < i17) {
                        decodeVarint327 = Cookie.Companion.decodeVarint32(bArr, decodeVarint327, arrayDecoders$Registers);
                        intArrayList.addInt(arrayDecoders$Registers.int1);
                    }
                    if (decodeVarint327 == i17) {
                        return decodeVarint327;
                    }
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i4 == 0) {
                    return Cookie.Companion.decodeVarint32List(i3, bArr, i7, i2, protobufList2, arrayDecoders$Registers);
                }
                break;
            case 23:
            case 32:
            case Token.GETELEM_SUPER /* 40 */:
            case Token.STRING /* 46 */:
                i7 = i;
                if (i4 == 2) {
                    LongArrayList longArrayList3 = (LongArrayList) protobufList2;
                    int decodeVarint328 = Cookie.Companion.decodeVarint32(bArr, i7, arrayDecoders$Registers);
                    int i18 = arrayDecoders$Registers.int1;
                    int i19 = decodeVarint328 + i18;
                    if (i19 > bArr.length) {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                    int i20 = (i18 / 8) + 0;
                    long[] jArr = longArrayList3.array;
                    if (i20 > jArr.length) {
                        if (jArr.length == 0) {
                            longArrayList3.array = new long[Math.max(i20, 10)];
                        } else {
                            int length3 = jArr.length;
                            while (length3 < i20) {
                                length3 = RecordTag.m(length3, 3, 2, 1, 10);
                            }
                            longArrayList3.array = Arrays.copyOf(longArrayList3.array, length3);
                        }
                    }
                    while (decodeVarint328 < i19) {
                        longArrayList3.addLong(Cookie.Companion.decodeFixed64(decodeVarint328, bArr));
                        decodeVarint328 += 8;
                    }
                    if (decodeVarint328 == i19) {
                        return decodeVarint328;
                    }
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i4 == 1) {
                    LongArrayList longArrayList4 = (LongArrayList) protobufList2;
                    longArrayList4.addLong(Cookie.Companion.decodeFixed64(i7, bArr));
                    int i21 = i7 + 8;
                    while (i21 < i2) {
                        int decodeVarint329 = Cookie.Companion.decodeVarint32(bArr, i21, arrayDecoders$Registers);
                        if (i3 != arrayDecoders$Registers.int1) {
                            return i21;
                        }
                        longArrayList4.addLong(Cookie.Companion.decodeFixed64(decodeVarint329, bArr));
                        i21 = decodeVarint329 + 8;
                    }
                    return i21;
                }
                break;
            case 24:
            case 31:
            case Token.SETELEM /* 41 */:
            case Token.NUMBER /* 45 */:
                i7 = i;
                if (i4 == 2) {
                    IntArrayList intArrayList2 = (IntArrayList) protobufList2;
                    int decodeVarint3210 = Cookie.Companion.decodeVarint32(bArr, i7, arrayDecoders$Registers);
                    int i22 = arrayDecoders$Registers.int1;
                    int i23 = decodeVarint3210 + i22;
                    if (i23 > bArr.length) {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                    int i24 = (i22 / 4) + 0;
                    int[] iArr = intArrayList2.array;
                    if (i24 > iArr.length) {
                        if (iArr.length == 0) {
                            intArrayList2.array = new int[Math.max(i24, 10)];
                        } else {
                            int length4 = iArr.length;
                            while (length4 < i24) {
                                length4 = RecordTag.m(length4, 3, 2, 1, 10);
                            }
                            intArrayList2.array = Arrays.copyOf(intArrayList2.array, length4);
                        }
                    }
                    while (decodeVarint3210 < i23) {
                        intArrayList2.addInt(Cookie.Companion.decodeFixed32(decodeVarint3210, bArr));
                        decodeVarint3210 += 4;
                    }
                    if (decodeVarint3210 == i23) {
                        return decodeVarint3210;
                    }
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i4 == 5) {
                    IntArrayList intArrayList3 = (IntArrayList) protobufList2;
                    intArrayList3.addInt(Cookie.Companion.decodeFixed32(i7, bArr));
                    int i25 = i7 + 4;
                    while (i25 < i2) {
                        int decodeVarint3211 = Cookie.Companion.decodeVarint32(bArr, i25, arrayDecoders$Registers);
                        if (i3 != arrayDecoders$Registers.int1) {
                            return i25;
                        }
                        intArrayList3.addInt(Cookie.Companion.decodeFixed32(decodeVarint3211, bArr));
                        i25 = decodeVarint3211 + 4;
                    }
                    return i25;
                }
                break;
            case 25:
            case 42:
                i7 = i;
                if (i4 == 2) {
                    BooleanArrayList booleanArrayList = (BooleanArrayList) protobufList2;
                    int decodeVarint3212 = Cookie.Companion.decodeVarint32(bArr, i7, arrayDecoders$Registers);
                    int i26 = arrayDecoders$Registers.int1 + decodeVarint3212;
                    while (decodeVarint3212 < i26) {
                        decodeVarint3212 = Cookie.Companion.decodeVarint64(bArr, decodeVarint3212, arrayDecoders$Registers);
                        booleanArrayList.addBoolean(arrayDecoders$Registers.long1 != 0);
                    }
                    if (decodeVarint3212 == i26) {
                        return decodeVarint3212;
                    }
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i4 == 0) {
                    BooleanArrayList booleanArrayList2 = (BooleanArrayList) protobufList2;
                    int decodeVarint642 = Cookie.Companion.decodeVarint64(bArr, i7, arrayDecoders$Registers);
                    booleanArrayList2.addBoolean(arrayDecoders$Registers.long1 != 0);
                    while (decodeVarint642 < i2) {
                        int decodeVarint3213 = Cookie.Companion.decodeVarint32(bArr, decodeVarint642, arrayDecoders$Registers);
                        if (i3 != arrayDecoders$Registers.int1) {
                            return decodeVarint642;
                        }
                        decodeVarint642 = Cookie.Companion.decodeVarint64(bArr, decodeVarint3213, arrayDecoders$Registers);
                        booleanArrayList2.addBoolean(arrayDecoders$Registers.long1 != 0);
                    }
                    return decodeVarint642;
                }
                break;
            case 26:
                i7 = i;
                if (i4 == 2) {
                    if ((j & 536870912) == 0) {
                        int decodeVarint3214 = Cookie.Companion.decodeVarint32(bArr, i7, arrayDecoders$Registers);
                        int i27 = arrayDecoders$Registers.int1;
                        if (i27 < 0) {
                            throw InvalidProtocolBufferException.negativeSize();
                        }
                        if (i27 == 0) {
                            protobufList2.add("");
                        } else {
                            protobufList2.add(new String(bArr, decodeVarint3214, i27, StandardCharsets.UTF_8));
                            decodeVarint3214 += i27;
                        }
                        while (decodeVarint3214 < i2) {
                            int decodeVarint3215 = Cookie.Companion.decodeVarint32(bArr, decodeVarint3214, arrayDecoders$Registers);
                            if (i3 != arrayDecoders$Registers.int1) {
                                return decodeVarint3214;
                            }
                            decodeVarint3214 = Cookie.Companion.decodeVarint32(bArr, decodeVarint3215, arrayDecoders$Registers);
                            int i28 = arrayDecoders$Registers.int1;
                            if (i28 < 0) {
                                throw InvalidProtocolBufferException.negativeSize();
                            }
                            if (i28 == 0) {
                                protobufList2.add("");
                            } else {
                                protobufList2.add(new String(bArr, decodeVarint3214, i28, StandardCharsets.UTF_8));
                                decodeVarint3214 += i28;
                            }
                        }
                        return decodeVarint3214;
                    }
                    int decodeVarint3216 = Cookie.Companion.decodeVarint32(bArr, i7, arrayDecoders$Registers);
                    int i29 = arrayDecoders$Registers.int1;
                    if (i29 < 0) {
                        throw InvalidProtocolBufferException.negativeSize();
                    }
                    if (i29 == 0) {
                        protobufList2.add("");
                    } else {
                        int i30 = decodeVarint3216 + i29;
                        if (!Utf8.processor.isValidUtf8(bArr, decodeVarint3216, i30)) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        protobufList2.add(new String(bArr, decodeVarint3216, i29, StandardCharsets.UTF_8));
                        decodeVarint3216 = i30;
                    }
                    while (decodeVarint3216 < i2) {
                        int decodeVarint3217 = Cookie.Companion.decodeVarint32(bArr, decodeVarint3216, arrayDecoders$Registers);
                        if (i3 != arrayDecoders$Registers.int1) {
                            return decodeVarint3216;
                        }
                        decodeVarint3216 = Cookie.Companion.decodeVarint32(bArr, decodeVarint3217, arrayDecoders$Registers);
                        int i31 = arrayDecoders$Registers.int1;
                        if (i31 < 0) {
                            throw InvalidProtocolBufferException.negativeSize();
                        }
                        if (i31 == 0) {
                            protobufList2.add("");
                        } else {
                            int i32 = decodeVarint3216 + i31;
                            if (!Utf8.processor.isValidUtf8(bArr, decodeVarint3216, i32)) {
                                throw InvalidProtocolBufferException.invalidUtf8();
                            }
                            protobufList2.add(new String(bArr, decodeVarint3216, i31, StandardCharsets.UTF_8));
                            decodeVarint3216 = i32;
                        }
                    }
                    return decodeVarint3216;
                }
                break;
            case 27:
                return i4 == 2 ? Cookie.Companion.decodeMessageList(getMessageFieldSchema(i5), i3, bArr, i, i2, protobufList2, arrayDecoders$Registers) : i;
            case 28:
                if (i4 != 2) {
                    return i;
                }
                int decodeVarint3218 = Cookie.Companion.decodeVarint32(bArr, i, arrayDecoders$Registers);
                int i33 = arrayDecoders$Registers.int1;
                if (i33 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                if (i33 > bArr.length - decodeVarint3218) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i33 == 0) {
                    protobufList2.add(ByteString.EMPTY);
                } else {
                    protobufList2.add(ByteString.copyFrom(bArr, decodeVarint3218, i33));
                    decodeVarint3218 += i33;
                }
                while (decodeVarint3218 < i2) {
                    int decodeVarint3219 = Cookie.Companion.decodeVarint32(bArr, decodeVarint3218, arrayDecoders$Registers);
                    if (i3 != arrayDecoders$Registers.int1) {
                        return decodeVarint3218;
                    }
                    decodeVarint3218 = Cookie.Companion.decodeVarint32(bArr, decodeVarint3219, arrayDecoders$Registers);
                    int i34 = arrayDecoders$Registers.int1;
                    if (i34 < 0) {
                        throw InvalidProtocolBufferException.negativeSize();
                    }
                    if (i34 > bArr.length - decodeVarint3218) {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                    if (i34 == 0) {
                        protobufList2.add(ByteString.EMPTY);
                    } else {
                        protobufList2.add(ByteString.copyFrom(bArr, decodeVarint3218, i34));
                        decodeVarint3218 += i34;
                    }
                }
                return decodeVarint3218;
            case 30:
            case Token.NAME /* 44 */:
                if (i4 == 2) {
                    IntArrayList intArrayList4 = (IntArrayList) protobufList2;
                    decodeVarint32List = Cookie.Companion.decodeVarint32(bArr, i, arrayDecoders$Registers);
                    int i35 = arrayDecoders$Registers.int1 + decodeVarint32List;
                    while (decodeVarint32List < i35) {
                        decodeVarint32List = Cookie.Companion.decodeVarint32(bArr, decodeVarint32List, arrayDecoders$Registers);
                        intArrayList4.addInt(arrayDecoders$Registers.int1);
                    }
                    if (decodeVarint32List != i35) {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                } else {
                    if (i4 != 0) {
                        return i;
                    }
                    decodeVarint32List = Cookie.Companion.decodeVarint32List(i3, bArr, i, i2, protobufList2, arrayDecoders$Registers);
                }
                getEnumFieldVerifier(i5);
                Class cls = SchemaUtil.GENERATED_MESSAGE_CLASS;
                return decodeVarint32List;
            case 33:
            case Token.NULL /* 47 */:
                if (i4 == 2) {
                    IntArrayList intArrayList5 = (IntArrayList) protobufList2;
                    int decodeVarint3220 = Cookie.Companion.decodeVarint32(bArr, i, arrayDecoders$Registers);
                    int i36 = arrayDecoders$Registers.int1 + decodeVarint3220;
                    while (decodeVarint3220 < i36) {
                        decodeVarint3220 = Cookie.Companion.decodeVarint32(bArr, decodeVarint3220, arrayDecoders$Registers);
                        intArrayList5.addInt(ViewBoundsCheck$BoundFlags.decodeZigZag32(arrayDecoders$Registers.int1));
                    }
                    if (decodeVarint3220 == i36) {
                        return decodeVarint3220;
                    }
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i4 != 0) {
                    return i;
                }
                IntArrayList intArrayList6 = (IntArrayList) protobufList2;
                int decodeVarint3221 = Cookie.Companion.decodeVarint32(bArr, i, arrayDecoders$Registers);
                intArrayList6.addInt(ViewBoundsCheck$BoundFlags.decodeZigZag32(arrayDecoders$Registers.int1));
                while (decodeVarint3221 < i2) {
                    int decodeVarint3222 = Cookie.Companion.decodeVarint32(bArr, decodeVarint3221, arrayDecoders$Registers);
                    if (i3 != arrayDecoders$Registers.int1) {
                        return decodeVarint3221;
                    }
                    decodeVarint3221 = Cookie.Companion.decodeVarint32(bArr, decodeVarint3222, arrayDecoders$Registers);
                    intArrayList6.addInt(ViewBoundsCheck$BoundFlags.decodeZigZag32(arrayDecoders$Registers.int1));
                }
                return decodeVarint3221;
            case 34:
            case Token.THIS /* 48 */:
                if (i4 == 2) {
                    LongArrayList longArrayList5 = (LongArrayList) protobufList2;
                    int decodeVarint3223 = Cookie.Companion.decodeVarint32(bArr, i, arrayDecoders$Registers);
                    int i37 = arrayDecoders$Registers.int1 + decodeVarint3223;
                    while (decodeVarint3223 < i37) {
                        decodeVarint3223 = Cookie.Companion.decodeVarint64(bArr, decodeVarint3223, arrayDecoders$Registers);
                        longArrayList5.addLong(ViewBoundsCheck$BoundFlags.decodeZigZag64(arrayDecoders$Registers.long1));
                    }
                    if (decodeVarint3223 == i37) {
                        return decodeVarint3223;
                    }
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i4 != 0) {
                    return i;
                }
                LongArrayList longArrayList6 = (LongArrayList) protobufList2;
                int decodeVarint643 = Cookie.Companion.decodeVarint64(bArr, i, arrayDecoders$Registers);
                longArrayList6.addLong(ViewBoundsCheck$BoundFlags.decodeZigZag64(arrayDecoders$Registers.long1));
                while (decodeVarint643 < i2) {
                    int decodeVarint3224 = Cookie.Companion.decodeVarint32(bArr, decodeVarint643, arrayDecoders$Registers);
                    if (i3 != arrayDecoders$Registers.int1) {
                        return decodeVarint643;
                    }
                    decodeVarint643 = Cookie.Companion.decodeVarint64(bArr, decodeVarint3224, arrayDecoders$Registers);
                    longArrayList6.addLong(ViewBoundsCheck$BoundFlags.decodeZigZag64(arrayDecoders$Registers.long1));
                }
                return decodeVarint643;
            case Token.FALSE /* 49 */:
                if (i4 == 3) {
                    Schema messageFieldSchema = getMessageFieldSchema(i5);
                    int i38 = (i3 & (-8)) | 4;
                    int decodeGroupField = Cookie.Companion.decodeGroupField(messageFieldSchema, bArr, i, i2, i38, arrayDecoders$Registers);
                    protobufList2.add(arrayDecoders$Registers.object1);
                    while (decodeGroupField < i2) {
                        int decodeVarint3225 = Cookie.Companion.decodeVarint32(bArr, decodeGroupField, arrayDecoders$Registers);
                        if (i3 != arrayDecoders$Registers.int1) {
                            return decodeGroupField;
                        }
                        decodeGroupField = Cookie.Companion.decodeGroupField(messageFieldSchema, bArr, decodeVarint3225, i2, i38, arrayDecoders$Registers);
                        protobufList2.add(arrayDecoders$Registers.object1);
                    }
                    return decodeGroupField;
                }
            default:
                return i;
        }
        return i7;
    }

    public final void setFieldPresent(int i, Object obj) {
        int i2 = this.buffer[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        UnsafeUtil.putInt((1 << (i2 >>> 20)) | UnsafeUtil.MEMORY_ACCESSOR.getInt(j, obj), j, obj);
    }

    public final void setOneofPresent(int i, int i2, Object obj) {
        UnsafeUtil.putInt(i, this.buffer[i2 + 2] & 1048575, obj);
    }

    public final int slowPositionForFieldNumber(int i, int i2) {
        int[] iArr = this.buffer;
        int length = (iArr.length / 3) - 1;
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

    public final void storeMessageField(Object obj, Object obj2, int i) {
        UNSAFE.putObject(obj, typeAndOffsetAt(i) & 1048575, obj2);
        setFieldPresent(i, obj);
    }

    public final void storeOneofMessageField(int i, Object obj, Object obj2, int i2) {
        UNSAFE.putObject(obj, typeAndOffsetAt(i2) & 1048575, obj2);
        setOneofPresent(i, i2, obj);
    }

    public final int typeAndOffsetAt(int i) {
        return this.buffer[i + 1];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v7 */
    public final void writeFieldsInAscendingOrder(Object obj, ManifestSchemaFactory manifestSchemaFactory) {
        boolean z;
        int i;
        int i2;
        int i3;
        boolean z2;
        int i4;
        int i5;
        int i6;
        MessageSchema messageSchema = this;
        CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder = (CodedOutputStream$ArrayEncoder) manifestSchemaFactory.messageInfoFactory;
        int[] iArr = messageSchema.buffer;
        int length = iArr.length;
        Unsafe unsafe = UNSAFE;
        int i7 = 1048575;
        int i8 = 1048575;
        int i9 = 0;
        int i10 = 0;
        while (i9 < length) {
            int typeAndOffsetAt = messageSchema.typeAndOffsetAt(i9);
            int i11 = iArr[i9];
            int type = type(typeAndOffsetAt);
            if (type <= 17) {
                int i12 = iArr[i9 + 2];
                z = 1;
                int i13 = i12 & i7;
                if (i13 != i8) {
                    i10 = i13 == i7 ? 0 : unsafe.getInt(obj, i13);
                    i8 = i13;
                }
                i = typeAndOffsetAt;
                i2 = 1 << (i12 >>> 20);
            } else {
                z = 1;
                i = typeAndOffsetAt;
                i2 = 0;
            }
            long j = i & i7;
            int[] iArr2 = iArr;
            int i14 = 2;
            switch (type) {
                case 0:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        double d = UnsafeUtil.MEMORY_ACCESSOR.getDouble(j, obj);
                        codedOutputStream$ArrayEncoder.getClass();
                        codedOutputStream$ArrayEncoder.writeFixed64(i11, Double.doubleToRawLongBits(d));
                    }
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 1:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        float f = UnsafeUtil.MEMORY_ACCESSOR.getFloat(j, obj);
                        codedOutputStream$ArrayEncoder.getClass();
                        codedOutputStream$ArrayEncoder.writeFixed32(i11, Float.floatToRawIntBits(f));
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 2:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        codedOutputStream$ArrayEncoder.writeUInt64(i11, unsafe.getLong(obj, j));
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 3:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        codedOutputStream$ArrayEncoder.writeUInt64(i11, unsafe.getLong(obj, j));
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 4:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        codedOutputStream$ArrayEncoder.writeInt32(i11, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 5:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        codedOutputStream$ArrayEncoder.writeFixed64(i11, unsafe.getLong(obj, j));
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 6:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        codedOutputStream$ArrayEncoder.writeFixed32(i11, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 7:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        boolean z3 = UnsafeUtil.MEMORY_ACCESSOR.getBoolean(j, obj);
                        codedOutputStream$ArrayEncoder.writeTag(i11, 0);
                        codedOutputStream$ArrayEncoder.write(z3 ? (byte) 1 : (byte) 0);
                        messageSchema = this;
                        i9 += 3;
                        iArr = iArr2;
                        i7 = 1048575;
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 8:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof String) {
                            String str = (String) object;
                            codedOutputStream$ArrayEncoder.writeTag(i11, 2);
                            byte[] bArr = codedOutputStream$ArrayEncoder.buffer;
                            int i15 = codedOutputStream$ArrayEncoder.position;
                            try {
                                int computeUInt32SizeNoTag = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(str.length() * 3);
                                int computeUInt32SizeNoTag2 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(str.length());
                                if (computeUInt32SizeNoTag2 == computeUInt32SizeNoTag) {
                                    int i16 = i15 + computeUInt32SizeNoTag2;
                                    codedOutputStream$ArrayEncoder.position = i16;
                                    int encodeUtf8 = Utf8.processor.encodeUtf8(str, bArr, i16, bArr.length - i16);
                                    codedOutputStream$ArrayEncoder.position = i15;
                                    codedOutputStream$ArrayEncoder.writeUInt32NoTag((encodeUtf8 - i15) - computeUInt32SizeNoTag2);
                                    codedOutputStream$ArrayEncoder.position = encodeUtf8;
                                } else {
                                    codedOutputStream$ArrayEncoder.writeUInt32NoTag(Utf8.encodedLength(str));
                                    int i17 = codedOutputStream$ArrayEncoder.position;
                                    codedOutputStream$ArrayEncoder.position = Utf8.processor.encodeUtf8(str, bArr, i17, bArr.length - i17);
                                }
                            } catch (IndexOutOfBoundsException e) {
                                throw new CodedOutputStream$OutOfSpaceException("CodedOutputStream was writing to a flat byte array and ran out of space.", e);
                            }
                        } else {
                            ByteString byteString = (ByteString) object;
                            codedOutputStream$ArrayEncoder.writeTag(i11, 2);
                            codedOutputStream$ArrayEncoder.writeUInt32NoTag(byteString.size());
                            byteString.writeTo(codedOutputStream$ArrayEncoder);
                        }
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 9:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        manifestSchemaFactory.writeMessage(i11, unsafe.getObject(obj, j), messageSchema.getMessageFieldSchema(i9));
                    }
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 10:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        ByteString byteString2 = (ByteString) unsafe.getObject(obj, j);
                        codedOutputStream$ArrayEncoder.writeTag(i11, 2);
                        codedOutputStream$ArrayEncoder.writeUInt32NoTag(byteString2.size());
                        byteString2.writeTo(codedOutputStream$ArrayEncoder);
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 11:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        codedOutputStream$ArrayEncoder.writeUInt32(i11, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 12:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        codedOutputStream$ArrayEncoder.writeInt32(i11, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 13:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        codedOutputStream$ArrayEncoder.writeFixed32(i11, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 14:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        codedOutputStream$ArrayEncoder.writeFixed64(i11, unsafe.getLong(obj, j));
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 15:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        int i18 = unsafe.getInt(obj, j);
                        codedOutputStream$ArrayEncoder.writeUInt32(i11, (i18 >> 31) ^ (i18 << 1));
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 16:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        long j2 = unsafe.getLong(obj, j);
                        codedOutputStream$ArrayEncoder.writeUInt64(i11, (j2 >> 63) ^ (j2 << 1));
                    }
                    messageSchema = this;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 17:
                    if (messageSchema.isFieldPresent(obj, i9, i8, i10, i2)) {
                        Object object2 = unsafe.getObject(obj, j);
                        codedOutputStream$ArrayEncoder.writeTag(i11, 3);
                        messageSchema.getMessageFieldSchema(i9).writeTo((AbstractMessageLite) object2, manifestSchemaFactory);
                        codedOutputStream$ArrayEncoder.writeTag(i11, 4);
                    }
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 18:
                    i3 = i9;
                    z2 = false;
                    SchemaUtil.writeDoubleList(iArr2[i3], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    messageSchema = this;
                    i9 = i3;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 19:
                    i3 = i9;
                    z2 = false;
                    SchemaUtil.writeFloatList(iArr2[i3], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    messageSchema = this;
                    i9 = i3;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 20:
                    i3 = i9;
                    z2 = false;
                    SchemaUtil.writeInt64List(iArr2[i3], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    messageSchema = this;
                    i9 = i3;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 21:
                    i3 = i9;
                    z2 = false;
                    SchemaUtil.writeUInt64List(iArr2[i3], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    messageSchema = this;
                    i9 = i3;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 22:
                    i3 = i9;
                    z2 = false;
                    SchemaUtil.writeInt32List(iArr2[i3], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    messageSchema = this;
                    i9 = i3;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 23:
                    i3 = i9;
                    z2 = false;
                    SchemaUtil.writeFixed64List(iArr2[i3], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    messageSchema = this;
                    i9 = i3;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 24:
                    i3 = i9;
                    z2 = false;
                    SchemaUtil.writeFixed32List(iArr2[i3], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    messageSchema = this;
                    i9 = i3;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 25:
                    i3 = i9;
                    z2 = false;
                    SchemaUtil.writeBoolList(iArr2[i3], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    messageSchema = this;
                    i9 = i3;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 26:
                    int i19 = i8;
                    int i20 = iArr2[i9];
                    List list = (List) unsafe.getObject(obj, j);
                    Class cls = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    if (list != null && !list.isEmpty()) {
                        int i21 = 0;
                        while (i21 < list.size()) {
                            String str2 = (String) list.get(i21);
                            codedOutputStream$ArrayEncoder.writeTag(i20, i14);
                            byte[] bArr2 = codedOutputStream$ArrayEncoder.buffer;
                            int i22 = codedOutputStream$ArrayEncoder.position;
                            try {
                                int computeUInt32SizeNoTag3 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(str2.length() * 3);
                                int computeUInt32SizeNoTag4 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(str2.length());
                                if (computeUInt32SizeNoTag4 == computeUInt32SizeNoTag3) {
                                    int i23 = i22 + computeUInt32SizeNoTag4;
                                    codedOutputStream$ArrayEncoder.position = i23;
                                    i4 = i9;
                                    int encodeUtf82 = Utf8.processor.encodeUtf8(str2, bArr2, i23, bArr2.length - i23);
                                    codedOutputStream$ArrayEncoder.position = i22;
                                    codedOutputStream$ArrayEncoder.writeUInt32NoTag((encodeUtf82 - i22) - computeUInt32SizeNoTag4);
                                    codedOutputStream$ArrayEncoder.position = encodeUtf82;
                                } else {
                                    i4 = i9;
                                    codedOutputStream$ArrayEncoder.writeUInt32NoTag(Utf8.encodedLength(str2));
                                    int i24 = codedOutputStream$ArrayEncoder.position;
                                    codedOutputStream$ArrayEncoder.position = Utf8.processor.encodeUtf8(str2, bArr2, i24, bArr2.length - i24);
                                }
                                i21++;
                                i14 = 2;
                                i9 = i4;
                            } catch (IndexOutOfBoundsException e2) {
                                throw new CodedOutputStream$OutOfSpaceException("CodedOutputStream was writing to a flat byte array and ran out of space.", e2);
                            }
                        }
                    }
                    i3 = i9;
                    messageSchema = this;
                    i8 = i19;
                    i9 = i3;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                    break;
                case 27:
                    i5 = i8;
                    int i25 = iArr2[i9];
                    List list2 = (List) unsafe.getObject(obj, j);
                    Schema messageFieldSchema = messageSchema.getMessageFieldSchema(i9);
                    Class cls2 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i26 = 0; i26 < list2.size(); i26++) {
                            manifestSchemaFactory.writeMessage(i25, list2.get(i26), messageFieldSchema);
                        }
                    }
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                    break;
                case 28:
                    i5 = i8;
                    int i27 = iArr2[i9];
                    List list3 = (List) unsafe.getObject(obj, j);
                    Class cls3 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    if (list3 != null && !list3.isEmpty()) {
                        for (int i28 = 0; i28 < list3.size(); i28++) {
                            ByteString byteString3 = (ByteString) list3.get(i28);
                            codedOutputStream$ArrayEncoder.writeTag(i27, 2);
                            codedOutputStream$ArrayEncoder.writeUInt32NoTag(byteString3.size());
                            byteString3.writeTo(codedOutputStream$ArrayEncoder);
                        }
                    }
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                    break;
                case 29:
                    i6 = i8;
                    SchemaUtil.writeUInt32List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i8 = i6;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 30:
                    i6 = i8;
                    SchemaUtil.writeEnumList(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i8 = i6;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 31:
                    i6 = i8;
                    SchemaUtil.writeSFixed32List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i8 = i6;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 32:
                    i6 = i8;
                    SchemaUtil.writeSFixed64List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i8 = i6;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 33:
                    i6 = i8;
                    SchemaUtil.writeSInt32List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i8 = i6;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 34:
                    i6 = i8;
                    SchemaUtil.writeSInt64List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    i8 = i6;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 35:
                    i5 = i8;
                    SchemaUtil.writeDoubleList(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, z);
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 36:
                    i5 = i8;
                    SchemaUtil.writeFloatList(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, z);
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.SETPROP /* 37 */:
                    i5 = i8;
                    SchemaUtil.writeInt64List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, z);
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 38:
                    i5 = i8;
                    SchemaUtil.writeUInt64List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, z);
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.GETELEM /* 39 */:
                    i5 = i8;
                    SchemaUtil.writeInt32List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, z);
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.GETELEM_SUPER /* 40 */:
                    i5 = i8;
                    SchemaUtil.writeFixed64List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, z);
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.SETELEM /* 41 */:
                    i5 = i8;
                    SchemaUtil.writeFixed32List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, z);
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 42:
                    i5 = i8;
                    SchemaUtil.writeBoolList(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, z);
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.CALL /* 43 */:
                    i5 = i8;
                    SchemaUtil.writeUInt32List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, z);
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.NAME /* 44 */:
                    i5 = i8;
                    SchemaUtil.writeEnumList(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, z);
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.NUMBER /* 45 */:
                    i5 = i8;
                    SchemaUtil.writeSFixed32List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, z);
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.STRING /* 46 */:
                    i5 = i8;
                    SchemaUtil.writeSFixed64List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, z);
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.NULL /* 47 */:
                    i5 = i8;
                    SchemaUtil.writeSInt32List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, z);
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.THIS /* 48 */:
                    i5 = i8;
                    SchemaUtil.writeSInt64List(iArr2[i9], (List) unsafe.getObject(obj, j), manifestSchemaFactory, z);
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.FALSE /* 49 */:
                    i5 = i8;
                    int i29 = iArr2[i9];
                    List list4 = (List) unsafe.getObject(obj, j);
                    Schema messageFieldSchema2 = messageSchema.getMessageFieldSchema(i9);
                    Class cls4 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i30 = 0; i30 < list4.size(); i30++) {
                            AbstractMessageLite abstractMessageLite = (AbstractMessageLite) list4.get(i30);
                            codedOutputStream$ArrayEncoder.writeTag(i29, 3);
                            messageFieldSchema2.writeTo(abstractMessageLite, manifestSchemaFactory);
                            codedOutputStream$ArrayEncoder.writeTag(i29, 4);
                        }
                    }
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                    break;
                case 50:
                    i5 = i8;
                    if (unsafe.getObject(obj, j) != null) {
                        Object mapFieldDefaultEntry = messageSchema.getMapFieldDefaultEntry(i9);
                        messageSchema.mapFieldSchema.getClass();
                        Modifier.CC.m(mapFieldDefaultEntry);
                        throw null;
                    }
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.SHEQ /* 51 */:
                    i5 = i8;
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        double doubleValue = ((Double) UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj)).doubleValue();
                        codedOutputStream$ArrayEncoder.getClass();
                        codedOutputStream$ArrayEncoder.writeFixed64(i11, Double.doubleToRawLongBits(doubleValue));
                    }
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.SHNE /* 52 */:
                    i5 = i8;
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        float floatValue = ((Float) UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj)).floatValue();
                        codedOutputStream$ArrayEncoder.getClass();
                        codedOutputStream$ArrayEncoder.writeFixed32(i11, Float.floatToRawIntBits(floatValue));
                    }
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.REGEXP /* 53 */:
                    i5 = i8;
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        codedOutputStream$ArrayEncoder.writeUInt64(i11, oneofLongAt(j, obj));
                    }
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.BINDNAME /* 54 */:
                    i5 = i8;
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        codedOutputStream$ArrayEncoder.writeUInt64(i11, oneofLongAt(j, obj));
                    }
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.THROW /* 55 */:
                    i5 = i8;
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        codedOutputStream$ArrayEncoder.writeInt32(i11, oneofIntAt(j, obj));
                    }
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.RETHROW /* 56 */:
                    i5 = i8;
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        codedOutputStream$ArrayEncoder.writeFixed64(i11, oneofLongAt(j, obj));
                    }
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.IN /* 57 */:
                    i5 = i8;
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        codedOutputStream$ArrayEncoder.writeFixed32(i11, oneofIntAt(j, obj));
                    }
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.INSTANCEOF /* 58 */:
                    i5 = i8;
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        boolean booleanValue = ((Boolean) UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj)).booleanValue();
                        codedOutputStream$ArrayEncoder.writeTag(i11, 0);
                        codedOutputStream$ArrayEncoder.write(booleanValue ? (byte) 1 : (byte) 0);
                    }
                    i8 = i5;
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.LOCAL_LOAD /* 59 */:
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        Object object3 = unsafe.getObject(obj, j);
                        if (object3 instanceof String) {
                            String str3 = (String) object3;
                            codedOutputStream$ArrayEncoder.writeTag(i11, 2);
                            byte[] bArr3 = codedOutputStream$ArrayEncoder.buffer;
                            int i31 = codedOutputStream$ArrayEncoder.position;
                            try {
                                int computeUInt32SizeNoTag5 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(str3.length() * 3);
                                int computeUInt32SizeNoTag6 = CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(str3.length());
                                if (computeUInt32SizeNoTag6 == computeUInt32SizeNoTag5) {
                                    int i32 = i31 + computeUInt32SizeNoTag6;
                                    codedOutputStream$ArrayEncoder.position = i32;
                                    i5 = i8;
                                    int encodeUtf83 = Utf8.processor.encodeUtf8(str3, bArr3, i32, bArr3.length - i32);
                                    codedOutputStream$ArrayEncoder.position = i31;
                                    codedOutputStream$ArrayEncoder.writeUInt32NoTag((encodeUtf83 - i31) - computeUInt32SizeNoTag6);
                                    codedOutputStream$ArrayEncoder.position = encodeUtf83;
                                } else {
                                    i5 = i8;
                                    codedOutputStream$ArrayEncoder.writeUInt32NoTag(Utf8.encodedLength(str3));
                                    int i33 = codedOutputStream$ArrayEncoder.position;
                                    codedOutputStream$ArrayEncoder.position = Utf8.processor.encodeUtf8(str3, bArr3, i33, bArr3.length - i33);
                                }
                            } catch (IndexOutOfBoundsException e3) {
                                throw new CodedOutputStream$OutOfSpaceException("CodedOutputStream was writing to a flat byte array and ran out of space.", e3);
                            }
                        } else {
                            i5 = i8;
                            ByteString byteString4 = (ByteString) object3;
                            codedOutputStream$ArrayEncoder.writeTag(i11, 2);
                            codedOutputStream$ArrayEncoder.writeUInt32NoTag(byteString4.size());
                            byteString4.writeTo(codedOutputStream$ArrayEncoder);
                        }
                        i8 = i5;
                    }
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.GETVAR /* 60 */:
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        manifestSchemaFactory.writeMessage(i11, unsafe.getObject(obj, j), messageSchema.getMessageFieldSchema(i9));
                    }
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.SETVAR /* 61 */:
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        ByteString byteString5 = (ByteString) unsafe.getObject(obj, j);
                        codedOutputStream$ArrayEncoder.writeTag(i11, 2);
                        codedOutputStream$ArrayEncoder.writeUInt32NoTag(byteString5.size());
                        byteString5.writeTo(codedOutputStream$ArrayEncoder);
                    }
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.CATCH_SCOPE /* 62 */:
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        codedOutputStream$ArrayEncoder.writeUInt32(i11, oneofIntAt(j, obj));
                    }
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.ENUM_INIT_KEYS /* 63 */:
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        codedOutputStream$ArrayEncoder.writeInt32(i11, oneofIntAt(j, obj));
                    }
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 64:
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        codedOutputStream$ArrayEncoder.writeFixed32(i11, oneofIntAt(j, obj));
                    }
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.ENUM_INIT_ARRAY /* 65 */:
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        codedOutputStream$ArrayEncoder.writeFixed64(i11, oneofLongAt(j, obj));
                    }
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.ENUM_INIT_VALUES_IN_ORDER /* 66 */:
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        int oneofIntAt = oneofIntAt(j, obj);
                        codedOutputStream$ArrayEncoder.writeUInt32(i11, (oneofIntAt >> 31) ^ (oneofIntAt << 1));
                    }
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case 67:
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        long oneofLongAt = oneofLongAt(j, obj);
                        codedOutputStream$ArrayEncoder.writeUInt64(i11, (oneofLongAt >> 63) ^ (oneofLongAt << z));
                    }
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                case Token.ENUM_ID /* 68 */:
                    if (messageSchema.isOneofPresent(i11, i9, obj)) {
                        Object object4 = unsafe.getObject(obj, j);
                        codedOutputStream$ArrayEncoder.writeTag(i11, 3);
                        messageSchema.getMessageFieldSchema(i9).writeTo((AbstractMessageLite) object4, manifestSchemaFactory);
                        codedOutputStream$ArrayEncoder.writeTag(i11, 4);
                    }
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
                default:
                    i9 += 3;
                    iArr = iArr2;
                    i7 = 1048575;
            }
        }
        messageSchema.unknownFieldSchema.getClass();
        ((GeneratedMessageLite) obj).unknownFields.writeTo(manifestSchemaFactory);
    }

    @Override // com.google.protobuf.Schema
    public final void writeTo(Object obj, ManifestSchemaFactory manifestSchemaFactory) {
        writeFieldsInAscendingOrder(obj, manifestSchemaFactory);
    }

    public final boolean isFieldPresent(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return isFieldPresent(i, obj);
        }
        return (i3 & i4) != 0;
    }

    @Override // com.google.protobuf.Schema
    public final void mergeFrom(Object obj, byte[] bArr, int i, int i2, ArrayDecoders$Registers arrayDecoders$Registers) {
        parseMessage(obj, bArr, i, i2, 0, arrayDecoders$Registers);
    }
}
