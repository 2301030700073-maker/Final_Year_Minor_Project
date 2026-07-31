package kotlin.reflect.jvm.internal.impl.metadata;

import coil3.network.HttpException;
import com.caverock.androidsvg.SVG;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$Property extends GeneratedMessageLite.ExtendableMessage {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(13);
    public static final ProtoBuf$Property defaultInstance;
    public int bitField0_;
    public int contextReceiverTypeIdMemoizedSerializedSize;
    public List contextReceiverTypeId_;
    public List contextReceiverType_;
    public int flags_;
    public int getterFlags_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public int name_;
    public int oldFlags_;
    public int receiverTypeId_;
    public ProtoBuf$Type receiverType_;
    public int returnTypeId_;
    public ProtoBuf$Type returnType_;
    public int setterFlags_;
    public ProtoBuf$ValueParameter setterValueParameter_;
    public List typeParameter_;
    public final ByteString unknownFields;
    public List versionRequirement_;

    static {
        ProtoBuf$Property protoBuf$Property = new ProtoBuf$Property();
        defaultInstance = protoBuf$Property;
        protoBuf$Property.initFields$12();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    public ProtoBuf$Property(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields$12();
        ByteString.Output output = new ByteString.Output();
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
        boolean z = false;
        char c = 0;
        while (true) {
            ?? r5 = 256;
            if (z) {
                if (((c == true ? 1 : 0) & 32) == 32) {
                    this.typeParameter_ = DesugarCollections.unmodifiableList(this.typeParameter_);
                }
                if (((c == true ? 1 : 0) & 256) == 256) {
                    this.contextReceiverType_ = DesugarCollections.unmodifiableList(this.contextReceiverType_);
                }
                if (((c == true ? 1 : 0) & 512) == 512) {
                    this.contextReceiverTypeId_ = DesugarCollections.unmodifiableList(this.contextReceiverTypeId_);
                }
                if (((c == true ? 1 : 0) & 8192) == 8192) {
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
                    try {
                        int readTag = codedInputStream.readTag();
                        ProtoBuf$Type.Builder builder = null;
                        ProtoBuf$ValueParameter.Builder builder2 = null;
                        ProtoBuf$Type.Builder builder3 = null;
                        switch (readTag) {
                            case 0:
                                z = true;
                            case 8:
                                this.bitField0_ |= 2;
                                this.oldFlags_ = codedInputStream.readRawVarint32();
                            case LAZY_VERTICAL_GRID_VALUE:
                                this.bitField0_ |= 4;
                                this.name_ = codedInputStream.readRawVarint32();
                            case 26:
                                if ((this.bitField0_ & 8) == 8) {
                                    ProtoBuf$Type protoBuf$Type = this.returnType_;
                                    protoBuf$Type.getClass();
                                    builder = ProtoBuf$Type.newBuilder(protoBuf$Type);
                                }
                                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite);
                                this.returnType_ = protoBuf$Type2;
                                if (builder != null) {
                                    builder.mergeFrom(protoBuf$Type2);
                                    this.returnType_ = builder.buildPartial();
                                }
                                this.bitField0_ |= 8;
                            case 34:
                                int i = (c == true ? 1 : 0) & 32;
                                c = c;
                                if (i != 32) {
                                    this.typeParameter_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | ' ';
                                }
                                this.typeParameter_.add(codedInputStream.readMessage(ProtoBuf$TypeParameter.PARSER, extensionRegistryLite));
                            case 42:
                                if ((this.bitField0_ & 32) == 32) {
                                    ProtoBuf$Type protoBuf$Type3 = this.receiverType_;
                                    protoBuf$Type3.getClass();
                                    builder3 = ProtoBuf$Type.newBuilder(protoBuf$Type3);
                                }
                                ProtoBuf$Type protoBuf$Type4 = (ProtoBuf$Type) codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite);
                                this.receiverType_ = protoBuf$Type4;
                                if (builder3 != null) {
                                    builder3.mergeFrom(protoBuf$Type4);
                                    this.receiverType_ = builder3.buildPartial();
                                }
                                this.bitField0_ |= 32;
                            case 50:
                                if ((this.bitField0_ & 128) == 128) {
                                    ProtoBuf$ValueParameter protoBuf$ValueParameter = this.setterValueParameter_;
                                    protoBuf$ValueParameter.getClass();
                                    builder2 = new ProtoBuf$ValueParameter.Builder();
                                    ProtoBuf$Type protoBuf$Type5 = ProtoBuf$Type.defaultInstance;
                                    builder2.type_ = protoBuf$Type5;
                                    builder2.varargElementType_ = protoBuf$Type5;
                                    builder2.mergeFrom(protoBuf$ValueParameter);
                                }
                                ProtoBuf$ValueParameter protoBuf$ValueParameter2 = (ProtoBuf$ValueParameter) codedInputStream.readMessage(ProtoBuf$ValueParameter.PARSER, extensionRegistryLite);
                                this.setterValueParameter_ = protoBuf$ValueParameter2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(protoBuf$ValueParameter2);
                                    this.setterValueParameter_ = builder2.buildPartial();
                                }
                                this.bitField0_ |= 128;
                            case 56:
                                this.bitField0_ |= 256;
                                this.getterFlags_ = codedInputStream.readRawVarint32();
                            case 64:
                                this.bitField0_ |= 512;
                                this.setterFlags_ = codedInputStream.readRawVarint32();
                            case 72:
                                this.bitField0_ |= 16;
                                this.returnTypeId_ = codedInputStream.readRawVarint32();
                            case 80:
                                this.bitField0_ |= 64;
                                this.receiverTypeId_ = codedInputStream.readRawVarint32();
                            case 88:
                                this.bitField0_ |= 1;
                                this.flags_ = codedInputStream.readRawVarint32();
                            case 98:
                                int i2 = (c == true ? 1 : 0) & 256;
                                c = c;
                                if (i2 != 256) {
                                    this.contextReceiverType_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | 256;
                                }
                                this.contextReceiverType_.add(codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite));
                            case 104:
                                int i3 = (c == true ? 1 : 0) & 512;
                                c = c;
                                if (i3 != 512) {
                                    this.contextReceiverTypeId_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | 512;
                                }
                                this.contextReceiverTypeId_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            case 106:
                                int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                int i4 = (c == true ? 1 : 0) & 512;
                                c = c;
                                if (i4 != 512) {
                                    c = c;
                                    if (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.contextReceiverTypeId_ = new ArrayList();
                                        c = (c == true ? 1 : 0) | 512;
                                    }
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.contextReceiverTypeId_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                                }
                                codedInputStream.popLimit(pushLimit);
                            case 248:
                                int i5 = (c == true ? 1 : 0) & 8192;
                                c = c;
                                if (i5 != 8192) {
                                    this.versionRequirement_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | 8192;
                                }
                                this.versionRequirement_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            case 250:
                                int pushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                int i6 = (c == true ? 1 : 0) & 8192;
                                c = c;
                                if (i6 != 8192) {
                                    c = c;
                                    if (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.versionRequirement_ = new ArrayList();
                                        c = (c == true ? 1 : 0) | 8192;
                                    }
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.versionRequirement_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                                }
                                codedInputStream.popLimit(pushLimit2);
                            default:
                                r5 = parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag);
                                if (r5 == 0) {
                                    z = true;
                                }
                        }
                    } catch (IOException e) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e.getMessage());
                        invalidProtocolBufferException.unfinishedMessage = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.unfinishedMessage = this;
                    throw e2;
                }
            } catch (Throwable th2) {
                if (((c == true ? 1 : 0) & 32) == 32) {
                    this.typeParameter_ = DesugarCollections.unmodifiableList(this.typeParameter_);
                }
                if (((c == true ? 1 : 0) & 256) == r5) {
                    this.contextReceiverType_ = DesugarCollections.unmodifiableList(this.contextReceiverType_);
                }
                if (((c == true ? 1 : 0) & 512) == 512) {
                    this.contextReceiverTypeId_ = DesugarCollections.unmodifiableList(this.contextReceiverTypeId_);
                }
                if (((c == true ? 1 : 0) & 8192) == 8192) {
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
        }
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
        int computeInt32Size = (this.bitField0_ & 2) == 2 ? SVG.PathDefinition.computeInt32Size(1, this.oldFlags_) : 0;
        if ((this.bitField0_ & 4) == 4) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(2, this.name_);
        }
        if ((this.bitField0_ & 8) == 8) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(3, this.returnType_);
        }
        for (int i3 = 0; i3 < this.typeParameter_.size(); i3++) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(4, (AbstractMessageLite) this.typeParameter_.get(i3));
        }
        if ((this.bitField0_ & 32) == 32) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(5, this.receiverType_);
        }
        if ((this.bitField0_ & 128) == 128) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(6, this.setterValueParameter_);
        }
        if ((this.bitField0_ & 256) == 256) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(7, this.getterFlags_);
        }
        if ((this.bitField0_ & 512) == 512) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(8, this.setterFlags_);
        }
        if ((this.bitField0_ & 16) == 16) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(9, this.returnTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(10, this.receiverTypeId_);
        }
        if ((this.bitField0_ & 1) == 1) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(11, this.flags_);
        }
        for (int i4 = 0; i4 < this.contextReceiverType_.size(); i4++) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(12, (AbstractMessageLite) this.contextReceiverType_.get(i4));
        }
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int size = this.contextReceiverTypeId_.size();
            list = this.contextReceiverTypeId_;
            if (i5 >= size) {
                break;
            }
            i6 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list.get(i5)).intValue());
            i5++;
        }
        int i7 = computeInt32Size + i6;
        if (!list.isEmpty()) {
            i7 = i7 + 1 + SVG.PathDefinition.computeInt32SizeNoTag(i6);
        }
        this.contextReceiverTypeIdMemoizedSerializedSize = i6;
        int i8 = 0;
        while (true) {
            int size2 = this.versionRequirement_.size();
            List list2 = this.versionRequirement_;
            if (i2 >= size2) {
                int size3 = this.unknownFields.size() + extensionsSerializedSize() + (list2.size() * 2) + i7 + i8;
                this.memoizedSerializedSize = size3;
                return size3;
            }
            i8 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list2.get(i2)).intValue());
            i2++;
        }
    }

    public final void initFields$12() {
        this.flags_ = 518;
        this.oldFlags_ = 2054;
        this.name_ = 0;
        ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.defaultInstance;
        this.returnType_ = protoBuf$Type;
        this.returnTypeId_ = 0;
        List list = Collections.EMPTY_LIST;
        this.typeParameter_ = list;
        this.receiverType_ = protoBuf$Type;
        this.receiverTypeId_ = 0;
        this.contextReceiverType_ = list;
        this.contextReceiverTypeId_ = list;
        this.setterValueParameter_ = ProtoBuf$ValueParameter.defaultInstance;
        this.getterFlags_ = 0;
        this.setterFlags_ = 0;
        this.versionRequirement_ = list;
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
        if ((i & 4) != 4) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if ((i & 8) == 8 && !this.returnType_.isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i2 = 0; i2 < this.typeParameter_.size(); i2++) {
            if (!((ProtoBuf$TypeParameter) this.typeParameter_.get(i2)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if ((this.bitField0_ & 32) == 32 && !this.receiverType_.isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i3 = 0; i3 < this.contextReceiverType_.size(); i3++) {
            if (!((ProtoBuf$Type) this.contextReceiverType_.get(i3)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if ((this.bitField0_ & 128) == 128 && !this.setterValueParameter_.isInitialized()) {
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
        if ((this.bitField0_ & 2) == 2) {
            pathDefinition.writeInt32(1, this.oldFlags_);
        }
        if ((this.bitField0_ & 4) == 4) {
            pathDefinition.writeInt32(2, this.name_);
        }
        if ((this.bitField0_ & 8) == 8) {
            pathDefinition.writeMessage(3, this.returnType_);
        }
        for (int i = 0; i < this.typeParameter_.size(); i++) {
            pathDefinition.writeMessage(4, (AbstractMessageLite) this.typeParameter_.get(i));
        }
        if ((this.bitField0_ & 32) == 32) {
            pathDefinition.writeMessage(5, this.receiverType_);
        }
        if ((this.bitField0_ & 128) == 128) {
            pathDefinition.writeMessage(6, this.setterValueParameter_);
        }
        if ((this.bitField0_ & 256) == 256) {
            pathDefinition.writeInt32(7, this.getterFlags_);
        }
        if ((this.bitField0_ & 512) == 512) {
            pathDefinition.writeInt32(8, this.setterFlags_);
        }
        if ((this.bitField0_ & 16) == 16) {
            pathDefinition.writeInt32(9, this.returnTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            pathDefinition.writeInt32(10, this.receiverTypeId_);
        }
        if ((this.bitField0_ & 1) == 1) {
            pathDefinition.writeInt32(11, this.flags_);
        }
        for (int i2 = 0; i2 < this.contextReceiverType_.size(); i2++) {
            pathDefinition.writeMessage(12, (AbstractMessageLite) this.contextReceiverType_.get(i2));
        }
        if (this.contextReceiverTypeId_.size() > 0) {
            pathDefinition.writeRawVarint32(106);
            pathDefinition.writeRawVarint32(this.contextReceiverTypeIdMemoizedSerializedSize);
        }
        for (int i3 = 0; i3 < this.contextReceiverTypeId_.size(); i3++) {
            pathDefinition.writeInt32NoTag(((Integer) this.contextReceiverTypeId_.get(i3)).intValue());
        }
        for (int i4 = 0; i4 < this.versionRequirement_.size(); i4++) {
            pathDefinition.writeInt32(31, ((Integer) this.versionRequirement_.get(i4)).intValue());
        }
        builder.writeUntil(19000, pathDefinition);
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.ExtendableBuilder {
        public int bitField0_;
        public List contextReceiverTypeId_;
        public List contextReceiverType_;
        public int flags_;
        public int getterFlags_;
        public int name_;
        public int oldFlags_;
        public int receiverTypeId_;
        public ProtoBuf$Type receiverType_;
        public int returnTypeId_;
        public ProtoBuf$Type returnType_;
        public int setterFlags_;
        public ProtoBuf$ValueParameter setterValueParameter_;
        public List typeParameter_;
        public List versionRequirement_;

        public static Builder create() {
            Builder builder = new Builder();
            builder.flags_ = 518;
            builder.oldFlags_ = 2054;
            ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.defaultInstance;
            builder.returnType_ = protoBuf$Type;
            List list = Collections.EMPTY_LIST;
            builder.typeParameter_ = list;
            builder.receiverType_ = protoBuf$Type;
            builder.contextReceiverType_ = list;
            builder.contextReceiverTypeId_ = list;
            builder.setterValueParameter_ = ProtoBuf$ValueParameter.defaultInstance;
            builder.versionRequirement_ = list;
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            ProtoBuf$Property buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw new HttpException(false);
        }

        public final ProtoBuf$Property buildPartial() {
            int i;
            ProtoBuf$Property protoBuf$Property = new ProtoBuf$Property(this);
            int i2 = this.bitField0_;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$Property.flags_ = this.flags_;
            if ((i2 & 2) == 2) {
                i3 |= 2;
            }
            protoBuf$Property.oldFlags_ = this.oldFlags_;
            if ((i2 & 4) == 4) {
                i3 |= 4;
            }
            protoBuf$Property.name_ = this.name_;
            if ((i2 & 8) == 8) {
                i3 |= 8;
            }
            protoBuf$Property.returnType_ = this.returnType_;
            if ((i2 & 16) == 16) {
                i3 |= 16;
            }
            protoBuf$Property.returnTypeId_ = this.returnTypeId_;
            if ((i2 & 32) == 32) {
                this.typeParameter_ = DesugarCollections.unmodifiableList(this.typeParameter_);
                i = this.bitField0_ & (-33);
                this.bitField0_ = i;
            } else {
                i = i2;
            }
            protoBuf$Property.typeParameter_ = this.typeParameter_;
            if ((i2 & 64) == 64) {
                i3 |= 32;
            }
            protoBuf$Property.receiverType_ = this.receiverType_;
            if ((i2 & 128) == 128) {
                i3 |= 64;
            }
            protoBuf$Property.receiverTypeId_ = this.receiverTypeId_;
            if ((i & 256) == 256) {
                this.contextReceiverType_ = DesugarCollections.unmodifiableList(this.contextReceiverType_);
                i = this.bitField0_ & (-257);
                this.bitField0_ = i;
            }
            protoBuf$Property.contextReceiverType_ = this.contextReceiverType_;
            if ((i & 512) == 512) {
                this.contextReceiverTypeId_ = DesugarCollections.unmodifiableList(this.contextReceiverTypeId_);
                i = this.bitField0_ & (-513);
                this.bitField0_ = i;
            }
            protoBuf$Property.contextReceiverTypeId_ = this.contextReceiverTypeId_;
            if ((i2 & 1024) == 1024) {
                i3 |= 128;
            }
            protoBuf$Property.setterValueParameter_ = this.setterValueParameter_;
            if ((i2 & 2048) == 2048) {
                i3 |= 256;
            }
            protoBuf$Property.getterFlags_ = this.getterFlags_;
            if ((i2 & 4096) == 4096) {
                i3 |= 512;
            }
            protoBuf$Property.setterFlags_ = this.setterFlags_;
            if ((i & 8192) == 8192) {
                this.versionRequirement_ = DesugarCollections.unmodifiableList(this.versionRequirement_);
                this.bitField0_ &= -8193;
            }
            protoBuf$Property.versionRequirement_ = this.versionRequirement_;
            protoBuf$Property.bitField0_ = i3;
            return protoBuf$Property;
        }

        public final Object clone() {
            Builder create = create();
            create.mergeFrom(buildPartial());
            return create;
        }

        public final void mergeFrom(ProtoBuf$Property protoBuf$Property) {
            ProtoBuf$ValueParameter protoBuf$ValueParameter;
            ProtoBuf$Type protoBuf$Type;
            ProtoBuf$Type protoBuf$Type2;
            if (protoBuf$Property == ProtoBuf$Property.defaultInstance) {
                return;
            }
            int i = protoBuf$Property.bitField0_;
            if ((i & 1) == 1) {
                int i2 = protoBuf$Property.flags_;
                this.bitField0_ = 1 | this.bitField0_;
                this.flags_ = i2;
            }
            if ((i & 2) == 2) {
                int i3 = protoBuf$Property.oldFlags_;
                this.bitField0_ = 2 | this.bitField0_;
                this.oldFlags_ = i3;
            }
            if ((i & 4) == 4) {
                int i4 = protoBuf$Property.name_;
                this.bitField0_ = 4 | this.bitField0_;
                this.name_ = i4;
            }
            if ((i & 8) == 8) {
                ProtoBuf$Type protoBuf$Type3 = protoBuf$Property.returnType_;
                if ((this.bitField0_ & 8) != 8 || (protoBuf$Type2 = this.returnType_) == ProtoBuf$Type.defaultInstance) {
                    this.returnType_ = protoBuf$Type3;
                } else {
                    ProtoBuf$Type.Builder newBuilder = ProtoBuf$Type.newBuilder(protoBuf$Type2);
                    newBuilder.mergeFrom(protoBuf$Type3);
                    this.returnType_ = newBuilder.buildPartial();
                }
                this.bitField0_ |= 8;
            }
            if ((protoBuf$Property.bitField0_ & 16) == 16) {
                int i5 = protoBuf$Property.returnTypeId_;
                this.bitField0_ = 16 | this.bitField0_;
                this.returnTypeId_ = i5;
            }
            if (!protoBuf$Property.typeParameter_.isEmpty()) {
                if (this.typeParameter_.isEmpty()) {
                    this.typeParameter_ = protoBuf$Property.typeParameter_;
                    this.bitField0_ &= -33;
                } else {
                    if ((this.bitField0_ & 32) != 32) {
                        this.typeParameter_ = new ArrayList(this.typeParameter_);
                        this.bitField0_ |= 32;
                    }
                    this.typeParameter_.addAll(protoBuf$Property.typeParameter_);
                }
            }
            if ((protoBuf$Property.bitField0_ & 32) == 32) {
                ProtoBuf$Type protoBuf$Type4 = protoBuf$Property.receiverType_;
                if ((this.bitField0_ & 64) != 64 || (protoBuf$Type = this.receiverType_) == ProtoBuf$Type.defaultInstance) {
                    this.receiverType_ = protoBuf$Type4;
                } else {
                    ProtoBuf$Type.Builder newBuilder2 = ProtoBuf$Type.newBuilder(protoBuf$Type);
                    newBuilder2.mergeFrom(protoBuf$Type4);
                    this.receiverType_ = newBuilder2.buildPartial();
                }
                this.bitField0_ |= 64;
            }
            if ((protoBuf$Property.bitField0_ & 64) == 64) {
                int i6 = protoBuf$Property.receiverTypeId_;
                this.bitField0_ |= 128;
                this.receiverTypeId_ = i6;
            }
            if (!protoBuf$Property.contextReceiverType_.isEmpty()) {
                if (this.contextReceiverType_.isEmpty()) {
                    this.contextReceiverType_ = protoBuf$Property.contextReceiverType_;
                    this.bitField0_ &= -257;
                } else {
                    if ((this.bitField0_ & 256) != 256) {
                        this.contextReceiverType_ = new ArrayList(this.contextReceiverType_);
                        this.bitField0_ |= 256;
                    }
                    this.contextReceiverType_.addAll(protoBuf$Property.contextReceiverType_);
                }
            }
            if (!protoBuf$Property.contextReceiverTypeId_.isEmpty()) {
                if (this.contextReceiverTypeId_.isEmpty()) {
                    this.contextReceiverTypeId_ = protoBuf$Property.contextReceiverTypeId_;
                    this.bitField0_ &= -513;
                } else {
                    if ((this.bitField0_ & 512) != 512) {
                        this.contextReceiverTypeId_ = new ArrayList(this.contextReceiverTypeId_);
                        this.bitField0_ |= 512;
                    }
                    this.contextReceiverTypeId_.addAll(protoBuf$Property.contextReceiverTypeId_);
                }
            }
            if ((protoBuf$Property.bitField0_ & 128) == 128) {
                ProtoBuf$ValueParameter protoBuf$ValueParameter2 = protoBuf$Property.setterValueParameter_;
                if ((this.bitField0_ & 1024) != 1024 || (protoBuf$ValueParameter = this.setterValueParameter_) == ProtoBuf$ValueParameter.defaultInstance) {
                    this.setterValueParameter_ = protoBuf$ValueParameter2;
                } else {
                    ProtoBuf$ValueParameter.Builder builder = new ProtoBuf$ValueParameter.Builder();
                    ProtoBuf$Type protoBuf$Type5 = ProtoBuf$Type.defaultInstance;
                    builder.type_ = protoBuf$Type5;
                    builder.varargElementType_ = protoBuf$Type5;
                    builder.mergeFrom(protoBuf$ValueParameter);
                    builder.mergeFrom(protoBuf$ValueParameter2);
                    this.setterValueParameter_ = builder.buildPartial();
                }
                this.bitField0_ |= 1024;
            }
            int i7 = protoBuf$Property.bitField0_;
            if ((i7 & 256) == 256) {
                int i8 = protoBuf$Property.getterFlags_;
                this.bitField0_ |= 2048;
                this.getterFlags_ = i8;
            }
            if ((i7 & 512) == 512) {
                int i9 = protoBuf$Property.setterFlags_;
                this.bitField0_ |= 4096;
                this.setterFlags_ = i9;
            }
            if (!protoBuf$Property.versionRequirement_.isEmpty()) {
                if (this.versionRequirement_.isEmpty()) {
                    this.versionRequirement_ = protoBuf$Property.versionRequirement_;
                    this.bitField0_ &= -8193;
                } else {
                    if ((this.bitField0_ & 8192) != 8192) {
                        this.versionRequirement_ = new ArrayList(this.versionRequirement_);
                        this.bitField0_ |= 8192;
                    }
                    this.versionRequirement_.addAll(protoBuf$Property.versionRequirement_);
                }
            }
            mergeExtensionFields(protoBuf$Property);
            this.unknownFields = this.unknownFields.concat(protoBuf$Property.unknownFields);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            mergeFrom((ProtoBuf$Property) generatedMessageLite);
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property r1 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r2.mergeFrom(r1)
                return r2
            Lf:
                r3 = move-exception
                goto L19
            L11:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }
    }

    public ProtoBuf$Property() {
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }

    public ProtoBuf$Property(Builder builder) {
        super(builder);
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }
}
