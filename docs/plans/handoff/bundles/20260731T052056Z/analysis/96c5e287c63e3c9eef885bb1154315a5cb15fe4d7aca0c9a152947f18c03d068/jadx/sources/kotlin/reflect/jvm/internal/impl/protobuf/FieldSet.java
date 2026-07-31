package kotlin.reflect.jvm.internal.impl.protobuf;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import j$.util.DesugarCollections;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FieldSet {
    public static final FieldSet DEFAULT_INSTANCE = new FieldSet(0);
    public final SmallSortedMap$1 fields = new SmallSortedMap$1(16);
    public boolean isImmutable;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.FieldSet$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;
        public static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$JavaType;

        static {
            int[] iArr = new int[WireFormat$FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat$FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.BYTES.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.SFIXED32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.SFIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.SINT32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.SINT64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.GROUP.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[WireFormat$JavaType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$JavaType = iArr2;
            try {
                iArr2[WireFormat$JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat$JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat$JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat$JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat$JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat$JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat$JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat$JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat$JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public FieldSet(int i) {
        makeImmutable();
    }

    public static int computeElementSizeNoTag(WireFormat$FieldType wireFormat$FieldType, Object obj) {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[wireFormat$FieldType.ordinal()]) {
            case 1:
                ((Double) obj).getClass();
                return 8;
            case 2:
                ((Float) obj).getClass();
                return 4;
            case 3:
                return SVG.PathDefinition.computeRawVarint64Size(((Long) obj).longValue());
            case 4:
                return SVG.PathDefinition.computeRawVarint64Size(((Long) obj).longValue());
            case 5:
                return SVG.PathDefinition.computeInt32SizeNoTag(((Integer) obj).intValue());
            case 6:
                ((Long) obj).getClass();
                return 8;
            case 7:
                ((Integer) obj).getClass();
                return 4;
            case 8:
                ((Boolean) obj).getClass();
                return 1;
            case 9:
                try {
                    byte[] bytes = ((String) obj).getBytes("UTF-8");
                    return SVG.PathDefinition.computeRawVarint32Size(bytes.length) + bytes.length;
                } catch (UnsupportedEncodingException e) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m("UTF-8 not supported.", (Throwable) e);
                    return 0;
                }
            case 10:
                if (obj instanceof ByteString) {
                    ByteString byteString = (ByteString) obj;
                    return byteString.size() + SVG.PathDefinition.computeRawVarint32Size(byteString.size());
                }
                byte[] bArr = (byte[]) obj;
                return SVG.PathDefinition.computeRawVarint32Size(bArr.length) + bArr.length;
            case 11:
                return SVG.PathDefinition.computeRawVarint32Size(((Integer) obj).intValue());
            case 12:
                ((Integer) obj).getClass();
                return 4;
            case IMAGE_VALUE:
                ((Long) obj).getClass();
                return 8;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                int intValue = ((Integer) obj).intValue();
                return SVG.PathDefinition.computeRawVarint32Size((intValue >> 31) ^ (intValue << 1));
            case 15:
                long longValue = ((Long) obj).longValue();
                return SVG.PathDefinition.computeRawVarint64Size((longValue >> 63) ^ (longValue << 1));
            case LAZY_VERTICAL_GRID_VALUE:
                return ((AbstractMessageLite) obj).getSerializedSize();
            case VERTICAL_GRID_ITEM_VALUE:
                return SVG.PathDefinition.computeMessageSizeNoTag((AbstractMessageLite) obj);
            case RADIO_GROUP_VALUE:
                return obj instanceof Internal.EnumLite ? SVG.PathDefinition.computeInt32SizeNoTag(((Internal.EnumLite) obj).getNumber()) : SVG.PathDefinition.computeInt32SizeNoTag(((Integer) obj).intValue());
            default:
                Gson$$ExternalSyntheticBUOutline0.m$1("There is no way to get here, but the compiler thinks otherwise.");
                return 0;
        }
    }

    public static int computeFieldSize(GeneratedMessageLite.ExtensionDescriptor extensionDescriptor, Object obj) {
        WireFormat$FieldType wireFormat$FieldType = extensionDescriptor.type;
        int i = extensionDescriptor.number;
        if (!extensionDescriptor.isRepeated) {
            int computeTagSize = SVG.PathDefinition.computeTagSize(i);
            if (wireFormat$FieldType == WireFormat$FieldType.GROUP) {
                computeTagSize *= 2;
            }
            return computeElementSizeNoTag(wireFormat$FieldType, obj) + computeTagSize;
        }
        int i2 = 0;
        for (Object obj2 : (List) obj) {
            int computeTagSize2 = SVG.PathDefinition.computeTagSize(i);
            if (wireFormat$FieldType == WireFormat$FieldType.GROUP) {
                computeTagSize2 *= 2;
            }
            i2 += computeElementSizeNoTag(wireFormat$FieldType, obj2) + computeTagSize2;
        }
        return i2;
    }

    public static boolean isInitialized(Map.Entry entry) {
        GeneratedMessageLite.ExtensionDescriptor extensionDescriptor = (GeneratedMessageLite.ExtensionDescriptor) entry.getKey();
        if (extensionDescriptor.type.getJavaType() != WireFormat$JavaType.MESSAGE) {
            return true;
        }
        if (extensionDescriptor.isRepeated) {
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                if (!((AbstractMessageLite) it.next()).isInitialized()) {
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (!(value instanceof AbstractMessageLite)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Wrong object type used with protocol message reflection.");
            return false;
        }
        if (((AbstractMessageLite) value).isInitialized()) {
            return true;
        }
        return false;
    }

    public static Object readPrimitiveField(CodedInputStream codedInputStream, WireFormat$FieldType wireFormat$FieldType) {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[wireFormat$FieldType.ordinal()]) {
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            case 7:
                break;
            case 8:
                break;
            case 9:
                int readRawVarint32 = codedInputStream.readRawVarint32();
                int i = codedInputStream.bufferSize;
                int i2 = codedInputStream.bufferPos;
                if (readRawVarint32 <= i - i2 && readRawVarint32 > 0) {
                    String str = new String(codedInputStream.buffer, i2, readRawVarint32, "UTF-8");
                    codedInputStream.bufferPos += readRawVarint32;
                    break;
                } else if (readRawVarint32 != 0) {
                    break;
                }
                break;
            case 10:
                break;
            case 11:
                break;
            case 12:
                break;
            case IMAGE_VALUE:
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                int readRawVarint322 = codedInputStream.readRawVarint32();
                break;
            case 15:
                long readRawVarint64 = codedInputStream.readRawVarint64();
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                _UtilJvmKt$$ExternalSyntheticLambda0.m("readPrimitiveField() cannot handle nested groups.");
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                _UtilJvmKt$$ExternalSyntheticLambda0.m("readPrimitiveField() cannot handle embedded messages.");
                break;
            case RADIO_GROUP_VALUE:
                _UtilJvmKt$$ExternalSyntheticLambda0.m("readPrimitiveField() cannot handle enums.");
                break;
            default:
                Gson$$ExternalSyntheticBUOutline0.m$1("There is no way to get here, but the compiler thinks otherwise.");
                break;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
    
        if ((r3 instanceof byte[]) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if ((r3 instanceof kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
    
        r0 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void verifyType(kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$FieldType r2, java.lang.Object r3) {
        /*
            r3.getClass()
            int[] r0 = kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$JavaType
            kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$JavaType r2 = r2.getJavaType()
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            r1 = 0
            switch(r2) {
                case 1: goto L3c;
                case 2: goto L39;
                case 3: goto L36;
                case 4: goto L33;
                case 5: goto L30;
                case 6: goto L2d;
                case 7: goto L24;
                case 8: goto L18;
                case 9: goto L15;
                default: goto L14;
            }
        L14:
            goto L3e
        L15:
            boolean r1 = r3 instanceof kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
            goto L3e
        L18:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L22
            boolean r2 = r3 instanceof kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
            if (r2 == 0) goto L21
            goto L22
        L21:
            r0 = r1
        L22:
            r1 = r0
            goto L3e
        L24:
            boolean r2 = r3 instanceof kotlin.reflect.jvm.internal.impl.protobuf.ByteString
            if (r2 != 0) goto L22
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L21
            goto L22
        L2d:
            boolean r1 = r3 instanceof java.lang.String
            goto L3e
        L30:
            boolean r1 = r3 instanceof java.lang.Boolean
            goto L3e
        L33:
            boolean r1 = r3 instanceof java.lang.Double
            goto L3e
        L36:
            boolean r1 = r3 instanceof java.lang.Float
            goto L3e
        L39:
            boolean r1 = r3 instanceof java.lang.Long
            goto L3e
        L3c:
            boolean r1 = r3 instanceof java.lang.Integer
        L3e:
            if (r1 == 0) goto L41
            return
        L41:
            java.lang.String r2 = "Wrong object type used with protocol message reflection."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.verifyType(kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$FieldType, java.lang.Object):void");
    }

    public static void writeElementNoTag(SVG.PathDefinition pathDefinition, WireFormat$FieldType wireFormat$FieldType, Object obj) {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[wireFormat$FieldType.ordinal()]) {
            case 1:
                double doubleValue = ((Double) obj).doubleValue();
                pathDefinition.getClass();
                pathDefinition.writeRawLittleEndian64(Double.doubleToRawLongBits(doubleValue));
                break;
            case 2:
                float floatValue = ((Float) obj).floatValue();
                pathDefinition.getClass();
                pathDefinition.writeRawLittleEndian32(Float.floatToRawIntBits(floatValue));
                break;
            case 3:
                pathDefinition.writeRawVarint64(((Long) obj).longValue());
                break;
            case 4:
                pathDefinition.writeRawVarint64(((Long) obj).longValue());
                break;
            case 5:
                pathDefinition.writeInt32NoTag(((Integer) obj).intValue());
                break;
            case 6:
                pathDefinition.writeRawLittleEndian64(((Long) obj).longValue());
                break;
            case 7:
                pathDefinition.writeRawLittleEndian32(((Integer) obj).intValue());
                break;
            case 8:
                pathDefinition.writeRawByte(((Boolean) obj).booleanValue() ? 1 : 0);
                break;
            case 9:
                pathDefinition.getClass();
                byte[] bytes = ((String) obj).getBytes("UTF-8");
                pathDefinition.writeRawVarint32(bytes.length);
                pathDefinition.writeRawBytes(bytes);
                break;
            case 10:
                if (!(obj instanceof ByteString)) {
                    byte[] bArr = (byte[]) obj;
                    pathDefinition.getClass();
                    pathDefinition.writeRawVarint32(bArr.length);
                    pathDefinition.writeRawBytes(bArr);
                    break;
                } else {
                    ByteString byteString = (ByteString) obj;
                    pathDefinition.getClass();
                    pathDefinition.writeRawVarint32(byteString.size());
                    pathDefinition.writeRawBytes(byteString);
                    break;
                }
            case 11:
                pathDefinition.writeRawVarint32(((Integer) obj).intValue());
                break;
            case 12:
                pathDefinition.writeRawLittleEndian32(((Integer) obj).intValue());
                break;
            case IMAGE_VALUE:
                pathDefinition.writeRawLittleEndian64(((Long) obj).longValue());
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                int intValue = ((Integer) obj).intValue();
                pathDefinition.writeRawVarint32((intValue >> 31) ^ (intValue << 1));
                break;
            case 15:
                long longValue = ((Long) obj).longValue();
                pathDefinition.writeRawVarint64((longValue >> 63) ^ (longValue << 1));
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                pathDefinition.getClass();
                ((AbstractMessageLite) obj).writeTo(pathDefinition);
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                pathDefinition.writeMessageNoTag((AbstractMessageLite) obj);
                break;
            case RADIO_GROUP_VALUE:
                if (!(obj instanceof Internal.EnumLite)) {
                    pathDefinition.writeInt32NoTag(((Integer) obj).intValue());
                    break;
                } else {
                    pathDefinition.writeInt32NoTag(((Internal.EnumLite) obj).getNumber());
                    break;
                }
        }
    }

    public final void addRepeatedField(GeneratedMessageLite.ExtensionDescriptor extensionDescriptor, Object obj) {
        List list;
        if (!extensionDescriptor.isRepeated) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("addRepeatedField() can only be called on repeated fields.");
            return;
        }
        verifyType(extensionDescriptor.type, obj);
        SmallSortedMap$1 smallSortedMap$1 = this.fields;
        Object obj2 = smallSortedMap$1.get(extensionDescriptor);
        if (obj2 == null) {
            list = new ArrayList();
            smallSortedMap$1.put(extensionDescriptor, list);
        } else {
            list = (List) obj2;
        }
        list.add(obj);
    }

    public final FieldSet clone() {
        SmallSortedMap$1 smallSortedMap$1;
        FieldSet fieldSet = new FieldSet();
        int i = 0;
        while (true) {
            smallSortedMap$1 = this.fields;
            if (i >= smallSortedMap$1.entryList.size()) {
                break;
            }
            Map.Entry entry = (Map.Entry) smallSortedMap$1.entryList.get(i);
            fieldSet.setField((GeneratedMessageLite.ExtensionDescriptor) entry.getKey(), entry.getValue());
            i++;
        }
        for (Map.Entry entry2 : smallSortedMap$1.getOverflowEntries()) {
            fieldSet.setField((GeneratedMessageLite.ExtensionDescriptor) entry2.getKey(), entry2.getValue());
        }
        return fieldSet;
    }

    public final void makeImmutable() {
        if (this.isImmutable) {
            return;
        }
        SmallSortedMap$1 smallSortedMap$1 = this.fields;
        if (!smallSortedMap$1.isImmutable) {
            for (int i = 0; i < smallSortedMap$1.entryList.size(); i++) {
                Map.Entry entry = (Map.Entry) smallSortedMap$1.entryList.get(i);
                if (((GeneratedMessageLite.ExtensionDescriptor) entry.getKey()).isRepeated) {
                    entry.setValue(DesugarCollections.unmodifiableList((List) entry.getValue()));
                }
            }
            for (Map.Entry entry2 : smallSortedMap$1.getOverflowEntries()) {
                if (((GeneratedMessageLite.ExtensionDescriptor) entry2.getKey()).isRepeated) {
                    entry2.setValue(DesugarCollections.unmodifiableList((List) entry2.getValue()));
                }
            }
        }
        if (!smallSortedMap$1.isImmutable) {
            smallSortedMap$1.overflowEntries = smallSortedMap$1.overflowEntries.isEmpty() ? Collections.EMPTY_MAP : DesugarCollections.unmodifiableMap(smallSortedMap$1.overflowEntries);
            smallSortedMap$1.isImmutable = true;
        }
        this.isImmutable = true;
    }

    public final void mergeFromField(Map.Entry entry) {
        GeneratedMessageLite.ExtensionDescriptor extensionDescriptor = (GeneratedMessageLite.ExtensionDescriptor) entry.getKey();
        Object value = entry.getValue();
        boolean z = extensionDescriptor.isRepeated;
        SmallSortedMap$1 smallSortedMap$1 = this.fields;
        if (z) {
            Object obj = smallSortedMap$1.get(extensionDescriptor);
            if (obj == null) {
                obj = new ArrayList();
            }
            for (Object obj2 : (List) value) {
                List list = (List) obj;
                if (obj2 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj2;
                    byte[] bArr2 = new byte[bArr.length];
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    obj2 = bArr2;
                }
                list.add(obj2);
            }
            smallSortedMap$1.put(extensionDescriptor, obj);
            return;
        }
        if (extensionDescriptor.type.getJavaType() != WireFormat$JavaType.MESSAGE) {
            if (value instanceof byte[]) {
                byte[] bArr3 = (byte[]) value;
                byte[] bArr4 = new byte[bArr3.length];
                System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
                value = bArr4;
            }
            smallSortedMap$1.put(extensionDescriptor, value);
            return;
        }
        Object obj3 = smallSortedMap$1.get(extensionDescriptor);
        if (obj3 != null) {
            smallSortedMap$1.put(extensionDescriptor, ((AbstractMessageLite) obj3).toBuilder().mergeFrom((GeneratedMessageLite) ((AbstractMessageLite) value)).build());
            return;
        }
        if (value instanceof byte[]) {
            byte[] bArr5 = (byte[]) value;
            byte[] bArr6 = new byte[bArr5.length];
            System.arraycopy(bArr5, 0, bArr6, 0, bArr5.length);
            value = bArr6;
        }
        smallSortedMap$1.put(extensionDescriptor, value);
    }

    public final void setField(GeneratedMessageLite.ExtensionDescriptor extensionDescriptor, Object obj) {
        boolean z = extensionDescriptor.isRepeated;
        WireFormat$FieldType wireFormat$FieldType = extensionDescriptor.type;
        if (!z) {
            verifyType(wireFormat$FieldType, obj);
        } else {
            if (!(obj instanceof List)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Wrong object type used with protocol message reflection.");
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                verifyType(wireFormat$FieldType, it.next());
            }
            obj = arrayList;
        }
        this.fields.put(extensionDescriptor, obj);
    }

    public FieldSet() {
    }
}
