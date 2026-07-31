package androidx.glance.appwidget.protobuf;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.input.GapBuffer;
import androidx.glance.appwidget.protobuf.Internal;
import androidx.glance.appwidget.protobuf.UnsafeUtil;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MessageSchema implements Schema {
    public static final int[] EMPTY_INT_ARRAY = new int[0];
    public static final Unsafe UNSAFE;
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

    static {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new UnsafeUtil.AnonymousClass1());
        } catch (Throwable unused) {
            unsafe = null;
        }
        UNSAFE = unsafe;
    }

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

    /* JADX WARN: Removed duplicated region for block: B:111:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0273  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.glance.appwidget.protobuf.MessageSchema newSchema(androidx.glance.appwidget.protobuf.RawMessageInfo r32, androidx.glance.appwidget.protobuf.NewInstanceSchemaLite r33, androidx.glance.appwidget.protobuf.ListFieldSchemaLite r34, androidx.glance.appwidget.protobuf.UnknownFieldSetLiteSchema r35, androidx.glance.appwidget.protobuf.ExtensionSchemaLite r36, androidx.glance.appwidget.protobuf.MapFieldSchemaLite r37) {
        /*
            Method dump skipped, instructions count: 1038
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.protobuf.MessageSchema.newSchema(androidx.glance.appwidget.protobuf.RawMessageInfo, androidx.glance.appwidget.protobuf.NewInstanceSchemaLite, androidx.glance.appwidget.protobuf.ListFieldSchemaLite, androidx.glance.appwidget.protobuf.UnknownFieldSetLiteSchema, androidx.glance.appwidget.protobuf.ExtensionSchemaLite, androidx.glance.appwidget.protobuf.MapFieldSchemaLite):androidx.glance.appwidget.protobuf.MessageSchema");
    }

    public static long offset(int i) {
        return i & 1048575;
    }

    public static int oneofIntAt(long j, Object obj) {
        return ((Integer) UnsafeUtil.getObject(j, obj)).intValue();
    }

    public static long oneofLongAt(long j, Object obj) {
        return ((Long) UnsafeUtil.getObject(j, obj)).longValue();
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
            StringBuilder m21m = Animation.CC.m21m("Field ", str, " for ");
            m21m.append(cls.getName());
            m21m.append(" not found. Known fields are ");
            m21m.append(Arrays.toString(declaredFields));
            throw new RuntimeException(m21m.toString());
        }
    }

    public static int type(int i) {
        return (i & 267386880) >>> 20;
    }

    public static void writeString(int i, Object obj, ManifestSchemaFactory manifestSchemaFactory) {
        if (!(obj instanceof String)) {
            manifestSchemaFactory.writeBytes(i, (ByteString$LiteralByteString) obj);
        } else {
            ((CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory).writeString(i, (String) obj);
        }
    }

    public final boolean arePresentForEquals(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2, int i) {
        return isFieldPresent(i, generatedMessageLite) == isFieldPresent(i, generatedMessageLite2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006c, code lost:
    
        if (androidx.glance.appwidget.protobuf.SchemaUtil.safeEquals(androidx.glance.appwidget.protobuf.UnsafeUtil.getObject(r7, r12), androidx.glance.appwidget.protobuf.UnsafeUtil.getObject(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0080, code lost:
    
        if (androidx.glance.appwidget.protobuf.UnsafeUtil.getLong(r7, r12) == androidx.glance.appwidget.protobuf.UnsafeUtil.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0092, code lost:
    
        if (androidx.glance.appwidget.protobuf.UnsafeUtil.getInt(r7, r12) == androidx.glance.appwidget.protobuf.UnsafeUtil.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a6, code lost:
    
        if (androidx.glance.appwidget.protobuf.UnsafeUtil.getLong(r7, r12) == androidx.glance.appwidget.protobuf.UnsafeUtil.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b8, code lost:
    
        if (androidx.glance.appwidget.protobuf.UnsafeUtil.getInt(r7, r12) == androidx.glance.appwidget.protobuf.UnsafeUtil.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ca, code lost:
    
        if (androidx.glance.appwidget.protobuf.UnsafeUtil.getInt(r7, r12) == androidx.glance.appwidget.protobuf.UnsafeUtil.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00dc, code lost:
    
        if (androidx.glance.appwidget.protobuf.UnsafeUtil.getInt(r7, r12) == androidx.glance.appwidget.protobuf.UnsafeUtil.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f2, code lost:
    
        if (androidx.glance.appwidget.protobuf.SchemaUtil.safeEquals(androidx.glance.appwidget.protobuf.UnsafeUtil.getObject(r7, r12), androidx.glance.appwidget.protobuf.UnsafeUtil.getObject(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0108, code lost:
    
        if (androidx.glance.appwidget.protobuf.SchemaUtil.safeEquals(androidx.glance.appwidget.protobuf.UnsafeUtil.getObject(r7, r12), androidx.glance.appwidget.protobuf.UnsafeUtil.getObject(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x011e, code lost:
    
        if (androidx.glance.appwidget.protobuf.SchemaUtil.safeEquals(androidx.glance.appwidget.protobuf.UnsafeUtil.getObject(r7, r12), androidx.glance.appwidget.protobuf.UnsafeUtil.getObject(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0132, code lost:
    
        if (r5.getBoolean(r7, r12) == r5.getBoolean(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0144, code lost:
    
        if (androidx.glance.appwidget.protobuf.UnsafeUtil.getInt(r7, r12) == androidx.glance.appwidget.protobuf.UnsafeUtil.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0158, code lost:
    
        if (androidx.glance.appwidget.protobuf.UnsafeUtil.getLong(r7, r12) == androidx.glance.appwidget.protobuf.UnsafeUtil.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x016a, code lost:
    
        if (androidx.glance.appwidget.protobuf.UnsafeUtil.getInt(r7, r12) == androidx.glance.appwidget.protobuf.UnsafeUtil.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x017d, code lost:
    
        if (androidx.glance.appwidget.protobuf.UnsafeUtil.getLong(r7, r12) == androidx.glance.appwidget.protobuf.UnsafeUtil.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0190, code lost:
    
        if (androidx.glance.appwidget.protobuf.UnsafeUtil.getLong(r7, r12) == androidx.glance.appwidget.protobuf.UnsafeUtil.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01ab, code lost:
    
        if (java.lang.Float.floatToIntBits(r5.getFloat(r7, r12)) == java.lang.Float.floatToIntBits(r5.getFloat(r7, r13))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01c8, code lost:
    
        if (java.lang.Double.doubleToLongBits(r5.getDouble(r7, r12)) == java.lang.Double.doubleToLongBits(r5.getDouble(r7, r13))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0037, code lost:
    
        if (androidx.glance.appwidget.protobuf.SchemaUtil.safeEquals(androidx.glance.appwidget.protobuf.UnsafeUtil.getObject(r7, r12), androidx.glance.appwidget.protobuf.UnsafeUtil.getObject(r7, r13)) != false) goto L105;
     */
    @Override // androidx.glance.appwidget.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(androidx.glance.appwidget.protobuf.GeneratedMessageLite r12, androidx.glance.appwidget.protobuf.GeneratedMessageLite r13) {
        /*
            Method dump skipped, instructions count: 624
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.protobuf.MessageSchema.equals(androidx.glance.appwidget.protobuf.GeneratedMessageLite, androidx.glance.appwidget.protobuf.GeneratedMessageLite):boolean");
    }

    public final void filterMapUnknownEnumValues(int i, Object obj, Object obj2) {
        int i2 = this.buffer[i];
        if (UnsafeUtil.getObject(typeAndOffsetAt(i) & 1048575, obj) == null) {
            return;
        }
        getEnumFieldVerifier(i);
    }

    public final void getEnumFieldVerifier(int i) {
        if (this.objects[((i / 3) * 2) + 1] == null) {
            return;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m$1();
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

    @Override // androidx.glance.appwidget.protobuf.Schema
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
        int computeTagSize11;
        int size2;
        int computeTagSize12;
        int computeUInt32SizeNoTag2;
        int i2;
        int computeTagSize13;
        int computeTagSize14;
        int computeUInt64SizeNoTag3;
        int computeTagSize15;
        int computeUInt64SizeNoTag4;
        int i3;
        MessageSchema messageSchema = this;
        GeneratedMessageLite generatedMessageLite2 = generatedMessageLite;
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
            Unsafe unsafe = UNSAFE;
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
                        computeTagSize = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize + 8;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 1:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeTagSize2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize2 + 4;
                        i6 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    i4 += 3;
                case 2:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        long j2 = unsafe.getLong(generatedMessageLite2, j);
                        computeTagSize3 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(j2);
                        i6 += computeUInt64SizeNoTag + computeTagSize3;
                    }
                    messageSchema = this;
                    i4 += 3;
                case 3:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        long j3 = unsafe.getLong(generatedMessageLite2, j);
                        computeTagSize3 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(j3);
                        i6 += computeUInt64SizeNoTag + computeTagSize3;
                    }
                    messageSchema = this;
                    i4 += 3;
                case 4:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        int i11 = unsafe.getInt(generatedMessageLite2, j);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(i11);
                        computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize4;
                        i6 += computeBytesSize;
                    }
                    messageSchema = this;
                    i4 += 3;
                case 5:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeTagSize5 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize5 + 8;
                        i6 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    i4 += 3;
                case 6:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeTagSize2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize2 + 4;
                        i6 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    i4 += 3;
                case 7:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeTagSize6 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) + 1;
                        i6 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    i4 += 3;
                case 8:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        Object object = unsafe.getObject(generatedMessageLite2, j);
                        i6 = (object instanceof ByteString$LiteralByteString ? CodedOutputStream$OutputStreamEncoder.computeBytesSize(i8, (ByteString$LiteralByteString) object) : CodedOutputStream$OutputStreamEncoder.computeStringSizeNoTag((String) object) + CodedOutputStream$OutputStreamEncoder.computeTagSize(i8)) + i6;
                    }
                    messageSchema = this;
                    i4 += 3;
                case 9:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        Object object2 = unsafe.getObject(generatedMessageLite2, j);
                        Schema messageFieldSchema = messageSchema.getMessageFieldSchema(i4);
                        Class cls = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        computeTagSize7 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        serializedSize = ((AbstractMessageLite) object2).getSerializedSize(messageFieldSchema);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(serializedSize);
                        i3 = computeUInt32SizeNoTag + serializedSize + computeTagSize7;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 10:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeBytesSize = CodedOutputStream$OutputStreamEncoder.computeBytesSize(i8, (ByteString$LiteralByteString) unsafe.getObject(generatedMessageLite2, j));
                        i6 += computeBytesSize;
                    }
                    messageSchema = this;
                    i4 += 3;
                case 11:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        int i12 = unsafe.getInt(generatedMessageLite2, j);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(i12);
                        computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize4;
                        i6 += computeBytesSize;
                    }
                    messageSchema = this;
                    i4 += 3;
                case 12:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        int i13 = unsafe.getInt(generatedMessageLite2, j);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(i13);
                        computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize4;
                        i6 += computeBytesSize;
                    }
                    messageSchema = this;
                    i4 += 3;
                case IMAGE_VALUE:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeTagSize2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize2 + 4;
                        i6 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    i4 += 3;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        computeTagSize5 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize6 = computeTagSize5 + 8;
                        i6 += computeTagSize6;
                    }
                    messageSchema = this;
                    generatedMessageLite2 = generatedMessageLite;
                    i4 += 3;
                case 15:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        int i14 = unsafe.getInt(generatedMessageLite2, j);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag((i14 >> 31) ^ (i14 << 1));
                        computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize4;
                        i6 += computeBytesSize;
                    }
                    messageSchema = this;
                    i4 += 3;
                case LAZY_VERTICAL_GRID_VALUE:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        long j4 = unsafe.getLong(generatedMessageLite2, j);
                        computeTagSize3 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag((j4 << 1) ^ (j4 >> 63));
                        i6 += computeUInt64SizeNoTag + computeTagSize3;
                    }
                    messageSchema = this;
                    i4 += 3;
                case VERTICAL_GRID_ITEM_VALUE:
                    if (messageSchema.isFieldPresent(generatedMessageLite2, i4, i7, i5, i)) {
                        AbstractMessageLite abstractMessageLite = (AbstractMessageLite) unsafe.getObject(generatedMessageLite2, j);
                        Schema messageFieldSchema2 = messageSchema.getMessageFieldSchema(i4);
                        computeTagSize8 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) * 2;
                        serializedSize2 = abstractMessageLite.getSerializedSize(messageFieldSchema2);
                        computeSizeFixed64List = serializedSize2 + computeTagSize8;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case RADIO_GROUP_VALUE:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed64List((List) unsafe.getObject(generatedMessageLite2, j), i8);
                    i6 += computeSizeFixed64List;
                    i4 += 3;
                case RADIO_BUTTON_VALUE:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed32List((List) unsafe.getObject(generatedMessageLite2, j), i8);
                    i6 += computeSizeFixed64List;
                    i4 += 3;
                case RADIO_ROW_VALUE:
                    List list = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls2 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    if (list.size() != 0) {
                        computeTagSize9 = (CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) * list.size()) + SchemaUtil.computeSizeInt64ListNoTag(list);
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case RADIO_COLUMN_VALUE:
                    List list2 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls3 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list2.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeUInt64ListNoTag(list2);
                        computeTagSize10 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize9 = (computeTagSize10 * size) + computeSizeUInt64ListNoTag;
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case SIZE_BOX_VALUE:
                    List list3 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls4 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list3.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeInt32ListNoTag(list3);
                        computeTagSize10 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize9 = (computeTagSize10 * size) + computeSizeUInt64ListNoTag;
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 23:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed64List((List) unsafe.getObject(generatedMessageLite2, j), i8);
                    i6 += computeSizeFixed64List;
                    i4 += 3;
                case 24:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed32List((List) unsafe.getObject(generatedMessageLite2, j), i8);
                    i6 += computeSizeFixed64List;
                    i4 += 3;
                case 25:
                    List list4 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls5 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size3 = list4.size();
                    i6 += size3 == 0 ? 0 : (CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) + 1) * size3;
                    i4 += 3;
                case 26:
                    List list5 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls6 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size4 = list5.size();
                    if (size4 != 0) {
                        computeTagSize9 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) * size4;
                        for (int i15 = 0; i15 < size4; i15++) {
                            Object obj = list5.get(i15);
                            if (obj instanceof ByteString$LiteralByteString) {
                                int size5 = ((ByteString$LiteralByteString) obj).size();
                                computeTagSize9 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size5) + size5 + computeTagSize9;
                            } else {
                                computeTagSize9 = CodedOutputStream$OutputStreamEncoder.computeStringSizeNoTag((String) obj) + computeTagSize9;
                            }
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
                    Class cls7 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size6 = list6.size();
                    if (size6 == 0) {
                        computeTagSize11 = 0;
                    } else {
                        computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) * size6;
                        for (int i16 = 0; i16 < size6; i16++) {
                            int serializedSize3 = ((AbstractMessageLite) list6.get(i16)).getSerializedSize(messageFieldSchema3);
                            computeTagSize11 += CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(serializedSize3) + serializedSize3;
                        }
                    }
                    i6 += computeTagSize11;
                    i4 += 3;
                case 28:
                    List list7 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls8 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size7 = list7.size();
                    if (size7 != 0) {
                        computeTagSize9 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) * size7;
                        for (int i17 = 0; i17 < list7.size(); i17++) {
                            int size8 = ((ByteString$LiteralByteString) list7.get(i17)).size();
                            computeTagSize9 += CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size8) + size8;
                        }
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 29:
                    List list8 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls9 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list8.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeUInt32ListNoTag(list8);
                        computeTagSize10 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize9 = (computeTagSize10 * size) + computeSizeUInt64ListNoTag;
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 30:
                    List list9 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls10 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list9.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeEnumListNoTag(list9);
                        computeTagSize10 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize9 = (computeTagSize10 * size) + computeSizeUInt64ListNoTag;
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 31:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed32List((List) unsafe.getObject(generatedMessageLite2, j), i8);
                    i6 += computeSizeFixed64List;
                    i4 += 3;
                case 32:
                    computeSizeFixed64List = SchemaUtil.computeSizeFixed64List((List) unsafe.getObject(generatedMessageLite2, j), i8);
                    i6 += computeSizeFixed64List;
                    i4 += 3;
                case 33:
                    List list10 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls11 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list10.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeSInt32ListNoTag(list10);
                        computeTagSize10 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize9 = (computeTagSize10 * size) + computeSizeUInt64ListNoTag;
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 34:
                    List list11 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls12 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size = list11.size();
                    if (size != 0) {
                        computeSizeUInt64ListNoTag = SchemaUtil.computeSizeSInt64ListNoTag(list11);
                        computeTagSize10 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeTagSize9 = (computeTagSize10 * size) + computeSizeUInt64ListNoTag;
                        i6 += computeTagSize9;
                        i4 += 3;
                    }
                    computeTagSize9 = 0;
                    i6 += computeTagSize9;
                    i4 += 3;
                case 35:
                    List list12 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls13 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list12.size() * 8;
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag2 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 36:
                    List list13 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls14 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list13.size() * 4;
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag2 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 37:
                    size2 = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag2 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 38:
                    size2 = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag2 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 39:
                    size2 = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag2 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 40:
                    List list14 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls15 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list14.size() * 8;
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag2 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 41:
                    List list15 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls16 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list15.size() * 4;
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag2 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 42:
                    List list16 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls17 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list16.size();
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag2 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 43:
                    size2 = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag2 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 44:
                    size2 = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag2 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 45:
                    List list17 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls18 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list17.size() * 4;
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag2 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 46:
                    List list18 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Class cls19 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    size2 = list18.size() * 8;
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag2 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 47:
                    size2 = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag2 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 48:
                    size2 = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(generatedMessageLite2, j));
                    if (size2 > 0) {
                        computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt32SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(size2);
                        i6 += computeUInt32SizeNoTag2 + computeTagSize12 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 49:
                    List list19 = (List) unsafe.getObject(generatedMessageLite2, j);
                    Schema messageFieldSchema4 = messageSchema.getMessageFieldSchema(i4);
                    Class cls20 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size9 = list19.size();
                    if (size9 == 0) {
                        i2 = 0;
                    } else {
                        i2 = 0;
                        for (int i18 = 0; i18 < size9; i18++) {
                            i2 += ((AbstractMessageLite) list19.get(i18)).getSerializedSize(messageFieldSchema4) + (CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) * 2);
                        }
                    }
                    i6 += i2;
                    i4 += 3;
                case 50:
                    Object object3 = unsafe.getObject(generatedMessageLite2, j);
                    Object obj2 = messageSchema.objects[(i4 / 3) * 2];
                    messageSchema.mapFieldSchema.getClass();
                    MapFieldLite mapFieldLite = (MapFieldLite) object3;
                    if (obj2 != null) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m$1();
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
                case 51:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeTagSize = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize + 8;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 52:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeTagSize13 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize13 + 4;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 53:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        long oneofLongAt = oneofLongAt(j, generatedMessageLite2);
                        computeTagSize14 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(oneofLongAt);
                        i3 = computeUInt64SizeNoTag3 + computeTagSize14;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 54:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        long oneofLongAt2 = oneofLongAt(j, generatedMessageLite2);
                        computeTagSize14 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(oneofLongAt2);
                        i3 = computeUInt64SizeNoTag3 + computeTagSize14;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 55:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        int oneofIntAt = oneofIntAt(j, generatedMessageLite2);
                        computeTagSize15 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag4 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(oneofIntAt);
                        computeSizeFixed64List = computeUInt64SizeNoTag4 + computeTagSize15;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 56:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeTagSize = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize + 8;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 57:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeTagSize13 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize13 + 4;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 58:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeSizeFixed64List = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) + 1;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 59:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        Object object4 = unsafe.getObject(generatedMessageLite2, j);
                        i6 = (object4 instanceof ByteString$LiteralByteString ? CodedOutputStream$OutputStreamEncoder.computeBytesSize(i8, (ByteString$LiteralByteString) object4) : CodedOutputStream$OutputStreamEncoder.computeStringSizeNoTag((String) object4) + CodedOutputStream$OutputStreamEncoder.computeTagSize(i8)) + i6;
                    }
                    i4 += 3;
                case 60:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        Object object5 = unsafe.getObject(generatedMessageLite2, j);
                        Schema messageFieldSchema5 = messageSchema.getMessageFieldSchema(i4);
                        Class cls21 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        computeTagSize7 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        serializedSize = ((AbstractMessageLite) object5).getSerializedSize(messageFieldSchema5);
                        computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(serializedSize);
                        i3 = computeUInt32SizeNoTag + serializedSize + computeTagSize7;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 61:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeSizeFixed64List = CodedOutputStream$OutputStreamEncoder.computeBytesSize(i8, (ByteString$LiteralByteString) unsafe.getObject(generatedMessageLite2, j));
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 62:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        int oneofIntAt2 = oneofIntAt(j, generatedMessageLite2);
                        computeTagSize15 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag4 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(oneofIntAt2);
                        computeSizeFixed64List = computeUInt64SizeNoTag4 + computeTagSize15;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 63:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        int oneofIntAt3 = oneofIntAt(j, generatedMessageLite2);
                        computeTagSize15 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag4 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(oneofIntAt3);
                        computeSizeFixed64List = computeUInt64SizeNoTag4 + computeTagSize15;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 64:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeTagSize13 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize13 + 4;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 65:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        computeTagSize = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeSizeFixed64List = computeTagSize + 8;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 66:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        int oneofIntAt4 = oneofIntAt(j, generatedMessageLite2);
                        computeTagSize15 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag4 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag((oneofIntAt4 >> 31) ^ (oneofIntAt4 << 1));
                        computeSizeFixed64List = computeUInt64SizeNoTag4 + computeTagSize15;
                        i6 += computeSizeFixed64List;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 67:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        long oneofLongAt3 = oneofLongAt(j, generatedMessageLite2);
                        computeTagSize14 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag((oneofLongAt3 << 1) ^ (oneofLongAt3 >> 63));
                        i3 = computeUInt64SizeNoTag3 + computeTagSize14;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 68:
                    if (messageSchema.isOneofPresent(i8, i4, generatedMessageLite2)) {
                        AbstractMessageLite abstractMessageLite2 = (AbstractMessageLite) unsafe.getObject(generatedMessageLite2, j);
                        Schema messageFieldSchema6 = messageSchema.getMessageFieldSchema(i4);
                        computeTagSize8 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i8) * 2;
                        serializedSize2 = abstractMessageLite2.getSerializedSize(messageFieldSchema6);
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

    /* JADX WARN: Code restructure failed: missing block: B:103:0x01f0, code lost:
    
        if (r4 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d5, code lost:
    
        if (r4 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00d7, code lost:
    
        r8 = 1231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00d8, code lost:
    
        r3 = r8 + r3;
     */
    @Override // androidx.glance.appwidget.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int hashCode(androidx.glance.appwidget.protobuf.GeneratedMessageLite r12) {
        /*
            Method dump skipped, instructions count: 746
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.protobuf.MessageSchema.hashCode(androidx.glance.appwidget.protobuf.GeneratedMessageLite):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00f1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00f0 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isFieldPresent(int r8, java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.protobuf.MessageSchema.isFieldPresent(int, java.lang.Object):boolean");
    }

    @Override // androidx.glance.appwidget.protobuf.Schema
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
                    if (isFieldPresent(obj, i2, i, i3, i11) && !getMessageFieldSchema(i2).isInitialized(UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj))) {
                    }
                    i6++;
                    i4 = i;
                    i5 = i3;
                } else {
                    if (type != 27) {
                        if (type == 60 || type == 68) {
                            if (isOneofPresent(i8, i2, obj) && !getMessageFieldSchema(i2).isInitialized(UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj))) {
                            }
                        } else if (type != 49) {
                            if (type != 50) {
                                continue;
                            } else {
                                Object object = UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj);
                                this.mapFieldSchema.getClass();
                                if (!((MapFieldLite) object).isEmpty()) {
                                    Modifier.CC.m(this.objects[(i2 / 3) * 2]);
                                    throw null;
                                }
                            }
                        }
                        i6++;
                        i4 = i;
                        i5 = i3;
                    }
                    List list = (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj);
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
        return UnsafeUtil.getInt((long) (this.buffer[i2 + 2] & 1048575), obj) == i;
    }

    @Override // androidx.glance.appwidget.protobuf.Schema
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
                Unsafe unsafe = UNSAFE;
                if (type != 9) {
                    if (type != 60 && type != 68) {
                        switch (type) {
                            case RADIO_GROUP_VALUE:
                            case RADIO_BUTTON_VALUE:
                            case RADIO_ROW_VALUE:
                            case RADIO_COLUMN_VALUE:
                            case SIZE_BOX_VALUE:
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
                                ProtobufArrayList protobufArrayList = (ProtobufArrayList) ((Internal.ProtobufList) UnsafeUtil.getObject(j, obj));
                                if (protobufArrayList.isMutable) {
                                    protobufArrayList.isMutable = false;
                                    break;
                                } else {
                                    break;
                                }
                            case 50:
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
                        getMessageFieldSchema(i).makeImmutable(unsafe.getObject(obj, j));
                    }
                }
                if (isFieldPresent(i, obj)) {
                    getMessageFieldSchema(i).makeImmutable(unsafe.getObject(obj, j));
                }
            }
            this.unknownFieldSchema.getClass();
            UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) obj).unknownFields;
            if (unknownFieldSetLite.isMutable) {
                unknownFieldSetLite.isMutable = false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x074d A[Catch: all -> 0x0485, TryCatch #2 {all -> 0x0485, blocks: (B:35:0x0748, B:37:0x074d, B:38:0x0752, B:130:0x0480, B:133:0x0488, B:134:0x049d, B:135:0x04b2, B:136:0x04c7, B:137:0x04dc, B:138:0x04f1, B:139:0x0506, B:140:0x051b, B:141:0x0530, B:142:0x0555, B:143:0x0571, B:144:0x058e, B:145:0x05ab, B:146:0x05c8, B:147:0x05e8, B:148:0x0605, B:149:0x061a, B:150:0x063f, B:151:0x064c, B:152:0x066b, B:153:0x0688, B:154:0x06a5, B:155:0x06c2, B:156:0x06df, B:157:0x06fc, B:158:0x071a, B:163:0x0738), top: B:34:0x0748 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0759 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0776 A[LOOP:3: B:51:0x0774->B:52:0x0776, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0780  */
    @Override // androidx.glance.appwidget.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mergeFrom(java.lang.Object r21, androidx.compose.ui.text.input.GapBuffer r22, androidx.glance.appwidget.protobuf.ExtensionRegistryLite r23) {
        /*
            Method dump skipped, instructions count: 2078
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.protobuf.MessageSchema.mergeFrom(java.lang.Object, androidx.compose.ui.text.input.GapBuffer, androidx.glance.appwidget.protobuf.ExtensionRegistryLite):void");
    }

    public final void mergeMap(int i, Object obj, Object obj2) {
        long typeAndOffsetAt = typeAndOffsetAt(i) & 1048575;
        Object object = UnsafeUtil.getObject(typeAndOffsetAt, obj);
        MapFieldSchemaLite mapFieldSchemaLite = this.mapFieldSchema;
        if (object != null) {
            mapFieldSchemaLite.getClass();
            if (!((MapFieldLite) object).isMutable) {
                Object mutableCopy = MapFieldLite.EMPTY_MAP_FIELD.mutableCopy();
                MapFieldSchemaLite.mergeFrom(mutableCopy, object);
                UnsafeUtil.putObject(obj, typeAndOffsetAt, mutableCopy);
                object = mutableCopy;
            }
        } else {
            mapFieldSchemaLite.getClass();
            object = MapFieldLite.EMPTY_MAP_FIELD.mutableCopy();
            UnsafeUtil.putObject(obj, typeAndOffsetAt, object);
        }
        mapFieldSchemaLite.getClass();
        Modifier.CC.m(obj2);
        throw null;
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

    @Override // androidx.glance.appwidget.protobuf.Schema
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

    public final void readGroupList(Object obj, long j, GapBuffer gapBuffer, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        int readTag;
        this.listFieldSchema.getClass();
        Internal.ProtobufList mutableListAt = ListFieldSchemaLite.mutableListAt(j, obj);
        CodedInputStream codedInputStream = (CodedInputStream) gapBuffer.buffer;
        int i = gapBuffer.capacity;
        if ((i & 7) != 3) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            GeneratedMessageLite newInstance = schema.newInstance();
            gapBuffer.mergeGroupFieldInternal(newInstance, schema, extensionRegistryLite);
            schema.makeImmutable(newInstance);
            ((ProtobufArrayList) mutableListAt).add(newInstance);
            if (codedInputStream.isAtEnd() || gapBuffer.gapEnd != 0) {
                return;
            } else {
                readTag = codedInputStream.readTag();
            }
        } while (readTag == i);
        gapBuffer.gapEnd = readTag;
    }

    public final void readMessageList(Object obj, int i, GapBuffer gapBuffer, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        int readTag;
        this.listFieldSchema.getClass();
        Internal.ProtobufList mutableListAt = ListFieldSchemaLite.mutableListAt(i & 1048575, obj);
        CodedInputStream codedInputStream = (CodedInputStream) gapBuffer.buffer;
        int i2 = gapBuffer.capacity;
        if ((i2 & 7) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            GeneratedMessageLite newInstance = schema.newInstance();
            gapBuffer.mergeMessageFieldInternal(newInstance, schema, extensionRegistryLite);
            schema.makeImmutable(newInstance);
            ((ProtobufArrayList) mutableListAt).add(newInstance);
            if (codedInputStream.isAtEnd() || gapBuffer.gapEnd != 0) {
                return;
            } else {
                readTag = codedInputStream.readTag();
            }
        } while (readTag == i2);
        gapBuffer.gapEnd = readTag;
    }

    public final void readString(int i, GapBuffer gapBuffer, Object obj) {
        if ((536870912 & i) != 0) {
            gapBuffer.requireWireType(2);
            UnsafeUtil.putObject(obj, i & 1048575, ((CodedInputStream) gapBuffer.buffer).readStringRequireUtf8());
        } else if (!this.lite) {
            UnsafeUtil.putObject(obj, i & 1048575, gapBuffer.m656readBytes());
        } else {
            gapBuffer.requireWireType(2);
            UnsafeUtil.putObject(obj, i & 1048575, ((CodedInputStream) gapBuffer.buffer).readString());
        }
    }

    public final void readStringList(int i, GapBuffer gapBuffer, Object obj) {
        boolean z = (536870912 & i) != 0;
        ListFieldSchemaLite listFieldSchemaLite = this.listFieldSchema;
        if (z) {
            listFieldSchemaLite.getClass();
            gapBuffer.readStringListInternal(ListFieldSchemaLite.mutableListAt(i & 1048575, obj), true);
        } else {
            listFieldSchemaLite.getClass();
            gapBuffer.readStringListInternal(ListFieldSchemaLite.mutableListAt(i & 1048575, obj), false);
        }
    }

    public final void setFieldPresent(int i, Object obj) {
        int i2 = this.buffer[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        UnsafeUtil.putInt((1 << (i2 >>> 20)) | UnsafeUtil.getInt(j, obj), j, obj);
    }

    public final void setOneofPresent(int i, int i2, Object obj) {
        UnsafeUtil.putInt(i, this.buffer[i2 + 2] & 1048575, obj);
    }

    public final int typeAndOffsetAt(int i) {
        return this.buffer[i + 1];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.glance.appwidget.protobuf.Schema
    public final void writeTo(Object obj, ManifestSchemaFactory manifestSchemaFactory) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z;
        boolean z2;
        Object[] objArr;
        MessageSchema messageSchema = this;
        manifestSchemaFactory.getClass();
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) manifestSchemaFactory.messageInfoFactory;
        Writer$FieldOrder writer$FieldOrder = Writer$FieldOrder.ASCENDING;
        Writer$FieldOrder writer$FieldOrder2 = Writer$FieldOrder.DESCENDING;
        Object[] objArr2 = messageSchema.objects;
        MapFieldSchemaLite mapFieldSchemaLite = messageSchema.mapFieldSchema;
        char c = '?';
        int[] iArr = messageSchema.buffer;
        UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = messageSchema.unknownFieldSchema;
        int i7 = 1048575;
        boolean z3 = true;
        if (writer$FieldOrder == writer$FieldOrder2) {
            unknownFieldSetLiteSchema.getClass();
            ((GeneratedMessageLite) obj).unknownFields.writeTo(manifestSchemaFactory);
            int length = iArr.length - 3;
            while (length >= 0) {
                int typeAndOffsetAt = messageSchema.typeAndOffsetAt(length);
                int i8 = iArr[length];
                switch (type(typeAndOffsetAt)) {
                    case 0:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeFixed64(Double.doubleToRawLongBits(UnsafeUtil.MEMORY_ACCESSOR.getDouble(typeAndOffsetAt & 1048575, obj)), i8);
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 1:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeFixed32(i8, Float.floatToRawIntBits(UnsafeUtil.MEMORY_ACCESSOR.getFloat(typeAndOffsetAt & 1048575, obj)));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 2:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeUInt64(UnsafeUtil.getLong(typeAndOffsetAt & 1048575, obj), i8);
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 3:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeUInt64(UnsafeUtil.getLong(typeAndOffsetAt & 1048575, obj), i8);
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 4:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeInt32(i8, UnsafeUtil.getInt(typeAndOffsetAt & 1048575, obj));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 5:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeFixed64(UnsafeUtil.getLong(typeAndOffsetAt & 1048575, obj), i8);
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 6:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeFixed32(i8, UnsafeUtil.getInt(typeAndOffsetAt & 1048575, obj));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 7:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeBool(i8, UnsafeUtil.MEMORY_ACCESSOR.getBoolean(typeAndOffsetAt & 1048575, obj));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 8:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            writeString(i8, UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory);
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 9:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeMessage(i8, (AbstractMessageLite) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), messageSchema.getMessageFieldSchema(length));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 10:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeBytes(i8, (ByteString$LiteralByteString) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 11:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeUInt32(i8, UnsafeUtil.getInt(typeAndOffsetAt & 1048575, obj));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 12:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeInt32(i8, UnsafeUtil.getInt(typeAndOffsetAt & 1048575, obj));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case IMAGE_VALUE:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeFixed32(i8, UnsafeUtil.getInt(typeAndOffsetAt & 1048575, obj));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeFixed64(UnsafeUtil.getLong(typeAndOffsetAt & 1048575, obj), i8);
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 15:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            int i9 = UnsafeUtil.getInt(typeAndOffsetAt & 1048575, obj);
                            codedOutputStream$OutputStreamEncoder.writeUInt32(i8, (i9 >> 31) ^ (i9 << 1));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case LAZY_VERTICAL_GRID_VALUE:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            long j = UnsafeUtil.getLong(typeAndOffsetAt & 1048575, obj);
                            codedOutputStream$OutputStreamEncoder.writeUInt64((j << 1) ^ (j >> 63), i8);
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case VERTICAL_GRID_ITEM_VALUE:
                        objArr = objArr2;
                        if (messageSchema.isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeGroup(i8, UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), messageSchema.getMessageFieldSchema(length));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case RADIO_GROUP_VALUE:
                        objArr = objArr2;
                        SchemaUtil.writeDoubleList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case RADIO_BUTTON_VALUE:
                        objArr = objArr2;
                        SchemaUtil.writeFloatList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case RADIO_ROW_VALUE:
                        objArr = objArr2;
                        SchemaUtil.writeInt64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case RADIO_COLUMN_VALUE:
                        objArr = objArr2;
                        SchemaUtil.writeUInt64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case SIZE_BOX_VALUE:
                        objArr = objArr2;
                        SchemaUtil.writeInt32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 23:
                        objArr = objArr2;
                        SchemaUtil.writeFixed64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 24:
                        objArr = objArr2;
                        SchemaUtil.writeFixed32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 25:
                        objArr = objArr2;
                        SchemaUtil.writeBoolList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 26:
                        objArr = objArr2;
                        SchemaUtil.writeStringList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 27:
                        objArr = objArr2;
                        SchemaUtil.writeMessageList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, messageSchema.getMessageFieldSchema(length));
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 28:
                        objArr = objArr2;
                        SchemaUtil.writeBytesList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 29:
                        objArr = objArr2;
                        SchemaUtil.writeUInt32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 30:
                        objArr = objArr2;
                        SchemaUtil.writeEnumList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 31:
                        objArr = objArr2;
                        SchemaUtil.writeSFixed32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 32:
                        objArr = objArr2;
                        SchemaUtil.writeSFixed64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 33:
                        objArr = objArr2;
                        SchemaUtil.writeSInt32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 34:
                        objArr = objArr2;
                        SchemaUtil.writeSInt64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 35:
                        objArr = objArr2;
                        SchemaUtil.writeDoubleList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 36:
                        objArr = objArr2;
                        SchemaUtil.writeFloatList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 37:
                        objArr = objArr2;
                        SchemaUtil.writeInt64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 38:
                        objArr = objArr2;
                        SchemaUtil.writeUInt64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 39:
                        objArr = objArr2;
                        SchemaUtil.writeInt32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 40:
                        objArr = objArr2;
                        SchemaUtil.writeFixed64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 41:
                        objArr = objArr2;
                        SchemaUtil.writeFixed32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 42:
                        objArr = objArr2;
                        SchemaUtil.writeBoolList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 43:
                        objArr = objArr2;
                        SchemaUtil.writeUInt32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 44:
                        objArr = objArr2;
                        SchemaUtil.writeEnumList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 45:
                        objArr = objArr2;
                        SchemaUtil.writeSFixed32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 46:
                        objArr = objArr2;
                        SchemaUtil.writeSFixed64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 47:
                        objArr = objArr2;
                        SchemaUtil.writeSInt32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 48:
                        objArr = objArr2;
                        SchemaUtil.writeSInt64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 49:
                        objArr = objArr2;
                        SchemaUtil.writeGroupList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, messageSchema.getMessageFieldSchema(length));
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 50:
                        objArr = objArr2;
                        if (UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj) != null) {
                            Object obj2 = objArr[(length / 3) * 2];
                            mapFieldSchemaLite.getClass();
                            Modifier.CC.m(obj2);
                            throw null;
                        }
                        continue;
                        length -= 3;
                        objArr2 = objArr;
                    case 51:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeFixed64(Double.doubleToRawLongBits(((Double) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj)).doubleValue()), i8);
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 52:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeFixed32(i8, Float.floatToRawIntBits(((Float) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj)).floatValue()));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 53:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeUInt64(oneofLongAt(typeAndOffsetAt & 1048575, obj), i8);
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 54:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeUInt64(oneofLongAt(typeAndOffsetAt & 1048575, obj), i8);
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 55:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeInt32(i8, oneofIntAt(typeAndOffsetAt & 1048575, obj));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 56:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeFixed64(oneofLongAt(typeAndOffsetAt & 1048575, obj), i8);
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 57:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeFixed32(i8, oneofIntAt(typeAndOffsetAt & 1048575, obj));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 58:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeBool(i8, ((Boolean) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj)).booleanValue());
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 59:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            writeString(i8, UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory);
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 60:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeMessage(i8, (AbstractMessageLite) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), messageSchema.getMessageFieldSchema(length));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 61:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            manifestSchemaFactory.writeBytes(i8, (ByteString$LiteralByteString) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 62:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeUInt32(i8, oneofIntAt(typeAndOffsetAt & 1048575, obj));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 63:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeInt32(i8, oneofIntAt(typeAndOffsetAt & 1048575, obj));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 64:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeFixed32(i8, oneofIntAt(typeAndOffsetAt & 1048575, obj));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 65:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            codedOutputStream$OutputStreamEncoder.writeFixed64(oneofLongAt(typeAndOffsetAt & 1048575, obj), i8);
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 66:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            int oneofIntAt = oneofIntAt(typeAndOffsetAt & 1048575, obj);
                            codedOutputStream$OutputStreamEncoder.writeUInt32(i8, (oneofIntAt >> 31) ^ (oneofIntAt << 1));
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 67:
                        objArr = objArr2;
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            long oneofLongAt = oneofLongAt(typeAndOffsetAt & 1048575, obj);
                            codedOutputStream$OutputStreamEncoder.writeUInt64((oneofLongAt << 1) ^ (oneofLongAt >> 63), i8);
                        } else {
                            continue;
                        }
                        length -= 3;
                        objArr2 = objArr;
                    case 68:
                        if (messageSchema.isOneofPresent(i8, length, obj)) {
                            objArr = objArr2;
                            manifestSchemaFactory.writeGroup(i8, UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), messageSchema.getMessageFieldSchema(length));
                            length -= 3;
                            objArr2 = objArr;
                        }
                        break;
                }
                objArr = objArr2;
                length -= 3;
                objArr2 = objArr;
            }
            return;
        }
        int i10 = 0;
        int i11 = 0;
        int i12 = 1048575;
        for (int length2 = iArr.length; i10 < length2; length2 = i2) {
            int typeAndOffsetAt2 = messageSchema.typeAndOffsetAt(i10);
            char c2 = c;
            int i13 = iArr[i10];
            int type = type(typeAndOffsetAt2);
            boolean z4 = z3;
            int i14 = i7;
            Unsafe unsafe = UNSAFE;
            if (type <= 17) {
                int i15 = iArr[i10 + 2];
                i = type;
                i4 = i15 & i14;
                if (i4 == i12) {
                    int i16 = i12;
                    i2 = length2;
                    i3 = typeAndOffsetAt2;
                    i4 = i16;
                } else if (i4 == i14) {
                    i2 = length2;
                    i3 = typeAndOffsetAt2;
                    i11 = 0;
                } else {
                    i2 = length2;
                    i3 = typeAndOffsetAt2;
                    i11 = unsafe.getInt(obj, i4);
                }
                i5 = (z4 ? 1 : 0) << (i15 >>> 20);
            } else {
                int i17 = i12;
                i = type;
                i2 = length2;
                i3 = typeAndOffsetAt2;
                i4 = i17;
                i5 = 0;
            }
            int i18 = i5;
            long j2 = i3 & 1048575;
            switch (i) {
                case 0:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        codedOutputStream$OutputStreamEncoder.writeFixed64(Double.doubleToRawLongBits(UnsafeUtil.MEMORY_ACCESSOR.getDouble(j2, obj)), i13);
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 1:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        codedOutputStream$OutputStreamEncoder.writeFixed32(i13, Float.floatToRawIntBits(UnsafeUtil.MEMORY_ACCESSOR.getFloat(j2, obj)));
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 2:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        codedOutputStream$OutputStreamEncoder.writeUInt64(unsafe.getLong(obj, j2), i13);
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 3:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        codedOutputStream$OutputStreamEncoder.writeUInt64(unsafe.getLong(obj, j2), i13);
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 4:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        codedOutputStream$OutputStreamEncoder.writeInt32(i13, unsafe.getInt(obj, j2));
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 5:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        codedOutputStream$OutputStreamEncoder.writeFixed64(unsafe.getLong(obj, j2), i13);
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 6:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        codedOutputStream$OutputStreamEncoder.writeFixed32(i13, unsafe.getInt(obj, j2));
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 7:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        codedOutputStream$OutputStreamEncoder.writeBool(i13, UnsafeUtil.MEMORY_ACCESSOR.getBoolean(j2, obj));
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 8:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        writeString(i13, unsafe.getObject(obj, j2), manifestSchemaFactory);
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 9:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        codedOutputStream$OutputStreamEncoder.writeMessage(i13, (AbstractMessageLite) unsafe.getObject(obj, j2), messageSchema.getMessageFieldSchema(i10));
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 10:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        manifestSchemaFactory.writeBytes(i13, (ByteString$LiteralByteString) unsafe.getObject(obj, j2));
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 11:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        codedOutputStream$OutputStreamEncoder.writeUInt32(i13, unsafe.getInt(obj, j2));
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 12:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        codedOutputStream$OutputStreamEncoder.writeInt32(i13, unsafe.getInt(obj, j2));
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case IMAGE_VALUE:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        codedOutputStream$OutputStreamEncoder.writeFixed32(i13, unsafe.getInt(obj, j2));
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        codedOutputStream$OutputStreamEncoder.writeFixed64(unsafe.getLong(obj, j2), i13);
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 15:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        int i19 = unsafe.getInt(obj, j2);
                        codedOutputStream$OutputStreamEncoder.writeUInt32(i13, (i19 >> 31) ^ (i19 << 1));
                    }
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case LAZY_VERTICAL_GRID_VALUE:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        long j3 = unsafe.getLong(obj, j2);
                        z4 = true;
                        codedOutputStream$OutputStreamEncoder.writeUInt64((j3 >> c2) ^ (j3 << 1), i13);
                        i10 += 3;
                        messageSchema = this;
                        i11 = i6;
                        c = c2;
                        z3 = z4;
                        i7 = 1048575;
                    }
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case VERTICAL_GRID_ITEM_VALUE:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    if (messageSchema.isFieldPresent(obj, i10, i12, i6, i18)) {
                        manifestSchemaFactory.writeGroup(i13, unsafe.getObject(obj, j2), messageSchema.getMessageFieldSchema(i10));
                    }
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case RADIO_GROUP_VALUE:
                    z2 = false;
                    SchemaUtil.writeDoubleList(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, false);
                    i12 = i4;
                    i6 = i11;
                    z = z2;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case RADIO_BUTTON_VALUE:
                    z2 = false;
                    SchemaUtil.writeFloatList(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, false);
                    i12 = i4;
                    i6 = i11;
                    z = z2;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case RADIO_ROW_VALUE:
                    z2 = false;
                    SchemaUtil.writeInt64List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, false);
                    i12 = i4;
                    i6 = i11;
                    z = z2;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case RADIO_COLUMN_VALUE:
                    z2 = false;
                    SchemaUtil.writeUInt64List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, false);
                    i12 = i4;
                    i6 = i11;
                    z = z2;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case SIZE_BOX_VALUE:
                    z2 = false;
                    SchemaUtil.writeInt32List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, false);
                    i12 = i4;
                    i6 = i11;
                    z = z2;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 23:
                    z2 = false;
                    SchemaUtil.writeFixed64List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, false);
                    i12 = i4;
                    i6 = i11;
                    z = z2;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 24:
                    z2 = false;
                    SchemaUtil.writeFixed32List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, false);
                    i12 = i4;
                    i6 = i11;
                    z = z2;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 25:
                    z2 = false;
                    SchemaUtil.writeBoolList(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, false);
                    i12 = i4;
                    i6 = i11;
                    z = z2;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 26:
                    SchemaUtil.writeStringList(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 27:
                    SchemaUtil.writeMessageList(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, messageSchema.getMessageFieldSchema(i10));
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 28:
                    SchemaUtil.writeBytesList(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 29:
                    z2 = false;
                    SchemaUtil.writeUInt32List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, false);
                    i12 = i4;
                    i6 = i11;
                    z = z2;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 30:
                    z2 = false;
                    SchemaUtil.writeEnumList(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, false);
                    i12 = i4;
                    i6 = i11;
                    z = z2;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 31:
                    z2 = false;
                    SchemaUtil.writeSFixed32List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, false);
                    i12 = i4;
                    i6 = i11;
                    z = z2;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 32:
                    z2 = false;
                    SchemaUtil.writeSFixed64List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, false);
                    i12 = i4;
                    i6 = i11;
                    z = z2;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 33:
                    z2 = false;
                    SchemaUtil.writeSInt32List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, false);
                    i12 = i4;
                    i6 = i11;
                    z = z2;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 34:
                    z2 = false;
                    SchemaUtil.writeSInt64List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, false);
                    i12 = i4;
                    i6 = i11;
                    z = z2;
                    z4 = true;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 35:
                    SchemaUtil.writeDoubleList(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, z4);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 36:
                    SchemaUtil.writeFloatList(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, z4);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 37:
                    SchemaUtil.writeInt64List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, z4);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 38:
                    SchemaUtil.writeUInt64List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, z4);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 39:
                    SchemaUtil.writeInt32List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, z4);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 40:
                    SchemaUtil.writeFixed64List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, z4);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 41:
                    SchemaUtil.writeFixed32List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, z4);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 42:
                    SchemaUtil.writeBoolList(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, z4);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 43:
                    SchemaUtil.writeUInt32List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, z4);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 44:
                    SchemaUtil.writeEnumList(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, z4);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 45:
                    SchemaUtil.writeSFixed32List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, z4);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 46:
                    SchemaUtil.writeSFixed64List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, z4);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 47:
                    SchemaUtil.writeSInt32List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, z4);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 48:
                    SchemaUtil.writeSInt64List(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, z4);
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 49:
                    SchemaUtil.writeGroupList(iArr[i10], (List) unsafe.getObject(obj, j2), manifestSchemaFactory, messageSchema.getMessageFieldSchema(i10));
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 50:
                    if (unsafe.getObject(obj, j2) != null) {
                        Object obj3 = objArr2[(i10 / 3) * 2];
                        mapFieldSchemaLite.getClass();
                        Modifier.CC.m(obj3);
                        throw null;
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 51:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        codedOutputStream$OutputStreamEncoder.writeFixed64(Double.doubleToRawLongBits(((Double) UnsafeUtil.getObject(j2, obj)).doubleValue()), i13);
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 52:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        codedOutputStream$OutputStreamEncoder.writeFixed32(i13, Float.floatToRawIntBits(((Float) UnsafeUtil.getObject(j2, obj)).floatValue()));
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 53:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        codedOutputStream$OutputStreamEncoder.writeUInt64(oneofLongAt(j2, obj), i13);
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 54:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        codedOutputStream$OutputStreamEncoder.writeUInt64(oneofLongAt(j2, obj), i13);
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 55:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        codedOutputStream$OutputStreamEncoder.writeInt32(i13, oneofIntAt(j2, obj));
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 56:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        codedOutputStream$OutputStreamEncoder.writeFixed64(oneofLongAt(j2, obj), i13);
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 57:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        codedOutputStream$OutputStreamEncoder.writeFixed32(i13, oneofIntAt(j2, obj));
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 58:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        codedOutputStream$OutputStreamEncoder.writeBool(i13, ((Boolean) UnsafeUtil.getObject(j2, obj)).booleanValue());
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 59:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        writeString(i13, unsafe.getObject(obj, j2), manifestSchemaFactory);
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 60:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        codedOutputStream$OutputStreamEncoder.writeMessage(i13, (AbstractMessageLite) unsafe.getObject(obj, j2), messageSchema.getMessageFieldSchema(i10));
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 61:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        manifestSchemaFactory.writeBytes(i13, (ByteString$LiteralByteString) unsafe.getObject(obj, j2));
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 62:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        codedOutputStream$OutputStreamEncoder.writeUInt32(i13, oneofIntAt(j2, obj));
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 63:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        codedOutputStream$OutputStreamEncoder.writeInt32(i13, oneofIntAt(j2, obj));
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 64:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        codedOutputStream$OutputStreamEncoder.writeFixed32(i13, oneofIntAt(j2, obj));
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 65:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        codedOutputStream$OutputStreamEncoder.writeFixed64(oneofLongAt(j2, obj), i13);
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 66:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        int oneofIntAt2 = oneofIntAt(j2, obj);
                        codedOutputStream$OutputStreamEncoder.writeUInt32(i13, (oneofIntAt2 >> 31) ^ (oneofIntAt2 << 1));
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 67:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        long oneofLongAt2 = oneofLongAt(j2, obj);
                        codedOutputStream$OutputStreamEncoder.writeUInt64((oneofLongAt2 >> c2) ^ (oneofLongAt2 << (z4 ? 1L : 0L)), i13);
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                case 68:
                    if (messageSchema.isOneofPresent(i13, i10, obj)) {
                        manifestSchemaFactory.writeGroup(i13, unsafe.getObject(obj, j2), messageSchema.getMessageFieldSchema(i10));
                    }
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
                default:
                    i12 = i4;
                    i6 = i11;
                    z = false;
                    i10 += 3;
                    messageSchema = this;
                    i11 = i6;
                    c = c2;
                    z3 = z4;
                    i7 = 1048575;
            }
        }
        unknownFieldSetLiteSchema.getClass();
        ((GeneratedMessageLite) obj).unknownFields.writeTo(manifestSchemaFactory);
    }

    public final boolean isFieldPresent(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return isFieldPresent(i, obj);
        }
        return (i3 & i4) != 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.glance.appwidget.protobuf.Schema
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
                                UnsafeUtil.putLong(obj, j, UnsafeUtil.getLong(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 3:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putLong(obj, j, UnsafeUtil.getLong(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 4:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putInt(UnsafeUtil.getInt(j, obj2), j, obj);
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 5:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putLong(obj, j, UnsafeUtil.getLong(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 6:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putInt(UnsafeUtil.getInt(j, obj2), j, obj);
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
                                UnsafeUtil.putObject(obj, j, UnsafeUtil.getObject(j, obj2));
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
                                UnsafeUtil.putObject(obj, j, UnsafeUtil.getObject(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 11:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putInt(UnsafeUtil.getInt(j, obj2), j, obj);
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 12:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putInt(UnsafeUtil.getInt(j, obj2), j, obj);
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case IMAGE_VALUE:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putInt(UnsafeUtil.getInt(j, obj2), j, obj);
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case LINEAR_PROGRESS_INDICATOR_VALUE:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putLong(obj, j, UnsafeUtil.getLong(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case 15:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putInt(UnsafeUtil.getInt(j, obj2), j, obj);
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case LAZY_VERTICAL_GRID_VALUE:
                            if (isFieldPresent(i, obj2)) {
                                UnsafeUtil.putLong(obj, j, UnsafeUtil.getLong(j, obj2));
                                setFieldPresent(i, obj);
                            }
                            obj3 = obj;
                            break;
                        case VERTICAL_GRID_ITEM_VALUE:
                            mergeMessage(i, obj, obj2);
                            obj3 = obj;
                            break;
                        case RADIO_GROUP_VALUE:
                        case RADIO_BUTTON_VALUE:
                        case RADIO_ROW_VALUE:
                        case RADIO_COLUMN_VALUE:
                        case SIZE_BOX_VALUE:
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
                            Internal.ProtobufList protobufList = (Internal.ProtobufList) UnsafeUtil.getObject(j, obj);
                            Internal.ProtobufList protobufList2 = (Internal.ProtobufList) UnsafeUtil.getObject(j, obj2);
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
                            Object object = UnsafeUtil.getObject(j, obj);
                            Object object2 = UnsafeUtil.getObject(j, obj2);
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
                                UnsafeUtil.putObject(obj, j, UnsafeUtil.getObject(j, obj2));
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
                                UnsafeUtil.putObject(obj, j, UnsafeUtil.getObject(j, obj2));
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
            Gson$$ExternalSyntheticBUOutline0.m("Mutating immutable message: ", obj);
        }
    }
}
