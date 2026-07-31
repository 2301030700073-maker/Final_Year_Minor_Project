package kotlin.reflect.jvm.internal.impl.metadata;

import coil3.network.HttpException;
import com.caverock.androidsvg.SVG;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$Function extends GeneratedMessageLite.ExtendableMessage {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(10);
    public static final ProtoBuf$Function defaultInstance;
    public int bitField0_;
    public int contextReceiverTypeIdMemoizedSerializedSize;
    public List contextReceiverTypeId_;
    public List contextReceiverType_;
    public ProtoBuf$Contract contract_;
    public int flags_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public int name_;
    public int oldFlags_;
    public int receiverTypeId_;
    public ProtoBuf$Type receiverType_;
    public int returnTypeId_;
    public ProtoBuf$Type returnType_;
    public List typeParameter_;
    public ProtoBuf$TypeTable typeTable_;
    public final ByteString unknownFields;
    public List valueParameter_;
    public List versionRequirement_;

    static {
        ProtoBuf$Function protoBuf$Function = new ProtoBuf$Function();
        defaultInstance = protoBuf$Function;
        protoBuf$Function.initFields$9();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [boolean] */
    public ProtoBuf$Function(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        boolean z;
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields$9();
        ByteString.Output output = new ByteString.Output();
        boolean z2 = true;
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
        int i = 0;
        boolean z3 = false;
        char c = 0;
        while (true) {
            ?? r9 = 1024;
            if (z3) {
                if (((c == true ? 1 : 0) & 32) == 32) {
                    this.typeParameter_ = DesugarCollections.unmodifiableList(this.typeParameter_);
                }
                if (((c == true ? 1 : 0) & 1024) == 1024) {
                    this.valueParameter_ = DesugarCollections.unmodifiableList(this.valueParameter_);
                }
                if (((c == true ? 1 : 0) & 256) == 256) {
                    this.contextReceiverType_ = DesugarCollections.unmodifiableList(this.contextReceiverType_);
                }
                if (((c == true ? 1 : 0) & 512) == 512) {
                    this.contextReceiverTypeId_ = DesugarCollections.unmodifiableList(this.contextReceiverTypeId_);
                }
                if (((c == true ? 1 : 0) & 4096) == 4096) {
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
                        ProtoBuf$Contract.Builder builder2 = null;
                        ProtoBuf$TypeTable.Builder builder3 = null;
                        ProtoBuf$Type.Builder builder4 = null;
                        switch (readTag) {
                            case 0:
                                z = z2;
                                z3 = z;
                                z2 = z;
                                c = c;
                            case 8:
                                z = z2;
                                this.bitField0_ |= 2;
                                this.oldFlags_ = codedInputStream.readRawVarint32();
                                z2 = z;
                                c = c;
                            case LAZY_VERTICAL_GRID_VALUE:
                                z = z2;
                                this.bitField0_ |= 4;
                                this.name_ = codedInputStream.readRawVarint32();
                                z2 = z;
                                c = c;
                            case 26:
                                z = z2;
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
                                z2 = z;
                                c = c;
                            case 34:
                                z = z2;
                                int i2 = (c == true ? 1 : 0) & 32;
                                c = c;
                                if (i2 != 32) {
                                    this.typeParameter_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | ' ';
                                }
                                this.typeParameter_.add(codedInputStream.readMessage(ProtoBuf$TypeParameter.PARSER, extensionRegistryLite));
                                z2 = z;
                                c = c;
                            case 42:
                                z = z2;
                                if ((this.bitField0_ & 32) == 32) {
                                    ProtoBuf$Type protoBuf$Type3 = this.receiverType_;
                                    protoBuf$Type3.getClass();
                                    builder4 = ProtoBuf$Type.newBuilder(protoBuf$Type3);
                                }
                                ProtoBuf$Type protoBuf$Type4 = (ProtoBuf$Type) codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite);
                                this.receiverType_ = protoBuf$Type4;
                                if (builder4 != null) {
                                    builder4.mergeFrom(protoBuf$Type4);
                                    this.receiverType_ = builder4.buildPartial();
                                }
                                this.bitField0_ |= 32;
                                z2 = z;
                                c = c;
                            case 50:
                                z = z2;
                                int i3 = (c == true ? 1 : 0) & 1024;
                                c = c;
                                if (i3 != 1024) {
                                    this.valueParameter_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | 1024;
                                }
                                this.valueParameter_.add(codedInputStream.readMessage(ProtoBuf$ValueParameter.PARSER, extensionRegistryLite));
                                z2 = z;
                                c = c;
                            case 56:
                                z = z2;
                                this.bitField0_ |= 16;
                                this.returnTypeId_ = codedInputStream.readRawVarint32();
                                z2 = z;
                                c = c;
                            case 64:
                                z = z2;
                                this.bitField0_ |= 64;
                                this.receiverTypeId_ = codedInputStream.readRawVarint32();
                                z2 = z;
                                c = c;
                            case 72:
                                z = z2;
                                this.bitField0_ |= 1;
                                this.flags_ = codedInputStream.readRawVarint32();
                                z2 = z;
                                c = c;
                            case 82:
                                z = z2;
                                int i4 = (c == true ? 1 : 0) & 256;
                                c = c;
                                if (i4 != 256) {
                                    this.contextReceiverType_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | 256;
                                }
                                this.contextReceiverType_.add(codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite));
                                z2 = z;
                                c = c;
                            case 88:
                                z = z2;
                                int i5 = (c == true ? 1 : 0) & 512;
                                c = c;
                                if (i5 != 512) {
                                    this.contextReceiverTypeId_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | 512;
                                }
                                this.contextReceiverTypeId_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                                z2 = z;
                                c = c;
                            case 90:
                                z = z2;
                                int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                int i6 = (c == true ? 1 : 0) & 512;
                                c = c;
                                if (i6 != 512) {
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
                                z2 = z;
                                c = c;
                            case 242:
                                z = z2;
                                if ((this.bitField0_ & 128) == 128) {
                                    ProtoBuf$TypeTable protoBuf$TypeTable = this.typeTable_;
                                    protoBuf$TypeTable.getClass();
                                    builder3 = ProtoBuf$TypeTable.newBuilder(protoBuf$TypeTable);
                                }
                                ProtoBuf$TypeTable protoBuf$TypeTable2 = (ProtoBuf$TypeTable) codedInputStream.readMessage(ProtoBuf$TypeTable.PARSER, extensionRegistryLite);
                                this.typeTable_ = protoBuf$TypeTable2;
                                if (builder3 != null) {
                                    builder3.mergeFrom(protoBuf$TypeTable2);
                                    this.typeTable_ = builder3.m834buildPartial();
                                }
                                this.bitField0_ |= 128;
                                z2 = z;
                                c = c;
                            case 248:
                                z = z2;
                                int i7 = (c == true ? 1 : 0) & 4096;
                                c = c;
                                if (i7 != 4096) {
                                    this.versionRequirement_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | 4096;
                                }
                                this.versionRequirement_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                                z2 = z;
                                c = c;
                            case 250:
                                z = z2;
                                int pushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                int i8 = (c == true ? 1 : 0) & 4096;
                                c = c;
                                if (i8 != 4096) {
                                    c = c;
                                    if (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.versionRequirement_ = new ArrayList();
                                        c = (c == true ? 1 : 0) | 4096;
                                    }
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.versionRequirement_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                                }
                                codedInputStream.popLimit(pushLimit2);
                                z2 = z;
                                c = c;
                            case 258:
                                if ((this.bitField0_ & 256) == 256) {
                                    ProtoBuf$Contract protoBuf$Contract = this.contract_;
                                    protoBuf$Contract.getClass();
                                    builder2 = new ProtoBuf$Contract.Builder(i);
                                    z = z2;
                                    builder2.effect_ = Collections.EMPTY_LIST;
                                    builder2.mergeFrom(protoBuf$Contract);
                                } else {
                                    z = z2;
                                }
                                ProtoBuf$Contract protoBuf$Contract2 = (ProtoBuf$Contract) codedInputStream.readMessage(ProtoBuf$Contract.PARSER, extensionRegistryLite);
                                this.contract_ = protoBuf$Contract2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(protoBuf$Contract2);
                                    this.contract_ = builder2.buildPartial();
                                }
                                this.bitField0_ |= 256;
                                z2 = z;
                                c = c;
                            default:
                                r9 = parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag);
                                if (r9 == 0) {
                                    z3 = z2;
                                    z = z3;
                                } else {
                                    z = z2;
                                }
                                z2 = z;
                                c = c;
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
                if (((c == true ? 1 : 0) & 1024) == r9) {
                    this.valueParameter_ = DesugarCollections.unmodifiableList(this.valueParameter_);
                }
                if (((c == true ? 1 : 0) & 256) == 256) {
                    this.contextReceiverType_ = DesugarCollections.unmodifiableList(this.contextReceiverType_);
                }
                if (((c == true ? 1 : 0) & 512) == 512) {
                    this.contextReceiverTypeId_ = DesugarCollections.unmodifiableList(this.contextReceiverTypeId_);
                }
                if (((c == true ? 1 : 0) & 4096) == 4096) {
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
        List list2;
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
        for (int i4 = 0; i4 < this.valueParameter_.size(); i4++) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(6, (AbstractMessageLite) this.valueParameter_.get(i4));
        }
        if ((this.bitField0_ & 16) == 16) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(7, this.returnTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(8, this.receiverTypeId_);
        }
        if ((this.bitField0_ & 1) == 1) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(9, this.flags_);
        }
        for (int i5 = 0; i5 < this.contextReceiverType_.size(); i5++) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(10, (AbstractMessageLite) this.contextReceiverType_.get(i5));
        }
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int size = this.contextReceiverTypeId_.size();
            list = this.contextReceiverTypeId_;
            if (i6 >= size) {
                break;
            }
            i7 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list.get(i6)).intValue());
            i6++;
        }
        int i8 = computeInt32Size + i7;
        if (!list.isEmpty()) {
            i8 = i8 + 1 + SVG.PathDefinition.computeInt32SizeNoTag(i7);
        }
        this.contextReceiverTypeIdMemoizedSerializedSize = i7;
        if ((this.bitField0_ & 128) == 128) {
            i8 += SVG.PathDefinition.computeMessageSize(30, this.typeTable_);
        }
        int i9 = 0;
        while (true) {
            int size2 = this.versionRequirement_.size();
            list2 = this.versionRequirement_;
            if (i2 >= size2) {
                break;
            }
            i9 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list2.get(i2)).intValue());
            i2++;
        }
        int size3 = (list2.size() * 2) + i8 + i9;
        if ((this.bitField0_ & 256) == 256) {
            size3 += SVG.PathDefinition.computeMessageSize(32, this.contract_);
        }
        int size4 = this.unknownFields.size() + extensionsSerializedSize() + size3;
        this.memoizedSerializedSize = size4;
        return size4;
    }

    public final void initFields$9() {
        this.flags_ = 6;
        this.oldFlags_ = 6;
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
        this.valueParameter_ = list;
        this.typeTable_ = ProtoBuf$TypeTable.defaultInstance;
        this.versionRequirement_ = list;
        this.contract_ = ProtoBuf$Contract.defaultInstance;
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
        for (int i4 = 0; i4 < this.valueParameter_.size(); i4++) {
            if (!((ProtoBuf$ValueParameter) this.valueParameter_.get(i4)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if ((this.bitField0_ & 128) == 128 && !this.typeTable_.isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if ((this.bitField0_ & 256) == 256 && !this.contract_.isInitialized()) {
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
        for (int i2 = 0; i2 < this.valueParameter_.size(); i2++) {
            pathDefinition.writeMessage(6, (AbstractMessageLite) this.valueParameter_.get(i2));
        }
        if ((this.bitField0_ & 16) == 16) {
            pathDefinition.writeInt32(7, this.returnTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            pathDefinition.writeInt32(8, this.receiverTypeId_);
        }
        if ((this.bitField0_ & 1) == 1) {
            pathDefinition.writeInt32(9, this.flags_);
        }
        for (int i3 = 0; i3 < this.contextReceiverType_.size(); i3++) {
            pathDefinition.writeMessage(10, (AbstractMessageLite) this.contextReceiverType_.get(i3));
        }
        if (this.contextReceiverTypeId_.size() > 0) {
            pathDefinition.writeRawVarint32(90);
            pathDefinition.writeRawVarint32(this.contextReceiverTypeIdMemoizedSerializedSize);
        }
        for (int i4 = 0; i4 < this.contextReceiverTypeId_.size(); i4++) {
            pathDefinition.writeInt32NoTag(((Integer) this.contextReceiverTypeId_.get(i4)).intValue());
        }
        if ((this.bitField0_ & 128) == 128) {
            pathDefinition.writeMessage(30, this.typeTable_);
        }
        for (int i5 = 0; i5 < this.versionRequirement_.size(); i5++) {
            pathDefinition.writeInt32(31, ((Integer) this.versionRequirement_.get(i5)).intValue());
        }
        if ((this.bitField0_ & 256) == 256) {
            pathDefinition.writeMessage(32, this.contract_);
        }
        builder.writeUntil(19000, pathDefinition);
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.ExtendableBuilder {
        public int bitField0_;
        public List contextReceiverTypeId_;
        public List contextReceiverType_;
        public ProtoBuf$Contract contract_;
        public int flags_;
        public int name_;
        public int oldFlags_;
        public int receiverTypeId_;
        public ProtoBuf$Type receiverType_;
        public int returnTypeId_;
        public ProtoBuf$Type returnType_;
        public List typeParameter_;
        public ProtoBuf$TypeTable typeTable_;
        public List valueParameter_;
        public List versionRequirement_;

        public static Builder create() {
            Builder builder = new Builder();
            builder.flags_ = 6;
            builder.oldFlags_ = 6;
            ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.defaultInstance;
            builder.returnType_ = protoBuf$Type;
            List list = Collections.EMPTY_LIST;
            builder.typeParameter_ = list;
            builder.receiverType_ = protoBuf$Type;
            builder.contextReceiverType_ = list;
            builder.contextReceiverTypeId_ = list;
            builder.valueParameter_ = list;
            builder.typeTable_ = ProtoBuf$TypeTable.defaultInstance;
            builder.versionRequirement_ = list;
            builder.contract_ = ProtoBuf$Contract.defaultInstance;
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            ProtoBuf$Function buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw new HttpException(false);
        }

        public final ProtoBuf$Function buildPartial() {
            int i;
            ProtoBuf$Function protoBuf$Function = new ProtoBuf$Function(this);
            int i2 = this.bitField0_;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$Function.flags_ = this.flags_;
            if ((i2 & 2) == 2) {
                i3 |= 2;
            }
            protoBuf$Function.oldFlags_ = this.oldFlags_;
            if ((i2 & 4) == 4) {
                i3 |= 4;
            }
            protoBuf$Function.name_ = this.name_;
            if ((i2 & 8) == 8) {
                i3 |= 8;
            }
            protoBuf$Function.returnType_ = this.returnType_;
            if ((i2 & 16) == 16) {
                i3 |= 16;
            }
            protoBuf$Function.returnTypeId_ = this.returnTypeId_;
            if ((i2 & 32) == 32) {
                this.typeParameter_ = DesugarCollections.unmodifiableList(this.typeParameter_);
                i = this.bitField0_ & (-33);
                this.bitField0_ = i;
            } else {
                i = i2;
            }
            protoBuf$Function.typeParameter_ = this.typeParameter_;
            if ((i2 & 64) == 64) {
                i3 |= 32;
            }
            protoBuf$Function.receiverType_ = this.receiverType_;
            if ((i2 & 128) == 128) {
                i3 |= 64;
            }
            protoBuf$Function.receiverTypeId_ = this.receiverTypeId_;
            if ((i & 256) == 256) {
                this.contextReceiverType_ = DesugarCollections.unmodifiableList(this.contextReceiverType_);
                i = this.bitField0_ & (-257);
                this.bitField0_ = i;
            }
            protoBuf$Function.contextReceiverType_ = this.contextReceiverType_;
            if ((i & 512) == 512) {
                this.contextReceiverTypeId_ = DesugarCollections.unmodifiableList(this.contextReceiverTypeId_);
                i = this.bitField0_ & (-513);
                this.bitField0_ = i;
            }
            protoBuf$Function.contextReceiverTypeId_ = this.contextReceiverTypeId_;
            if ((i & 1024) == 1024) {
                this.valueParameter_ = DesugarCollections.unmodifiableList(this.valueParameter_);
                i = this.bitField0_ & (-1025);
                this.bitField0_ = i;
            }
            protoBuf$Function.valueParameter_ = this.valueParameter_;
            if ((i2 & 2048) == 2048) {
                i3 |= 128;
            }
            protoBuf$Function.typeTable_ = this.typeTable_;
            if ((i & 4096) == 4096) {
                this.versionRequirement_ = DesugarCollections.unmodifiableList(this.versionRequirement_);
                this.bitField0_ &= -4097;
            }
            protoBuf$Function.versionRequirement_ = this.versionRequirement_;
            if ((i2 & 8192) == 8192) {
                i3 |= 256;
            }
            protoBuf$Function.contract_ = this.contract_;
            protoBuf$Function.bitField0_ = i3;
            return protoBuf$Function;
        }

        public final Object clone() {
            Builder create = create();
            create.mergeFrom(buildPartial());
            return create;
        }

        public final void mergeFrom(ProtoBuf$Function protoBuf$Function) {
            ProtoBuf$Contract protoBuf$Contract;
            ProtoBuf$TypeTable protoBuf$TypeTable;
            ProtoBuf$Type protoBuf$Type;
            ProtoBuf$Type protoBuf$Type2;
            if (protoBuf$Function == ProtoBuf$Function.defaultInstance) {
                return;
            }
            int i = protoBuf$Function.bitField0_;
            if ((i & 1) == 1) {
                int i2 = protoBuf$Function.flags_;
                this.bitField0_ = 1 | this.bitField0_;
                this.flags_ = i2;
            }
            if ((i & 2) == 2) {
                int i3 = protoBuf$Function.oldFlags_;
                this.bitField0_ = 2 | this.bitField0_;
                this.oldFlags_ = i3;
            }
            if ((i & 4) == 4) {
                int i4 = protoBuf$Function.name_;
                this.bitField0_ = 4 | this.bitField0_;
                this.name_ = i4;
            }
            if ((i & 8) == 8) {
                ProtoBuf$Type protoBuf$Type3 = protoBuf$Function.returnType_;
                if ((this.bitField0_ & 8) != 8 || (protoBuf$Type2 = this.returnType_) == ProtoBuf$Type.defaultInstance) {
                    this.returnType_ = protoBuf$Type3;
                } else {
                    ProtoBuf$Type.Builder newBuilder = ProtoBuf$Type.newBuilder(protoBuf$Type2);
                    newBuilder.mergeFrom(protoBuf$Type3);
                    this.returnType_ = newBuilder.buildPartial();
                }
                this.bitField0_ |= 8;
            }
            if ((protoBuf$Function.bitField0_ & 16) == 16) {
                int i5 = protoBuf$Function.returnTypeId_;
                this.bitField0_ = 16 | this.bitField0_;
                this.returnTypeId_ = i5;
            }
            if (!protoBuf$Function.typeParameter_.isEmpty()) {
                if (this.typeParameter_.isEmpty()) {
                    this.typeParameter_ = protoBuf$Function.typeParameter_;
                    this.bitField0_ &= -33;
                } else {
                    if ((this.bitField0_ & 32) != 32) {
                        this.typeParameter_ = new ArrayList(this.typeParameter_);
                        this.bitField0_ |= 32;
                    }
                    this.typeParameter_.addAll(protoBuf$Function.typeParameter_);
                }
            }
            if ((protoBuf$Function.bitField0_ & 32) == 32) {
                ProtoBuf$Type protoBuf$Type4 = protoBuf$Function.receiverType_;
                if ((this.bitField0_ & 64) != 64 || (protoBuf$Type = this.receiverType_) == ProtoBuf$Type.defaultInstance) {
                    this.receiverType_ = protoBuf$Type4;
                } else {
                    ProtoBuf$Type.Builder newBuilder2 = ProtoBuf$Type.newBuilder(protoBuf$Type);
                    newBuilder2.mergeFrom(protoBuf$Type4);
                    this.receiverType_ = newBuilder2.buildPartial();
                }
                this.bitField0_ |= 64;
            }
            if ((protoBuf$Function.bitField0_ & 64) == 64) {
                int i6 = protoBuf$Function.receiverTypeId_;
                this.bitField0_ |= 128;
                this.receiverTypeId_ = i6;
            }
            if (!protoBuf$Function.contextReceiverType_.isEmpty()) {
                if (this.contextReceiverType_.isEmpty()) {
                    this.contextReceiverType_ = protoBuf$Function.contextReceiverType_;
                    this.bitField0_ &= -257;
                } else {
                    if ((this.bitField0_ & 256) != 256) {
                        this.contextReceiverType_ = new ArrayList(this.contextReceiverType_);
                        this.bitField0_ |= 256;
                    }
                    this.contextReceiverType_.addAll(protoBuf$Function.contextReceiverType_);
                }
            }
            if (!protoBuf$Function.contextReceiverTypeId_.isEmpty()) {
                if (this.contextReceiverTypeId_.isEmpty()) {
                    this.contextReceiverTypeId_ = protoBuf$Function.contextReceiverTypeId_;
                    this.bitField0_ &= -513;
                } else {
                    if ((this.bitField0_ & 512) != 512) {
                        this.contextReceiverTypeId_ = new ArrayList(this.contextReceiverTypeId_);
                        this.bitField0_ |= 512;
                    }
                    this.contextReceiverTypeId_.addAll(protoBuf$Function.contextReceiverTypeId_);
                }
            }
            if (!protoBuf$Function.valueParameter_.isEmpty()) {
                if (this.valueParameter_.isEmpty()) {
                    this.valueParameter_ = protoBuf$Function.valueParameter_;
                    this.bitField0_ &= -1025;
                } else {
                    if ((this.bitField0_ & 1024) != 1024) {
                        this.valueParameter_ = new ArrayList(this.valueParameter_);
                        this.bitField0_ |= 1024;
                    }
                    this.valueParameter_.addAll(protoBuf$Function.valueParameter_);
                }
            }
            if ((protoBuf$Function.bitField0_ & 128) == 128) {
                ProtoBuf$TypeTable protoBuf$TypeTable2 = protoBuf$Function.typeTable_;
                if ((this.bitField0_ & 2048) != 2048 || (protoBuf$TypeTable = this.typeTable_) == ProtoBuf$TypeTable.defaultInstance) {
                    this.typeTable_ = protoBuf$TypeTable2;
                } else {
                    ProtoBuf$TypeTable.Builder newBuilder3 = ProtoBuf$TypeTable.newBuilder(protoBuf$TypeTable);
                    newBuilder3.mergeFrom(protoBuf$TypeTable2);
                    this.typeTable_ = newBuilder3.m834buildPartial();
                }
                this.bitField0_ |= 2048;
            }
            if (!protoBuf$Function.versionRequirement_.isEmpty()) {
                if (this.versionRequirement_.isEmpty()) {
                    this.versionRequirement_ = protoBuf$Function.versionRequirement_;
                    this.bitField0_ &= -4097;
                } else {
                    if ((this.bitField0_ & 4096) != 4096) {
                        this.versionRequirement_ = new ArrayList(this.versionRequirement_);
                        this.bitField0_ |= 4096;
                    }
                    this.versionRequirement_.addAll(protoBuf$Function.versionRequirement_);
                }
            }
            if ((protoBuf$Function.bitField0_ & 256) == 256) {
                ProtoBuf$Contract protoBuf$Contract2 = protoBuf$Function.contract_;
                if ((this.bitField0_ & 8192) != 8192 || (protoBuf$Contract = this.contract_) == ProtoBuf$Contract.defaultInstance) {
                    this.contract_ = protoBuf$Contract2;
                } else {
                    ProtoBuf$Contract.Builder builder = new ProtoBuf$Contract.Builder(0);
                    builder.effect_ = Collections.EMPTY_LIST;
                    builder.mergeFrom(protoBuf$Contract);
                    builder.mergeFrom(protoBuf$Contract2);
                    this.contract_ = builder.buildPartial();
                }
                this.bitField0_ |= 8192;
            }
            mergeExtensionFields(protoBuf$Function);
            this.unknownFields = this.unknownFields.concat(protoBuf$Function.unknownFields);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            mergeFrom((ProtoBuf$Function) generatedMessageLite);
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function r1 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r2.mergeFrom(r1)
                return r2
            Lf:
                r3 = move-exception
                goto L19
            L11:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }
    }

    public ProtoBuf$Function() {
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }

    public ProtoBuf$Function(Builder builder) {
        super(builder);
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }
}
