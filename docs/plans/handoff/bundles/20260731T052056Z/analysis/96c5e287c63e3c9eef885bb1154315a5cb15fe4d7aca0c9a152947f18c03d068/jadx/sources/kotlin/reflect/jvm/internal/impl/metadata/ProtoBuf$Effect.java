package kotlin.reflect.jvm.internal.impl.metadata;

import androidx.transition.Transition;
import coil3.network.HttpException;
import com.caverock.androidsvg.SVG;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder;
import okio.Path;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$Effect extends GeneratedMessageLite {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(7);
    public static final ProtoBuf$Effect defaultInstance;
    public int bitField0_;
    public ProtoBuf$Expression conclusionOfConditionalEffect_;
    public List effectConstructorArgument_;
    public EffectType effectType_;
    public InvocationKind kind_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public final ByteString unknownFields;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public enum EffectType implements Internal.EnumLite {
        RETURNS_CONSTANT(0),
        CALLS(1),
        RETURNS_NOT_NULL(2);

        private static Internal.EnumLiteMap internalValueMap = new Transition.AnonymousClass1(29, false);
        private final int value;

        EffectType(int i) {
            this.value = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public enum InvocationKind implements Internal.EnumLite {
        AT_MOST_ONCE(0),
        EXACTLY_ONCE(1),
        AT_LEAST_ONCE(2);

        private static Internal.EnumLiteMap internalValueMap = new Path.Companion(1);
        private final int value;

        InvocationKind(int i) {
            this.value = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }
    }

    static {
        ProtoBuf$Effect protoBuf$Effect = new ProtoBuf$Effect();
        defaultInstance = protoBuf$Effect;
        protoBuf$Effect.effectType_ = EffectType.RETURNS_CONSTANT;
        protoBuf$Effect.effectConstructorArgument_ = Collections.EMPTY_LIST;
        protoBuf$Effect.conclusionOfConditionalEffect_ = ProtoBuf$Expression.defaultInstance;
        protoBuf$Effect.kind_ = InvocationKind.AT_MOST_ONCE;
    }

    public ProtoBuf$Effect(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.effectType_ = EffectType.RETURNS_CONSTANT;
        this.effectConstructorArgument_ = Collections.EMPTY_LIST;
        this.conclusionOfConditionalEffect_ = ProtoBuf$Expression.defaultInstance;
        this.kind_ = InvocationKind.AT_MOST_ONCE;
        ByteString.Output output = new ByteString.Output();
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
        boolean z = false;
        char c = 0;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    if (readTag != 0) {
                        InvocationKind invocationKind = null;
                        EffectType effectType = null;
                        ProtoBuf$Expression.Builder builder = null;
                        if (readTag == 8) {
                            int readRawVarint32 = codedInputStream.readRawVarint32();
                            if (readRawVarint32 == 0) {
                                effectType = EffectType.RETURNS_CONSTANT;
                            } else if (readRawVarint32 == 1) {
                                effectType = EffectType.CALLS;
                            } else if (readRawVarint32 == 2) {
                                effectType = EffectType.RETURNS_NOT_NULL;
                            }
                            if (effectType == null) {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readRawVarint32);
                            } else {
                                this.bitField0_ |= 1;
                                this.effectType_ = effectType;
                            }
                        } else if (readTag == 18) {
                            int i = (c == true ? 1 : 0) & 2;
                            c = c;
                            if (i != 2) {
                                this.effectConstructorArgument_ = new ArrayList();
                                c = 2;
                            }
                            this.effectConstructorArgument_.add(codedInputStream.readMessage(ProtoBuf$Expression.PARSER, extensionRegistryLite));
                        } else if (readTag == 26) {
                            if ((this.bitField0_ & 2) == 2) {
                                ProtoBuf$Expression protoBuf$Expression = this.conclusionOfConditionalEffect_;
                                protoBuf$Expression.getClass();
                                builder = ProtoBuf$Expression.Builder.create();
                                builder.mergeFrom(protoBuf$Expression);
                            }
                            ProtoBuf$Expression protoBuf$Expression2 = (ProtoBuf$Expression) codedInputStream.readMessage(ProtoBuf$Expression.PARSER, extensionRegistryLite);
                            this.conclusionOfConditionalEffect_ = protoBuf$Expression2;
                            if (builder != null) {
                                builder.mergeFrom(protoBuf$Expression2);
                                this.conclusionOfConditionalEffect_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 2;
                        } else if (readTag == 32) {
                            int readRawVarint322 = codedInputStream.readRawVarint32();
                            if (readRawVarint322 == 0) {
                                invocationKind = InvocationKind.AT_MOST_ONCE;
                            } else if (readRawVarint322 == 1) {
                                invocationKind = InvocationKind.EXACTLY_ONCE;
                            } else if (readRawVarint322 == 2) {
                                invocationKind = InvocationKind.AT_LEAST_ONCE;
                            }
                            if (invocationKind == null) {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readRawVarint322);
                            } else {
                                this.bitField0_ |= 4;
                                this.kind_ = invocationKind;
                            }
                        } else if (!codedInputStream.skipField(readTag, newInstance)) {
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
                if (((c == true ? 1 : 0) & 2) == 2) {
                    this.effectConstructorArgument_ = DesugarCollections.unmodifiableList(this.effectConstructorArgument_);
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
        }
        if (((c == true ? 1 : 0) & 2) == 2) {
            this.effectConstructorArgument_ = DesugarCollections.unmodifiableList(this.effectConstructorArgument_);
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
        int computeEnumSize = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeEnumSize(1, this.effectType_.getNumber()) : 0;
        for (int i2 = 0; i2 < this.effectConstructorArgument_.size(); i2++) {
            computeEnumSize += SVG.PathDefinition.computeMessageSize(2, (AbstractMessageLite) this.effectConstructorArgument_.get(i2));
        }
        if ((this.bitField0_ & 2) == 2) {
            computeEnumSize += SVG.PathDefinition.computeMessageSize(3, this.conclusionOfConditionalEffect_);
        }
        if ((this.bitField0_ & 4) == 4) {
            computeEnumSize += SVG.PathDefinition.computeEnumSize(4, this.kind_.getNumber());
        }
        int size = this.unknownFields.size() + computeEnumSize;
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
        for (int i = 0; i < this.effectConstructorArgument_.size(); i++) {
            if (!((ProtoBuf$Expression) this.effectConstructorArgument_.get(i)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if ((this.bitField0_ & 2) != 2 || this.conclusionOfConditionalEffect_.isInitialized()) {
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }
        this.memoizedIsInitialized = (byte) 0;
        return false;
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
            pathDefinition.writeEnum(1, this.effectType_.getNumber());
        }
        for (int i = 0; i < this.effectConstructorArgument_.size(); i++) {
            pathDefinition.writeMessage(2, (AbstractMessageLite) this.effectConstructorArgument_.get(i));
        }
        if ((this.bitField0_ & 2) == 2) {
            pathDefinition.writeMessage(3, this.conclusionOfConditionalEffect_);
        }
        if ((this.bitField0_ & 4) == 4) {
            pathDefinition.writeEnum(4, this.kind_.getNumber());
        }
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.Builder implements MessageLiteOrBuilder {
        public int bitField0_;
        public ProtoBuf$Expression conclusionOfConditionalEffect_;
        public List effectConstructorArgument_;
        public EffectType effectType_;
        public InvocationKind kind_;

        public static Builder create() {
            Builder builder = new Builder();
            builder.effectType_ = EffectType.RETURNS_CONSTANT;
            builder.effectConstructorArgument_ = Collections.EMPTY_LIST;
            builder.conclusionOfConditionalEffect_ = ProtoBuf$Expression.defaultInstance;
            builder.kind_ = InvocationKind.AT_MOST_ONCE;
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            ProtoBuf$Effect buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw new HttpException(false);
        }

        public final ProtoBuf$Effect buildPartial() {
            ProtoBuf$Effect protoBuf$Effect = new ProtoBuf$Effect(this);
            int i = this.bitField0_;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Effect.effectType_ = this.effectType_;
            if ((i & 2) == 2) {
                this.effectConstructorArgument_ = DesugarCollections.unmodifiableList(this.effectConstructorArgument_);
                this.bitField0_ &= -3;
            }
            protoBuf$Effect.effectConstructorArgument_ = this.effectConstructorArgument_;
            if ((i & 4) == 4) {
                i2 |= 2;
            }
            protoBuf$Effect.conclusionOfConditionalEffect_ = this.conclusionOfConditionalEffect_;
            if ((i & 8) == 8) {
                i2 |= 4;
            }
            protoBuf$Effect.kind_ = this.kind_;
            protoBuf$Effect.bitField0_ = i2;
            return protoBuf$Effect;
        }

        public final Object clone() {
            Builder create = create();
            create.mergeFrom(buildPartial());
            return create;
        }

        public final void mergeFrom(ProtoBuf$Effect protoBuf$Effect) {
            ProtoBuf$Expression protoBuf$Expression;
            if (protoBuf$Effect == ProtoBuf$Effect.defaultInstance) {
                return;
            }
            if ((protoBuf$Effect.bitField0_ & 1) == 1) {
                EffectType effectType = protoBuf$Effect.effectType_;
                effectType.getClass();
                this.bitField0_ = 1 | this.bitField0_;
                this.effectType_ = effectType;
            }
            if (!protoBuf$Effect.effectConstructorArgument_.isEmpty()) {
                if (this.effectConstructorArgument_.isEmpty()) {
                    this.effectConstructorArgument_ = protoBuf$Effect.effectConstructorArgument_;
                    this.bitField0_ &= -3;
                } else {
                    if ((this.bitField0_ & 2) != 2) {
                        this.effectConstructorArgument_ = new ArrayList(this.effectConstructorArgument_);
                        this.bitField0_ |= 2;
                    }
                    this.effectConstructorArgument_.addAll(protoBuf$Effect.effectConstructorArgument_);
                }
            }
            if ((protoBuf$Effect.bitField0_ & 2) == 2) {
                ProtoBuf$Expression protoBuf$Expression2 = protoBuf$Effect.conclusionOfConditionalEffect_;
                if ((this.bitField0_ & 4) != 4 || (protoBuf$Expression = this.conclusionOfConditionalEffect_) == ProtoBuf$Expression.defaultInstance) {
                    this.conclusionOfConditionalEffect_ = protoBuf$Expression2;
                } else {
                    ProtoBuf$Expression.Builder create = ProtoBuf$Expression.Builder.create();
                    create.mergeFrom(protoBuf$Expression);
                    create.mergeFrom(protoBuf$Expression2);
                    this.conclusionOfConditionalEffect_ = create.buildPartial();
                }
                this.bitField0_ |= 4;
            }
            if ((protoBuf$Effect.bitField0_ & 4) == 4) {
                InvocationKind invocationKind = protoBuf$Effect.kind_;
                invocationKind.getClass();
                this.bitField0_ |= 8;
                this.kind_ = invocationKind;
            }
            this.unknownFields = this.unknownFields.concat(protoBuf$Effect.unknownFields);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            mergeFrom((ProtoBuf$Effect) generatedMessageLite);
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect r1 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r2.mergeFrom(r1)
                return r2
            Lf:
                r3 = move-exception
                goto L19
            L11:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }
    }

    public ProtoBuf$Effect(Builder builder) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }

    public ProtoBuf$Effect() {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }
}
