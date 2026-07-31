package androidx.compose.ui.text.input;

import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.datastore.preferences.protobuf.ByteString$LiteralByteString;
import androidx.datastore.preferences.protobuf.CodedInputStream$StreamDecoder;
import androidx.datastore.preferences.protobuf.CodedInputStreamReader$1;
import androidx.datastore.preferences.protobuf.LazyStringList;
import androidx.datastore.preferences.protobuf.Protobuf;
import androidx.datastore.preferences.protobuf.WireFormat$FieldType;
import androidx.glance.appwidget.protobuf.CodedInputStream;
import androidx.glance.appwidget.protobuf.ExtensionRegistryLite;
import androidx.glance.appwidget.protobuf.Internal;
import androidx.glance.appwidget.protobuf.InvalidProtocolBufferException;
import androidx.glance.appwidget.protobuf.ProtobufArrayList;
import androidx.glance.appwidget.protobuf.Schema;
import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GapBuffer {
    public final /* synthetic */ int $r8$classId;
    public Object buffer;
    public int capacity;
    public int gapEnd;
    public int gapStart;

    public GapBuffer(CodedInputStream codedInputStream) {
        this.$r8$classId = 3;
        this.gapEnd = 0;
        Charset charset = Internal.UTF_8;
        this.buffer = codedInputStream;
        codedInputStream.wrapper = this;
    }

    public void addPosition(int i, int i2) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Layout positions must be non-negative");
            return;
        }
        if (i2 < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Pixel distance must be non-negative");
            return;
        }
        int i3 = this.gapEnd;
        int i4 = i3 * 2;
        int[] iArr = (int[]) this.buffer;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.buffer = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i4 >= iArr.length) {
            int[] iArr3 = new int[i3 * 4];
            this.buffer = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = (int[]) this.buffer;
        iArr4[i4] = i;
        iArr4[i4 + 1] = i2;
        this.gapEnd++;
    }

    public void collectPrefetchPositionsFromView(RecyclerView recyclerView, boolean z) {
        this.gapEnd = 0;
        int[] iArr = (int[]) this.buffer;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
        if (recyclerView.mAdapter == null || layoutManager == null || !layoutManager.mItemPrefetchEnabled) {
            return;
        }
        if (z) {
            if (!recyclerView.mAdapterHelper.hasPendingUpdates()) {
                layoutManager.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
            }
        } else if (!recyclerView.hasPendingAdapterUpdates()) {
            layoutManager.collectAdjacentPrefetchPositions(this.capacity, this.gapStart, recyclerView.mState, this);
        }
        int i = this.gapEnd;
        if (i > layoutManager.mPrefetchMaxCountObserved) {
            layoutManager.mPrefetchMaxCountObserved = i;
            layoutManager.mPrefetchMaxObservedInInitialPrefetch = z;
            recyclerView.mRecycler.updateViewCacheSize();
        }
    }

    public int gapLength() {
        return this.gapEnd - this.gapStart;
    }

    public int getFieldNumber() {
        switch (this.$r8$classId) {
            case 2:
                int i = this.gapEnd;
                if (i != 0) {
                    this.capacity = i;
                    this.gapEnd = 0;
                } else {
                    i = ((CodedInputStream$StreamDecoder) this.buffer).readTag();
                    this.capacity = i;
                }
                if (i == 0 || i == this.gapStart) {
                    return Integer.MAX_VALUE;
                }
                return i >>> 3;
            default:
                int i2 = this.gapEnd;
                if (i2 != 0) {
                    this.capacity = i2;
                    this.gapEnd = 0;
                } else {
                    i2 = ((CodedInputStream) this.buffer).readTag();
                    this.capacity = i2;
                }
                if (i2 == 0 || i2 == this.gapStart) {
                    return Integer.MAX_VALUE;
                }
                return i2 >>> 3;
        }
    }

    public int getInt(int i) {
        return ((Operations) this.buffer).intArgs[this.gapStart + i];
    }

    /* renamed from: getObject-PtL-UHM, reason: not valid java name */
    public Object m655getObjectPtLUHM(int i) {
        return ((Operations) this.buffer).objectArgs[this.gapEnd + i];
    }

    public int getTag() {
        return this.capacity;
    }

    public void mergeGroupFieldInternal(Object obj, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        int i = this.gapStart;
        this.gapStart = ((this.capacity >>> 3) << 3) | 4;
        try {
            schema.mergeFrom(obj, this, extensionRegistryLite);
            if (this.capacity == this.gapStart) {
            } else {
                throw new InvalidProtocolBufferException("Failed to parse the message.");
            }
        } finally {
            this.gapStart = i;
        }
    }

    public void mergeMessageFieldInternal(Object obj, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int readUInt32 = codedInputStream.readUInt32();
        if (codedInputStream.recursionDepth >= 100) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int pushLimit = codedInputStream.pushLimit(readUInt32);
        codedInputStream.recursionDepth++;
        schema.mergeFrom(obj, this, extensionRegistryLite);
        codedInputStream.checkLastTagWas(0);
        codedInputStream.recursionDepth--;
        codedInputStream.popLimit(pushLimit);
    }

    public boolean readBool() {
        requireWireType$1(0);
        return ((CodedInputStream$StreamDecoder) this.buffer).readBool();
    }

    public void readBoolList(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Boolean.valueOf(codedInputStream.readBool()));
                if (codedInputStream.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = codedInputStream.getTotalBytesRead() + codedInputStream.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Boolean.valueOf(codedInputStream.readBool()));
        } while (codedInputStream.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public ByteString$LiteralByteString readBytes() {
        requireWireType$1(2);
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        byte[] bArr = codedInputStream$StreamDecoder.buffer;
        int readRawVarint32 = codedInputStream$StreamDecoder.readRawVarint32();
        int i = codedInputStream$StreamDecoder.bufferSize;
        int i2 = codedInputStream$StreamDecoder.pos;
        if (readRawVarint32 <= i - i2 && readRawVarint32 > 0) {
            ByteString$LiteralByteString copyFrom = ByteString$LiteralByteString.copyFrom(bArr, i2, readRawVarint32);
            codedInputStream$StreamDecoder.pos += readRawVarint32;
            return copyFrom;
        }
        if (readRawVarint32 == 0) {
            return ByteString$LiteralByteString.EMPTY;
        }
        byte[] readRawBytesSlowPathOneChunk = codedInputStream$StreamDecoder.readRawBytesSlowPathOneChunk(readRawVarint32);
        if (readRawBytesSlowPathOneChunk != null) {
            return ByteString$LiteralByteString.copyFrom(readRawBytesSlowPathOneChunk, 0, readRawBytesSlowPathOneChunk.length);
        }
        int i3 = codedInputStream$StreamDecoder.pos;
        int i4 = codedInputStream$StreamDecoder.bufferSize;
        int i5 = i4 - i3;
        codedInputStream$StreamDecoder.totalBytesRetired += i4;
        codedInputStream$StreamDecoder.pos = 0;
        codedInputStream$StreamDecoder.bufferSize = 0;
        ArrayList readRawBytesSlowPathRemainingChunks = codedInputStream$StreamDecoder.readRawBytesSlowPathRemainingChunks(readRawVarint32 - i5);
        byte[] bArr2 = new byte[readRawVarint32];
        System.arraycopy(bArr, i3, bArr2, 0, i5);
        Iterator it = readRawBytesSlowPathRemainingChunks.iterator();
        while (it.hasNext()) {
            byte[] bArr3 = (byte[]) it.next();
            System.arraycopy(bArr3, 0, bArr2, i5, bArr3.length);
            i5 += bArr3.length;
        }
        ByteString$LiteralByteString byteString$LiteralByteString = ByteString$LiteralByteString.EMPTY;
        return new ByteString$LiteralByteString(bArr2);
    }

    public void readBytesList(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        if ((this.capacity & 7) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            ((ProtobufArrayList) protobufList).add(m656readBytes());
            if (codedInputStream.isAtEnd()) {
                return;
            } else {
                readTag = codedInputStream.readTag();
            }
        } while (readTag == this.capacity);
        this.gapEnd = readTag;
    }

    public double readDouble() {
        requireWireType$1(1);
        return ((CodedInputStream$StreamDecoder) this.buffer).readDouble();
    }

    public void readDoubleList(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int i = this.capacity & 7;
        if (i == 1) {
            do {
                ((ProtobufArrayList) protobufList).add(Double.valueOf(codedInputStream.readDouble()));
                if (codedInputStream.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int readUInt32 = codedInputStream.readUInt32();
        if ((readUInt32 & 7) != 0) {
            throw new InvalidProtocolBufferException("Failed to parse the message.");
        }
        int totalBytesRead = codedInputStream.getTotalBytesRead() + readUInt32;
        do {
            ((ProtobufArrayList) protobufList).add(Double.valueOf(codedInputStream.readDouble()));
        } while (codedInputStream.getTotalBytesRead() < totalBytesRead);
    }

    public int readEnum() {
        requireWireType$1(0);
        return ((CodedInputStream$StreamDecoder) this.buffer).readEnum();
    }

    public void readEnumList(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Integer.valueOf(codedInputStream.readEnum()));
                if (codedInputStream.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = codedInputStream.getTotalBytesRead() + codedInputStream.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Integer.valueOf(codedInputStream.readEnum()));
        } while (codedInputStream.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public Object readField$1(WireFormat$FieldType wireFormat$FieldType, Class cls, androidx.datastore.preferences.protobuf.ExtensionRegistryLite extensionRegistryLite) {
        switch (CodedInputStreamReader$1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[wireFormat$FieldType.ordinal()]) {
            case 1:
                return Boolean.valueOf(readBool());
            case 2:
                return readBytes();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(readEnum());
            case 5:
                return Integer.valueOf(readFixed32());
            case 6:
                return Long.valueOf(readFixed64());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(readInt32());
            case 9:
                return Long.valueOf(readInt64());
            case 10:
                requireWireType$1(2);
                return readMessage$1(Protobuf.INSTANCE.schemaFor(cls), extensionRegistryLite);
            case 11:
                return Integer.valueOf(readSFixed32());
            case 12:
                return Long.valueOf(readSFixed64());
            case IMAGE_VALUE:
                return Integer.valueOf(readSInt32());
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return Long.valueOf(readSInt64());
            case 15:
                return readStringRequireUtf8();
            case LAZY_VERTICAL_GRID_VALUE:
                return Integer.valueOf(readUInt32());
            case VERTICAL_GRID_ITEM_VALUE:
                return Long.valueOf(readUInt64());
            default:
                Gson$$ExternalSyntheticBUOutline0.m$1("unsupported field type.");
                return null;
        }
    }

    public int readFixed32() {
        requireWireType$1(5);
        return ((CodedInputStream$StreamDecoder) this.buffer).readFixed32();
    }

    public void readFixed32List(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int i = this.capacity & 7;
        if (i == 2) {
            int readUInt32 = codedInputStream.readUInt32();
            if ((readUInt32 & 3) != 0) {
                throw new InvalidProtocolBufferException("Failed to parse the message.");
            }
            int totalBytesRead = codedInputStream.getTotalBytesRead() + readUInt32;
            do {
                ((ProtobufArrayList) protobufList).add(Integer.valueOf(codedInputStream.readFixed32()));
            } while (codedInputStream.getTotalBytesRead() < totalBytesRead);
            return;
        }
        if (i != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            ((ProtobufArrayList) protobufList).add(Integer.valueOf(codedInputStream.readFixed32()));
            if (codedInputStream.isAtEnd()) {
                return;
            } else {
                readTag = codedInputStream.readTag();
            }
        } while (readTag == this.capacity);
        this.gapEnd = readTag;
    }

    public long readFixed64() {
        requireWireType$1(1);
        return ((CodedInputStream$StreamDecoder) this.buffer).readFixed64();
    }

    public void readFixed64List(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int i = this.capacity & 7;
        if (i == 1) {
            do {
                ((ProtobufArrayList) protobufList).add(Long.valueOf(codedInputStream.readFixed64()));
                if (codedInputStream.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int readUInt32 = codedInputStream.readUInt32();
        if ((readUInt32 & 7) != 0) {
            throw new InvalidProtocolBufferException("Failed to parse the message.");
        }
        int totalBytesRead = codedInputStream.getTotalBytesRead() + readUInt32;
        do {
            ((ProtobufArrayList) protobufList).add(Long.valueOf(codedInputStream.readFixed64()));
        } while (codedInputStream.getTotalBytesRead() < totalBytesRead);
    }

    public float readFloat() {
        requireWireType$1(5);
        return ((CodedInputStream$StreamDecoder) this.buffer).readFloat();
    }

    public void readFloatList(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int i = this.capacity & 7;
        if (i == 2) {
            int readUInt32 = codedInputStream.readUInt32();
            if ((readUInt32 & 3) != 0) {
                throw new InvalidProtocolBufferException("Failed to parse the message.");
            }
            int totalBytesRead = codedInputStream.getTotalBytesRead() + readUInt32;
            do {
                ((ProtobufArrayList) protobufList).add(Float.valueOf(codedInputStream.readFloat()));
            } while (codedInputStream.getTotalBytesRead() < totalBytesRead);
            return;
        }
        if (i != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            ((ProtobufArrayList) protobufList).add(Float.valueOf(codedInputStream.readFloat()));
            if (codedInputStream.isAtEnd()) {
                return;
            } else {
                readTag = codedInputStream.readTag();
            }
        } while (readTag == this.capacity);
        this.gapEnd = readTag;
    }

    public Object readGroup$1(androidx.datastore.preferences.protobuf.Schema schema, androidx.datastore.preferences.protobuf.ExtensionRegistryLite extensionRegistryLite) {
        int i = this.gapStart;
        this.gapStart = ((this.capacity >>> 3) << 3) | 4;
        try {
            Object newInstance = schema.newInstance();
            schema.mergeFrom(newInstance, this, extensionRegistryLite);
            schema.makeImmutable(newInstance);
            if (this.capacity == this.gapStart) {
                return newInstance;
            }
            throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.parseFailure();
        } finally {
            this.gapStart = i;
        }
    }

    public Object readGroupBySchemaWithCheck(androidx.datastore.preferences.protobuf.Schema schema, androidx.datastore.preferences.protobuf.ExtensionRegistryLite extensionRegistryLite) {
        requireWireType$1(3);
        return readGroup$1(schema, extensionRegistryLite);
    }

    public void readGroupList(List list, androidx.datastore.preferences.protobuf.Schema schema, androidx.datastore.preferences.protobuf.ExtensionRegistryLite extensionRegistryLite) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity;
        if ((i & 7) != 3) {
            throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(readGroup$1(schema, extensionRegistryLite));
            if (codedInputStream$StreamDecoder.isAtEnd() || this.gapEnd != 0) {
                return;
            } else {
                readTag = codedInputStream$StreamDecoder.readTag();
            }
        } while (readTag == i);
        this.gapEnd = readTag;
    }

    public int readInt32() {
        requireWireType$1(0);
        return ((CodedInputStream$StreamDecoder) this.buffer).readInt32();
    }

    public void readInt32List(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Integer.valueOf(codedInputStream.readInt32()));
                if (codedInputStream.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = codedInputStream.getTotalBytesRead() + codedInputStream.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Integer.valueOf(codedInputStream.readInt32()));
        } while (codedInputStream.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public long readInt64() {
        requireWireType$1(0);
        return ((CodedInputStream$StreamDecoder) this.buffer).readInt64();
    }

    public void readInt64List(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Long.valueOf(codedInputStream.readInt64()));
                if (codedInputStream.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = codedInputStream.getTotalBytesRead() + codedInputStream.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Long.valueOf(codedInputStream.readInt64()));
        } while (codedInputStream.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public Object readMessage$1(androidx.datastore.preferences.protobuf.Schema schema, androidx.datastore.preferences.protobuf.ExtensionRegistryLite extensionRegistryLite) {
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int readUInt32 = codedInputStream$StreamDecoder.readUInt32();
        if (codedInputStream$StreamDecoder.recursionDepth >= 100) {
            throw new androidx.datastore.preferences.protobuf.InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int pushLimit = codedInputStream$StreamDecoder.pushLimit(readUInt32);
        Object newInstance = schema.newInstance();
        codedInputStream$StreamDecoder.recursionDepth++;
        schema.mergeFrom(newInstance, this, extensionRegistryLite);
        schema.makeImmutable(newInstance);
        codedInputStream$StreamDecoder.checkLastTagWas(0);
        codedInputStream$StreamDecoder.recursionDepth--;
        codedInputStream$StreamDecoder.popLimit(pushLimit);
        return newInstance;
    }

    public Object readMessageBySchemaWithCheck(androidx.datastore.preferences.protobuf.Schema schema, androidx.datastore.preferences.protobuf.ExtensionRegistryLite extensionRegistryLite) {
        requireWireType$1(2);
        return readMessage$1(schema, extensionRegistryLite);
    }

    public int readSFixed32() {
        requireWireType$1(5);
        return ((CodedInputStream$StreamDecoder) this.buffer).readSFixed32();
    }

    public void readSFixed32List(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int i = this.capacity & 7;
        if (i == 2) {
            int readUInt32 = codedInputStream.readUInt32();
            if ((readUInt32 & 3) != 0) {
                throw new InvalidProtocolBufferException("Failed to parse the message.");
            }
            int totalBytesRead = codedInputStream.getTotalBytesRead() + readUInt32;
            do {
                ((ProtobufArrayList) protobufList).add(Integer.valueOf(codedInputStream.readSFixed32()));
            } while (codedInputStream.getTotalBytesRead() < totalBytesRead);
            return;
        }
        if (i != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            ((ProtobufArrayList) protobufList).add(Integer.valueOf(codedInputStream.readSFixed32()));
            if (codedInputStream.isAtEnd()) {
                return;
            } else {
                readTag = codedInputStream.readTag();
            }
        } while (readTag == this.capacity);
        this.gapEnd = readTag;
    }

    public long readSFixed64() {
        requireWireType$1(1);
        return ((CodedInputStream$StreamDecoder) this.buffer).readSFixed64();
    }

    public void readSFixed64List(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int i = this.capacity & 7;
        if (i == 1) {
            do {
                ((ProtobufArrayList) protobufList).add(Long.valueOf(codedInputStream.readSFixed64()));
                if (codedInputStream.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int readUInt32 = codedInputStream.readUInt32();
        if ((readUInt32 & 7) != 0) {
            throw new InvalidProtocolBufferException("Failed to parse the message.");
        }
        int totalBytesRead = codedInputStream.getTotalBytesRead() + readUInt32;
        do {
            ((ProtobufArrayList) protobufList).add(Long.valueOf(codedInputStream.readSFixed64()));
        } while (codedInputStream.getTotalBytesRead() < totalBytesRead);
    }

    public int readSInt32() {
        requireWireType$1(0);
        return ((CodedInputStream$StreamDecoder) this.buffer).readSInt32();
    }

    public void readSInt32List(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Integer.valueOf(codedInputStream.readSInt32()));
                if (codedInputStream.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = codedInputStream.getTotalBytesRead() + codedInputStream.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Integer.valueOf(codedInputStream.readSInt32()));
        } while (codedInputStream.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public long readSInt64() {
        requireWireType$1(0);
        return ((CodedInputStream$StreamDecoder) this.buffer).readSInt64();
    }

    public void readSInt64List(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Long.valueOf(codedInputStream.readSInt64()));
                if (codedInputStream.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = codedInputStream.getTotalBytesRead() + codedInputStream.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Long.valueOf(codedInputStream.readSInt64()));
        } while (codedInputStream.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public String readString() {
        requireWireType$1(2);
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        byte[] bArr = codedInputStream$StreamDecoder.buffer;
        int readRawVarint32 = codedInputStream$StreamDecoder.readRawVarint32();
        if (readRawVarint32 > 0) {
            int i = codedInputStream$StreamDecoder.bufferSize;
            int i2 = codedInputStream$StreamDecoder.pos;
            if (readRawVarint32 <= i - i2) {
                String str = new String(bArr, i2, readRawVarint32, androidx.datastore.preferences.protobuf.Internal.UTF_8);
                codedInputStream$StreamDecoder.pos += readRawVarint32;
                return str;
            }
        }
        if (readRawVarint32 == 0) {
            return "";
        }
        if (readRawVarint32 > codedInputStream$StreamDecoder.bufferSize) {
            return new String(codedInputStream$StreamDecoder.readRawBytesSlowPath(readRawVarint32), androidx.datastore.preferences.protobuf.Internal.UTF_8);
        }
        codedInputStream$StreamDecoder.refillBuffer(readRawVarint32);
        String str2 = new String(bArr, codedInputStream$StreamDecoder.pos, readRawVarint32, androidx.datastore.preferences.protobuf.Internal.UTF_8);
        codedInputStream$StreamDecoder.pos += readRawVarint32;
        return str2;
    }

    public void readStringListInternal(List list, boolean z) {
        int readTag;
        int readTag2;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        if ((this.capacity & 7) != 2) {
            throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
        }
        if (!(list instanceof LazyStringList) || z) {
            do {
                list.add(z ? readStringRequireUtf8() : readString());
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        do {
            lazyStringList.add(readBytes());
            if (codedInputStream$StreamDecoder.isAtEnd()) {
                return;
            } else {
                readTag2 = codedInputStream$StreamDecoder.readTag();
            }
        } while (readTag2 == this.capacity);
        this.gapEnd = readTag2;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0129  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String readStringRequireUtf8() {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.input.GapBuffer.readStringRequireUtf8():java.lang.String");
    }

    public int readUInt32() {
        requireWireType$1(0);
        return ((CodedInputStream$StreamDecoder) this.buffer).readUInt32();
    }

    public void readUInt32List(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Integer.valueOf(codedInputStream.readUInt32()));
                if (codedInputStream.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = codedInputStream.getTotalBytesRead() + codedInputStream.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Integer.valueOf(codedInputStream.readUInt32()));
        } while (codedInputStream.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public long readUInt64() {
        requireWireType$1(0);
        return ((CodedInputStream$StreamDecoder) this.buffer).readUInt64();
    }

    public void readUInt64List(Internal.ProtobufList protobufList) {
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Long.valueOf(codedInputStream.readUInt64()));
                if (codedInputStream.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = codedInputStream.getTotalBytesRead() + codedInputStream.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Long.valueOf(codedInputStream.readUInt64()));
        } while (codedInputStream.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public void requirePosition(int i) {
        if (((CodedInputStream) this.buffer).getTotalBytesRead() != i) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    public void requirePosition$1(int i) {
        if (((CodedInputStream$StreamDecoder) this.buffer).getTotalBytesRead() != i) {
            throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.truncatedMessage();
        }
    }

    public void requireWireType(int i) {
        if ((this.capacity & 7) != i) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    public void requireWireType$1(int i) {
        if ((this.capacity & 7) != i) {
            throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
        }
    }

    public boolean skipField() {
        int i;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        if (codedInputStream$StreamDecoder.isAtEnd() || (i = this.capacity) == this.gapStart) {
            return false;
        }
        return codedInputStream$StreamDecoder.skipField(i);
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return "";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ GapBuffer(int i) {
        this.$r8$classId = i;
    }

    public GapBuffer(CodedInputStream$StreamDecoder codedInputStream$StreamDecoder) {
        this.$r8$classId = 2;
        this.gapEnd = 0;
        Charset charset = androidx.datastore.preferences.protobuf.Internal.UTF_8;
        this.buffer = codedInputStream$StreamDecoder;
        codedInputStream$StreamDecoder.wrapper = this;
    }

    public GapBuffer(Operations operations) {
        this.$r8$classId = 1;
        this.buffer = operations;
    }

    public void readBytesList(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        if ((this.capacity & 7) == 2) {
            do {
                list.add(readBytes());
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    public void readStringListInternal(Internal.ProtobufList protobufList, boolean z) {
        String readString;
        int readTag;
        CodedInputStream codedInputStream = (CodedInputStream) this.buffer;
        if ((this.capacity & 7) == 2) {
            do {
                if (z) {
                    requireWireType(2);
                    readString = codedInputStream.readStringRequireUtf8();
                } else {
                    requireWireType(2);
                    readString = codedInputStream.readString();
                }
                ((ProtobufArrayList) protobufList).add(readString);
                if (codedInputStream.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    public void readBoolList(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                list.add(Boolean.valueOf(codedInputStream$StreamDecoder.readBool()));
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i == 2) {
            int totalBytesRead = codedInputStream$StreamDecoder.getTotalBytesRead() + codedInputStream$StreamDecoder.readUInt32();
            do {
                list.add(Boolean.valueOf(codedInputStream$StreamDecoder.readBool()));
            } while (codedInputStream$StreamDecoder.getTotalBytesRead() < totalBytesRead);
            requirePosition$1(totalBytesRead);
            return;
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    public void readEnumList(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                list.add(Integer.valueOf(codedInputStream$StreamDecoder.readEnum()));
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i == 2) {
            int totalBytesRead = codedInputStream$StreamDecoder.getTotalBytesRead() + codedInputStream$StreamDecoder.readUInt32();
            do {
                list.add(Integer.valueOf(codedInputStream$StreamDecoder.readEnum()));
            } while (codedInputStream$StreamDecoder.getTotalBytesRead() < totalBytesRead);
            requirePosition$1(totalBytesRead);
            return;
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    public void readInt32List(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                list.add(Integer.valueOf(codedInputStream$StreamDecoder.readInt32()));
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i == 2) {
            int totalBytesRead = codedInputStream$StreamDecoder.getTotalBytesRead() + codedInputStream$StreamDecoder.readUInt32();
            do {
                list.add(Integer.valueOf(codedInputStream$StreamDecoder.readInt32()));
            } while (codedInputStream$StreamDecoder.getTotalBytesRead() < totalBytesRead);
            requirePosition$1(totalBytesRead);
            return;
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    public void readInt64List(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                list.add(Long.valueOf(codedInputStream$StreamDecoder.readInt64()));
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i == 2) {
            int totalBytesRead = codedInputStream$StreamDecoder.getTotalBytesRead() + codedInputStream$StreamDecoder.readUInt32();
            do {
                list.add(Long.valueOf(codedInputStream$StreamDecoder.readInt64()));
            } while (codedInputStream$StreamDecoder.getTotalBytesRead() < totalBytesRead);
            requirePosition$1(totalBytesRead);
            return;
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    public void readSInt32List(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                list.add(Integer.valueOf(codedInputStream$StreamDecoder.readSInt32()));
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i == 2) {
            int totalBytesRead = codedInputStream$StreamDecoder.getTotalBytesRead() + codedInputStream$StreamDecoder.readUInt32();
            do {
                list.add(Integer.valueOf(codedInputStream$StreamDecoder.readSInt32()));
            } while (codedInputStream$StreamDecoder.getTotalBytesRead() < totalBytesRead);
            requirePosition$1(totalBytesRead);
            return;
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    public void readSInt64List(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                list.add(Long.valueOf(codedInputStream$StreamDecoder.readSInt64()));
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i == 2) {
            int totalBytesRead = codedInputStream$StreamDecoder.getTotalBytesRead() + codedInputStream$StreamDecoder.readUInt32();
            do {
                list.add(Long.valueOf(codedInputStream$StreamDecoder.readSInt64()));
            } while (codedInputStream$StreamDecoder.getTotalBytesRead() < totalBytesRead);
            requirePosition$1(totalBytesRead);
            return;
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    public void readUInt32List(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                list.add(Integer.valueOf(codedInputStream$StreamDecoder.readUInt32()));
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i == 2) {
            int totalBytesRead = codedInputStream$StreamDecoder.getTotalBytesRead() + codedInputStream$StreamDecoder.readUInt32();
            do {
                list.add(Integer.valueOf(codedInputStream$StreamDecoder.readUInt32()));
            } while (codedInputStream$StreamDecoder.getTotalBytesRead() < totalBytesRead);
            requirePosition$1(totalBytesRead);
            return;
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    public void readUInt64List(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity & 7;
        if (i == 0) {
            do {
                list.add(Long.valueOf(codedInputStream$StreamDecoder.readUInt64()));
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i == 2) {
            int totalBytesRead = codedInputStream$StreamDecoder.getTotalBytesRead() + codedInputStream$StreamDecoder.readUInt32();
            do {
                list.add(Long.valueOf(codedInputStream$StreamDecoder.readUInt64()));
            } while (codedInputStream$StreamDecoder.getTotalBytesRead() < totalBytesRead);
            requirePosition$1(totalBytesRead);
            return;
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    public void readDoubleList(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity & 7;
        if (i == 1) {
            do {
                list.add(Double.valueOf(codedInputStream$StreamDecoder.readDouble()));
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i == 2) {
            int readUInt32 = codedInputStream$StreamDecoder.readUInt32();
            if ((readUInt32 & 7) == 0) {
                int totalBytesRead = codedInputStream$StreamDecoder.getTotalBytesRead() + readUInt32;
                do {
                    list.add(Double.valueOf(codedInputStream$StreamDecoder.readDouble()));
                } while (codedInputStream$StreamDecoder.getTotalBytesRead() < totalBytesRead);
                return;
            }
            throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.parseFailure();
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    public void readFixed32List(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity & 7;
        if (i == 2) {
            int readUInt32 = codedInputStream$StreamDecoder.readUInt32();
            if ((readUInt32 & 3) == 0) {
                int totalBytesRead = codedInputStream$StreamDecoder.getTotalBytesRead() + readUInt32;
                do {
                    list.add(Integer.valueOf(codedInputStream$StreamDecoder.readFixed32()));
                } while (codedInputStream$StreamDecoder.getTotalBytesRead() < totalBytesRead);
                return;
            }
            throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.parseFailure();
        }
        if (i == 5) {
            do {
                list.add(Integer.valueOf(codedInputStream$StreamDecoder.readFixed32()));
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    public void readFixed64List(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity & 7;
        if (i == 1) {
            do {
                list.add(Long.valueOf(codedInputStream$StreamDecoder.readFixed64()));
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i == 2) {
            int readUInt32 = codedInputStream$StreamDecoder.readUInt32();
            if ((readUInt32 & 7) == 0) {
                int totalBytesRead = codedInputStream$StreamDecoder.getTotalBytesRead() + readUInt32;
                do {
                    list.add(Long.valueOf(codedInputStream$StreamDecoder.readFixed64()));
                } while (codedInputStream$StreamDecoder.getTotalBytesRead() < totalBytesRead);
                return;
            }
            throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.parseFailure();
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    public void readFloatList(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity & 7;
        if (i == 2) {
            int readUInt32 = codedInputStream$StreamDecoder.readUInt32();
            if ((readUInt32 & 3) == 0) {
                int totalBytesRead = codedInputStream$StreamDecoder.getTotalBytesRead() + readUInt32;
                do {
                    list.add(Float.valueOf(codedInputStream$StreamDecoder.readFloat()));
                } while (codedInputStream$StreamDecoder.getTotalBytesRead() < totalBytesRead);
                return;
            }
            throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.parseFailure();
        }
        if (i == 5) {
            do {
                list.add(Float.valueOf(codedInputStream$StreamDecoder.readFloat()));
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    public void readSFixed32List(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity & 7;
        if (i == 2) {
            int readUInt32 = codedInputStream$StreamDecoder.readUInt32();
            if ((readUInt32 & 3) == 0) {
                int totalBytesRead = codedInputStream$StreamDecoder.getTotalBytesRead() + readUInt32;
                do {
                    list.add(Integer.valueOf(codedInputStream$StreamDecoder.readSFixed32()));
                } while (codedInputStream$StreamDecoder.getTotalBytesRead() < totalBytesRead);
                return;
            }
            throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.parseFailure();
        }
        if (i == 5) {
            do {
                list.add(Integer.valueOf(codedInputStream$StreamDecoder.readSFixed32()));
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    public void readSFixed64List(List list) {
        int readTag;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = (CodedInputStream$StreamDecoder) this.buffer;
        int i = this.capacity & 7;
        if (i == 1) {
            do {
                list.add(Long.valueOf(codedInputStream$StreamDecoder.readSFixed64()));
                if (codedInputStream$StreamDecoder.isAtEnd()) {
                    return;
                } else {
                    readTag = codedInputStream$StreamDecoder.readTag();
                }
            } while (readTag == this.capacity);
            this.gapEnd = readTag;
            return;
        }
        if (i == 2) {
            int readUInt32 = codedInputStream$StreamDecoder.readUInt32();
            if ((readUInt32 & 7) == 0) {
                int totalBytesRead = codedInputStream$StreamDecoder.getTotalBytesRead() + readUInt32;
                do {
                    list.add(Long.valueOf(codedInputStream$StreamDecoder.readSFixed64()));
                } while (codedInputStream$StreamDecoder.getTotalBytesRead() < totalBytesRead);
                return;
            }
            throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.parseFailure();
        }
        throw androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidWireType();
    }

    /* renamed from: readBytes, reason: collision with other method in class */
    public androidx.glance.appwidget.protobuf.ByteString$LiteralByteString m656readBytes() {
        requireWireType(2);
        return ((CodedInputStream) this.buffer).readBytes();
    }
}
