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
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$TypeAlias extends GeneratedMessageLite.ExtendableMessage {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(18);
    public static final ProtoBuf$TypeAlias defaultInstance;
    public List annotation_;
    public int bitField0_;
    public int expandedTypeId_;
    public ProtoBuf$Type expandedType_;
    public int flags_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public int name_;
    public List typeParameter_;
    public int underlyingTypeId_;
    public ProtoBuf$Type underlyingType_;
    public final ByteString unknownFields;
    public List versionRequirement_;

    static {
        ProtoBuf$TypeAlias protoBuf$TypeAlias = new ProtoBuf$TypeAlias();
        defaultInstance = protoBuf$TypeAlias;
        protoBuf$TypeAlias.flags_ = 6;
        protoBuf$TypeAlias.name_ = 0;
        List list = Collections.EMPTY_LIST;
        protoBuf$TypeAlias.typeParameter_ = list;
        ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.defaultInstance;
        protoBuf$TypeAlias.underlyingType_ = protoBuf$Type;
        protoBuf$TypeAlias.underlyingTypeId_ = 0;
        protoBuf$TypeAlias.expandedType_ = protoBuf$Type;
        protoBuf$TypeAlias.expandedTypeId_ = 0;
        protoBuf$TypeAlias.annotation_ = list;
        protoBuf$TypeAlias.versionRequirement_ = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    public ProtoBuf$TypeAlias(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.flags_ = 6;
        boolean z = false;
        this.name_ = 0;
        List list = Collections.EMPTY_LIST;
        this.typeParameter_ = list;
        ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.defaultInstance;
        this.underlyingType_ = protoBuf$Type;
        this.underlyingTypeId_ = 0;
        this.expandedType_ = protoBuf$Type;
        this.expandedTypeId_ = 0;
        this.annotation_ = list;
        this.versionRequirement_ = list;
        ByteString.Output output = new ByteString.Output();
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
        int i = 0;
        while (true) {
            ?? r5 = 128;
            if (z) {
                if ((i & 4) == 4) {
                    this.typeParameter_ = DesugarCollections.unmodifiableList(this.typeParameter_);
                }
                if ((i & 128) == 128) {
                    this.annotation_ = DesugarCollections.unmodifiableList(this.annotation_);
                }
                if ((i & 256) == 256) {
                    this.versionRequirement_ = DesugarCollections.unmodifiableList(this.versionRequirement_);
                }
                try {
                    newInstance.refreshBuffer();
                } catch (IOException unused) {
                } catch (Throwable th) {
                    this.unknownFields = output.toByteString();
                    throw th;
                }
                this.unknownFields = output.toByteString();
                makeExtensionsImmutable();
                return;
            }
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    ProtoBuf$Type.Builder builder = null;
                    switch (readTag) {
                        case 0:
                            z = true;
                        case 8:
                            this.bitField0_ |= 1;
                            this.flags_ = codedInputStream.readRawVarint32();
                        case LAZY_VERTICAL_GRID_VALUE:
                            this.bitField0_ |= 2;
                            this.name_ = codedInputStream.readRawVarint32();
                        case 26:
                            if ((i & 4) != 4) {
                                this.typeParameter_ = new ArrayList();
                                i |= 4;
                            }
                            this.typeParameter_.add(codedInputStream.readMessage(ProtoBuf$TypeParameter.PARSER, extensionRegistryLite));
                        case 34:
                            if ((this.bitField0_ & 4) == 4) {
                                ProtoBuf$Type protoBuf$Type2 = this.underlyingType_;
                                protoBuf$Type2.getClass();
                                builder = ProtoBuf$Type.newBuilder(protoBuf$Type2);
                            }
                            ProtoBuf$Type protoBuf$Type3 = (ProtoBuf$Type) codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite);
                            this.underlyingType_ = protoBuf$Type3;
                            if (builder != null) {
                                builder.mergeFrom(protoBuf$Type3);
                                this.underlyingType_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 4;
                        case 40:
                            this.bitField0_ |= 8;
                            this.underlyingTypeId_ = codedInputStream.readRawVarint32();
                        case 50:
                            if ((this.bitField0_ & 16) == 16) {
                                ProtoBuf$Type protoBuf$Type4 = this.expandedType_;
                                protoBuf$Type4.getClass();
                                builder = ProtoBuf$Type.newBuilder(protoBuf$Type4);
                            }
                            ProtoBuf$Type protoBuf$Type5 = (ProtoBuf$Type) codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite);
                            this.expandedType_ = protoBuf$Type5;
                            if (builder != null) {
                                builder.mergeFrom(protoBuf$Type5);
                                this.expandedType_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 16;
                        case 56:
                            this.bitField0_ |= 32;
                            this.expandedTypeId_ = codedInputStream.readRawVarint32();
                        case 66:
                            if ((i & 128) != 128) {
                                this.annotation_ = new ArrayList();
                                i |= 128;
                            }
                            this.annotation_.add(codedInputStream.readMessage(ProtoBuf$Annotation.PARSER, extensionRegistryLite));
                        case 248:
                            if ((i & 256) != 256) {
                                this.versionRequirement_ = new ArrayList();
                                i |= 256;
                            }
                            this.versionRequirement_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                        case 250:
                            int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            if ((i & 256) != 256 && codedInputStream.getBytesUntilLimit() > 0) {
                                this.versionRequirement_ = new ArrayList();
                                i |= 256;
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.versionRequirement_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            }
                            codedInputStream.popLimit(pushLimit);
                            break;
                        default:
                            r5 = parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag);
                            if (r5 == 0) {
                                z = true;
                            }
                    }
                } catch (Throwable th2) {
                    if ((i & 4) == 4) {
                        this.typeParameter_ = DesugarCollections.unmodifiableList(this.typeParameter_);
                    }
                    if ((i & 128) == r5) {
                        this.annotation_ = DesugarCollections.unmodifiableList(this.annotation_);
                    }
                    if ((i & 256) == 256) {
                        this.versionRequirement_ = DesugarCollections.unmodifiableList(this.versionRequirement_);
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
                    throw th2;
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
        int i2 = 0;
        int computeInt32Size = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeInt32Size(1, this.flags_) : 0;
        if ((this.bitField0_ & 2) == 2) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(2, this.name_);
        }
        for (int i3 = 0; i3 < this.typeParameter_.size(); i3++) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(3, (AbstractMessageLite) this.typeParameter_.get(i3));
        }
        if ((this.bitField0_ & 4) == 4) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(4, this.underlyingType_);
        }
        if ((this.bitField0_ & 8) == 8) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(5, this.underlyingTypeId_);
        }
        if ((this.bitField0_ & 16) == 16) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(6, this.expandedType_);
        }
        if ((this.bitField0_ & 32) == 32) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(7, this.expandedTypeId_);
        }
        for (int i4 = 0; i4 < this.annotation_.size(); i4++) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(8, (AbstractMessageLite) this.annotation_.get(i4));
        }
        int i5 = 0;
        while (true) {
            int size = this.versionRequirement_.size();
            List list = this.versionRequirement_;
            if (i2 >= size) {
                int size2 = this.unknownFields.size() + extensionsSerializedSize() + (list.size() * 2) + computeInt32Size + i5;
                this.memoizedSerializedSize = size2;
                return size2;
            }
            i5 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list.get(i2)).intValue());
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
        if ((this.bitField0_ & 2) != 2) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < this.typeParameter_.size(); i++) {
            if (!((ProtoBuf$TypeParameter) this.typeParameter_.get(i)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if ((this.bitField0_ & 4) == 4 && !this.underlyingType_.isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if ((this.bitField0_ & 16) == 16 && !this.expandedType_.isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i2 = 0; i2 < this.annotation_.size(); i2++) {
            if (!((ProtoBuf$Annotation) this.annotation_.get(i2)).isInitialized()) {
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
        FormBody.Builder builder = new FormBody.Builder((GeneratedMessageLite.ExtendableMessage) this);
        if ((this.bitField0_ & 1) == 1) {
            pathDefinition.writeInt32(1, this.flags_);
        }
        if ((this.bitField0_ & 2) == 2) {
            pathDefinition.writeInt32(2, this.name_);
        }
        for (int i = 0; i < this.typeParameter_.size(); i++) {
            pathDefinition.writeMessage(3, (AbstractMessageLite) this.typeParameter_.get(i));
        }
        if ((this.bitField0_ & 4) == 4) {
            pathDefinition.writeMessage(4, this.underlyingType_);
        }
        if ((this.bitField0_ & 8) == 8) {
            pathDefinition.writeInt32(5, this.underlyingTypeId_);
        }
        if ((this.bitField0_ & 16) == 16) {
            pathDefinition.writeMessage(6, this.expandedType_);
        }
        if ((this.bitField0_ & 32) == 32) {
            pathDefinition.writeInt32(7, this.expandedTypeId_);
        }
        for (int i2 = 0; i2 < this.annotation_.size(); i2++) {
            pathDefinition.writeMessage(8, (AbstractMessageLite) this.annotation_.get(i2));
        }
        for (int i3 = 0; i3 < this.versionRequirement_.size(); i3++) {
            pathDefinition.writeInt32(31, ((Integer) this.versionRequirement_.get(i3)).intValue());
        }
        builder.writeUntil(200, pathDefinition);
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.ExtendableBuilder {
        public List annotation_;
        public int bitField0_;
        public int expandedTypeId_;
        public ProtoBuf$Type expandedType_;
        public int flags_;
        public int name_;
        public List typeParameter_;
        public int underlyingTypeId_;
        public ProtoBuf$Type underlyingType_;
        public List versionRequirement_;

        public static Builder create() {
            Builder builder = new Builder();
            builder.flags_ = 6;
            List list = Collections.EMPTY_LIST;
            builder.typeParameter_ = list;
            ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.defaultInstance;
            builder.underlyingType_ = protoBuf$Type;
            builder.expandedType_ = protoBuf$Type;
            builder.annotation_ = list;
            builder.versionRequirement_ = list;
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            ProtoBuf$TypeAlias buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw new HttpException(false);
        }

        public final ProtoBuf$TypeAlias buildPartial() {
            int i;
            ProtoBuf$TypeAlias protoBuf$TypeAlias = new ProtoBuf$TypeAlias(this);
            int i2 = this.bitField0_;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$TypeAlias.flags_ = this.flags_;
            if ((i2 & 2) == 2) {
                i3 |= 2;
            }
            protoBuf$TypeAlias.name_ = this.name_;
            if ((i2 & 4) == 4) {
                this.typeParameter_ = DesugarCollections.unmodifiableList(this.typeParameter_);
                i = this.bitField0_ & (-5);
                this.bitField0_ = i;
            } else {
                i = i2;
            }
            protoBuf$TypeAlias.typeParameter_ = this.typeParameter_;
            if ((i2 & 8) == 8) {
                i3 |= 4;
            }
            protoBuf$TypeAlias.underlyingType_ = this.underlyingType_;
            if ((i2 & 16) == 16) {
                i3 |= 8;
            }
            protoBuf$TypeAlias.underlyingTypeId_ = this.underlyingTypeId_;
            if ((i2 & 32) == 32) {
                i3 |= 16;
            }
            protoBuf$TypeAlias.expandedType_ = this.expandedType_;
            if ((i2 & 64) == 64) {
                i3 |= 32;
            }
            protoBuf$TypeAlias.expandedTypeId_ = this.expandedTypeId_;
            if ((i & 128) == 128) {
                this.annotation_ = DesugarCollections.unmodifiableList(this.annotation_);
                i = this.bitField0_ & (-129);
                this.bitField0_ = i;
            }
            protoBuf$TypeAlias.annotation_ = this.annotation_;
            if ((i & 256) == 256) {
                this.versionRequirement_ = DesugarCollections.unmodifiableList(this.versionRequirement_);
                this.bitField0_ &= -257;
            }
            protoBuf$TypeAlias.versionRequirement_ = this.versionRequirement_;
            protoBuf$TypeAlias.bitField0_ = i3;
            return protoBuf$TypeAlias;
        }

        public final Object clone() {
            Builder create = create();
            create.mergeFrom(buildPartial());
            return create;
        }

        public final void mergeFrom(ProtoBuf$TypeAlias protoBuf$TypeAlias) {
            ProtoBuf$Type protoBuf$Type;
            ProtoBuf$Type protoBuf$Type2;
            if (protoBuf$TypeAlias == ProtoBuf$TypeAlias.defaultInstance) {
                return;
            }
            int i = protoBuf$TypeAlias.bitField0_;
            if ((i & 1) == 1) {
                int i2 = protoBuf$TypeAlias.flags_;
                this.bitField0_ = 1 | this.bitField0_;
                this.flags_ = i2;
            }
            if ((i & 2) == 2) {
                int i3 = protoBuf$TypeAlias.name_;
                this.bitField0_ = 2 | this.bitField0_;
                this.name_ = i3;
            }
            if (!protoBuf$TypeAlias.typeParameter_.isEmpty()) {
                if (this.typeParameter_.isEmpty()) {
                    this.typeParameter_ = protoBuf$TypeAlias.typeParameter_;
                    this.bitField0_ &= -5;
                } else {
                    if ((this.bitField0_ & 4) != 4) {
                        this.typeParameter_ = new ArrayList(this.typeParameter_);
                        this.bitField0_ |= 4;
                    }
                    this.typeParameter_.addAll(protoBuf$TypeAlias.typeParameter_);
                }
            }
            if ((protoBuf$TypeAlias.bitField0_ & 4) == 4) {
                ProtoBuf$Type protoBuf$Type3 = protoBuf$TypeAlias.underlyingType_;
                if ((this.bitField0_ & 8) != 8 || (protoBuf$Type2 = this.underlyingType_) == ProtoBuf$Type.defaultInstance) {
                    this.underlyingType_ = protoBuf$Type3;
                } else {
                    ProtoBuf$Type.Builder newBuilder = ProtoBuf$Type.newBuilder(protoBuf$Type2);
                    newBuilder.mergeFrom(protoBuf$Type3);
                    this.underlyingType_ = newBuilder.buildPartial();
                }
                this.bitField0_ |= 8;
            }
            int i4 = protoBuf$TypeAlias.bitField0_;
            if ((i4 & 8) == 8) {
                int i5 = protoBuf$TypeAlias.underlyingTypeId_;
                this.bitField0_ |= 16;
                this.underlyingTypeId_ = i5;
            }
            if ((i4 & 16) == 16) {
                ProtoBuf$Type protoBuf$Type4 = protoBuf$TypeAlias.expandedType_;
                if ((this.bitField0_ & 32) != 32 || (protoBuf$Type = this.expandedType_) == ProtoBuf$Type.defaultInstance) {
                    this.expandedType_ = protoBuf$Type4;
                } else {
                    ProtoBuf$Type.Builder newBuilder2 = ProtoBuf$Type.newBuilder(protoBuf$Type);
                    newBuilder2.mergeFrom(protoBuf$Type4);
                    this.expandedType_ = newBuilder2.buildPartial();
                }
                this.bitField0_ |= 32;
            }
            if ((protoBuf$TypeAlias.bitField0_ & 32) == 32) {
                int i6 = protoBuf$TypeAlias.expandedTypeId_;
                this.bitField0_ |= 64;
                this.expandedTypeId_ = i6;
            }
            if (!protoBuf$TypeAlias.annotation_.isEmpty()) {
                if (this.annotation_.isEmpty()) {
                    this.annotation_ = protoBuf$TypeAlias.annotation_;
                    this.bitField0_ &= -129;
                } else {
                    if ((this.bitField0_ & 128) != 128) {
                        this.annotation_ = new ArrayList(this.annotation_);
                        this.bitField0_ |= 128;
                    }
                    this.annotation_.addAll(protoBuf$TypeAlias.annotation_);
                }
            }
            if (!protoBuf$TypeAlias.versionRequirement_.isEmpty()) {
                if (this.versionRequirement_.isEmpty()) {
                    this.versionRequirement_ = protoBuf$TypeAlias.versionRequirement_;
                    this.bitField0_ &= -257;
                } else {
                    if ((this.bitField0_ & 256) != 256) {
                        this.versionRequirement_ = new ArrayList(this.versionRequirement_);
                        this.bitField0_ |= 256;
                    }
                    this.versionRequirement_.addAll(protoBuf$TypeAlias.versionRequirement_);
                }
            }
            mergeExtensionFields(protoBuf$TypeAlias);
            this.unknownFields = this.unknownFields.concat(protoBuf$TypeAlias.unknownFields);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            mergeFrom((ProtoBuf$TypeAlias) generatedMessageLite);
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias r1 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r2.mergeFrom(r1)
                return r2
            Lf:
                r3 = move-exception
                goto L19
            L11:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }
    }

    public ProtoBuf$TypeAlias() {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }

    public ProtoBuf$TypeAlias(Builder builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }
}
