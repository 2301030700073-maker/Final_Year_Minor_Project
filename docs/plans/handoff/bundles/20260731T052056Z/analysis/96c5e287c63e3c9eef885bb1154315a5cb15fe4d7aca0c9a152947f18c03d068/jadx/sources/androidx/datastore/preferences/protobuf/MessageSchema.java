package androidx.datastore.preferences.protobuf;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.input.GapBuffer;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.UnsafeUtil;
import androidx.glance.appwidget.protobuf.UnsafeUtil;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.util.Arrays;
import java.util.List;
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
    public final ListFieldSchema listFieldSchema;
    public final boolean lite;
    public final MapFieldSchemaLite mapFieldSchema;
    public final int maxFieldNumber;
    public final int minFieldNumber;
    public final NewInstanceSchemaLite newInstanceSchema;
    public final Object[] objects;
    public final boolean proto3;
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

    public MessageSchema(int[] iArr, Object[] objArr, int i, int i2, AbstractMessageLite abstractMessageLite, boolean z, int[] iArr2, int i3, int i4, NewInstanceSchemaLite newInstanceSchemaLite, ListFieldSchema listFieldSchema, UnknownFieldSetLiteSchema unknownFieldSetLiteSchema, ExtensionSchemaLite extensionSchemaLite, MapFieldSchemaLite mapFieldSchemaLite) {
        this.buffer = iArr;
        this.objects = objArr;
        this.minFieldNumber = i;
        this.maxFieldNumber = i2;
        this.lite = abstractMessageLite instanceof GeneratedMessageLite;
        this.proto3 = z;
        this.intArray = iArr2;
        this.checkInitializedCount = i3;
        this.repeatedFieldOffsetStart = i4;
        this.newInstanceSchema = newInstanceSchemaLite;
        this.listFieldSchema = listFieldSchema;
        this.unknownFieldSchema = unknownFieldSetLiteSchema;
        this.defaultInstance = abstractMessageLite;
        this.mapFieldSchema = mapFieldSchemaLite;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.datastore.preferences.protobuf.MessageSchema newSchema(androidx.datastore.preferences.protobuf.RawMessageInfo r34, androidx.datastore.preferences.protobuf.NewInstanceSchemaLite r35, androidx.datastore.preferences.protobuf.ListFieldSchema r36, androidx.datastore.preferences.protobuf.UnknownFieldSetLiteSchema r37, androidx.datastore.preferences.protobuf.ExtensionSchemaLite r38, androidx.datastore.preferences.protobuf.MapFieldSchemaLite r39) {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.newSchema(androidx.datastore.preferences.protobuf.RawMessageInfo, androidx.datastore.preferences.protobuf.NewInstanceSchemaLite, androidx.datastore.preferences.protobuf.ListFieldSchema, androidx.datastore.preferences.protobuf.UnknownFieldSetLiteSchema, androidx.datastore.preferences.protobuf.ExtensionSchemaLite, androidx.datastore.preferences.protobuf.MapFieldSchemaLite):androidx.datastore.preferences.protobuf.MessageSchema");
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

    public final boolean arePresentForEquals(GeneratedMessageLite generatedMessageLite, Object obj, int i) {
        return isFieldPresent(i, generatedMessageLite) == isFieldPresent(i, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006c, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.safeEquals(androidx.datastore.preferences.protobuf.UnsafeUtil.getObject(r7, r12), androidx.datastore.preferences.protobuf.UnsafeUtil.getObject(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0080, code lost:
    
        if (androidx.datastore.preferences.protobuf.UnsafeUtil.getLong(r7, r12) == androidx.datastore.preferences.protobuf.UnsafeUtil.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0092, code lost:
    
        if (androidx.datastore.preferences.protobuf.UnsafeUtil.getInt(r7, r12) == androidx.datastore.preferences.protobuf.UnsafeUtil.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a6, code lost:
    
        if (androidx.datastore.preferences.protobuf.UnsafeUtil.getLong(r7, r12) == androidx.datastore.preferences.protobuf.UnsafeUtil.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b8, code lost:
    
        if (androidx.datastore.preferences.protobuf.UnsafeUtil.getInt(r7, r12) == androidx.datastore.preferences.protobuf.UnsafeUtil.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ca, code lost:
    
        if (androidx.datastore.preferences.protobuf.UnsafeUtil.getInt(r7, r12) == androidx.datastore.preferences.protobuf.UnsafeUtil.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00dc, code lost:
    
        if (androidx.datastore.preferences.protobuf.UnsafeUtil.getInt(r7, r12) == androidx.datastore.preferences.protobuf.UnsafeUtil.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f2, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.safeEquals(androidx.datastore.preferences.protobuf.UnsafeUtil.getObject(r7, r12), androidx.datastore.preferences.protobuf.UnsafeUtil.getObject(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0108, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.safeEquals(androidx.datastore.preferences.protobuf.UnsafeUtil.getObject(r7, r12), androidx.datastore.preferences.protobuf.UnsafeUtil.getObject(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x011e, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.safeEquals(androidx.datastore.preferences.protobuf.UnsafeUtil.getObject(r7, r12), androidx.datastore.preferences.protobuf.UnsafeUtil.getObject(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0132, code lost:
    
        if (r5.getBoolean(r7, r12) == r5.getBoolean(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0144, code lost:
    
        if (androidx.datastore.preferences.protobuf.UnsafeUtil.getInt(r7, r12) == androidx.datastore.preferences.protobuf.UnsafeUtil.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0158, code lost:
    
        if (androidx.datastore.preferences.protobuf.UnsafeUtil.getLong(r7, r12) == androidx.datastore.preferences.protobuf.UnsafeUtil.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x016a, code lost:
    
        if (androidx.datastore.preferences.protobuf.UnsafeUtil.getInt(r7, r12) == androidx.datastore.preferences.protobuf.UnsafeUtil.getInt(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x017d, code lost:
    
        if (androidx.datastore.preferences.protobuf.UnsafeUtil.getLong(r7, r12) == androidx.datastore.preferences.protobuf.UnsafeUtil.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0190, code lost:
    
        if (androidx.datastore.preferences.protobuf.UnsafeUtil.getLong(r7, r12) == androidx.datastore.preferences.protobuf.UnsafeUtil.getLong(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01ab, code lost:
    
        if (java.lang.Float.floatToIntBits(r5.getFloat(r7, r12)) == java.lang.Float.floatToIntBits(r5.getFloat(r7, r13))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01c8, code lost:
    
        if (java.lang.Double.doubleToLongBits(r5.getDouble(r7, r12)) == java.lang.Double.doubleToLongBits(r5.getDouble(r7, r13))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0037, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.safeEquals(androidx.datastore.preferences.protobuf.UnsafeUtil.getObject(r7, r12), androidx.datastore.preferences.protobuf.UnsafeUtil.getObject(r7, r13)) != false) goto L105;
     */
    @Override // androidx.datastore.preferences.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(androidx.datastore.preferences.protobuf.GeneratedMessageLite r12, androidx.datastore.preferences.protobuf.GeneratedMessageLite r13) {
        /*
            Method dump skipped, instructions count: 624
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.equals(androidx.datastore.preferences.protobuf.GeneratedMessageLite, androidx.datastore.preferences.protobuf.GeneratedMessageLite):boolean");
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final int getSerializedSize(AbstractMessageLite abstractMessageLite) {
        UnknownFieldSetLiteSchema unknownFieldSetLiteSchema;
        int i;
        int computeTagSize;
        int computeUInt64SizeNoTag;
        int i2;
        int computeStringSizeNoTag;
        int computeBytesSize;
        int computeTagSize2;
        int computeUInt32SizeNoTag;
        char c;
        int computeTagSize3;
        int computeUInt64SizeNoTag2;
        int i3;
        int computeTagSize4;
        int computeUInt64SizeNoTag3;
        int computeFixed64Size;
        int computeTagSize5;
        int computeStringSizeNoTag2;
        int m;
        int i4;
        UnknownFieldSetLiteSchema unknownFieldSetLiteSchema2 = this.unknownFieldSchema;
        MapFieldSchemaLite mapFieldSchemaLite = this.mapFieldSchema;
        int i5 = 1048575;
        Unsafe unsafe = UNSAFE;
        int i6 = 1;
        boolean z = this.proto3;
        int[] iArr = this.buffer;
        if (!z) {
            int i7 = -1;
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            while (i8 < iArr.length) {
                int typeAndOffsetAt = typeAndOffsetAt(i8);
                int i11 = iArr[i8];
                int type = type(typeAndOffsetAt);
                if (type <= 17) {
                    int i12 = iArr[i8 + 2];
                    int i13 = i12 & 1048575;
                    i = 1 << (i12 >>> 20);
                    unknownFieldSetLiteSchema = unknownFieldSetLiteSchema2;
                    if (i13 != i7) {
                        i10 = unsafe.getInt(abstractMessageLite, i13);
                        i7 = i13;
                    }
                } else {
                    unknownFieldSetLiteSchema = unknownFieldSetLiteSchema2;
                    i = 0;
                }
                long j = typeAndOffsetAt & 1048575;
                switch (type) {
                    case 0:
                        if ((i10 & i) != 0) {
                            i9 = Modifier.CC.m(i11, 8, i9);
                            break;
                        }
                        break;
                    case 1:
                        if ((i10 & i) != 0) {
                            i9 = Modifier.CC.m(i11, 4, i9);
                            break;
                        }
                    case 2:
                        if ((i10 & i) != 0) {
                            long j2 = unsafe.getLong(abstractMessageLite, j);
                            computeTagSize = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            computeUInt64SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(j2);
                            i2 = computeUInt64SizeNoTag + computeTagSize;
                            i9 += i2;
                        }
                        break;
                    case 3:
                        if ((i10 & i) != 0) {
                            long j3 = unsafe.getLong(abstractMessageLite, j);
                            computeTagSize = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            computeUInt64SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(j3);
                            i2 = computeUInt64SizeNoTag + computeTagSize;
                            i9 += i2;
                        }
                        break;
                    case 4:
                        if ((i10 & i) != 0) {
                            i2 = CodedOutputStream$OutputStreamEncoder.computeInt32SizeNoTag(unsafe.getInt(abstractMessageLite, j)) + CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            i9 += i2;
                        }
                        break;
                    case 5:
                        if ((i10 & i) != 0) {
                            i2 = CodedOutputStream$OutputStreamEncoder.computeFixed64Size(i11);
                            i9 += i2;
                        }
                        break;
                    case 6:
                        if ((i10 & i) != 0) {
                            i2 = CodedOutputStream$OutputStreamEncoder.computeFixed32Size(i11);
                            i9 += i2;
                        }
                        break;
                    case 7:
                        if ((i10 & i) != 0) {
                            i9 = Modifier.CC.m(i11, 1, i9);
                        }
                        break;
                    case 8:
                        if ((i10 & i) != 0) {
                            Object object = unsafe.getObject(abstractMessageLite, j);
                            if (object instanceof ByteString$LiteralByteString) {
                                int computeTagSize6 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                                int size = ((ByteString$LiteralByteString) object).size();
                                computeStringSizeNoTag = Modifier.CC.m(size, size, computeTagSize6, i9);
                            } else {
                                computeStringSizeNoTag = CodedOutputStream$OutputStreamEncoder.computeStringSizeNoTag((String) object) + CodedOutputStream$OutputStreamEncoder.computeTagSize(i11) + i9;
                            }
                            i9 = computeStringSizeNoTag;
                        }
                        break;
                    case 9:
                        if ((i10 & i) != 0) {
                            Object object2 = unsafe.getObject(abstractMessageLite, j);
                            Schema messageFieldSchema = getMessageFieldSchema(i8);
                            Class cls = SchemaUtil.GENERATED_MESSAGE_CLASS;
                            int computeTagSize7 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            int serializedSize = ((AbstractMessageLite) object2).getSerializedSize(messageFieldSchema);
                            i9 = Modifier.CC.m(serializedSize, serializedSize, computeTagSize7, i9);
                        }
                        break;
                    case 10:
                        if ((i10 & i) != 0) {
                            computeBytesSize = CodedOutputStream$OutputStreamEncoder.computeBytesSize(i11, (ByteString$LiteralByteString) unsafe.getObject(abstractMessageLite, j));
                            i9 += computeBytesSize;
                        }
                        break;
                    case 11:
                        if ((i10 & i) != 0) {
                            int i14 = unsafe.getInt(abstractMessageLite, j);
                            computeTagSize2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(i14);
                            computeBytesSize = computeUInt32SizeNoTag + computeTagSize2;
                            i9 += computeBytesSize;
                        }
                        break;
                    case 12:
                        if ((i10 & i) != 0) {
                            int i15 = unsafe.getInt(abstractMessageLite, j);
                            computeTagSize2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeInt32SizeNoTag(i15);
                            computeBytesSize = computeUInt32SizeNoTag + computeTagSize2;
                            i9 += computeBytesSize;
                        }
                        break;
                    case IMAGE_VALUE:
                        if ((i10 & i) != 0) {
                            i9 = Modifier.CC.m(i11, 4, i9);
                            break;
                        }
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        if ((i10 & i) != 0) {
                            c = '\b';
                            i9 = Modifier.CC.m(i11, 8, i9);
                            break;
                        }
                    case 15:
                        if ((i10 & i) != 0) {
                            int i16 = unsafe.getInt(abstractMessageLite, j);
                            computeTagSize2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag((i16 >> 31) ^ (i16 << 1));
                            computeBytesSize = computeUInt32SizeNoTag + computeTagSize2;
                            i9 += computeBytesSize;
                        }
                        break;
                    case LAZY_VERTICAL_GRID_VALUE:
                        if ((i10 & i) != 0) {
                            long j4 = unsafe.getLong(abstractMessageLite, j);
                            computeTagSize3 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            computeUInt64SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag((j4 >> 63) ^ (j4 << 1));
                            computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize3;
                            i9 += computeBytesSize;
                        }
                        break;
                    case VERTICAL_GRID_ITEM_VALUE:
                        if ((i10 & i) != 0) {
                            computeBytesSize = CodedOutputStream$OutputStreamEncoder.computeGroupSize(i11, (AbstractMessageLite) unsafe.getObject(abstractMessageLite, j), getMessageFieldSchema(i8));
                            i9 += computeBytesSize;
                        }
                        break;
                    case RADIO_GROUP_VALUE:
                        computeBytesSize = SchemaUtil.computeSizeFixed64List((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case RADIO_BUTTON_VALUE:
                        computeBytesSize = SchemaUtil.computeSizeFixed32List((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case RADIO_ROW_VALUE:
                        computeBytesSize = SchemaUtil.computeSizeInt64List((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case RADIO_COLUMN_VALUE:
                        computeBytesSize = SchemaUtil.computeSizeUInt64List((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case SIZE_BOX_VALUE:
                        computeBytesSize = SchemaUtil.computeSizeInt32List((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case 23:
                        computeBytesSize = SchemaUtil.computeSizeFixed64List((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case 24:
                        computeBytesSize = SchemaUtil.computeSizeFixed32List((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case 25:
                        List list = (List) unsafe.getObject(abstractMessageLite, j);
                        Class cls2 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        int size2 = list.size();
                        i9 += size2 == 0 ? 0 : (CodedOutputStream$OutputStreamEncoder.computeTagSize(i11) + 1) * size2;
                        break;
                    case 26:
                        computeBytesSize = SchemaUtil.computeSizeStringList((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case 27:
                        computeBytesSize = SchemaUtil.computeSizeMessageList(i11, (List) unsafe.getObject(abstractMessageLite, j), getMessageFieldSchema(i8));
                        i9 += computeBytesSize;
                        break;
                    case 28:
                        computeBytesSize = SchemaUtil.computeSizeByteStringList((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case 29:
                        computeBytesSize = SchemaUtil.computeSizeUInt32List((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case 30:
                        computeBytesSize = SchemaUtil.computeSizeEnumList((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case 31:
                        computeBytesSize = SchemaUtil.computeSizeFixed32List((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case 32:
                        computeBytesSize = SchemaUtil.computeSizeFixed64List((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case 33:
                        computeBytesSize = SchemaUtil.computeSizeSInt32List((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case 34:
                        computeBytesSize = SchemaUtil.computeSizeSInt64List((List) unsafe.getObject(abstractMessageLite, j), i11);
                        i9 += computeBytesSize;
                        break;
                    case 35:
                        int computeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(abstractMessageLite, j));
                        if (computeSizeFixed64ListNoTag > 0) {
                            i9 = Modifier.CC.m(computeSizeFixed64ListNoTag, CodedOutputStream$OutputStreamEncoder.computeTagSize(i11), computeSizeFixed64ListNoTag, i9);
                        }
                        break;
                    case 36:
                        int computeSizeFixed32ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(abstractMessageLite, j));
                        if (computeSizeFixed32ListNoTag > 0) {
                            i9 = Modifier.CC.m(computeSizeFixed32ListNoTag, CodedOutputStream$OutputStreamEncoder.computeTagSize(i11), computeSizeFixed32ListNoTag, i9);
                        }
                        break;
                    case 37:
                        int computeSizeInt64ListNoTag = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(abstractMessageLite, j));
                        if (computeSizeInt64ListNoTag > 0) {
                            i9 = Modifier.CC.m(computeSizeInt64ListNoTag, CodedOutputStream$OutputStreamEncoder.computeTagSize(i11), computeSizeInt64ListNoTag, i9);
                        }
                        break;
                    case 38:
                        int computeSizeUInt64ListNoTag = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(abstractMessageLite, j));
                        if (computeSizeUInt64ListNoTag > 0) {
                            i9 = Modifier.CC.m(computeSizeUInt64ListNoTag, CodedOutputStream$OutputStreamEncoder.computeTagSize(i11), computeSizeUInt64ListNoTag, i9);
                        }
                        break;
                    case 39:
                        int computeSizeInt32ListNoTag = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(abstractMessageLite, j));
                        if (computeSizeInt32ListNoTag > 0) {
                            i9 = Modifier.CC.m(computeSizeInt32ListNoTag, CodedOutputStream$OutputStreamEncoder.computeTagSize(i11), computeSizeInt32ListNoTag, i9);
                        }
                        break;
                    case 40:
                        int computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(abstractMessageLite, j));
                        if (computeSizeFixed64ListNoTag2 > 0) {
                            i9 = Modifier.CC.m(computeSizeFixed64ListNoTag2, CodedOutputStream$OutputStreamEncoder.computeTagSize(i11), computeSizeFixed64ListNoTag2, i9);
                        }
                        break;
                    case 41:
                        int computeSizeFixed32ListNoTag2 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(abstractMessageLite, j));
                        if (computeSizeFixed32ListNoTag2 > 0) {
                            i9 = Modifier.CC.m(computeSizeFixed32ListNoTag2, CodedOutputStream$OutputStreamEncoder.computeTagSize(i11), computeSizeFixed32ListNoTag2, i9);
                        }
                        break;
                    case 42:
                        List list2 = (List) unsafe.getObject(abstractMessageLite, j);
                        Class cls3 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        int size3 = list2.size();
                        if (size3 > 0) {
                            i9 = Modifier.CC.m(size3, CodedOutputStream$OutputStreamEncoder.computeTagSize(i11), size3, i9);
                        }
                        break;
                    case 43:
                        int computeSizeUInt32ListNoTag = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(abstractMessageLite, j));
                        if (computeSizeUInt32ListNoTag > 0) {
                            i9 = Modifier.CC.m(computeSizeUInt32ListNoTag, CodedOutputStream$OutputStreamEncoder.computeTagSize(i11), computeSizeUInt32ListNoTag, i9);
                        }
                        break;
                    case 44:
                        int computeSizeEnumListNoTag = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(abstractMessageLite, j));
                        if (computeSizeEnumListNoTag > 0) {
                            i9 = Modifier.CC.m(computeSizeEnumListNoTag, CodedOutputStream$OutputStreamEncoder.computeTagSize(i11), computeSizeEnumListNoTag, i9);
                        }
                        break;
                    case 45:
                        int computeSizeFixed32ListNoTag3 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(abstractMessageLite, j));
                        if (computeSizeFixed32ListNoTag3 > 0) {
                            i9 = Modifier.CC.m(computeSizeFixed32ListNoTag3, CodedOutputStream$OutputStreamEncoder.computeTagSize(i11), computeSizeFixed32ListNoTag3, i9);
                        }
                        break;
                    case 46:
                        int computeSizeFixed64ListNoTag3 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(abstractMessageLite, j));
                        if (computeSizeFixed64ListNoTag3 > 0) {
                            i9 = Modifier.CC.m(computeSizeFixed64ListNoTag3, CodedOutputStream$OutputStreamEncoder.computeTagSize(i11), computeSizeFixed64ListNoTag3, i9);
                        }
                        break;
                    case 47:
                        int computeSizeSInt32ListNoTag = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(abstractMessageLite, j));
                        if (computeSizeSInt32ListNoTag > 0) {
                            i9 = Modifier.CC.m(computeSizeSInt32ListNoTag, CodedOutputStream$OutputStreamEncoder.computeTagSize(i11), computeSizeSInt32ListNoTag, i9);
                        }
                        break;
                    case 48:
                        int computeSizeSInt64ListNoTag = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(abstractMessageLite, j));
                        if (computeSizeSInt64ListNoTag > 0) {
                            i9 = Modifier.CC.m(computeSizeSInt64ListNoTag, CodedOutputStream$OutputStreamEncoder.computeTagSize(i11), computeSizeSInt64ListNoTag, i9);
                        }
                        break;
                    case 49:
                        List list3 = (List) unsafe.getObject(abstractMessageLite, j);
                        Schema messageFieldSchema2 = getMessageFieldSchema(i8);
                        Class cls4 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        int size4 = list3.size();
                        if (size4 == 0) {
                            i3 = 0;
                        } else {
                            i3 = 0;
                            for (int i17 = 0; i17 < size4; i17++) {
                                i3 += CodedOutputStream$OutputStreamEncoder.computeGroupSize(i11, (AbstractMessageLite) list3.get(i17), messageFieldSchema2);
                            }
                        }
                        i9 += i3;
                        break;
                    case 50:
                        Object object3 = unsafe.getObject(abstractMessageLite, j);
                        Object mapFieldDefaultEntry = getMapFieldDefaultEntry(i8);
                        mapFieldSchemaLite.getClass();
                        computeBytesSize = MapFieldSchemaLite.getSerializedSize(i11, object3, mapFieldDefaultEntry);
                        i9 += computeBytesSize;
                        break;
                    case 51:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            c = '\b';
                            i9 = Modifier.CC.m(i11, 8, i9);
                            break;
                        }
                    case 52:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            i9 = Modifier.CC.m(i11, 4, i9);
                            break;
                        }
                    case 53:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            long oneofLongAt = oneofLongAt(j, abstractMessageLite);
                            computeTagSize3 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            computeUInt64SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(oneofLongAt);
                            computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize3;
                            i9 += computeBytesSize;
                        }
                        break;
                    case 54:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            long oneofLongAt2 = oneofLongAt(j, abstractMessageLite);
                            computeTagSize3 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            computeUInt64SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(oneofLongAt2);
                            computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize3;
                            i9 += computeBytesSize;
                        }
                        break;
                    case 55:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            int oneofIntAt = oneofIntAt(j, abstractMessageLite);
                            computeTagSize2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeInt32SizeNoTag(oneofIntAt);
                            computeBytesSize = computeUInt32SizeNoTag + computeTagSize2;
                            i9 += computeBytesSize;
                        }
                        break;
                    case 56:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            computeBytesSize = CodedOutputStream$OutputStreamEncoder.computeFixed64Size(i11);
                            i9 += computeBytesSize;
                        }
                        break;
                    case 57:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            computeBytesSize = CodedOutputStream$OutputStreamEncoder.computeFixed32Size(i11);
                            i9 += computeBytesSize;
                        }
                        break;
                    case 58:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            i9 = Modifier.CC.m(i11, 1, i9);
                            break;
                        }
                        break;
                    case 59:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            Object object4 = unsafe.getObject(abstractMessageLite, j);
                            if (object4 instanceof ByteString$LiteralByteString) {
                                int computeTagSize8 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                                int size5 = ((ByteString$LiteralByteString) object4).size();
                                computeStringSizeNoTag = Modifier.CC.m(size5, size5, computeTagSize8, i9);
                            } else {
                                computeStringSizeNoTag = CodedOutputStream$OutputStreamEncoder.computeStringSizeNoTag((String) object4) + CodedOutputStream$OutputStreamEncoder.computeTagSize(i11) + i9;
                            }
                            i9 = computeStringSizeNoTag;
                        }
                        break;
                    case 60:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            Object object5 = unsafe.getObject(abstractMessageLite, j);
                            Schema messageFieldSchema3 = getMessageFieldSchema(i8);
                            Class cls5 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                            int computeTagSize9 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            int serializedSize2 = ((AbstractMessageLite) object5).getSerializedSize(messageFieldSchema3);
                            i9 = Modifier.CC.m(serializedSize2, serializedSize2, computeTagSize9, i9);
                        }
                        break;
                    case 61:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            computeBytesSize = CodedOutputStream$OutputStreamEncoder.computeBytesSize(i11, (ByteString$LiteralByteString) unsafe.getObject(abstractMessageLite, j));
                            i9 += computeBytesSize;
                        }
                        break;
                    case 62:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            int oneofIntAt2 = oneofIntAt(j, abstractMessageLite);
                            computeTagSize2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(oneofIntAt2);
                            computeBytesSize = computeUInt32SizeNoTag + computeTagSize2;
                            i9 += computeBytesSize;
                        }
                        break;
                    case 63:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            int oneofIntAt3 = oneofIntAt(j, abstractMessageLite);
                            computeTagSize2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeInt32SizeNoTag(oneofIntAt3);
                            computeBytesSize = computeUInt32SizeNoTag + computeTagSize2;
                            i9 += computeBytesSize;
                        }
                        break;
                    case 64:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            i9 = Modifier.CC.m(i11, 4, i9);
                            break;
                        }
                    case 65:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            c = '\b';
                            i9 = Modifier.CC.m(i11, 8, i9);
                            break;
                        }
                    case 66:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            int oneofIntAt4 = oneofIntAt(j, abstractMessageLite);
                            computeTagSize2 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            computeUInt32SizeNoTag = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag((oneofIntAt4 >> 31) ^ (oneofIntAt4 << 1));
                            computeBytesSize = computeUInt32SizeNoTag + computeTagSize2;
                            i9 += computeBytesSize;
                        }
                        break;
                    case 67:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            long oneofLongAt3 = oneofLongAt(j, abstractMessageLite);
                            computeTagSize3 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i11);
                            computeUInt64SizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag((oneofLongAt3 >> 63) ^ (oneofLongAt3 << 1));
                            computeBytesSize = computeUInt64SizeNoTag2 + computeTagSize3;
                            i9 += computeBytesSize;
                        }
                        break;
                    case 68:
                        if (isOneofPresent(i11, i8, abstractMessageLite)) {
                            computeBytesSize = CodedOutputStream$OutputStreamEncoder.computeGroupSize(i11, (AbstractMessageLite) unsafe.getObject(abstractMessageLite, j), getMessageFieldSchema(i8));
                            i9 += computeBytesSize;
                        }
                        break;
                }
                i8 += 3;
                unknownFieldSetLiteSchema2 = unknownFieldSetLiteSchema;
            }
            unknownFieldSetLiteSchema2.getClass();
            return ((GeneratedMessageLite) abstractMessageLite).unknownFields.getSerializedSize() + i9;
        }
        int i18 = 0;
        int i19 = 0;
        while (i18 < iArr.length) {
            int typeAndOffsetAt2 = typeAndOffsetAt(i18);
            int type2 = type(typeAndOffsetAt2);
            int i20 = iArr[i18];
            int i21 = i5;
            long j5 = typeAndOffsetAt2 & i5;
            if (type2 >= FieldType.DOUBLE_LIST_PACKED.id() && type2 <= FieldType.SINT64_LIST_PACKED.id()) {
                int i22 = iArr[i18 + 2];
            }
            switch (type2) {
                case 0:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        i19 = Modifier.CC.m(i20, 8, i19);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        i19 = Modifier.CC.m(i20, 4, i19);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        long j6 = UnsafeUtil.getLong(j5, abstractMessageLite);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(j6);
                        i19 += computeUInt64SizeNoTag3 + computeTagSize4;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        long j7 = UnsafeUtil.getLong(j5, abstractMessageLite);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(j7);
                        i19 += computeUInt64SizeNoTag3 + computeTagSize4;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        int i23 = UnsafeUtil.getInt(j5, abstractMessageLite);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeInt32SizeNoTag(i23);
                        i19 += computeUInt64SizeNoTag3 + computeTagSize4;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        computeFixed64Size = CodedOutputStream$OutputStreamEncoder.computeFixed64Size(i20);
                        i19 += computeFixed64Size;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        computeFixed64Size = CodedOutputStream$OutputStreamEncoder.computeFixed32Size(i20);
                        i19 += computeFixed64Size;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    int i24 = i6;
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        i19 = Modifier.CC.m(i20, i24, i19);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        Object object6 = UnsafeUtil.getObject(j5, abstractMessageLite);
                        if (object6 instanceof ByteString$LiteralByteString) {
                            int computeTagSize10 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                            int size6 = ((ByteString$LiteralByteString) object6).size();
                            m = Modifier.CC.m(size6, size6, computeTagSize10, i19);
                            i19 = m;
                            break;
                        } else {
                            computeTagSize5 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                            computeStringSizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeStringSizeNoTag((String) object6);
                            i19 = computeStringSizeNoTag2 + computeTagSize5 + i19;
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        Object object7 = UnsafeUtil.getObject(j5, abstractMessageLite);
                        Schema messageFieldSchema4 = getMessageFieldSchema(i18);
                        Class cls6 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        int computeTagSize11 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        int serializedSize3 = ((AbstractMessageLite) object7).getSerializedSize(messageFieldSchema4);
                        i19 = Modifier.CC.m(serializedSize3, serializedSize3, computeTagSize11, i19);
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        computeFixed64Size = CodedOutputStream$OutputStreamEncoder.computeBytesSize(i20, (ByteString$LiteralByteString) UnsafeUtil.getObject(j5, abstractMessageLite));
                        i19 += computeFixed64Size;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        int i25 = UnsafeUtil.getInt(j5, abstractMessageLite);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(i25);
                        i19 += computeUInt64SizeNoTag3 + computeTagSize4;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        int i26 = UnsafeUtil.getInt(j5, abstractMessageLite);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeInt32SizeNoTag(i26);
                        i19 += computeUInt64SizeNoTag3 + computeTagSize4;
                        break;
                    } else {
                        break;
                    }
                case IMAGE_VALUE:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        i19 = Modifier.CC.m(i20, 4, i19);
                        break;
                    } else {
                        break;
                    }
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        i19 = Modifier.CC.m(i20, 8, i19);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        int i27 = UnsafeUtil.getInt(j5, abstractMessageLite);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag((i27 >> 31) ^ (i27 << 1));
                        i19 += computeUInt64SizeNoTag3 + computeTagSize4;
                        break;
                    } else {
                        break;
                    }
                case LAZY_VERTICAL_GRID_VALUE:
                    int i28 = i6;
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        long j8 = UnsafeUtil.getLong(j5, abstractMessageLite);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag((j8 >> 63) ^ (j8 << i28));
                        i19 += computeUInt64SizeNoTag3 + computeTagSize4;
                        break;
                    } else {
                        break;
                    }
                case VERTICAL_GRID_ITEM_VALUE:
                    if (isFieldPresent(i18, abstractMessageLite)) {
                        computeFixed64Size = CodedOutputStream$OutputStreamEncoder.computeGroupSize(i20, (AbstractMessageLite) UnsafeUtil.getObject(j5, abstractMessageLite), getMessageFieldSchema(i18));
                        i19 += computeFixed64Size;
                        break;
                    } else {
                        break;
                    }
                case RADIO_GROUP_VALUE:
                    computeFixed64Size = SchemaUtil.computeSizeFixed64List((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case RADIO_BUTTON_VALUE:
                    computeFixed64Size = SchemaUtil.computeSizeFixed32List((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case RADIO_ROW_VALUE:
                    computeFixed64Size = SchemaUtil.computeSizeInt64List((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case RADIO_COLUMN_VALUE:
                    computeFixed64Size = SchemaUtil.computeSizeUInt64List((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case SIZE_BOX_VALUE:
                    computeFixed64Size = SchemaUtil.computeSizeInt32List((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case 23:
                    computeFixed64Size = SchemaUtil.computeSizeFixed64List((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case 24:
                    computeFixed64Size = SchemaUtil.computeSizeFixed32List((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case 25:
                    List list4 = (List) UnsafeUtil.getObject(j5, abstractMessageLite);
                    Class cls7 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size7 = list4.size();
                    computeFixed64Size = size7 == 0 ? 0 : (CodedOutputStream$OutputStreamEncoder.computeTagSize(i20) + 1) * size7;
                    i19 += computeFixed64Size;
                    break;
                case 26:
                    computeFixed64Size = SchemaUtil.computeSizeStringList((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case 27:
                    computeFixed64Size = SchemaUtil.computeSizeMessageList(i20, (List) UnsafeUtil.getObject(j5, abstractMessageLite), getMessageFieldSchema(i18));
                    i19 += computeFixed64Size;
                    break;
                case 28:
                    computeFixed64Size = SchemaUtil.computeSizeByteStringList((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case 29:
                    computeFixed64Size = SchemaUtil.computeSizeUInt32List((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case 30:
                    computeFixed64Size = SchemaUtil.computeSizeEnumList((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case 31:
                    computeFixed64Size = SchemaUtil.computeSizeFixed32List((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case 32:
                    computeFixed64Size = SchemaUtil.computeSizeFixed64List((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case 33:
                    computeFixed64Size = SchemaUtil.computeSizeSInt32List((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case 34:
                    computeFixed64Size = SchemaUtil.computeSizeSInt64List((List) UnsafeUtil.getObject(j5, abstractMessageLite), i20);
                    i19 += computeFixed64Size;
                    break;
                case 35:
                    int computeSizeFixed64ListNoTag4 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(abstractMessageLite, j5));
                    if (computeSizeFixed64ListNoTag4 > 0) {
                        i19 = Modifier.CC.m(computeSizeFixed64ListNoTag4, CodedOutputStream$OutputStreamEncoder.computeTagSize(i20), computeSizeFixed64ListNoTag4, i19);
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int computeSizeFixed32ListNoTag4 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(abstractMessageLite, j5));
                    if (computeSizeFixed32ListNoTag4 > 0) {
                        i19 = Modifier.CC.m(computeSizeFixed32ListNoTag4, CodedOutputStream$OutputStreamEncoder.computeTagSize(i20), computeSizeFixed32ListNoTag4, i19);
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int computeSizeInt64ListNoTag2 = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(abstractMessageLite, j5));
                    if (computeSizeInt64ListNoTag2 > 0) {
                        i19 = Modifier.CC.m(computeSizeInt64ListNoTag2, CodedOutputStream$OutputStreamEncoder.computeTagSize(i20), computeSizeInt64ListNoTag2, i19);
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int computeSizeUInt64ListNoTag2 = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(abstractMessageLite, j5));
                    if (computeSizeUInt64ListNoTag2 > 0) {
                        i19 = Modifier.CC.m(computeSizeUInt64ListNoTag2, CodedOutputStream$OutputStreamEncoder.computeTagSize(i20), computeSizeUInt64ListNoTag2, i19);
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int computeSizeInt32ListNoTag2 = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(abstractMessageLite, j5));
                    if (computeSizeInt32ListNoTag2 > 0) {
                        i19 = Modifier.CC.m(computeSizeInt32ListNoTag2, CodedOutputStream$OutputStreamEncoder.computeTagSize(i20), computeSizeInt32ListNoTag2, i19);
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int computeSizeFixed64ListNoTag5 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(abstractMessageLite, j5));
                    if (computeSizeFixed64ListNoTag5 > 0) {
                        i19 = Modifier.CC.m(computeSizeFixed64ListNoTag5, CodedOutputStream$OutputStreamEncoder.computeTagSize(i20), computeSizeFixed64ListNoTag5, i19);
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int computeSizeFixed32ListNoTag5 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(abstractMessageLite, j5));
                    if (computeSizeFixed32ListNoTag5 > 0) {
                        i19 = Modifier.CC.m(computeSizeFixed32ListNoTag5, CodedOutputStream$OutputStreamEncoder.computeTagSize(i20), computeSizeFixed32ListNoTag5, i19);
                        break;
                    } else {
                        break;
                    }
                case 42:
                    List list5 = (List) unsafe.getObject(abstractMessageLite, j5);
                    Class cls8 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size8 = list5.size();
                    if (size8 > 0) {
                        i19 = Modifier.CC.m(size8, CodedOutputStream$OutputStreamEncoder.computeTagSize(i20), size8, i19);
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int computeSizeUInt32ListNoTag2 = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(abstractMessageLite, j5));
                    if (computeSizeUInt32ListNoTag2 > 0) {
                        i19 = Modifier.CC.m(computeSizeUInt32ListNoTag2, CodedOutputStream$OutputStreamEncoder.computeTagSize(i20), computeSizeUInt32ListNoTag2, i19);
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int computeSizeEnumListNoTag2 = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(abstractMessageLite, j5));
                    if (computeSizeEnumListNoTag2 > 0) {
                        i19 = Modifier.CC.m(computeSizeEnumListNoTag2, CodedOutputStream$OutputStreamEncoder.computeTagSize(i20), computeSizeEnumListNoTag2, i19);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int computeSizeFixed32ListNoTag6 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(abstractMessageLite, j5));
                    if (computeSizeFixed32ListNoTag6 > 0) {
                        i19 = Modifier.CC.m(computeSizeFixed32ListNoTag6, CodedOutputStream$OutputStreamEncoder.computeTagSize(i20), computeSizeFixed32ListNoTag6, i19);
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int computeSizeFixed64ListNoTag6 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(abstractMessageLite, j5));
                    if (computeSizeFixed64ListNoTag6 > 0) {
                        i19 = Modifier.CC.m(computeSizeFixed64ListNoTag6, CodedOutputStream$OutputStreamEncoder.computeTagSize(i20), computeSizeFixed64ListNoTag6, i19);
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int computeSizeSInt32ListNoTag2 = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(abstractMessageLite, j5));
                    if (computeSizeSInt32ListNoTag2 > 0) {
                        i19 = Modifier.CC.m(computeSizeSInt32ListNoTag2, CodedOutputStream$OutputStreamEncoder.computeTagSize(i20), computeSizeSInt32ListNoTag2, i19);
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int computeSizeSInt64ListNoTag2 = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(abstractMessageLite, j5));
                    if (computeSizeSInt64ListNoTag2 > 0) {
                        i19 = Modifier.CC.m(computeSizeSInt64ListNoTag2, CodedOutputStream$OutputStreamEncoder.computeTagSize(i20), computeSizeSInt64ListNoTag2, i19);
                        break;
                    } else {
                        break;
                    }
                case 49:
                    List list6 = (List) UnsafeUtil.getObject(j5, abstractMessageLite);
                    Schema messageFieldSchema5 = getMessageFieldSchema(i18);
                    Class cls9 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size9 = list6.size();
                    if (size9 == 0) {
                        i4 = 0;
                    } else {
                        int i29 = 0;
                        i4 = 0;
                        while (i29 < size9) {
                            i4 = CodedOutputStream$OutputStreamEncoder.computeGroupSize(i20, (AbstractMessageLite) list6.get(i29), messageFieldSchema5) + i4;
                            i29++;
                            i6 = i6;
                        }
                    }
                    i19 = i4 + i19;
                    break;
                case 50:
                    Object object8 = UnsafeUtil.getObject(j5, abstractMessageLite);
                    Object mapFieldDefaultEntry2 = getMapFieldDefaultEntry(i18);
                    mapFieldSchemaLite.getClass();
                    computeFixed64Size = MapFieldSchemaLite.getSerializedSize(i20, object8, mapFieldDefaultEntry2);
                    i19 += computeFixed64Size;
                    break;
                case 51:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        i19 = Modifier.CC.m(i20, 8, i19);
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        i19 = Modifier.CC.m(i20, 4, i19);
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        long oneofLongAt4 = oneofLongAt(j5, abstractMessageLite);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(oneofLongAt4);
                        i19 += computeUInt64SizeNoTag3 + computeTagSize4;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        long oneofLongAt5 = oneofLongAt(j5, abstractMessageLite);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag(oneofLongAt5);
                        i19 += computeUInt64SizeNoTag3 + computeTagSize4;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        int oneofIntAt5 = oneofIntAt(j5, abstractMessageLite);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeInt32SizeNoTag(oneofIntAt5);
                        i19 += computeUInt64SizeNoTag3 + computeTagSize4;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        computeFixed64Size = CodedOutputStream$OutputStreamEncoder.computeFixed64Size(i20);
                        i19 += computeFixed64Size;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        computeFixed64Size = CodedOutputStream$OutputStreamEncoder.computeFixed32Size(i20);
                        i19 += computeFixed64Size;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        i19 = Modifier.CC.m(i20, i6, i19);
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        Object object9 = UnsafeUtil.getObject(j5, abstractMessageLite);
                        if (object9 instanceof ByteString$LiteralByteString) {
                            int computeTagSize12 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                            int size10 = ((ByteString$LiteralByteString) object9).size();
                            m = Modifier.CC.m(size10, size10, computeTagSize12, i19);
                            i19 = m;
                            break;
                        } else {
                            computeTagSize5 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                            computeStringSizeNoTag2 = CodedOutputStream$OutputStreamEncoder.computeStringSizeNoTag((String) object9);
                            i19 = computeStringSizeNoTag2 + computeTagSize5 + i19;
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        Object object10 = UnsafeUtil.getObject(j5, abstractMessageLite);
                        Schema messageFieldSchema6 = getMessageFieldSchema(i18);
                        Class cls10 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        int computeTagSize13 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        int serializedSize4 = ((AbstractMessageLite) object10).getSerializedSize(messageFieldSchema6);
                        i19 = Modifier.CC.m(serializedSize4, serializedSize4, computeTagSize13, i19);
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        computeFixed64Size = CodedOutputStream$OutputStreamEncoder.computeBytesSize(i20, (ByteString$LiteralByteString) UnsafeUtil.getObject(j5, abstractMessageLite));
                        i19 += computeFixed64Size;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        int oneofIntAt6 = oneofIntAt(j5, abstractMessageLite);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(oneofIntAt6);
                        i19 += computeUInt64SizeNoTag3 + computeTagSize4;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        int oneofIntAt7 = oneofIntAt(j5, abstractMessageLite);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeInt32SizeNoTag(oneofIntAt7);
                        i19 += computeUInt64SizeNoTag3 + computeTagSize4;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        i19 = Modifier.CC.m(i20, 4, i19);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        i19 = Modifier.CC.m(i20, 8, i19);
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        int oneofIntAt8 = oneofIntAt(j5, abstractMessageLite);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag((oneofIntAt8 >> 31) ^ (oneofIntAt8 << 1));
                        i19 += computeUInt64SizeNoTag3 + computeTagSize4;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        long oneofLongAt6 = oneofLongAt(j5, abstractMessageLite);
                        computeTagSize4 = CodedOutputStream$OutputStreamEncoder.computeTagSize(i20);
                        computeUInt64SizeNoTag3 = CodedOutputStream$OutputStreamEncoder.computeUInt64SizeNoTag((oneofLongAt6 >> 63) ^ (oneofLongAt6 << i6));
                        i19 += computeUInt64SizeNoTag3 + computeTagSize4;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (isOneofPresent(i20, i18, abstractMessageLite)) {
                        computeFixed64Size = CodedOutputStream$OutputStreamEncoder.computeGroupSize(i20, (AbstractMessageLite) UnsafeUtil.getObject(j5, abstractMessageLite), getMessageFieldSchema(i18));
                        i19 += computeFixed64Size;
                        break;
                    } else {
                        break;
                    }
            }
            i18 += 3;
            i5 = i21;
            i6 = 1;
        }
        unknownFieldSetLiteSchema2.getClass();
        return ((GeneratedMessageLite) abstractMessageLite).unknownFields.getSerializedSize() + i19;
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
    @Override // androidx.datastore.preferences.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int hashCode(androidx.datastore.preferences.protobuf.GeneratedMessageLite r12) {
        /*
            Method dump skipped, instructions count: 746
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.hashCode(androidx.datastore.preferences.protobuf.GeneratedMessageLite):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00ea A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00e9 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isFieldPresent(int r7, java.lang.Object r8) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.isFieldPresent(int, java.lang.Object):boolean");
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean isInitialized(Object obj) {
        int i;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        loop0: while (true) {
            boolean z = true;
            if (i3 >= this.checkInitializedCount) {
                return true;
            }
            int i5 = this.intArray[i3];
            int[] iArr = this.buffer;
            int i6 = iArr[i5];
            int typeAndOffsetAt = typeAndOffsetAt(i5);
            boolean z2 = this.proto3;
            if (z2) {
                i = 0;
            } else {
                int i7 = iArr[i5 + 2];
                int i8 = i7 & 1048575;
                i = 1 << (i7 >>> 20);
                if (i8 != i2) {
                    i4 = UNSAFE.getInt(obj, i8);
                    i2 = i8;
                }
            }
            if ((268435456 & typeAndOffsetAt) != 0) {
                if (!(z2 ? isFieldPresent(i5, obj) : (i4 & i) != 0)) {
                    break;
                }
            }
            int type = type(typeAndOffsetAt);
            if (type == 9 || type == 17) {
                if (z2) {
                    z = isFieldPresent(i5, obj);
                } else if ((i & i4) == 0) {
                    z = false;
                }
                if (z && !getMessageFieldSchema(i5).isInitialized(UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj))) {
                    break;
                }
                i3++;
            } else {
                if (type != 27) {
                    if (type == 60 || type == 68) {
                        if (isOneofPresent(i6, i5, obj) && !getMessageFieldSchema(i5).isInitialized(UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj))) {
                            break;
                        }
                        i3++;
                    } else if (type != 49) {
                        if (type == 50) {
                            Object object = UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj);
                            this.mapFieldSchema.getClass();
                            MapFieldLite mapFieldLite = (MapFieldLite) object;
                            if (!mapFieldLite.isEmpty() && ((MapEntryLite) getMapFieldDefaultEntry(i5)).metadata.valueType.getJavaType() == WireFormat$JavaType.MESSAGE) {
                                Schema schema = null;
                                for (Object obj2 : mapFieldLite.values()) {
                                    if (schema == null) {
                                        schema = Protobuf.INSTANCE.schemaFor(obj2.getClass());
                                    }
                                    if (!schema.isInitialized(obj2)) {
                                        break loop0;
                                    }
                                }
                            }
                        } else {
                            continue;
                        }
                        i3++;
                    }
                }
                List list = (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj);
                if (list.isEmpty()) {
                    continue;
                } else {
                    Schema messageFieldSchema = getMessageFieldSchema(i5);
                    for (int i9 = 0; i9 < list.size(); i9++) {
                        if (!messageFieldSchema.isInitialized(list.get(i9))) {
                            break loop0;
                        }
                    }
                }
                i3++;
            }
        }
        return false;
    }

    public final boolean isOneofPresent(int i, int i2, Object obj) {
        return UnsafeUtil.getInt((long) (this.buffer[i2 + 2] & 1048575), obj) == i;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void makeImmutable(Object obj) {
        int[] iArr;
        int i;
        int i2 = this.checkInitializedCount;
        while (true) {
            iArr = this.intArray;
            i = this.repeatedFieldOffsetStart;
            if (i2 >= i) {
                break;
            }
            long typeAndOffsetAt = typeAndOffsetAt(iArr[i2]) & 1048575;
            Object object = UnsafeUtil.getObject(typeAndOffsetAt, obj);
            if (object != null) {
                this.mapFieldSchema.getClass();
                ((MapFieldLite) object).isMutable = false;
                UnsafeUtil.putObject(obj, typeAndOffsetAt, object);
            }
            i2++;
        }
        int length = iArr.length;
        while (i < length) {
            this.listFieldSchema.makeImmutableListAt(iArr[i], obj);
            i++;
        }
        this.unknownFieldSchema.getClass();
        ((GeneratedMessageLite) obj).unknownFields.isMutable = false;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void mergeFrom(java.lang.Object r19, androidx.compose.ui.text.input.GapBuffer r20, androidx.datastore.preferences.protobuf.ExtensionRegistryLite r21) {
        /*
            Method dump skipped, instructions count: 1928
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.mergeFrom(java.lang.Object, androidx.compose.ui.text.input.GapBuffer, androidx.datastore.preferences.protobuf.ExtensionRegistryLite):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0099, code lost:
    
        r9.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x009c, code lost:
    
        r10.popLimit(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x009f, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mergeMap(java.lang.Object r8, int r9, java.lang.Object r10, androidx.datastore.preferences.protobuf.ExtensionRegistryLite r11, androidx.compose.ui.text.input.GapBuffer r12) {
        /*
            r7 = this;
            int r9 = r7.typeAndOffsetAt(r9)
            r0 = 1048575(0xfffff, float:1.469367E-39)
            r9 = r9 & r0
            long r0 = (long) r9
            java.lang.Object r9 = androidx.datastore.preferences.protobuf.UnsafeUtil.getObject(r0, r8)
            androidx.datastore.preferences.protobuf.MapFieldSchemaLite r7 = r7.mapFieldSchema
            if (r9 != 0) goto L1e
            r7.getClass()
            androidx.datastore.preferences.protobuf.MapFieldLite r9 = androidx.datastore.preferences.protobuf.MapFieldLite.EMPTY_MAP_FIELD
            androidx.datastore.preferences.protobuf.MapFieldLite r9 = r9.mutableCopy()
            androidx.datastore.preferences.protobuf.UnsafeUtil.putObject(r8, r0, r9)
            goto L35
        L1e:
            r7.getClass()
            r2 = r9
            androidx.datastore.preferences.protobuf.MapFieldLite r2 = (androidx.datastore.preferences.protobuf.MapFieldLite) r2
            boolean r2 = r2.isMutable
            if (r2 != 0) goto L35
            androidx.datastore.preferences.protobuf.MapFieldLite r2 = androidx.datastore.preferences.protobuf.MapFieldLite.EMPTY_MAP_FIELD
            androidx.datastore.preferences.protobuf.MapFieldLite r2 = r2.mutableCopy()
            androidx.datastore.preferences.protobuf.MapFieldSchemaLite.mergeFrom(r2, r9)
            androidx.datastore.preferences.protobuf.UnsafeUtil.putObject(r8, r0, r2)
            r9 = r2
        L35:
            r7.getClass()
            androidx.datastore.preferences.protobuf.MapFieldLite r9 = (androidx.datastore.preferences.protobuf.MapFieldLite) r9
            androidx.datastore.preferences.protobuf.MapEntryLite r10 = (androidx.datastore.preferences.protobuf.MapEntryLite) r10
            androidx.datastore.preferences.protobuf.MapEntryLite$Metadata r7 = r10.metadata
            r8 = 2
            r12.requireWireType$1(r8)
            java.lang.Object r10 = r12.buffer
            androidx.datastore.preferences.protobuf.CodedInputStream$StreamDecoder r10 = (androidx.datastore.preferences.protobuf.CodedInputStream$StreamDecoder) r10
            int r0 = r10.readUInt32()
            int r0 = r10.pushLimit(r0)
            java.lang.Object r1 = r7.defaultValue
            java.lang.String r2 = ""
            r3 = r1
        L53:
            int r4 = r12.getFieldNumber()     // Catch: java.lang.Throwable -> L77
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L99
            boolean r5 = r10.isAtEnd()     // Catch: java.lang.Throwable -> L77
            if (r5 == 0) goto L63
            goto L99
        L63:
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L84
            if (r4 == r8) goto L79
            boolean r4 = r12.skipField()     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            if (r4 == 0) goto L71
            goto L53
        L71:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r4 = new androidx.datastore.preferences.protobuf.InvalidProtocolBufferException     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            r4.<init>(r6)     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            throw r4     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
        L77:
            r7 = move-exception
            goto La0
        L79:
            androidx.datastore.preferences.protobuf.WireFormat$FieldType r4 = r7.valueType     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            java.lang.Class r5 = r1.getClass()     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            java.lang.Object r3 = r12.readField$1(r4, r5, r11)     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            goto L53
        L84:
            androidx.datastore.preferences.protobuf.WireFormat$FieldType r4 = r7.keyType     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            r5 = 0
            java.lang.Object r2 = r12.readField$1(r4, r5, r5)     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            goto L53
        L8c:
            boolean r4 = r12.skipField()     // Catch: java.lang.Throwable -> L77
            if (r4 == 0) goto L93
            goto L53
        L93:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r7 = new androidx.datastore.preferences.protobuf.InvalidProtocolBufferException     // Catch: java.lang.Throwable -> L77
            r7.<init>(r6)     // Catch: java.lang.Throwable -> L77
            throw r7     // Catch: java.lang.Throwable -> L77
        L99:
            r9.put(r2, r3)     // Catch: java.lang.Throwable -> L77
            r10.popLimit(r0)
            return
        La0:
            r10.popLimit(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.mergeMap(java.lang.Object, int, java.lang.Object, androidx.datastore.preferences.protobuf.ExtensionRegistryLite, androidx.compose.ui.text.input.GapBuffer):void");
    }

    public final void mergeMessage(GeneratedMessageLite generatedMessageLite, Object obj, int i) {
        long typeAndOffsetAt = typeAndOffsetAt(i) & 1048575;
        if (isFieldPresent(i, obj)) {
            Object object = UnsafeUtil.getObject(typeAndOffsetAt, generatedMessageLite);
            Object object2 = UnsafeUtil.getObject(typeAndOffsetAt, obj);
            if (object != null && object2 != null) {
                UnsafeUtil.putObject(generatedMessageLite, typeAndOffsetAt, Internal.mergeMessage(object, object2));
                setFieldPresent(i, generatedMessageLite);
            } else if (object2 != null) {
                UnsafeUtil.putObject(generatedMessageLite, typeAndOffsetAt, object2);
                setFieldPresent(i, generatedMessageLite);
            }
        }
    }

    public final void mergeOneofMessage(GeneratedMessageLite generatedMessageLite, Object obj, int i) {
        int typeAndOffsetAt = typeAndOffsetAt(i);
        int i2 = this.buffer[i];
        long j = typeAndOffsetAt & 1048575;
        if (isOneofPresent(i2, i, obj)) {
            Object object = UnsafeUtil.getObject(j, generatedMessageLite);
            Object object2 = UnsafeUtil.getObject(j, obj);
            if (object != null && object2 != null) {
                UnsafeUtil.putObject(generatedMessageLite, j, Internal.mergeMessage(object, object2));
                setOneofPresent(i2, i, generatedMessageLite);
            } else if (object2 != null) {
                UnsafeUtil.putObject(generatedMessageLite, j, object2);
                setOneofPresent(i2, i, generatedMessageLite);
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final Object newInstance() {
        this.newInstanceSchema.getClass();
        return ((GeneratedMessageLite) this.defaultInstance).dynamicMethod(GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE);
    }

    public final void readMessageList(Object obj, int i, GapBuffer gapBuffer, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        int readTag;
        List mutableListAt = this.listFieldSchema.mutableListAt(i & 1048575, obj);
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) gapBuffer.buffer;
        int i2 = gapBuffer.capacity;
        if ((i2 & 7) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            mutableListAt.add(gapBuffer.readMessage$1(schema, extensionRegistryLite));
            if (codedInputStream$StreamDecoder.isAtEnd() || gapBuffer.gapEnd != 0) {
                return;
            } else {
                readTag = codedInputStream$StreamDecoder.readTag();
            }
        } while (readTag == i2);
        gapBuffer.gapEnd = readTag;
    }

    public final void readString(int i, GapBuffer gapBuffer, Object obj) {
        if ((536870912 & i) != 0) {
            UnsafeUtil.putObject(obj, i & 1048575, gapBuffer.readStringRequireUtf8());
        } else if (this.lite) {
            UnsafeUtil.putObject(obj, i & 1048575, gapBuffer.readString());
        } else {
            UnsafeUtil.putObject(obj, i & 1048575, gapBuffer.readBytes());
        }
    }

    public final void setFieldPresent(int i, Object obj) {
        if (this.proto3) {
            return;
        }
        int i2 = this.buffer[i + 2];
        long j = i2 & 1048575;
        UnsafeUtil.putInt(UnsafeUtil.getInt(j, obj) | (1 << (i2 >>> 20)), j, obj);
    }

    public final void setOneofPresent(int i, int i2, Object obj) {
        UnsafeUtil.putInt(i, this.buffer[i2 + 2] & 1048575, obj);
    }

    public final int typeAndOffsetAt(int i) {
        return this.buffer[i + 1];
    }

    public final void writeFieldsInAscendingOrderProto2(Object obj, ManifestSchemaFactory manifestSchemaFactory) {
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        int[] iArr = this.buffer;
        int length = iArr.length;
        int i5 = -1;
        int i6 = 0;
        for (int i7 = 0; i7 < length; i7 = i4 + 3) {
            int typeAndOffsetAt = typeAndOffsetAt(i7);
            int i8 = iArr[i7];
            int type = type(typeAndOffsetAt);
            boolean z2 = this.proto3;
            Unsafe unsafe = UNSAFE;
            if (z2 || type > 17) {
                i = i7;
                i2 = 1048575;
                i3 = 0;
            } else {
                int i9 = iArr[i7 + 2];
                i2 = 1048575;
                int i10 = i9 & 1048575;
                i = i7;
                if (i10 != i5) {
                    i6 = unsafe.getInt(obj, i10);
                    i5 = i10;
                }
                i3 = 1 << (i9 >>> 20);
            }
            long j = typeAndOffsetAt & i2;
            switch (type) {
                case 0:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeDouble(UnsafeUtil.MEMORY_ACCESSOR.getDouble(j, obj), i8);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeFloat(i8, UnsafeUtil.MEMORY_ACCESSOR.getFloat(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeInt64(unsafe.getLong(obj, j), i8);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeUInt64(unsafe.getLong(obj, j), i8);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeInt32(i8, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeFixed64(unsafe.getLong(obj, j), i8);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeFixed32(i8, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeBool(i8, UnsafeUtil.MEMORY_ACCESSOR.getBoolean(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        writeString(i8, unsafe.getObject(obj, j), manifestSchemaFactory);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeMessage(i8, unsafe.getObject(obj, j), getMessageFieldSchema(i4));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeBytes(i8, (ByteString$LiteralByteString) unsafe.getObject(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeUInt32(i8, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeEnum(i8, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case IMAGE_VALUE:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeSFixed32(i8, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeSFixed64(unsafe.getLong(obj, j), i8);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeSInt32(i8, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case LAZY_VERTICAL_GRID_VALUE:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeSInt64(unsafe.getLong(obj, j), i8);
                        break;
                    } else {
                        break;
                    }
                case VERTICAL_GRID_ITEM_VALUE:
                    i4 = i;
                    if ((i3 & i6) != 0) {
                        manifestSchemaFactory.writeGroup(i8, unsafe.getObject(obj, j), getMessageFieldSchema(i4));
                        break;
                    } else {
                        break;
                    }
                case RADIO_GROUP_VALUE:
                    i4 = i;
                    SchemaUtil.writeDoubleList(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    break;
                case RADIO_BUTTON_VALUE:
                    i4 = i;
                    SchemaUtil.writeFloatList(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    break;
                case RADIO_ROW_VALUE:
                    i4 = i;
                    SchemaUtil.writeInt64List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    break;
                case RADIO_COLUMN_VALUE:
                    i4 = i;
                    SchemaUtil.writeUInt64List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    break;
                case SIZE_BOX_VALUE:
                    i4 = i;
                    SchemaUtil.writeInt32List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    break;
                case 23:
                    i4 = i;
                    SchemaUtil.writeFixed64List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    break;
                case 24:
                    i4 = i;
                    SchemaUtil.writeFixed32List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    break;
                case 25:
                    i4 = i;
                    SchemaUtil.writeBoolList(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    break;
                case 26:
                    i4 = i;
                    SchemaUtil.writeStringList(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory);
                    break;
                case 27:
                    i4 = i;
                    SchemaUtil.writeMessageList(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, getMessageFieldSchema(i4));
                    break;
                case 28:
                    i4 = i;
                    SchemaUtil.writeBytesList(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory);
                    break;
                case 29:
                    i4 = i;
                    z = false;
                    SchemaUtil.writeUInt32List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    break;
                case 30:
                    i4 = i;
                    z = false;
                    SchemaUtil.writeEnumList(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    break;
                case 31:
                    i4 = i;
                    z = false;
                    SchemaUtil.writeSFixed32List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    break;
                case 32:
                    i4 = i;
                    z = false;
                    SchemaUtil.writeSFixed64List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    break;
                case 33:
                    i4 = i;
                    z = false;
                    SchemaUtil.writeSInt32List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    break;
                case 34:
                    i4 = i;
                    z = false;
                    SchemaUtil.writeSInt64List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, false);
                    break;
                case 35:
                    i4 = i;
                    SchemaUtil.writeDoubleList(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    break;
                case 36:
                    i4 = i;
                    SchemaUtil.writeFloatList(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    break;
                case 37:
                    i4 = i;
                    SchemaUtil.writeInt64List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    break;
                case 38:
                    i4 = i;
                    SchemaUtil.writeUInt64List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    break;
                case 39:
                    i4 = i;
                    SchemaUtil.writeInt32List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    break;
                case 40:
                    i4 = i;
                    SchemaUtil.writeFixed64List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    break;
                case 41:
                    i4 = i;
                    SchemaUtil.writeFixed32List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    break;
                case 42:
                    i4 = i;
                    SchemaUtil.writeBoolList(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    break;
                case 43:
                    i4 = i;
                    SchemaUtil.writeUInt32List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    break;
                case 44:
                    i4 = i;
                    SchemaUtil.writeEnumList(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    break;
                case 45:
                    i4 = i;
                    SchemaUtil.writeSFixed32List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    break;
                case 46:
                    i4 = i;
                    SchemaUtil.writeSFixed64List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    break;
                case 47:
                    i4 = i;
                    SchemaUtil.writeSInt32List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    break;
                case 48:
                    i4 = i;
                    SchemaUtil.writeSInt64List(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, true);
                    break;
                case 49:
                    i4 = i;
                    SchemaUtil.writeGroupList(iArr[i4], (List) unsafe.getObject(obj, j), manifestSchemaFactory, getMessageFieldSchema(i4));
                    break;
                case 50:
                    i4 = i;
                    writeMapHelper(manifestSchemaFactory, i8, unsafe.getObject(obj, j), i4);
                    break;
                case 51:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeDouble(((Double) UnsafeUtil.getObject(j, obj)).doubleValue(), i8);
                    }
                    break;
                case 52:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeFloat(i8, ((Float) UnsafeUtil.getObject(j, obj)).floatValue());
                    }
                    break;
                case 53:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeInt64(oneofLongAt(j, obj), i8);
                    }
                    break;
                case 54:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeUInt64(oneofLongAt(j, obj), i8);
                    }
                    break;
                case 55:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeInt32(i8, oneofIntAt(j, obj));
                    }
                    break;
                case 56:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeFixed64(oneofLongAt(j, obj), i8);
                    }
                    break;
                case 57:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeFixed32(i8, oneofIntAt(j, obj));
                    }
                    break;
                case 58:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeBool(i8, ((Boolean) UnsafeUtil.getObject(j, obj)).booleanValue());
                    }
                    break;
                case 59:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        writeString(i8, unsafe.getObject(obj, j), manifestSchemaFactory);
                    }
                    break;
                case 60:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeMessage(i8, unsafe.getObject(obj, j), getMessageFieldSchema(i4));
                    }
                    break;
                case 61:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeBytes(i8, (ByteString$LiteralByteString) unsafe.getObject(obj, j));
                    }
                    break;
                case 62:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeUInt32(i8, oneofIntAt(j, obj));
                    }
                    break;
                case 63:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeEnum(i8, oneofIntAt(j, obj));
                    }
                    break;
                case 64:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeSFixed32(i8, oneofIntAt(j, obj));
                    }
                    break;
                case 65:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeSFixed64(oneofLongAt(j, obj), i8);
                    }
                    break;
                case 66:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeSInt32(i8, oneofIntAt(j, obj));
                    }
                    break;
                case 67:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeSInt64(oneofLongAt(j, obj), i8);
                    }
                    break;
                case 68:
                    i4 = i;
                    if (isOneofPresent(i8, i4, obj)) {
                        manifestSchemaFactory.writeGroup(i8, unsafe.getObject(obj, j), getMessageFieldSchema(i4));
                    }
                    break;
                default:
                    i4 = i;
                    break;
            }
        }
        this.unknownFieldSchema.getClass();
        ((GeneratedMessageLite) obj).unknownFields.writeTo(manifestSchemaFactory);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0149 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void writeMapHelper(androidx.datastore.preferences.protobuf.ManifestSchemaFactory r23, int r24, java.lang.Object r25, int r26) {
        /*
            Method dump skipped, instructions count: 642
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.writeMapHelper(androidx.datastore.preferences.protobuf.ManifestSchemaFactory, int, java.lang.Object, int):void");
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void writeTo(Object obj, ManifestSchemaFactory manifestSchemaFactory) {
        manifestSchemaFactory.getClass();
        Writer$FieldOrder writer$FieldOrder = Writer$FieldOrder.ASCENDING;
        Writer$FieldOrder writer$FieldOrder2 = Writer$FieldOrder.DESCENDING;
        int[] iArr = this.buffer;
        UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = this.unknownFieldSchema;
        if (writer$FieldOrder == writer$FieldOrder2) {
            unknownFieldSetLiteSchema.getClass();
            ((GeneratedMessageLite) obj).unknownFields.writeTo(manifestSchemaFactory);
            for (int length = iArr.length - 3; length >= 0; length -= 3) {
                int typeAndOffsetAt = typeAndOffsetAt(length);
                int i = iArr[length];
                switch (type(typeAndOffsetAt)) {
                    case 0:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeDouble(UnsafeUtil.MEMORY_ACCESSOR.getDouble(typeAndOffsetAt & 1048575, obj), i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeFloat(i, UnsafeUtil.MEMORY_ACCESSOR.getFloat(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeInt64(UnsafeUtil.getLong(typeAndOffsetAt & 1048575, obj), i);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeUInt64(UnsafeUtil.getLong(typeAndOffsetAt & 1048575, obj), i);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeInt32(i, UnsafeUtil.getInt(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeFixed64(UnsafeUtil.getLong(typeAndOffsetAt & 1048575, obj), i);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeFixed32(i, UnsafeUtil.getInt(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeBool(i, UnsafeUtil.MEMORY_ACCESSOR.getBoolean(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (isFieldPresent(length, obj)) {
                            writeString(i, UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeMessage(i, UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), getMessageFieldSchema(length));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeBytes(i, (ByteString$LiteralByteString) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeUInt32(i, UnsafeUtil.getInt(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeEnum(i, UnsafeUtil.getInt(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case IMAGE_VALUE:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeSFixed32(i, UnsafeUtil.getInt(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeSFixed64(UnsafeUtil.getLong(typeAndOffsetAt & 1048575, obj), i);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeSInt32(i, UnsafeUtil.getInt(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case LAZY_VERTICAL_GRID_VALUE:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeSInt64(UnsafeUtil.getLong(typeAndOffsetAt & 1048575, obj), i);
                            break;
                        } else {
                            break;
                        }
                    case VERTICAL_GRID_ITEM_VALUE:
                        if (isFieldPresent(length, obj)) {
                            manifestSchemaFactory.writeGroup(i, UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), getMessageFieldSchema(length));
                            break;
                        } else {
                            break;
                        }
                    case RADIO_GROUP_VALUE:
                        SchemaUtil.writeDoubleList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        break;
                    case RADIO_BUTTON_VALUE:
                        SchemaUtil.writeFloatList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        break;
                    case RADIO_ROW_VALUE:
                        SchemaUtil.writeInt64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        break;
                    case RADIO_COLUMN_VALUE:
                        SchemaUtil.writeUInt64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        break;
                    case SIZE_BOX_VALUE:
                        SchemaUtil.writeInt32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        break;
                    case 23:
                        SchemaUtil.writeFixed64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        break;
                    case 24:
                        SchemaUtil.writeFixed32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        break;
                    case 25:
                        SchemaUtil.writeBoolList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        break;
                    case 26:
                        SchemaUtil.writeStringList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory);
                        break;
                    case 27:
                        SchemaUtil.writeMessageList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, getMessageFieldSchema(length));
                        break;
                    case 28:
                        SchemaUtil.writeBytesList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory);
                        break;
                    case 29:
                        SchemaUtil.writeUInt32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        break;
                    case 30:
                        SchemaUtil.writeEnumList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        break;
                    case 31:
                        SchemaUtil.writeSFixed32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        break;
                    case 32:
                        SchemaUtil.writeSFixed64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        break;
                    case 33:
                        SchemaUtil.writeSInt32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        break;
                    case 34:
                        SchemaUtil.writeSInt64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, false);
                        break;
                    case 35:
                        SchemaUtil.writeDoubleList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        break;
                    case 36:
                        SchemaUtil.writeFloatList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        break;
                    case 37:
                        SchemaUtil.writeInt64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        break;
                    case 38:
                        SchemaUtil.writeUInt64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        break;
                    case 39:
                        SchemaUtil.writeInt32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        break;
                    case 40:
                        SchemaUtil.writeFixed64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        break;
                    case 41:
                        SchemaUtil.writeFixed32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        break;
                    case 42:
                        SchemaUtil.writeBoolList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        break;
                    case 43:
                        SchemaUtil.writeUInt32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        break;
                    case 44:
                        SchemaUtil.writeEnumList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        break;
                    case 45:
                        SchemaUtil.writeSFixed32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        break;
                    case 46:
                        SchemaUtil.writeSFixed64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        break;
                    case 47:
                        SchemaUtil.writeSInt32List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        break;
                    case 48:
                        SchemaUtil.writeSInt64List(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, true);
                        break;
                    case 49:
                        SchemaUtil.writeGroupList(iArr[length], (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory, getMessageFieldSchema(length));
                        break;
                    case 50:
                        writeMapHelper(manifestSchemaFactory, i, UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), length);
                        break;
                    case 51:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeDouble(((Double) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj)).doubleValue(), i);
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeFloat(i, ((Float) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj)).floatValue());
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeInt64(oneofLongAt(typeAndOffsetAt & 1048575, obj), i);
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeUInt64(oneofLongAt(typeAndOffsetAt & 1048575, obj), i);
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeInt32(i, oneofIntAt(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeFixed64(oneofLongAt(typeAndOffsetAt & 1048575, obj), i);
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeFixed32(i, oneofIntAt(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeBool(i, ((Boolean) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj)).booleanValue());
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (isOneofPresent(i, length, obj)) {
                            writeString(i, UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), manifestSchemaFactory);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeMessage(i, UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), getMessageFieldSchema(length));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeBytes(i, (ByteString$LiteralByteString) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeUInt32(i, oneofIntAt(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeEnum(i, oneofIntAt(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeSFixed32(i, oneofIntAt(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeSFixed64(oneofLongAt(typeAndOffsetAt & 1048575, obj), i);
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeSInt32(i, oneofIntAt(typeAndOffsetAt & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeSInt64(oneofLongAt(typeAndOffsetAt & 1048575, obj), i);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (isOneofPresent(i, length, obj)) {
                            manifestSchemaFactory.writeGroup(i, UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj), getMessageFieldSchema(length));
                            break;
                        } else {
                            break;
                        }
                }
            }
            return;
        }
        if (!this.proto3) {
            writeFieldsInAscendingOrderProto2(obj, manifestSchemaFactory);
            return;
        }
        int length2 = iArr.length;
        for (int i2 = 0; i2 < length2; i2 += 3) {
            int typeAndOffsetAt2 = typeAndOffsetAt(i2);
            int i3 = iArr[i2];
            switch (type(typeAndOffsetAt2)) {
                case 0:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeDouble(UnsafeUtil.MEMORY_ACCESSOR.getDouble(typeAndOffsetAt2 & 1048575, obj), i3);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeFloat(i3, UnsafeUtil.MEMORY_ACCESSOR.getFloat(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeInt64(UnsafeUtil.getLong(typeAndOffsetAt2 & 1048575, obj), i3);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeUInt64(UnsafeUtil.getLong(typeAndOffsetAt2 & 1048575, obj), i3);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeInt32(i3, UnsafeUtil.getInt(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeFixed64(UnsafeUtil.getLong(typeAndOffsetAt2 & 1048575, obj), i3);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeFixed32(i3, UnsafeUtil.getInt(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeBool(i3, UnsafeUtil.MEMORY_ACCESSOR.getBoolean(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (isFieldPresent(i2, obj)) {
                        writeString(i3, UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeMessage(i3, UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), getMessageFieldSchema(i2));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeBytes(i3, (ByteString$LiteralByteString) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeUInt32(i3, UnsafeUtil.getInt(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeEnum(i3, UnsafeUtil.getInt(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case IMAGE_VALUE:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeSFixed32(i3, UnsafeUtil.getInt(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeSFixed64(UnsafeUtil.getLong(typeAndOffsetAt2 & 1048575, obj), i3);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeSInt32(i3, UnsafeUtil.getInt(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case LAZY_VERTICAL_GRID_VALUE:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeSInt64(UnsafeUtil.getLong(typeAndOffsetAt2 & 1048575, obj), i3);
                        break;
                    } else {
                        break;
                    }
                case VERTICAL_GRID_ITEM_VALUE:
                    if (isFieldPresent(i2, obj)) {
                        manifestSchemaFactory.writeGroup(i3, UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), getMessageFieldSchema(i2));
                        break;
                    } else {
                        break;
                    }
                case RADIO_GROUP_VALUE:
                    SchemaUtil.writeDoubleList(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, false);
                    break;
                case RADIO_BUTTON_VALUE:
                    SchemaUtil.writeFloatList(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, false);
                    break;
                case RADIO_ROW_VALUE:
                    SchemaUtil.writeInt64List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, false);
                    break;
                case RADIO_COLUMN_VALUE:
                    SchemaUtil.writeUInt64List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, false);
                    break;
                case SIZE_BOX_VALUE:
                    SchemaUtil.writeInt32List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, false);
                    break;
                case 23:
                    SchemaUtil.writeFixed64List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, false);
                    break;
                case 24:
                    SchemaUtil.writeFixed32List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, false);
                    break;
                case 25:
                    SchemaUtil.writeBoolList(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, false);
                    break;
                case 26:
                    SchemaUtil.writeStringList(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory);
                    break;
                case 27:
                    SchemaUtil.writeMessageList(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, getMessageFieldSchema(i2));
                    break;
                case 28:
                    SchemaUtil.writeBytesList(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory);
                    break;
                case 29:
                    SchemaUtil.writeUInt32List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, false);
                    break;
                case 30:
                    SchemaUtil.writeEnumList(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, false);
                    break;
                case 31:
                    SchemaUtil.writeSFixed32List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, false);
                    break;
                case 32:
                    SchemaUtil.writeSFixed64List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, false);
                    break;
                case 33:
                    SchemaUtil.writeSInt32List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, false);
                    break;
                case 34:
                    SchemaUtil.writeSInt64List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, false);
                    break;
                case 35:
                    SchemaUtil.writeDoubleList(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, true);
                    break;
                case 36:
                    SchemaUtil.writeFloatList(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, true);
                    break;
                case 37:
                    SchemaUtil.writeInt64List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, true);
                    break;
                case 38:
                    SchemaUtil.writeUInt64List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, true);
                    break;
                case 39:
                    SchemaUtil.writeInt32List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, true);
                    break;
                case 40:
                    SchemaUtil.writeFixed64List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, true);
                    break;
                case 41:
                    SchemaUtil.writeFixed32List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, true);
                    break;
                case 42:
                    SchemaUtil.writeBoolList(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, true);
                    break;
                case 43:
                    SchemaUtil.writeUInt32List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, true);
                    break;
                case 44:
                    SchemaUtil.writeEnumList(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, true);
                    break;
                case 45:
                    SchemaUtil.writeSFixed32List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, true);
                    break;
                case 46:
                    SchemaUtil.writeSFixed64List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, true);
                    break;
                case 47:
                    SchemaUtil.writeSInt32List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, true);
                    break;
                case 48:
                    SchemaUtil.writeSInt64List(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, true);
                    break;
                case 49:
                    SchemaUtil.writeGroupList(iArr[i2], (List) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory, getMessageFieldSchema(i2));
                    break;
                case 50:
                    writeMapHelper(manifestSchemaFactory, i3, UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), i2);
                    break;
                case 51:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeDouble(((Double) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj)).doubleValue(), i3);
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeFloat(i3, ((Float) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj)).floatValue());
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeInt64(oneofLongAt(typeAndOffsetAt2 & 1048575, obj), i3);
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeUInt64(oneofLongAt(typeAndOffsetAt2 & 1048575, obj), i3);
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeInt32(i3, oneofIntAt(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeFixed64(oneofLongAt(typeAndOffsetAt2 & 1048575, obj), i3);
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeFixed32(i3, oneofIntAt(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeBool(i3, ((Boolean) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj)).booleanValue());
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (isOneofPresent(i3, i2, obj)) {
                        writeString(i3, UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), manifestSchemaFactory);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeMessage(i3, UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), getMessageFieldSchema(i2));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeBytes(i3, (ByteString$LiteralByteString) UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeUInt32(i3, oneofIntAt(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeEnum(i3, oneofIntAt(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeSFixed32(i3, oneofIntAt(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeSFixed64(oneofLongAt(typeAndOffsetAt2 & 1048575, obj), i3);
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeSInt32(i3, oneofIntAt(typeAndOffsetAt2 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeSInt64(oneofLongAt(typeAndOffsetAt2 & 1048575, obj), i3);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (isOneofPresent(i3, i2, obj)) {
                        manifestSchemaFactory.writeGroup(i3, UnsafeUtil.getObject(typeAndOffsetAt2 & 1048575, obj), getMessageFieldSchema(i2));
                        break;
                    } else {
                        break;
                    }
            }
        }
        unknownFieldSetLiteSchema.getClass();
        ((GeneratedMessageLite) obj).unknownFields.writeTo(manifestSchemaFactory);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void mergeFrom(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2) {
        GeneratedMessageLite generatedMessageLite3;
        generatedMessageLite2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.buffer;
            if (i < iArr.length) {
                int typeAndOffsetAt = typeAndOffsetAt(i);
                long j = 1048575 & typeAndOffsetAt;
                int i2 = iArr[i];
                switch (type(typeAndOffsetAt)) {
                    case 0:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor = UnsafeUtil.MEMORY_ACCESSOR;
                            generatedMessageLite3 = generatedMessageLite;
                            memoryAccessor.putDouble(generatedMessageLite3, j, memoryAccessor.getDouble(j, generatedMessageLite2));
                            setFieldPresent(i, generatedMessageLite3);
                            break;
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 1:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor2 = UnsafeUtil.MEMORY_ACCESSOR;
                            memoryAccessor2.putFloat(generatedMessageLite, j, memoryAccessor2.getFloat(j, generatedMessageLite2));
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 2:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.putLong(generatedMessageLite, j, UnsafeUtil.getLong(j, generatedMessageLite2));
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 3:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.putLong(generatedMessageLite, j, UnsafeUtil.getLong(j, generatedMessageLite2));
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 4:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.putInt(UnsafeUtil.getInt(j, generatedMessageLite2), j, generatedMessageLite);
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 5:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.putLong(generatedMessageLite, j, UnsafeUtil.getLong(j, generatedMessageLite2));
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 6:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.putInt(UnsafeUtil.getInt(j, generatedMessageLite2), j, generatedMessageLite);
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 7:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor3 = UnsafeUtil.MEMORY_ACCESSOR;
                            memoryAccessor3.putBoolean(generatedMessageLite, j, memoryAccessor3.getBoolean(j, generatedMessageLite2));
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 8:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.putObject(generatedMessageLite, j, UnsafeUtil.getObject(j, generatedMessageLite2));
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 9:
                        mergeMessage(generatedMessageLite, generatedMessageLite2, i);
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 10:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.putObject(generatedMessageLite, j, UnsafeUtil.getObject(j, generatedMessageLite2));
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 11:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.putInt(UnsafeUtil.getInt(j, generatedMessageLite2), j, generatedMessageLite);
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 12:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.putInt(UnsafeUtil.getInt(j, generatedMessageLite2), j, generatedMessageLite);
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case IMAGE_VALUE:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.putInt(UnsafeUtil.getInt(j, generatedMessageLite2), j, generatedMessageLite);
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.putLong(generatedMessageLite, j, UnsafeUtil.getLong(j, generatedMessageLite2));
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 15:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.putInt(UnsafeUtil.getInt(j, generatedMessageLite2), j, generatedMessageLite);
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case LAZY_VERTICAL_GRID_VALUE:
                        if (isFieldPresent(i, generatedMessageLite2)) {
                            UnsafeUtil.putLong(generatedMessageLite, j, UnsafeUtil.getLong(j, generatedMessageLite2));
                            setFieldPresent(i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case VERTICAL_GRID_ITEM_VALUE:
                        mergeMessage(generatedMessageLite, generatedMessageLite2, i);
                        generatedMessageLite3 = generatedMessageLite;
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
                        this.listFieldSchema.mergeListsAt(generatedMessageLite, generatedMessageLite2, j);
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 50:
                        Class cls = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        Object object = UnsafeUtil.getObject(j, generatedMessageLite);
                        Object object2 = UnsafeUtil.getObject(j, generatedMessageLite2);
                        this.mapFieldSchema.getClass();
                        UnsafeUtil.putObject(generatedMessageLite, j, MapFieldSchemaLite.mergeFrom(object, object2));
                        generatedMessageLite3 = generatedMessageLite;
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
                        if (isOneofPresent(i2, i, generatedMessageLite2)) {
                            UnsafeUtil.putObject(generatedMessageLite, j, UnsafeUtil.getObject(j, generatedMessageLite2));
                            setOneofPresent(i2, i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 60:
                        mergeOneofMessage(generatedMessageLite, generatedMessageLite2, i);
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (isOneofPresent(i2, i, generatedMessageLite2)) {
                            UnsafeUtil.putObject(generatedMessageLite, j, UnsafeUtil.getObject(j, generatedMessageLite2));
                            setOneofPresent(i2, i, generatedMessageLite);
                        }
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    case 68:
                        mergeOneofMessage(generatedMessageLite, generatedMessageLite2, i);
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                    default:
                        generatedMessageLite3 = generatedMessageLite;
                        break;
                }
                i += 3;
                generatedMessageLite = generatedMessageLite3;
            } else {
                GeneratedMessageLite generatedMessageLite4 = generatedMessageLite;
                if (this.proto3) {
                    return;
                }
                SchemaUtil.mergeUnknownFields(this.unknownFieldSchema, generatedMessageLite4, generatedMessageLite2);
                return;
            }
        }
    }
}
