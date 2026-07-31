package kotlin.reflect.jvm.internal.impl.metadata;

import com.caverock.androidsvg.SVG;
import java.io.IOException;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.LazyStringArrayList;
import kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList;
import kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$StringTable extends GeneratedMessageLite {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(16);
    public static final ProtoBuf$StringTable defaultInstance;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public LazyStringList string_;
    public final ByteString unknownFields;

    static {
        ProtoBuf$StringTable protoBuf$StringTable = new ProtoBuf$StringTable();
        defaultInstance = protoBuf$StringTable;
        protoBuf$StringTable.string_ = LazyStringArrayList.EMPTY;
    }

    public ProtoBuf$StringTable(CodedInputStream codedInputStream) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.string_ = LazyStringArrayList.EMPTY;
        ByteString.Output output = new ByteString.Output();
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    if (readTag != 0) {
                        if (readTag == 10) {
                            LiteralByteString readBytes = codedInputStream.readBytes();
                            if (!z2) {
                                this.string_ = new LazyStringArrayList();
                                z2 = true;
                            }
                            this.string_.add(readBytes);
                        } else if (!codedInputStream.skipField(readTag, newInstance)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (z2) {
                        this.string_ = this.string_.getUnmodifiableView();
                    }
                    try {
                        newInstance.refreshBuffer();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.unknownFields = output.toByteString();
                        throw th2;
                    }
                    this.unknownFields = output.toByteString();
                    throw th;
                }
            } catch (InvalidProtocolBufferException e) {
                e.unfinishedMessage = this;
                throw e;
            } catch (IOException e2) {
                InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                invalidProtocolBufferException.unfinishedMessage = this;
                throw invalidProtocolBufferException;
            }
        }
        if (z2) {
            this.string_ = this.string_.getUnmodifiableView();
        }
        try {
            newInstance.refreshBuffer();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.unknownFields = output.toByteString();
            throw th3;
        }
        this.unknownFields = output.toByteString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int size = this.string_.size();
            LazyStringList lazyStringList = this.string_;
            if (i2 >= size) {
                int size2 = this.unknownFields.size() + lazyStringList.size() + i3;
                this.memoizedSerializedSize = size2;
                return size2;
            }
            ByteString byteString = lazyStringList.getByteString(i2);
            i3 += byteString.size() + SVG.PathDefinition.computeRawVarint32Size(byteString.size());
            i2++;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b = this.memoizedIsInitialized;
        if (b == 1) {
            return true;
        }
        if (b == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder newBuilderForType() {
        ProtoBuf$Contract.Builder builder = new ProtoBuf$Contract.Builder(3);
        builder.effect_ = LazyStringArrayList.EMPTY;
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder toBuilder() {
        ProtoBuf$Contract.Builder builder = new ProtoBuf$Contract.Builder(3);
        builder.effect_ = LazyStringArrayList.EMPTY;
        builder.mergeFrom(this);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final void writeTo(SVG.PathDefinition pathDefinition) {
        getSerializedSize();
        for (int i = 0; i < this.string_.size(); i++) {
            ByteString byteString = this.string_.getByteString(i);
            pathDefinition.writeTag(1, 2);
            pathDefinition.writeRawVarint32(byteString.size());
            pathDefinition.writeRawBytes(byteString);
        }
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    public ProtoBuf$StringTable(ProtoBuf$Contract.Builder builder) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }

    public ProtoBuf$StringTable() {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }
}
