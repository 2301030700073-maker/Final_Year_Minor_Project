package kotlin.reflect.jvm.internal.impl.metadata;

import coil3.network.HttpException;
import com.caverock.androidsvg.SVG;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractParser;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder;
import okhttp3.FormBody;
import okio.ByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$Type extends GeneratedMessageLite.ExtendableMessage {
    public static final AnonymousClass1 PARSER = new AnonymousClass1(0);
    public static final ProtoBuf$Type defaultInstance;
    public int abbreviatedTypeId_;
    public ProtoBuf$Type abbreviatedType_;
    public List argument_;
    public int bitField0_;
    public int className_;
    public int flags_;
    public int flexibleTypeCapabilitiesId_;
    public int flexibleUpperBoundId_;
    public ProtoBuf$Type flexibleUpperBound_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public boolean nullable_;
    public int outerTypeId_;
    public ProtoBuf$Type outerType_;
    public int typeAliasName_;
    public int typeParameterName_;
    public int typeParameter_;
    public final ByteString unknownFields;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1, reason: invalid class name */
    public final class AnonymousClass1 extends AbstractParser {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractParser
        public final Object parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            switch (this.$r8$classId) {
                case 0:
                    return new ProtoBuf$Type(codedInputStream, extensionRegistryLite);
                case 1:
                    return new ProtoBuf$Annotation(codedInputStream, extensionRegistryLite);
                case 2:
                    return new ProtoBuf$Annotation.Argument(codedInputStream, extensionRegistryLite);
                case 3:
                    return new ProtoBuf$Annotation.Argument.Value(codedInputStream, extensionRegistryLite);
                case 4:
                    return new ProtoBuf$Class(codedInputStream, extensionRegistryLite);
                case 5:
                    return new ProtoBuf$Constructor(codedInputStream, extensionRegistryLite);
                case 6:
                    return new ProtoBuf$Contract(codedInputStream, extensionRegistryLite);
                case 7:
                    return new ProtoBuf$Effect(codedInputStream, extensionRegistryLite);
                case 8:
                    return new ProtoBuf$EnumEntry(codedInputStream, extensionRegistryLite);
                case 9:
                    return new ProtoBuf$Expression(codedInputStream, extensionRegistryLite);
                case 10:
                    return new ProtoBuf$Function(codedInputStream, extensionRegistryLite);
                case 11:
                    return new ProtoBuf$Package(codedInputStream, extensionRegistryLite);
                case 12:
                    return new ProtoBuf$PackageFragment(codedInputStream, extensionRegistryLite);
                case IMAGE_VALUE:
                    return new ProtoBuf$Property(codedInputStream, extensionRegistryLite);
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    return new ProtoBuf$QualifiedNameTable(codedInputStream, extensionRegistryLite);
                case 15:
                    return new ProtoBuf$QualifiedNameTable.QualifiedName(codedInputStream);
                case LAZY_VERTICAL_GRID_VALUE:
                    return new ProtoBuf$StringTable(codedInputStream);
                case VERTICAL_GRID_ITEM_VALUE:
                    return new Argument(codedInputStream, extensionRegistryLite);
                case RADIO_GROUP_VALUE:
                    return new ProtoBuf$TypeAlias(codedInputStream, extensionRegistryLite);
                case RADIO_BUTTON_VALUE:
                    return new ProtoBuf$TypeParameter(codedInputStream, extensionRegistryLite);
                case RADIO_ROW_VALUE:
                    return new ProtoBuf$TypeTable(codedInputStream, extensionRegistryLite);
                case RADIO_COLUMN_VALUE:
                    return new ProtoBuf$ValueParameter(codedInputStream, extensionRegistryLite);
                case SIZE_BOX_VALUE:
                    return new ProtoBuf$VersionRequirement(codedInputStream);
                case 23:
                    return new ProtoBuf$VersionRequirementTable(codedInputStream, extensionRegistryLite);
                case 24:
                    return new JvmProtoBuf.JvmFieldSignature(codedInputStream);
                case 25:
                    return new JvmProtoBuf.JvmMethodSignature(codedInputStream);
                case 26:
                    return new JvmProtoBuf.JvmPropertySignature(codedInputStream, extensionRegistryLite);
                case 27:
                    return new JvmProtoBuf.StringTableTypes(codedInputStream, extensionRegistryLite);
                default:
                    return new JvmProtoBuf.StringTableTypes.Record(codedInputStream);
            }
        }
    }

    static {
        ProtoBuf$Type protoBuf$Type = new ProtoBuf$Type();
        defaultInstance = protoBuf$Type;
        protoBuf$Type.initFields$17();
    }

    public ProtoBuf$Type(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields$17();
        ByteString.Output output = new ByteString.Output();
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    AnonymousClass1 anonymousClass1 = PARSER;
                    Builder builder = null;
                    switch (readTag) {
                        case 0:
                            break;
                        case 8:
                            this.bitField0_ |= 4096;
                            this.flags_ = codedInputStream.readRawVarint32();
                            continue;
                        case RADIO_GROUP_VALUE:
                            if (!z2) {
                                this.argument_ = new ArrayList();
                                z2 = true;
                            }
                            this.argument_.add(codedInputStream.readMessage(Argument.PARSER, extensionRegistryLite));
                            continue;
                        case 24:
                            this.bitField0_ |= 1;
                            this.nullable_ = codedInputStream.readRawVarint64() != 0;
                            continue;
                        case 32:
                            this.bitField0_ |= 2;
                            this.flexibleTypeCapabilitiesId_ = codedInputStream.readRawVarint32();
                            continue;
                        case 42:
                            if ((this.bitField0_ & 4) == 4) {
                                ProtoBuf$Type protoBuf$Type = this.flexibleUpperBound_;
                                protoBuf$Type.getClass();
                                builder = newBuilder(protoBuf$Type);
                            }
                            ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.readMessage(anonymousClass1, extensionRegistryLite);
                            this.flexibleUpperBound_ = protoBuf$Type2;
                            if (builder != null) {
                                builder.mergeFrom(protoBuf$Type2);
                                this.flexibleUpperBound_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 4;
                            continue;
                        case 48:
                            this.bitField0_ |= 16;
                            this.className_ = codedInputStream.readRawVarint32();
                            continue;
                        case 56:
                            this.bitField0_ |= 32;
                            this.typeParameter_ = codedInputStream.readRawVarint32();
                            continue;
                        case 64:
                            this.bitField0_ |= 8;
                            this.flexibleUpperBoundId_ = codedInputStream.readRawVarint32();
                            continue;
                        case 72:
                            this.bitField0_ |= 64;
                            this.typeParameterName_ = codedInputStream.readRawVarint32();
                            continue;
                        case 82:
                            if ((this.bitField0_ & 256) == 256) {
                                ProtoBuf$Type protoBuf$Type3 = this.outerType_;
                                protoBuf$Type3.getClass();
                                builder = newBuilder(protoBuf$Type3);
                            }
                            ProtoBuf$Type protoBuf$Type4 = (ProtoBuf$Type) codedInputStream.readMessage(anonymousClass1, extensionRegistryLite);
                            this.outerType_ = protoBuf$Type4;
                            if (builder != null) {
                                builder.mergeFrom(protoBuf$Type4);
                                this.outerType_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 256;
                            continue;
                        case 88:
                            this.bitField0_ |= 512;
                            this.outerTypeId_ = codedInputStream.readRawVarint32();
                            continue;
                        case 96:
                            this.bitField0_ |= 128;
                            this.typeAliasName_ = codedInputStream.readRawVarint32();
                            continue;
                        case 106:
                            if ((this.bitField0_ & 1024) == 1024) {
                                ProtoBuf$Type protoBuf$Type5 = this.abbreviatedType_;
                                protoBuf$Type5.getClass();
                                builder = newBuilder(protoBuf$Type5);
                            }
                            ProtoBuf$Type protoBuf$Type6 = (ProtoBuf$Type) codedInputStream.readMessage(anonymousClass1, extensionRegistryLite);
                            this.abbreviatedType_ = protoBuf$Type6;
                            if (builder != null) {
                                builder.mergeFrom(protoBuf$Type6);
                                this.abbreviatedType_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 1024;
                            continue;
                        case 112:
                            this.bitField0_ |= 2048;
                            this.abbreviatedTypeId_ = codedInputStream.readRawVarint32();
                            continue;
                        default:
                            if (!parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                break;
                            }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (z2) {
                        this.argument_ = DesugarCollections.unmodifiableList(this.argument_);
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
            this.argument_ = DesugarCollections.unmodifiableList(this.argument_);
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

    public static Builder newBuilder(ProtoBuf$Type protoBuf$Type) {
        Builder create = Builder.create();
        create.mergeFrom(protoBuf$Type);
        return create;
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
        int computeInt32Size = (this.bitField0_ & 4096) == 4096 ? SVG.PathDefinition.computeInt32Size(1, this.flags_) : 0;
        for (int i2 = 0; i2 < this.argument_.size(); i2++) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(2, (AbstractMessageLite) this.argument_.get(i2));
        }
        if ((this.bitField0_ & 1) == 1) {
            computeInt32Size += SVG.PathDefinition.computeTagSize(3) + 1;
        }
        if ((this.bitField0_ & 2) == 2) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(4, this.flexibleTypeCapabilitiesId_);
        }
        if ((this.bitField0_ & 4) == 4) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(5, this.flexibleUpperBound_);
        }
        if ((this.bitField0_ & 16) == 16) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(6, this.className_);
        }
        if ((this.bitField0_ & 32) == 32) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(7, this.typeParameter_);
        }
        if ((this.bitField0_ & 8) == 8) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(8, this.flexibleUpperBoundId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(9, this.typeParameterName_);
        }
        if ((this.bitField0_ & 256) == 256) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(10, this.outerType_);
        }
        if ((this.bitField0_ & 512) == 512) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(11, this.outerTypeId_);
        }
        if ((this.bitField0_ & 128) == 128) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(12, this.typeAliasName_);
        }
        if ((this.bitField0_ & 1024) == 1024) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(13, this.abbreviatedType_);
        }
        if ((this.bitField0_ & 2048) == 2048) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(14, this.abbreviatedTypeId_);
        }
        int size = this.unknownFields.size() + extensionsSerializedSize() + computeInt32Size;
        this.memoizedSerializedSize = size;
        return size;
    }

    public final boolean hasClassName() {
        return (this.bitField0_ & 16) == 16;
    }

    public final void initFields$17() {
        this.argument_ = Collections.EMPTY_LIST;
        this.nullable_ = false;
        this.flexibleTypeCapabilitiesId_ = 0;
        ProtoBuf$Type protoBuf$Type = defaultInstance;
        this.flexibleUpperBound_ = protoBuf$Type;
        this.flexibleUpperBoundId_ = 0;
        this.className_ = 0;
        this.typeParameter_ = 0;
        this.typeParameterName_ = 0;
        this.typeAliasName_ = 0;
        this.outerType_ = protoBuf$Type;
        this.outerTypeId_ = 0;
        this.abbreviatedType_ = protoBuf$Type;
        this.abbreviatedTypeId_ = 0;
        this.flags_ = 0;
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
        for (int i = 0; i < this.argument_.size(); i++) {
            if (!((Argument) this.argument_.get(i)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if ((this.bitField0_ & 4) == 4 && !this.flexibleUpperBound_.isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if ((this.bitField0_ & 256) == 256 && !this.outerType_.isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if ((this.bitField0_ & 1024) == 1024 && !this.abbreviatedType_.isInitialized()) {
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
        return newBuilder(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final void writeTo(SVG.PathDefinition pathDefinition) {
        getSerializedSize();
        FormBody.Builder builder = new FormBody.Builder((GeneratedMessageLite.ExtendableMessage) this);
        if ((this.bitField0_ & 4096) == 4096) {
            pathDefinition.writeInt32(1, this.flags_);
        }
        for (int i = 0; i < this.argument_.size(); i++) {
            pathDefinition.writeMessage(2, (AbstractMessageLite) this.argument_.get(i));
        }
        if ((this.bitField0_ & 1) == 1) {
            boolean z = this.nullable_;
            pathDefinition.writeTag(3, 0);
            pathDefinition.writeRawByte(z ? 1 : 0);
        }
        if ((this.bitField0_ & 2) == 2) {
            pathDefinition.writeInt32(4, this.flexibleTypeCapabilitiesId_);
        }
        if ((this.bitField0_ & 4) == 4) {
            pathDefinition.writeMessage(5, this.flexibleUpperBound_);
        }
        if ((this.bitField0_ & 16) == 16) {
            pathDefinition.writeInt32(6, this.className_);
        }
        if ((this.bitField0_ & 32) == 32) {
            pathDefinition.writeInt32(7, this.typeParameter_);
        }
        if ((this.bitField0_ & 8) == 8) {
            pathDefinition.writeInt32(8, this.flexibleUpperBoundId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            pathDefinition.writeInt32(9, this.typeParameterName_);
        }
        if ((this.bitField0_ & 256) == 256) {
            pathDefinition.writeMessage(10, this.outerType_);
        }
        if ((this.bitField0_ & 512) == 512) {
            pathDefinition.writeInt32(11, this.outerTypeId_);
        }
        if ((this.bitField0_ & 128) == 128) {
            pathDefinition.writeInt32(12, this.typeAliasName_);
        }
        if ((this.bitField0_ & 1024) == 1024) {
            pathDefinition.writeMessage(13, this.abbreviatedType_);
        }
        if ((this.bitField0_ & 2048) == 2048) {
            pathDefinition.writeInt32(14, this.abbreviatedTypeId_);
        }
        builder.writeUntil(200, pathDefinition);
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Argument extends GeneratedMessageLite {
        public static final AnonymousClass1 PARSER = new AnonymousClass1(17);
        public static final Argument defaultInstance;
        public int bitField0_;
        public byte memoizedIsInitialized;
        public int memoizedSerializedSize;
        public Projection projection_;
        public int typeId_;
        public ProtoBuf$Type type_;
        public final ByteString unknownFields;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public enum Projection implements Internal.EnumLite {
            IN(0),
            OUT(1),
            INV(2),
            STAR(3);

            private static Internal.EnumLiteMap internalValueMap = new ByteString.Companion(2);
            private final int value;

            Projection(int i) {
                this.value = i;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }
        }

        static {
            Argument argument = new Argument();
            defaultInstance = argument;
            argument.projection_ = Projection.INV;
            argument.type_ = ProtoBuf$Type.defaultInstance;
            argument.typeId_ = 0;
        }

        public Argument(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.projection_ = Projection.INV;
            this.type_ = ProtoBuf$Type.defaultInstance;
            boolean z = false;
            this.typeId_ = 0;
            ByteString.Output output = new ByteString.Output();
            SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            Builder builder = null;
                            Projection projection = null;
                            if (readTag == 8) {
                                int readRawVarint32 = codedInputStream.readRawVarint32();
                                if (readRawVarint32 == 0) {
                                    projection = Projection.IN;
                                } else if (readRawVarint32 == 1) {
                                    projection = Projection.OUT;
                                } else if (readRawVarint32 == 2) {
                                    projection = Projection.INV;
                                } else if (readRawVarint32 == 3) {
                                    projection = Projection.STAR;
                                }
                                if (projection == null) {
                                    newInstance.writeRawVarint32(readTag);
                                    newInstance.writeRawVarint32(readRawVarint32);
                                } else {
                                    this.bitField0_ |= 1;
                                    this.projection_ = projection;
                                }
                            } else if (readTag == 18) {
                                if ((this.bitField0_ & 2) == 2) {
                                    ProtoBuf$Type protoBuf$Type = this.type_;
                                    protoBuf$Type.getClass();
                                    builder = ProtoBuf$Type.newBuilder(protoBuf$Type);
                                }
                                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite);
                                this.type_ = protoBuf$Type2;
                                if (builder != null) {
                                    builder.mergeFrom(protoBuf$Type2);
                                    this.type_ = builder.buildPartial();
                                }
                                this.bitField0_ |= 2;
                            } else if (readTag == 24) {
                                this.bitField0_ |= 4;
                                this.typeId_ = codedInputStream.readRawVarint32();
                            } else if (!codedInputStream.skipField(readTag, newInstance)) {
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
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeEnumSize(1, this.projection_.getNumber()) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeEnumSize += SVG.PathDefinition.computeMessageSize(2, this.type_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeEnumSize += SVG.PathDefinition.computeInt32Size(3, this.typeId_);
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
            if ((this.bitField0_ & 2) != 2 || this.type_.isInitialized()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final GeneratedMessageLite.Builder newBuilderForType() {
            Builder builder = new Builder();
            builder.projection_ = Projection.INV;
            builder.type_ = ProtoBuf$Type.defaultInstance;
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final GeneratedMessageLite.Builder toBuilder() {
            Builder builder = new Builder();
            builder.projection_ = Projection.INV;
            builder.type_ = ProtoBuf$Type.defaultInstance;
            builder.mergeFrom(this);
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final void writeTo(SVG.PathDefinition pathDefinition) {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                pathDefinition.writeEnum(1, this.projection_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                pathDefinition.writeMessage(2, this.type_);
            }
            if ((this.bitField0_ & 4) == 4) {
                pathDefinition.writeInt32(3, this.typeId_);
            }
            pathDefinition.writeRawBytes(this.unknownFields);
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Builder extends GeneratedMessageLite.Builder implements MessageLiteOrBuilder {
            public int bitField0_;
            public Projection projection_;
            public int typeId_;
            public ProtoBuf$Type type_;

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            public final AbstractMessageLite build() {
                Argument buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw new HttpException(false);
            }

            public final Argument buildPartial() {
                Argument argument = new Argument(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                argument.projection_ = this.projection_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                argument.type_ = this.type_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                argument.typeId_ = this.typeId_;
                argument.bitField0_ = i2;
                return argument;
            }

            public final Object clone() {
                Builder builder = new Builder();
                builder.projection_ = Projection.INV;
                builder.type_ = ProtoBuf$Type.defaultInstance;
                builder.mergeFrom(buildPartial());
                return builder;
            }

            public final void mergeFrom(Argument argument) {
                ProtoBuf$Type protoBuf$Type;
                if (argument == Argument.defaultInstance) {
                    return;
                }
                if ((argument.bitField0_ & 1) == 1) {
                    Projection projection = argument.projection_;
                    projection.getClass();
                    this.bitField0_ = 1 | this.bitField0_;
                    this.projection_ = projection;
                }
                if ((argument.bitField0_ & 2) == 2) {
                    ProtoBuf$Type protoBuf$Type2 = argument.type_;
                    if ((this.bitField0_ & 2) != 2 || (protoBuf$Type = this.type_) == ProtoBuf$Type.defaultInstance) {
                        this.type_ = protoBuf$Type2;
                    } else {
                        Builder newBuilder = ProtoBuf$Type.newBuilder(protoBuf$Type);
                        newBuilder.mergeFrom(protoBuf$Type2);
                        this.type_ = newBuilder.buildPartial();
                    }
                    this.bitField0_ |= 2;
                }
                if ((argument.bitField0_ & 4) == 4) {
                    int i = argument.typeId_;
                    this.bitField0_ = 4 | this.bitField0_;
                    this.typeId_ = i;
                }
                this.unknownFields = this.unknownFields.concat(argument.unknownFields);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
                mergeFrom((Argument) generatedMessageLite);
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
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.Argument.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$Argument r1 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$Argument     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    r2.mergeFrom(r1)
                    return r2
                Lf:
                    r3 = move-exception
                    goto L19
                L11:
                    r3 = move-exception
                    kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$Argument r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.Argument) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Type.Argument.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
            }
        }

        public Argument(Builder builder) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.unknownFields;
        }

        public Argument() {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = kotlin.reflect.jvm.internal.impl.protobuf.ByteString.EMPTY;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.ExtendableBuilder {
        public int abbreviatedTypeId_;
        public ProtoBuf$Type abbreviatedType_;
        public List argument_;
        public int bitField0_;
        public int className_;
        public int flags_;
        public int flexibleTypeCapabilitiesId_;
        public int flexibleUpperBoundId_;
        public ProtoBuf$Type flexibleUpperBound_;
        public boolean nullable_;
        public int outerTypeId_;
        public ProtoBuf$Type outerType_;
        public int typeAliasName_;
        public int typeParameterName_;
        public int typeParameter_;

        public static Builder create() {
            Builder builder = new Builder();
            builder.argument_ = Collections.EMPTY_LIST;
            ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.defaultInstance;
            builder.flexibleUpperBound_ = protoBuf$Type;
            builder.outerType_ = protoBuf$Type;
            builder.abbreviatedType_ = protoBuf$Type;
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            ProtoBuf$Type buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw new HttpException(false);
        }

        public final ProtoBuf$Type buildPartial() {
            ProtoBuf$Type protoBuf$Type = new ProtoBuf$Type(this);
            int i = this.bitField0_;
            if ((i & 1) == 1) {
                this.argument_ = DesugarCollections.unmodifiableList(this.argument_);
                this.bitField0_ &= -2;
            }
            protoBuf$Type.argument_ = this.argument_;
            int i2 = (i & 2) != 2 ? 0 : 1;
            protoBuf$Type.nullable_ = this.nullable_;
            if ((i & 4) == 4) {
                i2 |= 2;
            }
            protoBuf$Type.flexibleTypeCapabilitiesId_ = this.flexibleTypeCapabilitiesId_;
            if ((i & 8) == 8) {
                i2 |= 4;
            }
            protoBuf$Type.flexibleUpperBound_ = this.flexibleUpperBound_;
            if ((i & 16) == 16) {
                i2 |= 8;
            }
            protoBuf$Type.flexibleUpperBoundId_ = this.flexibleUpperBoundId_;
            if ((i & 32) == 32) {
                i2 |= 16;
            }
            protoBuf$Type.className_ = this.className_;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$Type.typeParameter_ = this.typeParameter_;
            if ((i & 128) == 128) {
                i2 |= 64;
            }
            protoBuf$Type.typeParameterName_ = this.typeParameterName_;
            if ((i & 256) == 256) {
                i2 |= 128;
            }
            protoBuf$Type.typeAliasName_ = this.typeAliasName_;
            if ((i & 512) == 512) {
                i2 |= 256;
            }
            protoBuf$Type.outerType_ = this.outerType_;
            if ((i & 1024) == 1024) {
                i2 |= 512;
            }
            protoBuf$Type.outerTypeId_ = this.outerTypeId_;
            if ((i & 2048) == 2048) {
                i2 |= 1024;
            }
            protoBuf$Type.abbreviatedType_ = this.abbreviatedType_;
            if ((i & 4096) == 4096) {
                i2 |= 2048;
            }
            protoBuf$Type.abbreviatedTypeId_ = this.abbreviatedTypeId_;
            if ((i & 8192) == 8192) {
                i2 |= 4096;
            }
            protoBuf$Type.flags_ = this.flags_;
            protoBuf$Type.bitField0_ = i2;
            return protoBuf$Type;
        }

        public final Object clone() {
            Builder create = create();
            create.mergeFrom(buildPartial());
            return create;
        }

        public final Builder mergeFrom(ProtoBuf$Type protoBuf$Type) {
            ProtoBuf$Type protoBuf$Type2;
            ProtoBuf$Type protoBuf$Type3;
            ProtoBuf$Type protoBuf$Type4;
            ProtoBuf$Type protoBuf$Type5 = ProtoBuf$Type.defaultInstance;
            if (protoBuf$Type == protoBuf$Type5) {
                return this;
            }
            if (!protoBuf$Type.argument_.isEmpty()) {
                if (this.argument_.isEmpty()) {
                    this.argument_ = protoBuf$Type.argument_;
                    this.bitField0_ &= -2;
                } else {
                    if ((this.bitField0_ & 1) != 1) {
                        this.argument_ = new ArrayList(this.argument_);
                        this.bitField0_ |= 1;
                    }
                    this.argument_.addAll(protoBuf$Type.argument_);
                }
            }
            int i = protoBuf$Type.bitField0_;
            if ((i & 1) == 1) {
                boolean z = protoBuf$Type.nullable_;
                this.bitField0_ |= 2;
                this.nullable_ = z;
            }
            if ((i & 2) == 2) {
                int i2 = protoBuf$Type.flexibleTypeCapabilitiesId_;
                this.bitField0_ |= 4;
                this.flexibleTypeCapabilitiesId_ = i2;
            }
            if ((i & 4) == 4) {
                ProtoBuf$Type protoBuf$Type6 = protoBuf$Type.flexibleUpperBound_;
                if ((this.bitField0_ & 8) != 8 || (protoBuf$Type4 = this.flexibleUpperBound_) == protoBuf$Type5) {
                    this.flexibleUpperBound_ = protoBuf$Type6;
                } else {
                    Builder newBuilder = ProtoBuf$Type.newBuilder(protoBuf$Type4);
                    newBuilder.mergeFrom(protoBuf$Type6);
                    this.flexibleUpperBound_ = newBuilder.buildPartial();
                }
                this.bitField0_ |= 8;
            }
            if ((protoBuf$Type.bitField0_ & 8) == 8) {
                int i3 = protoBuf$Type.flexibleUpperBoundId_;
                this.bitField0_ |= 16;
                this.flexibleUpperBoundId_ = i3;
            }
            if (protoBuf$Type.hasClassName()) {
                int i4 = protoBuf$Type.className_;
                this.bitField0_ |= 32;
                this.className_ = i4;
            }
            int i5 = protoBuf$Type.bitField0_;
            if ((i5 & 32) == 32) {
                int i6 = protoBuf$Type.typeParameter_;
                this.bitField0_ |= 64;
                this.typeParameter_ = i6;
            }
            if ((i5 & 64) == 64) {
                int i7 = protoBuf$Type.typeParameterName_;
                this.bitField0_ |= 128;
                this.typeParameterName_ = i7;
            }
            if ((i5 & 128) == 128) {
                int i8 = protoBuf$Type.typeAliasName_;
                this.bitField0_ |= 256;
                this.typeAliasName_ = i8;
            }
            if ((i5 & 256) == 256) {
                ProtoBuf$Type protoBuf$Type7 = protoBuf$Type.outerType_;
                if ((this.bitField0_ & 512) != 512 || (protoBuf$Type3 = this.outerType_) == protoBuf$Type5) {
                    this.outerType_ = protoBuf$Type7;
                } else {
                    Builder newBuilder2 = ProtoBuf$Type.newBuilder(protoBuf$Type3);
                    newBuilder2.mergeFrom(protoBuf$Type7);
                    this.outerType_ = newBuilder2.buildPartial();
                }
                this.bitField0_ |= 512;
            }
            int i9 = protoBuf$Type.bitField0_;
            if ((i9 & 512) == 512) {
                int i10 = protoBuf$Type.outerTypeId_;
                this.bitField0_ |= 1024;
                this.outerTypeId_ = i10;
            }
            if ((i9 & 1024) == 1024) {
                ProtoBuf$Type protoBuf$Type8 = protoBuf$Type.abbreviatedType_;
                if ((this.bitField0_ & 2048) != 2048 || (protoBuf$Type2 = this.abbreviatedType_) == protoBuf$Type5) {
                    this.abbreviatedType_ = protoBuf$Type8;
                } else {
                    Builder newBuilder3 = ProtoBuf$Type.newBuilder(protoBuf$Type2);
                    newBuilder3.mergeFrom(protoBuf$Type8);
                    this.abbreviatedType_ = newBuilder3.buildPartial();
                }
                this.bitField0_ |= 2048;
            }
            int i11 = protoBuf$Type.bitField0_;
            if ((i11 & 2048) == 2048) {
                int i12 = protoBuf$Type.abbreviatedTypeId_;
                this.bitField0_ |= 4096;
                this.abbreviatedTypeId_ = i12;
            }
            if ((i11 & 4096) == 4096) {
                int i13 = protoBuf$Type.flags_;
                this.bitField0_ |= 8192;
                this.flags_ = i13;
            }
            mergeExtensionFields(protoBuf$Type);
            this.unknownFields = this.unknownFields.concat(protoBuf$Type.unknownFields);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            mergeFrom((ProtoBuf$Type) generatedMessageLite);
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type r1 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r2.mergeFrom(r1)
                return r2
            Lf:
                r3 = move-exception
                goto L19
            L11:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }
    }

    public ProtoBuf$Type() {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = kotlin.reflect.jvm.internal.impl.protobuf.ByteString.EMPTY;
    }

    public ProtoBuf$Type(Builder builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }
}
