package kotlin.reflect.jvm.internal.impl.metadata;

import coil3.network.HttpException;
import com.caverock.androidsvg.SVG;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import okhttp3.FormBody;
import okio.Path;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$TypeParameter extends GeneratedMessageLite.ExtendableMessage {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(19);
    public static final ProtoBuf$TypeParameter defaultInstance;
    public int bitField0_;
    public int id_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public int name_;
    public boolean reified_;
    public final ByteString unknownFields;
    public int upperBoundIdMemoizedSerializedSize;
    public List upperBoundId_;
    public List upperBound_;
    public Variance variance_;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public enum Variance implements Internal.EnumLite {
        IN(0),
        OUT(1),
        INV(2);

        private static Internal.EnumLiteMap internalValueMap = new Path.Companion(3);
        private final int value;

        Variance(int i) {
            this.value = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }
    }

    static {
        ProtoBuf$TypeParameter protoBuf$TypeParameter = new ProtoBuf$TypeParameter();
        defaultInstance = protoBuf$TypeParameter;
        protoBuf$TypeParameter.id_ = 0;
        protoBuf$TypeParameter.name_ = 0;
        protoBuf$TypeParameter.reified_ = false;
        protoBuf$TypeParameter.variance_ = Variance.INV;
        List list = Collections.EMPTY_LIST;
        protoBuf$TypeParameter.upperBound_ = list;
        protoBuf$TypeParameter.upperBoundId_ = list;
    }

    public ProtoBuf$TypeParameter(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.upperBoundIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.id_ = 0;
        this.name_ = 0;
        this.reified_ = false;
        this.variance_ = Variance.INV;
        List list = Collections.EMPTY_LIST;
        this.upperBound_ = list;
        this.upperBoundId_ = list;
        ByteString.Output output = new ByteString.Output();
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    if (readTag != 0) {
                        if (readTag == 8) {
                            this.bitField0_ |= 1;
                            this.id_ = codedInputStream.readRawVarint32();
                        } else if (readTag == 16) {
                            this.bitField0_ |= 2;
                            this.name_ = codedInputStream.readRawVarint32();
                        } else if (readTag == 24) {
                            this.bitField0_ |= 4;
                            this.reified_ = codedInputStream.readRawVarint64() != 0;
                        } else if (readTag == 32) {
                            int readRawVarint32 = codedInputStream.readRawVarint32();
                            Variance variance = readRawVarint32 != 0 ? readRawVarint32 != 1 ? readRawVarint32 != 2 ? null : Variance.INV : Variance.OUT : Variance.IN;
                            if (variance == null) {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readRawVarint32);
                            } else {
                                this.bitField0_ |= 8;
                                this.variance_ = variance;
                            }
                        } else if (readTag == 42) {
                            if ((i & 16) != 16) {
                                this.upperBound_ = new ArrayList();
                                i |= 16;
                            }
                            this.upperBound_.add(codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite));
                        } else if (readTag == 48) {
                            if ((i & 32) != 32) {
                                this.upperBoundId_ = new ArrayList();
                                i |= 32;
                            }
                            this.upperBoundId_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                        } else if (readTag == 50) {
                            int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            if ((i & 32) != 32 && codedInputStream.getBytesUntilLimit() > 0) {
                                this.upperBoundId_ = new ArrayList();
                                i |= 32;
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.upperBoundId_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            }
                            codedInputStream.popLimit(pushLimit);
                        } else if (!parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                        }
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e) {
                    e.unfinishedMessage = this;
                    throw e;
                } catch (IOException e2) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                    invalidProtocolBufferException.unfinishedMessage = this;
                    throw invalidProtocolBufferException;
                }
            } catch (Throwable th) {
                if ((i & 16) == 16) {
                    this.upperBound_ = DesugarCollections.unmodifiableList(this.upperBound_);
                }
                if ((i & 32) == 32) {
                    this.upperBoundId_ = DesugarCollections.unmodifiableList(this.upperBoundId_);
                }
                try {
                    newInstance.refreshBuffer();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.unknownFields = output.toByteString();
                    throw th2;
                }
                this.unknownFields = output.toByteString();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if ((i & 16) == 16) {
            this.upperBound_ = DesugarCollections.unmodifiableList(this.upperBound_);
        }
        if ((i & 32) == 32) {
            this.upperBoundId_ = DesugarCollections.unmodifiableList(this.upperBoundId_);
        }
        try {
            newInstance.refreshBuffer();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.unknownFields = output.toByteString();
            throw th3;
        }
        this.unknownFields = output.toByteString();
        makeExtensionsImmutable();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final AbstractMessageLite getDefaultInstanceForType() {
        return defaultInstance;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final int getSerializedSize() {
        List list;
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        int computeInt32Size = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeInt32Size(1, this.id_) : 0;
        if ((this.bitField0_ & 2) == 2) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(2, this.name_);
        }
        if ((this.bitField0_ & 4) == 4) {
            computeInt32Size += SVG.PathDefinition.computeTagSize(3) + 1;
        }
        if ((this.bitField0_ & 8) == 8) {
            computeInt32Size += SVG.PathDefinition.computeEnumSize(4, this.variance_.getNumber());
        }
        for (int i3 = 0; i3 < this.upperBound_.size(); i3++) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(5, (AbstractMessageLite) this.upperBound_.get(i3));
        }
        int i4 = 0;
        while (true) {
            int size = this.upperBoundId_.size();
            list = this.upperBoundId_;
            if (i2 >= size) {
                break;
            }
            i4 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list.get(i2)).intValue());
            i2++;
        }
        int i5 = computeInt32Size + i4;
        if (!list.isEmpty()) {
            i5 = i5 + 1 + SVG.PathDefinition.computeInt32SizeNoTag(i4);
        }
        this.upperBoundIdMemoizedSerializedSize = i4;
        int size2 = this.unknownFields.size() + extensionsSerializedSize() + i5;
        this.memoizedSerializedSize = size2;
        return size2;
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
        int i = this.bitField0_;
        if ((i & 1) != 1) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if ((i & 2) != 2) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i2 = 0; i2 < this.upperBound_.size(); i2++) {
            if (!((ProtoBuf$Type) this.upperBound_.get(i2)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (extensionsAreInitialized()) {
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }
        this.memoizedIsInitialized = (byte) 0;
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder newBuilderForType() {
        Builder builder = new Builder();
        builder.variance_ = Variance.INV;
        List list = Collections.EMPTY_LIST;
        builder.upperBound_ = list;
        builder.upperBoundId_ = list;
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder toBuilder() {
        Builder builder = new Builder();
        builder.variance_ = Variance.INV;
        List list = Collections.EMPTY_LIST;
        builder.upperBound_ = list;
        builder.upperBoundId_ = list;
        builder.mergeFrom(this);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final void writeTo(SVG.PathDefinition pathDefinition) {
        getSerializedSize();
        FormBody.Builder builder = new FormBody.Builder((GeneratedMessageLite.ExtendableMessage) this);
        if ((this.bitField0_ & 1) == 1) {
            pathDefinition.writeInt32(1, this.id_);
        }
        if ((this.bitField0_ & 2) == 2) {
            pathDefinition.writeInt32(2, this.name_);
        }
        if ((this.bitField0_ & 4) == 4) {
            boolean z = this.reified_;
            pathDefinition.writeTag(3, 0);
            pathDefinition.writeRawByte(z ? 1 : 0);
        }
        if ((this.bitField0_ & 8) == 8) {
            pathDefinition.writeEnum(4, this.variance_.getNumber());
        }
        for (int i = 0; i < this.upperBound_.size(); i++) {
            pathDefinition.writeMessage(5, (AbstractMessageLite) this.upperBound_.get(i));
        }
        if (this.upperBoundId_.size() > 0) {
            pathDefinition.writeRawVarint32(50);
            pathDefinition.writeRawVarint32(this.upperBoundIdMemoizedSerializedSize);
        }
        for (int i2 = 0; i2 < this.upperBoundId_.size(); i2++) {
            pathDefinition.writeInt32NoTag(((Integer) this.upperBoundId_.get(i2)).intValue());
        }
        builder.writeUntil(1000, pathDefinition);
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.ExtendableBuilder {
        public int bitField0_;
        public int id_;
        public int name_;
        public boolean reified_;
        public List upperBoundId_;
        public List upperBound_;
        public Variance variance_;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            ProtoBuf$TypeParameter buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw new HttpException(false);
        }

        public final ProtoBuf$TypeParameter buildPartial() {
            ProtoBuf$TypeParameter protoBuf$TypeParameter = new ProtoBuf$TypeParameter(this);
            int i = this.bitField0_;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$TypeParameter.id_ = this.id_;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$TypeParameter.name_ = this.name_;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$TypeParameter.reified_ = this.reified_;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$TypeParameter.variance_ = this.variance_;
            if ((i & 16) == 16) {
                this.upperBound_ = DesugarCollections.unmodifiableList(this.upperBound_);
                i = this.bitField0_ & (-17);
                this.bitField0_ = i;
            }
            protoBuf$TypeParameter.upperBound_ = this.upperBound_;
            if ((i & 32) == 32) {
                this.upperBoundId_ = DesugarCollections.unmodifiableList(this.upperBoundId_);
                this.bitField0_ &= -33;
            }
            protoBuf$TypeParameter.upperBoundId_ = this.upperBoundId_;
            protoBuf$TypeParameter.bitField0_ = i2;
            return protoBuf$TypeParameter;
        }

        public final Object clone() {
            Builder builder = new Builder();
            builder.variance_ = Variance.INV;
            List list = Collections.EMPTY_LIST;
            builder.upperBound_ = list;
            builder.upperBoundId_ = list;
            builder.mergeFrom(buildPartial());
            return builder;
        }

        public final void mergeFrom(ProtoBuf$TypeParameter protoBuf$TypeParameter) {
            if (protoBuf$TypeParameter == ProtoBuf$TypeParameter.defaultInstance) {
                return;
            }
            int i = protoBuf$TypeParameter.bitField0_;
            if ((i & 1) == 1) {
                int i2 = protoBuf$TypeParameter.id_;
                this.bitField0_ = 1 | this.bitField0_;
                this.id_ = i2;
            }
            if ((i & 2) == 2) {
                int i3 = protoBuf$TypeParameter.name_;
                this.bitField0_ = 2 | this.bitField0_;
                this.name_ = i3;
            }
            if ((i & 4) == 4) {
                boolean z = protoBuf$TypeParameter.reified_;
                this.bitField0_ = 4 | this.bitField0_;
                this.reified_ = z;
            }
            if ((i & 8) == 8) {
                Variance variance = protoBuf$TypeParameter.variance_;
                variance.getClass();
                this.bitField0_ = 8 | this.bitField0_;
                this.variance_ = variance;
            }
            if (!protoBuf$TypeParameter.upperBound_.isEmpty()) {
                if (this.upperBound_.isEmpty()) {
                    this.upperBound_ = protoBuf$TypeParameter.upperBound_;
                    this.bitField0_ &= -17;
                } else {
                    if ((this.bitField0_ & 16) != 16) {
                        this.upperBound_ = new ArrayList(this.upperBound_);
                        this.bitField0_ |= 16;
                    }
                    this.upperBound_.addAll(protoBuf$TypeParameter.upperBound_);
                }
            }
            if (!protoBuf$TypeParameter.upperBoundId_.isEmpty()) {
                if (this.upperBoundId_.isEmpty()) {
                    this.upperBoundId_ = protoBuf$TypeParameter.upperBoundId_;
                    this.bitField0_ &= -33;
                } else {
                    if ((this.bitField0_ & 32) != 32) {
                        this.upperBoundId_ = new ArrayList(this.upperBoundId_);
                        this.bitField0_ |= 32;
                    }
                    this.upperBoundId_.addAll(protoBuf$TypeParameter.upperBoundId_);
                }
            }
            mergeExtensionFields(protoBuf$TypeParameter);
            this.unknownFields = this.unknownFields.concat(protoBuf$TypeParameter.unknownFields);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            mergeFrom((ProtoBuf$TypeParameter) generatedMessageLite);
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x001b  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter r1 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r2.mergeFrom(r1)
                return r2
            Lf:
                r3 = move-exception
                goto L19
            L11:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter) r4     // Catch: java.lang.Throwable -> Lf
                throw r3     // Catch: java.lang.Throwable -> L17
            L17:
                r3 = move-exception
                r0 = r4
            L19:
                if (r0 == 0) goto L1e
                r2.mergeFrom(r0)
            L1e:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }
    }

    public ProtoBuf$TypeParameter() {
        this.upperBoundIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }

    public ProtoBuf$TypeParameter(Builder builder) {
        super(builder);
        this.upperBoundIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }
}
