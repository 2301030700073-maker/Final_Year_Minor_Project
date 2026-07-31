package kotlin.reflect.jvm.internal.impl.metadata;

import coil3.network.HttpException;
import com.caverock.androidsvg.SVG;
import java.io.IOException;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$ValueParameter extends GeneratedMessageLite.ExtendableMessage {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(21);
    public static final ProtoBuf$ValueParameter defaultInstance;
    public int bitField0_;
    public int flags_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public int name_;
    public int typeId_;
    public ProtoBuf$Type type_;
    public final ByteString unknownFields;
    public int varargElementTypeId_;
    public ProtoBuf$Type varargElementType_;

    static {
        ProtoBuf$ValueParameter protoBuf$ValueParameter = new ProtoBuf$ValueParameter();
        defaultInstance = protoBuf$ValueParameter;
        protoBuf$ValueParameter.flags_ = 0;
        protoBuf$ValueParameter.name_ = 0;
        ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.defaultInstance;
        protoBuf$ValueParameter.type_ = protoBuf$Type;
        protoBuf$ValueParameter.typeId_ = 0;
        protoBuf$ValueParameter.varargElementType_ = protoBuf$Type;
        protoBuf$ValueParameter.varargElementTypeId_ = 0;
    }

    public ProtoBuf$ValueParameter(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        boolean z = false;
        this.flags_ = 0;
        this.name_ = 0;
        ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.defaultInstance;
        this.type_ = protoBuf$Type;
        this.typeId_ = 0;
        this.varargElementType_ = protoBuf$Type;
        this.varargElementTypeId_ = 0;
        ByteString.Output output = new ByteString.Output();
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    if (readTag != 0) {
                        if (readTag == 8) {
                            this.bitField0_ |= 1;
                            this.flags_ = codedInputStream.readRawVarint32();
                        } else if (readTag != 16) {
                            ProtoBuf$Type.Builder builder = null;
                            if (readTag == 26) {
                                if ((this.bitField0_ & 4) == 4) {
                                    ProtoBuf$Type protoBuf$Type2 = this.type_;
                                    protoBuf$Type2.getClass();
                                    builder = ProtoBuf$Type.newBuilder(protoBuf$Type2);
                                }
                                ProtoBuf$Type protoBuf$Type3 = (ProtoBuf$Type) codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite);
                                this.type_ = protoBuf$Type3;
                                if (builder != null) {
                                    builder.mergeFrom(protoBuf$Type3);
                                    this.type_ = builder.buildPartial();
                                }
                                this.bitField0_ |= 4;
                            } else if (readTag == 34) {
                                if ((this.bitField0_ & 16) == 16) {
                                    ProtoBuf$Type protoBuf$Type4 = this.varargElementType_;
                                    protoBuf$Type4.getClass();
                                    builder = ProtoBuf$Type.newBuilder(protoBuf$Type4);
                                }
                                ProtoBuf$Type protoBuf$Type5 = (ProtoBuf$Type) codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite);
                                this.varargElementType_ = protoBuf$Type5;
                                if (builder != null) {
                                    builder.mergeFrom(protoBuf$Type5);
                                    this.varargElementType_ = builder.buildPartial();
                                }
                                this.bitField0_ |= 16;
                            } else if (readTag == 40) {
                                this.bitField0_ |= 8;
                                this.typeId_ = codedInputStream.readRawVarint32();
                            } else if (readTag == 48) {
                                this.bitField0_ |= 32;
                                this.varargElementTypeId_ = codedInputStream.readRawVarint32();
                            } else if (!parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                            }
                        } else {
                            this.bitField0_ |= 2;
                            this.name_ = codedInputStream.readRawVarint32();
                        }
                    }
                    z = true;
                } catch (Throwable th) {
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
            } catch (InvalidProtocolBufferException e) {
                e.unfinishedMessage = this;
                throw e;
            } catch (IOException e2) {
                InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                invalidProtocolBufferException.unfinishedMessage = this;
                throw invalidProtocolBufferException;
            }
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
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int computeInt32Size = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeInt32Size(1, this.flags_) : 0;
        if ((this.bitField0_ & 2) == 2) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(2, this.name_);
        }
        if ((this.bitField0_ & 4) == 4) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(3, this.type_);
        }
        if ((this.bitField0_ & 16) == 16) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(4, this.varargElementType_);
        }
        if ((this.bitField0_ & 8) == 8) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(5, this.typeId_);
        }
        if ((this.bitField0_ & 32) == 32) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(6, this.varargElementTypeId_);
        }
        int size = this.unknownFields.size() + extensionsSerializedSize() + computeInt32Size;
        this.memoizedSerializedSize = size;
        return size;
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
        if ((i & 2) != 2) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if ((i & 4) == 4 && !this.type_.isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if ((this.bitField0_ & 16) == 16 && !this.varargElementType_.isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
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
        ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.defaultInstance;
        builder.type_ = protoBuf$Type;
        builder.varargElementType_ = protoBuf$Type;
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder toBuilder() {
        Builder builder = new Builder();
        ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.defaultInstance;
        builder.type_ = protoBuf$Type;
        builder.varargElementType_ = protoBuf$Type;
        builder.mergeFrom(this);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final void writeTo(SVG.PathDefinition pathDefinition) {
        getSerializedSize();
        FormBody.Builder builder = new FormBody.Builder((GeneratedMessageLite.ExtendableMessage) this);
        if ((this.bitField0_ & 1) == 1) {
            pathDefinition.writeInt32(1, this.flags_);
        }
        if ((this.bitField0_ & 2) == 2) {
            pathDefinition.writeInt32(2, this.name_);
        }
        if ((this.bitField0_ & 4) == 4) {
            pathDefinition.writeMessage(3, this.type_);
        }
        if ((this.bitField0_ & 16) == 16) {
            pathDefinition.writeMessage(4, this.varargElementType_);
        }
        if ((this.bitField0_ & 8) == 8) {
            pathDefinition.writeInt32(5, this.typeId_);
        }
        if ((this.bitField0_ & 32) == 32) {
            pathDefinition.writeInt32(6, this.varargElementTypeId_);
        }
        builder.writeUntil(200, pathDefinition);
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.ExtendableBuilder {
        public int bitField0_;
        public int flags_;
        public int name_;
        public int typeId_;
        public ProtoBuf$Type type_;
        public int varargElementTypeId_;
        public ProtoBuf$Type varargElementType_;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            ProtoBuf$ValueParameter buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw new HttpException(false);
        }

        public final ProtoBuf$ValueParameter buildPartial() {
            ProtoBuf$ValueParameter protoBuf$ValueParameter = new ProtoBuf$ValueParameter(this);
            int i = this.bitField0_;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$ValueParameter.flags_ = this.flags_;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$ValueParameter.name_ = this.name_;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$ValueParameter.type_ = this.type_;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$ValueParameter.typeId_ = this.typeId_;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$ValueParameter.varargElementType_ = this.varargElementType_;
            if ((i & 32) == 32) {
                i2 |= 32;
            }
            protoBuf$ValueParameter.varargElementTypeId_ = this.varargElementTypeId_;
            protoBuf$ValueParameter.bitField0_ = i2;
            return protoBuf$ValueParameter;
        }

        public final Object clone() {
            Builder builder = new Builder();
            ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.defaultInstance;
            builder.type_ = protoBuf$Type;
            builder.varargElementType_ = protoBuf$Type;
            builder.mergeFrom(buildPartial());
            return builder;
        }

        public final void mergeFrom(ProtoBuf$ValueParameter protoBuf$ValueParameter) {
            ProtoBuf$Type protoBuf$Type;
            ProtoBuf$Type protoBuf$Type2;
            if (protoBuf$ValueParameter == ProtoBuf$ValueParameter.defaultInstance) {
                return;
            }
            int i = protoBuf$ValueParameter.bitField0_;
            if ((i & 1) == 1) {
                int i2 = protoBuf$ValueParameter.flags_;
                this.bitField0_ = 1 | this.bitField0_;
                this.flags_ = i2;
            }
            if ((i & 2) == 2) {
                int i3 = protoBuf$ValueParameter.name_;
                this.bitField0_ = 2 | this.bitField0_;
                this.name_ = i3;
            }
            if ((i & 4) == 4) {
                ProtoBuf$Type protoBuf$Type3 = protoBuf$ValueParameter.type_;
                if ((this.bitField0_ & 4) != 4 || (protoBuf$Type2 = this.type_) == ProtoBuf$Type.defaultInstance) {
                    this.type_ = protoBuf$Type3;
                } else {
                    ProtoBuf$Type.Builder newBuilder = ProtoBuf$Type.newBuilder(protoBuf$Type2);
                    newBuilder.mergeFrom(protoBuf$Type3);
                    this.type_ = newBuilder.buildPartial();
                }
                this.bitField0_ |= 4;
            }
            int i4 = protoBuf$ValueParameter.bitField0_;
            if ((i4 & 8) == 8) {
                int i5 = protoBuf$ValueParameter.typeId_;
                this.bitField0_ = 8 | this.bitField0_;
                this.typeId_ = i5;
            }
            if ((i4 & 16) == 16) {
                ProtoBuf$Type protoBuf$Type4 = protoBuf$ValueParameter.varargElementType_;
                if ((this.bitField0_ & 16) != 16 || (protoBuf$Type = this.varargElementType_) == ProtoBuf$Type.defaultInstance) {
                    this.varargElementType_ = protoBuf$Type4;
                } else {
                    ProtoBuf$Type.Builder newBuilder2 = ProtoBuf$Type.newBuilder(protoBuf$Type);
                    newBuilder2.mergeFrom(protoBuf$Type4);
                    this.varargElementType_ = newBuilder2.buildPartial();
                }
                this.bitField0_ |= 16;
            }
            if ((protoBuf$ValueParameter.bitField0_ & 32) == 32) {
                int i6 = protoBuf$ValueParameter.varargElementTypeId_;
                this.bitField0_ = 32 | this.bitField0_;
                this.varargElementTypeId_ = i6;
            }
            mergeExtensionFields(protoBuf$ValueParameter);
            this.unknownFields = this.unknownFields.concat(protoBuf$ValueParameter.unknownFields);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            mergeFrom((ProtoBuf$ValueParameter) generatedMessageLite);
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter r1 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r2.mergeFrom(r1)
                return r2
            Lf:
                r3 = move-exception
                goto L19
            L11:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }
    }

    public ProtoBuf$ValueParameter() {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }

    public ProtoBuf$ValueParameter(Builder builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }
}
