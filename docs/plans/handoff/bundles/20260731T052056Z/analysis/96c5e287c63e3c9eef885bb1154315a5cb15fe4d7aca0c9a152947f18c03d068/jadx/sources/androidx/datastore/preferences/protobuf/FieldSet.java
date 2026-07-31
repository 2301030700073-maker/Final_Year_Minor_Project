package androidx.datastore.preferences.protobuf;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FieldSet {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final SmallSortedMap$1 fields = new SmallSortedMap$1(16);
    public boolean isImmutable;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.datastore.preferences.protobuf.FieldSet$1, reason: invalid class name */
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
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.SINT64.ordinal()] = 17;
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

    static {
        new FieldSet(0);
    }

    public FieldSet(int i) {
        makeImmutable();
        makeImmutable();
    }

    public static void writeElement(CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder, WireFormat$FieldType wireFormat$FieldType, int i, Object obj) {
        if (wireFormat$FieldType == WireFormat$FieldType.GROUP) {
            codedOutputStream$OutputStreamEncoder.writeTag(i, 3);
            ((AbstractMessageLite) obj).writeTo(codedOutputStream$OutputStreamEncoder);
            codedOutputStream$OutputStreamEncoder.writeTag(i, 4);
        }
        codedOutputStream$OutputStreamEncoder.writeTag(i, wireFormat$FieldType.getWireType());
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[wireFormat$FieldType.ordinal()]) {
            case 1:
                codedOutputStream$OutputStreamEncoder.writeFixed64NoTag(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 2:
                codedOutputStream$OutputStreamEncoder.writeFixed32NoTag(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 3:
                codedOutputStream$OutputStreamEncoder.writeUInt64NoTag(((Long) obj).longValue());
                break;
            case 4:
                codedOutputStream$OutputStreamEncoder.writeUInt64NoTag(((Long) obj).longValue());
                break;
            case 5:
                codedOutputStream$OutputStreamEncoder.writeInt32NoTag(((Integer) obj).intValue());
                break;
            case 6:
                codedOutputStream$OutputStreamEncoder.writeFixed64NoTag(((Long) obj).longValue());
                break;
            case 7:
                codedOutputStream$OutputStreamEncoder.writeFixed32NoTag(((Integer) obj).intValue());
                break;
            case 8:
                codedOutputStream$OutputStreamEncoder.write(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 9:
                ((AbstractMessageLite) obj).writeTo(codedOutputStream$OutputStreamEncoder);
                break;
            case 10:
                AbstractMessageLite abstractMessageLite = (AbstractMessageLite) obj;
                codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(abstractMessageLite.getSerializedSize());
                abstractMessageLite.writeTo(codedOutputStream$OutputStreamEncoder);
                break;
            case 11:
                if (!(obj instanceof ByteString$LiteralByteString)) {
                    codedOutputStream$OutputStreamEncoder.writeStringNoTag((String) obj);
                    break;
                } else {
                    codedOutputStream$OutputStreamEncoder.writeBytesNoTag((ByteString$LiteralByteString) obj);
                    break;
                }
            case 12:
                if (!(obj instanceof ByteString$LiteralByteString)) {
                    byte[] bArr = (byte[]) obj;
                    int length = bArr.length;
                    codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(length);
                    codedOutputStream$OutputStreamEncoder.write(bArr, 0, length);
                    break;
                } else {
                    codedOutputStream$OutputStreamEncoder.writeBytesNoTag((ByteString$LiteralByteString) obj);
                    break;
                }
            case IMAGE_VALUE:
                codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(((Integer) obj).intValue());
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                codedOutputStream$OutputStreamEncoder.writeFixed32NoTag(((Integer) obj).intValue());
                break;
            case 15:
                codedOutputStream$OutputStreamEncoder.writeFixed64NoTag(((Long) obj).longValue());
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                int intValue = ((Integer) obj).intValue();
                codedOutputStream$OutputStreamEncoder.writeUInt32NoTag((intValue >> 31) ^ (intValue << 1));
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                long longValue = ((Long) obj).longValue();
                codedOutputStream$OutputStreamEncoder.writeUInt64NoTag((longValue >> 63) ^ (longValue << 1));
                break;
            case RADIO_GROUP_VALUE:
                codedOutputStream$OutputStreamEncoder.writeInt32NoTag(((Integer) obj).intValue());
                break;
        }
    }

    public final Object clone() {
        FieldSet fieldSet = new FieldSet();
        SmallSortedMap$1 smallSortedMap$1 = this.fields;
        if (smallSortedMap$1.entryList.size() > 0) {
            Map.Entry arrayEntryAt = smallSortedMap$1.getArrayEntryAt(0);
            if (arrayEntryAt.getKey() != null) {
                ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                return null;
            }
            arrayEntryAt.getValue();
            throw null;
        }
        Iterator it = smallSortedMap$1.getOverflowEntries().iterator();
        if (!it.hasNext()) {
            return fieldSet;
        }
        Map.Entry entry = (Map.Entry) it.next();
        if (entry.getKey() != null) {
            ContextsKt$$ExternalSyntheticBUOutline0.m$1();
            return null;
        }
        entry.getValue();
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FieldSet) {
            return this.fields.equals(((FieldSet) obj).fields);
        }
        return false;
    }

    public final int hashCode() {
        return this.fields.hashCode();
    }

    public final void makeImmutable() {
        if (this.isImmutable) {
            return;
        }
        SmallSortedMap$1 smallSortedMap$1 = this.fields;
        if (!smallSortedMap$1.isImmutable) {
            if (smallSortedMap$1.entryList.size() > 0) {
                smallSortedMap$1.getArrayEntryAt(0).getKey().getClass();
                ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                return;
            } else {
                Iterator it = smallSortedMap$1.getOverflowEntries().iterator();
                if (it.hasNext()) {
                    ((Map.Entry) it.next()).getKey().getClass();
                    ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                    return;
                }
            }
        }
        if (!smallSortedMap$1.isImmutable) {
            smallSortedMap$1.overflowEntries = smallSortedMap$1.overflowEntries.isEmpty() ? Collections.EMPTY_MAP : DesugarCollections.unmodifiableMap(smallSortedMap$1.overflowEntries);
            smallSortedMap$1.overflowEntriesDescending = smallSortedMap$1.overflowEntriesDescending.isEmpty() ? Collections.EMPTY_MAP : DesugarCollections.unmodifiableMap(smallSortedMap$1.overflowEntriesDescending);
            smallSortedMap$1.isImmutable = true;
        }
        this.isImmutable = true;
    }

    public FieldSet() {
    }
}
