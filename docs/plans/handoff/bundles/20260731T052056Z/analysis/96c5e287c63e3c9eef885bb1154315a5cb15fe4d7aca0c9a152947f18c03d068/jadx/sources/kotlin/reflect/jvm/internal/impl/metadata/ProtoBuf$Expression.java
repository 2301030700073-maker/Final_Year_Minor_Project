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
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$Expression extends GeneratedMessageLite {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(9);
    public static final ProtoBuf$Expression defaultInstance;
    public List andArgument_;
    public int bitField0_;
    public ConstantValue constantValue_;
    public int flags_;
    public int isInstanceTypeId_;
    public ProtoBuf$Type isInstanceType_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public List orArgument_;
    public final ByteString unknownFields;
    public int valueParameterReference_;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public enum ConstantValue implements Internal.EnumLite {
        TRUE(0),
        FALSE(1),
        NULL(2);

        private static Internal.EnumLiteMap internalValueMap = new LoginClient(1);
        private final int value;

        ConstantValue(int i) {
            this.value = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }
    }

    static {
        ProtoBuf$Expression protoBuf$Expression = new ProtoBuf$Expression();
        defaultInstance = protoBuf$Expression;
        protoBuf$Expression.flags_ = 0;
        protoBuf$Expression.valueParameterReference_ = 0;
        protoBuf$Expression.constantValue_ = ConstantValue.TRUE;
        protoBuf$Expression.isInstanceType_ = ProtoBuf$Type.defaultInstance;
        protoBuf$Expression.isInstanceTypeId_ = 0;
        List list = Collections.EMPTY_LIST;
        protoBuf$Expression.andArgument_ = list;
        protoBuf$Expression.orArgument_ = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v6 */
    public ProtoBuf$Expression(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        boolean z = false;
        this.flags_ = 0;
        this.valueParameterReference_ = 0;
        this.constantValue_ = ConstantValue.TRUE;
        this.isInstanceType_ = ProtoBuf$Type.defaultInstance;
        this.isInstanceTypeId_ = 0;
        List list = Collections.EMPTY_LIST;
        this.andArgument_ = list;
        this.orArgument_ = list;
        ByteString.Output output = new ByteString.Output();
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
        char c = 0;
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
                            ConstantValue constantValue = null;
                            if (readTag == 24) {
                                int readRawVarint32 = codedInputStream.readRawVarint32();
                                if (readRawVarint32 == 0) {
                                    constantValue = ConstantValue.TRUE;
                                } else if (readRawVarint32 == 1) {
                                    constantValue = ConstantValue.FALSE;
                                } else if (readRawVarint32 == 2) {
                                    constantValue = ConstantValue.NULL;
                                }
                                if (constantValue == null) {
                                    newInstance.writeRawVarint32(readTag);
                                    newInstance.writeRawVarint32(readRawVarint32);
                                } else {
                                    this.bitField0_ |= 4;
                                    this.constantValue_ = constantValue;
                                }
                            } else if (readTag == 34) {
                                if ((this.bitField0_ & 8) == 8) {
                                    ProtoBuf$Type protoBuf$Type = this.isInstanceType_;
                                    protoBuf$Type.getClass();
                                    builder = ProtoBuf$Type.newBuilder(protoBuf$Type);
                                }
                                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite);
                                this.isInstanceType_ = protoBuf$Type2;
                                if (builder != null) {
                                    builder.mergeFrom(protoBuf$Type2);
                                    this.isInstanceType_ = builder.buildPartial();
                                }
                                this.bitField0_ |= 8;
                            } else if (readTag != 40) {
                                ProtoBuf$Type.AnonymousClass1 anonymousClass1 = PARSER;
                                if (readTag == 50) {
                                    int i = (c == true ? 1 : 0) & 32;
                                    c = c;
                                    if (i != 32) {
                                        this.andArgument_ = new ArrayList();
                                        c = (c == true ? 1 : 0) | ' ';
                                    }
                                    this.andArgument_.add(codedInputStream.readMessage(anonymousClass1, extensionRegistryLite));
                                } else if (readTag == 58) {
                                    int i2 = (c == true ? 1 : 0) & 64;
                                    c = c;
                                    if (i2 != 64) {
                                        this.orArgument_ = new ArrayList();
                                        c = (c == true ? 1 : 0) | '@';
                                    }
                                    this.orArgument_.add(codedInputStream.readMessage(anonymousClass1, extensionRegistryLite));
                                } else if (!codedInputStream.skipField(readTag, newInstance)) {
                                }
                            } else {
                                this.bitField0_ |= 16;
                                this.isInstanceTypeId_ = codedInputStream.readRawVarint32();
                            }
                        } else {
                            this.bitField0_ |= 2;
                            this.valueParameterReference_ = codedInputStream.readRawVarint32();
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (((c == true ? 1 : 0) & 32) == 32) {
                        this.andArgument_ = DesugarCollections.unmodifiableList(this.andArgument_);
                    }
                    if (((c == true ? 1 : 0) & 64) == 64) {
                        this.orArgument_ = DesugarCollections.unmodifiableList(this.orArgument_);
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
        if (((c == true ? 1 : 0) & 32) == 32) {
            this.andArgument_ = DesugarCollections.unmodifiableList(this.andArgument_);
        }
        if (((c == true ? 1 : 0) & 64) == 64) {
            this.orArgument_ = DesugarCollections.unmodifiableList(this.orArgument_);
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
        int computeInt32Size = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeInt32Size(1, this.flags_) : 0;
        if ((this.bitField0_ & 2) == 2) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(2, this.valueParameterReference_);
        }
        if ((this.bitField0_ & 4) == 4) {
            computeInt32Size += SVG.PathDefinition.computeEnumSize(3, this.constantValue_.getNumber());
        }
        if ((this.bitField0_ & 8) == 8) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(4, this.isInstanceType_);
        }
        if ((this.bitField0_ & 16) == 16) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(5, this.isInstanceTypeId_);
        }
        for (int i2 = 0; i2 < this.andArgument_.size(); i2++) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(6, (AbstractMessageLite) this.andArgument_.get(i2));
        }
        for (int i3 = 0; i3 < this.orArgument_.size(); i3++) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(7, (AbstractMessageLite) this.orArgument_.get(i3));
        }
        int size = this.unknownFields.size() + computeInt32Size;
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
        if ((this.bitField0_ & 8) == 8 && !this.isInstanceType_.isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < this.andArgument_.size(); i++) {
            if (!((ProtoBuf$Expression) this.andArgument_.get(i)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i2 = 0; i2 < this.orArgument_.size(); i2++) {
            if (!((ProtoBuf$Expression) this.orArgument_.get(i2)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder newBuilderForType() {
        return Builder.create();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder toBuilder() {
        Builder create = Builder.create();
        create.mergeFrom(this);
        return create;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final void writeTo(SVG.PathDefinition pathDefinition) {
        getSerializedSize();
        if ((this.bitField0_ & 1) == 1) {
            pathDefinition.writeInt32(1, this.flags_);
        }
        if ((this.bitField0_ & 2) == 2) {
            pathDefinition.writeInt32(2, this.valueParameterReference_);
        }
        if ((this.bitField0_ & 4) == 4) {
            pathDefinition.writeEnum(3, this.constantValue_.getNumber());
        }
        if ((this.bitField0_ & 8) == 8) {
            pathDefinition.writeMessage(4, this.isInstanceType_);
        }
        if ((this.bitField0_ & 16) == 16) {
            pathDefinition.writeInt32(5, this.isInstanceTypeId_);
        }
        for (int i = 0; i < this.andArgument_.size(); i++) {
            pathDefinition.writeMessage(6, (AbstractMessageLite) this.andArgument_.get(i));
        }
        for (int i2 = 0; i2 < this.orArgument_.size(); i2++) {
            pathDefinition.writeMessage(7, (AbstractMessageLite) this.orArgument_.get(i2));
        }
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.Builder implements MessageLiteOrBuilder {
        public List andArgument_;
        public int bitField0_;
        public ConstantValue constantValue_;
        public int flags_;
        public int isInstanceTypeId_;
        public ProtoBuf$Type isInstanceType_;
        public List orArgument_;
        public int valueParameterReference_;

        public static Builder create() {
            Builder builder = new Builder();
            builder.constantValue_ = ConstantValue.TRUE;
            builder.isInstanceType_ = ProtoBuf$Type.defaultInstance;
            List list = Collections.EMPTY_LIST;
            builder.andArgument_ = list;
            builder.orArgument_ = list;
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            ProtoBuf$Expression buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw new HttpException(false);
        }

        public final ProtoBuf$Expression buildPartial() {
            ProtoBuf$Expression protoBuf$Expression = new ProtoBuf$Expression(this);
            int i = this.bitField0_;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Expression.flags_ = this.flags_;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Expression.valueParameterReference_ = this.valueParameterReference_;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Expression.constantValue_ = this.constantValue_;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$Expression.isInstanceType_ = this.isInstanceType_;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$Expression.isInstanceTypeId_ = this.isInstanceTypeId_;
            if ((i & 32) == 32) {
                this.andArgument_ = DesugarCollections.unmodifiableList(this.andArgument_);
                i = this.bitField0_ & (-33);
                this.bitField0_ = i;
            }
            protoBuf$Expression.andArgument_ = this.andArgument_;
            if ((i & 64) == 64) {
                this.orArgument_ = DesugarCollections.unmodifiableList(this.orArgument_);
                this.bitField0_ &= -65;
            }
            protoBuf$Expression.orArgument_ = this.orArgument_;
            protoBuf$Expression.bitField0_ = i2;
            return protoBuf$Expression;
        }

        public final Object clone() {
            Builder create = create();
            create.mergeFrom(buildPartial());
            return create;
        }

        public final void mergeFrom(ProtoBuf$Expression protoBuf$Expression) {
            ProtoBuf$Type protoBuf$Type;
            if (protoBuf$Expression == ProtoBuf$Expression.defaultInstance) {
                return;
            }
            int i = protoBuf$Expression.bitField0_;
            if ((i & 1) == 1) {
                int i2 = protoBuf$Expression.flags_;
                this.bitField0_ = 1 | this.bitField0_;
                this.flags_ = i2;
            }
            if ((i & 2) == 2) {
                int i3 = protoBuf$Expression.valueParameterReference_;
                this.bitField0_ = 2 | this.bitField0_;
                this.valueParameterReference_ = i3;
            }
            if ((i & 4) == 4) {
                ConstantValue constantValue = protoBuf$Expression.constantValue_;
                constantValue.getClass();
                this.bitField0_ = 4 | this.bitField0_;
                this.constantValue_ = constantValue;
            }
            if ((protoBuf$Expression.bitField0_ & 8) == 8) {
                ProtoBuf$Type protoBuf$Type2 = protoBuf$Expression.isInstanceType_;
                if ((this.bitField0_ & 8) != 8 || (protoBuf$Type = this.isInstanceType_) == ProtoBuf$Type.defaultInstance) {
                    this.isInstanceType_ = protoBuf$Type2;
                } else {
                    ProtoBuf$Type.Builder newBuilder = ProtoBuf$Type.newBuilder(protoBuf$Type);
                    newBuilder.mergeFrom(protoBuf$Type2);
                    this.isInstanceType_ = newBuilder.buildPartial();
                }
                this.bitField0_ |= 8;
            }
            if ((protoBuf$Expression.bitField0_ & 16) == 16) {
                int i4 = protoBuf$Expression.isInstanceTypeId_;
                this.bitField0_ = 16 | this.bitField0_;
                this.isInstanceTypeId_ = i4;
            }
            if (!protoBuf$Expression.andArgument_.isEmpty()) {
                if (this.andArgument_.isEmpty()) {
                    this.andArgument_ = protoBuf$Expression.andArgument_;
                    this.bitField0_ &= -33;
                } else {
                    if ((this.bitField0_ & 32) != 32) {
                        this.andArgument_ = new ArrayList(this.andArgument_);
                        this.bitField0_ |= 32;
                    }
                    this.andArgument_.addAll(protoBuf$Expression.andArgument_);
                }
            }
            if (!protoBuf$Expression.orArgument_.isEmpty()) {
                if (this.orArgument_.isEmpty()) {
                    this.orArgument_ = protoBuf$Expression.orArgument_;
                    this.bitField0_ &= -65;
                } else {
                    if ((this.bitField0_ & 64) != 64) {
                        this.orArgument_ = new ArrayList(this.orArgument_);
                        this.bitField0_ |= 64;
                    }
                    this.orArgument_.addAll(protoBuf$Expression.orArgument_);
                }
            }
            this.unknownFields = this.unknownFields.concat(protoBuf$Expression.unknownFields);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            mergeFrom((ProtoBuf$Expression) generatedMessageLite);
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression r1 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r2.mergeFrom(r1)
                return r2
            Lf:
                r3 = move-exception
                goto L19
            L11:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }
    }

    public ProtoBuf$Expression(Builder builder) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }

    public ProtoBuf$Expression() {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }
}
