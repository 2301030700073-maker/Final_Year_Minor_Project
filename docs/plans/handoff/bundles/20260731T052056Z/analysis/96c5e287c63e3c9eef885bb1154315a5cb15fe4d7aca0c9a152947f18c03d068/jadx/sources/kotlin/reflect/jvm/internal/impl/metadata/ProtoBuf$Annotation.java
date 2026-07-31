package kotlin.reflect.jvm.internal.impl.metadata;

import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.AutoMigration_14_15;
import coil3.network.HttpException;
import com.caverock.androidsvg.SVG;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$Annotation extends GeneratedMessageLite {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(1);
    public static final ProtoBuf$Annotation defaultInstance;
    public List argument_;
    public int bitField0_;
    public int id_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public final ByteString unknownFields;

    static {
        ProtoBuf$Annotation protoBuf$Annotation = new ProtoBuf$Annotation();
        defaultInstance = protoBuf$Annotation;
        protoBuf$Annotation.id_ = 0;
        protoBuf$Annotation.argument_ = Collections.EMPTY_LIST;
    }

    public ProtoBuf$Annotation(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        boolean z = false;
        this.id_ = 0;
        this.argument_ = Collections.EMPTY_LIST;
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
                            this.id_ = codedInputStream.readRawVarint32();
                        } else if (readTag == 18) {
                            if ((c & 2) != 2) {
                                this.argument_ = new ArrayList();
                                c = 2;
                            }
                            this.argument_.add(codedInputStream.readMessage(Argument.PARSER, extensionRegistryLite));
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
                if ((c & 2) == 2) {
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
                throw th;
            }
        }
        if ((c & 2) == 2) {
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
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int computeInt32Size = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeInt32Size(1, this.id_) : 0;
        for (int i2 = 0; i2 < this.argument_.size(); i2++) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(2, (AbstractMessageLite) this.argument_.get(i2));
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
        if ((this.bitField0_ & 1) != 1) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < this.argument_.size(); i++) {
            if (!((Argument) this.argument_.get(i)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder newBuilderForType() {
        ProtoBuf$TypeTable.Builder builder = new ProtoBuf$TypeTable.Builder(1);
        builder.type_ = Collections.EMPTY_LIST;
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder toBuilder() {
        ProtoBuf$TypeTable.Builder builder = new ProtoBuf$TypeTable.Builder(1);
        builder.type_ = Collections.EMPTY_LIST;
        builder.mergeFrom(this);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final void writeTo(SVG.PathDefinition pathDefinition) {
        getSerializedSize();
        if ((this.bitField0_ & 1) == 1) {
            pathDefinition.writeInt32(1, this.id_);
        }
        for (int i = 0; i < this.argument_.size(); i++) {
            pathDefinition.writeMessage(2, (AbstractMessageLite) this.argument_.get(i));
        }
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Argument extends GeneratedMessageLite {
        public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(2);
        public static final Argument defaultInstance;
        public int bitField0_;
        public byte memoizedIsInitialized;
        public int memoizedSerializedSize;
        public int nameId_;
        public final ByteString unknownFields;
        public Value value_;

        static {
            Argument argument = new Argument();
            defaultInstance = argument;
            argument.nameId_ = 0;
            argument.value_ = Value.defaultInstance;
        }

        public Argument(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            Value.Builder builder;
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            boolean z = false;
            this.nameId_ = 0;
            this.value_ = Value.defaultInstance;
            ByteString.Output output = new ByteString.Output();
            SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 8) {
                                    this.bitField0_ |= 1;
                                    this.nameId_ = codedInputStream.readRawVarint32();
                                } else if (readTag == 18) {
                                    if ((this.bitField0_ & 2) == 2) {
                                        Value value = this.value_;
                                        value.getClass();
                                        builder = Value.Builder.create();
                                        builder.mergeFrom(value);
                                    } else {
                                        builder = null;
                                    }
                                    Value value2 = (Value) codedInputStream.readMessage(Value.PARSER, extensionRegistryLite);
                                    this.value_ = value2;
                                    if (builder != null) {
                                        builder.mergeFrom(value2);
                                        this.value_ = builder.buildPartial();
                                    }
                                    this.bitField0_ |= 2;
                                } else if (!codedInputStream.skipField(readTag, newInstance)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.unfinishedMessage = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.unfinishedMessage = this;
                        throw invalidProtocolBufferException;
                    }
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
            int computeInt32Size = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeInt32Size(1, this.nameId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeInt32Size += SVG.PathDefinition.computeMessageSize(2, this.value_);
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
            int i = this.bitField0_;
            if ((i & 1) != 1) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if ((i & 2) != 2) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (this.value_.isInitialized()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final GeneratedMessageLite.Builder newBuilderForType() {
            ProtoBuf$TypeTable.Builder builder = new ProtoBuf$TypeTable.Builder(2);
            builder.type_ = Value.defaultInstance;
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final GeneratedMessageLite.Builder toBuilder() {
            ProtoBuf$TypeTable.Builder builder = new ProtoBuf$TypeTable.Builder(2);
            builder.type_ = Value.defaultInstance;
            builder.mergeFrom(this);
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final void writeTo(SVG.PathDefinition pathDefinition) {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                pathDefinition.writeInt32(1, this.nameId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                pathDefinition.writeMessage(2, this.value_);
            }
            pathDefinition.writeRawBytes(this.unknownFields);
        }

        public Argument(ProtoBuf$TypeTable.Builder builder) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.unknownFields;
        }

        public Argument() {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Value extends GeneratedMessageLite {
            public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(3);
            public static final Value defaultInstance;
            public ProtoBuf$Annotation annotation_;
            public int arrayDimensionCount_;
            public List arrayElement_;
            public int bitField0_;
            public int classId_;
            public double doubleValue_;
            public int enumValueId_;
            public int flags_;
            public float floatValue_;
            public long intValue_;
            public byte memoizedIsInitialized;
            public int memoizedSerializedSize;
            public int stringValue_;
            public Type type_;
            public final ByteString unknownFields;

            /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
            public enum Type implements Internal.EnumLite {
                BYTE(0),
                CHAR(1),
                SHORT(2),
                INT(3),
                LONG(4),
                FLOAT(5),
                DOUBLE(6),
                BOOLEAN(7),
                STRING(8),
                CLASS(9),
                ENUM(10),
                ANNOTATION(11),
                ARRAY(12);

                private static Internal.EnumLiteMap internalValueMap = new AutoMigration_14_15(29);
                private final int value;

                Type(int i) {
                    this.value = i;
                }

                public static Type valueOf(int i) {
                    switch (i) {
                        case 0:
                            return BYTE;
                        case 1:
                            return CHAR;
                        case 2:
                            return SHORT;
                        case 3:
                            return INT;
                        case 4:
                            return LONG;
                        case 5:
                            return FLOAT;
                        case 6:
                            return DOUBLE;
                        case 7:
                            return BOOLEAN;
                        case 8:
                            return STRING;
                        case 9:
                            return CLASS;
                        case 10:
                            return ENUM;
                        case 11:
                            return ANNOTATION;
                        case 12:
                            return ARRAY;
                        default:
                            return null;
                    }
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
                public final int getNumber() {
                    return this.value;
                }
            }

            static {
                Value value = new Value();
                defaultInstance = value;
                value.initFields();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r5v0 */
            /* JADX WARN: Type inference failed for: r5v1 */
            /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
            public Value(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                ProtoBuf$TypeTable.Builder builder;
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
                initFields();
                ByteString.Output output = new ByteString.Output();
                int i = 1;
                SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
                boolean z = false;
                char c = 0;
                while (true) {
                    ?? r5 = 256;
                    if (z) {
                        if ((c & 256) == 256) {
                            this.arrayElement_ = DesugarCollections.unmodifiableList(this.arrayElement_);
                        }
                        try {
                            newInstance.refreshBuffer();
                        } catch (IOException unused) {
                        } catch (Throwable th) {
                            this.unknownFields = output.toByteString();
                            throw th;
                        }
                        this.unknownFields = output.toByteString();
                        return;
                    }
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            switch (readTag) {
                                case 0:
                                    z = true;
                                case 8:
                                    int readRawVarint32 = codedInputStream.readRawVarint32();
                                    Type valueOf = Type.valueOf(readRawVarint32);
                                    if (valueOf == null) {
                                        newInstance.writeRawVarint32(readTag);
                                        newInstance.writeRawVarint32(readRawVarint32);
                                    } else {
                                        this.bitField0_ |= 1;
                                        this.type_ = valueOf;
                                    }
                                case LAZY_VERTICAL_GRID_VALUE:
                                    this.bitField0_ |= 2;
                                    long readRawVarint64 = codedInputStream.readRawVarint64();
                                    this.intValue_ = (-(readRawVarint64 & 1)) ^ (readRawVarint64 >>> 1);
                                case 29:
                                    this.bitField0_ |= 4;
                                    this.floatValue_ = Float.intBitsToFloat(codedInputStream.readRawLittleEndian32());
                                case 33:
                                    this.bitField0_ |= 8;
                                    this.doubleValue_ = Double.longBitsToDouble(codedInputStream.readRawLittleEndian64());
                                case 40:
                                    this.bitField0_ |= 16;
                                    this.stringValue_ = codedInputStream.readRawVarint32();
                                case 48:
                                    this.bitField0_ |= 32;
                                    this.classId_ = codedInputStream.readRawVarint32();
                                case 56:
                                    this.bitField0_ |= 64;
                                    this.enumValueId_ = codedInputStream.readRawVarint32();
                                case 66:
                                    if ((this.bitField0_ & 128) == 128) {
                                        ProtoBuf$Annotation protoBuf$Annotation = this.annotation_;
                                        protoBuf$Annotation.getClass();
                                        builder = new ProtoBuf$TypeTable.Builder(i);
                                        builder.type_ = Collections.EMPTY_LIST;
                                        builder.mergeFrom(protoBuf$Annotation);
                                    } else {
                                        builder = null;
                                    }
                                    ProtoBuf$Annotation protoBuf$Annotation2 = (ProtoBuf$Annotation) codedInputStream.readMessage(ProtoBuf$Annotation.PARSER, extensionRegistryLite);
                                    this.annotation_ = protoBuf$Annotation2;
                                    if (builder != null) {
                                        builder.mergeFrom(protoBuf$Annotation2);
                                        this.annotation_ = builder.m833buildPartial();
                                    }
                                    this.bitField0_ |= 128;
                                case 74:
                                    if ((c & 256) != 256) {
                                        this.arrayElement_ = new ArrayList();
                                        c = 256;
                                    }
                                    this.arrayElement_.add(codedInputStream.readMessage(PARSER, extensionRegistryLite));
                                case 80:
                                    this.bitField0_ |= 512;
                                    this.flags_ = codedInputStream.readRawVarint32();
                                case 88:
                                    this.bitField0_ |= 256;
                                    this.arrayDimensionCount_ = codedInputStream.readRawVarint32();
                                default:
                                    r5 = codedInputStream.skipField(readTag, newInstance);
                                    if (r5 == 0) {
                                        z = true;
                                    }
                            }
                        } catch (Throwable th2) {
                            if ((c & 256) == r5) {
                                this.arrayElement_ = DesugarCollections.unmodifiableList(this.arrayElement_);
                            }
                            try {
                                newInstance.refreshBuffer();
                            } catch (IOException unused2) {
                            } catch (Throwable th3) {
                                this.unknownFields = output.toByteString();
                                throw th3;
                            }
                            this.unknownFields = output.toByteString();
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

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
            public final int getSerializedSize() {
                int i = this.memoizedSerializedSize;
                if (i != -1) {
                    return i;
                }
                int computeEnumSize = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeEnumSize(1, this.type_.getNumber()) : 0;
                if ((this.bitField0_ & 2) == 2) {
                    long j = this.intValue_;
                    computeEnumSize += SVG.PathDefinition.computeRawVarint64Size((j >> 63) ^ (j << 1)) + SVG.PathDefinition.computeTagSize(2);
                }
                if ((this.bitField0_ & 4) == 4) {
                    computeEnumSize += SVG.PathDefinition.computeTagSize(3) + 4;
                }
                if ((this.bitField0_ & 8) == 8) {
                    computeEnumSize += SVG.PathDefinition.computeTagSize(4) + 8;
                }
                if ((this.bitField0_ & 16) == 16) {
                    computeEnumSize += SVG.PathDefinition.computeInt32Size(5, this.stringValue_);
                }
                if ((this.bitField0_ & 32) == 32) {
                    computeEnumSize += SVG.PathDefinition.computeInt32Size(6, this.classId_);
                }
                if ((this.bitField0_ & 64) == 64) {
                    computeEnumSize += SVG.PathDefinition.computeInt32Size(7, this.enumValueId_);
                }
                if ((this.bitField0_ & 128) == 128) {
                    computeEnumSize += SVG.PathDefinition.computeMessageSize(8, this.annotation_);
                }
                for (int i2 = 0; i2 < this.arrayElement_.size(); i2++) {
                    computeEnumSize += SVG.PathDefinition.computeMessageSize(9, (AbstractMessageLite) this.arrayElement_.get(i2));
                }
                if ((this.bitField0_ & 512) == 512) {
                    computeEnumSize += SVG.PathDefinition.computeInt32Size(10, this.flags_);
                }
                if ((this.bitField0_ & 256) == 256) {
                    computeEnumSize += SVG.PathDefinition.computeInt32Size(11, this.arrayDimensionCount_);
                }
                int size = this.unknownFields.size() + computeEnumSize;
                this.memoizedSerializedSize = size;
                return size;
            }

            public final void initFields() {
                this.type_ = Type.BYTE;
                this.intValue_ = 0L;
                this.floatValue_ = RecyclerView.DECELERATION_RATE;
                this.doubleValue_ = 0.0d;
                this.stringValue_ = 0;
                this.classId_ = 0;
                this.enumValueId_ = 0;
                this.annotation_ = ProtoBuf$Annotation.defaultInstance;
                this.arrayElement_ = Collections.EMPTY_LIST;
                this.arrayDimensionCount_ = 0;
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
                if ((this.bitField0_ & 128) == 128 && !this.annotation_.isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
                for (int i = 0; i < this.arrayElement_.size(); i++) {
                    if (!((Value) this.arrayElement_.get(i)).isInitialized()) {
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
                    pathDefinition.writeEnum(1, this.type_.getNumber());
                }
                if ((this.bitField0_ & 2) == 2) {
                    long j = this.intValue_;
                    pathDefinition.writeTag(2, 0);
                    pathDefinition.writeRawVarint64((j >> 63) ^ (j << 1));
                }
                if ((this.bitField0_ & 4) == 4) {
                    float f = this.floatValue_;
                    pathDefinition.writeTag(3, 5);
                    pathDefinition.writeRawLittleEndian32(Float.floatToRawIntBits(f));
                }
                if ((this.bitField0_ & 8) == 8) {
                    double d = this.doubleValue_;
                    pathDefinition.writeTag(4, 1);
                    pathDefinition.writeRawLittleEndian64(Double.doubleToRawLongBits(d));
                }
                if ((this.bitField0_ & 16) == 16) {
                    pathDefinition.writeInt32(5, this.stringValue_);
                }
                if ((this.bitField0_ & 32) == 32) {
                    pathDefinition.writeInt32(6, this.classId_);
                }
                if ((this.bitField0_ & 64) == 64) {
                    pathDefinition.writeInt32(7, this.enumValueId_);
                }
                if ((this.bitField0_ & 128) == 128) {
                    pathDefinition.writeMessage(8, this.annotation_);
                }
                for (int i = 0; i < this.arrayElement_.size(); i++) {
                    pathDefinition.writeMessage(9, (AbstractMessageLite) this.arrayElement_.get(i));
                }
                if ((this.bitField0_ & 512) == 512) {
                    pathDefinition.writeInt32(10, this.flags_);
                }
                if ((this.bitField0_ & 256) == 256) {
                    pathDefinition.writeInt32(11, this.arrayDimensionCount_);
                }
                pathDefinition.writeRawBytes(this.unknownFields);
            }

            /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
            public final class Builder extends GeneratedMessageLite.Builder implements MessageLiteOrBuilder {
                public ProtoBuf$Annotation annotation_;
                public int arrayDimensionCount_;
                public List arrayElement_;
                public int bitField0_;
                public int classId_;
                public double doubleValue_;
                public int enumValueId_;
                public int flags_;
                public float floatValue_;
                public long intValue_;
                public int stringValue_;
                public Type type_;

                public static Builder create() {
                    Builder builder = new Builder();
                    builder.type_ = Type.BYTE;
                    builder.annotation_ = ProtoBuf$Annotation.defaultInstance;
                    builder.arrayElement_ = Collections.EMPTY_LIST;
                    return builder;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
                public final AbstractMessageLite build() {
                    Value buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw new HttpException(false);
                }

                public final Value buildPartial() {
                    Value value = new Value(this);
                    int i = this.bitField0_;
                    int i2 = (i & 1) != 1 ? 0 : 1;
                    value.type_ = this.type_;
                    if ((i & 2) == 2) {
                        i2 |= 2;
                    }
                    value.intValue_ = this.intValue_;
                    if ((i & 4) == 4) {
                        i2 |= 4;
                    }
                    value.floatValue_ = this.floatValue_;
                    if ((i & 8) == 8) {
                        i2 |= 8;
                    }
                    value.doubleValue_ = this.doubleValue_;
                    if ((i & 16) == 16) {
                        i2 |= 16;
                    }
                    value.stringValue_ = this.stringValue_;
                    if ((i & 32) == 32) {
                        i2 |= 32;
                    }
                    value.classId_ = this.classId_;
                    if ((i & 64) == 64) {
                        i2 |= 64;
                    }
                    value.enumValueId_ = this.enumValueId_;
                    if ((i & 128) == 128) {
                        i2 |= 128;
                    }
                    value.annotation_ = this.annotation_;
                    if ((i & 256) == 256) {
                        this.arrayElement_ = DesugarCollections.unmodifiableList(this.arrayElement_);
                        this.bitField0_ &= -257;
                    }
                    value.arrayElement_ = this.arrayElement_;
                    if ((i & 512) == 512) {
                        i2 |= 256;
                    }
                    value.arrayDimensionCount_ = this.arrayDimensionCount_;
                    if ((i & 1024) == 1024) {
                        i2 |= 512;
                    }
                    value.flags_ = this.flags_;
                    value.bitField0_ = i2;
                    return value;
                }

                public final Object clone() {
                    Builder create = create();
                    create.mergeFrom(buildPartial());
                    return create;
                }

                public final void mergeFrom(Value value) {
                    ProtoBuf$Annotation protoBuf$Annotation;
                    if (value == Value.defaultInstance) {
                        return;
                    }
                    int i = 1;
                    if ((value.bitField0_ & 1) == 1) {
                        Type type = value.type_;
                        type.getClass();
                        this.bitField0_ |= 1;
                        this.type_ = type;
                    }
                    int i2 = value.bitField0_;
                    if ((i2 & 2) == 2) {
                        long j = value.intValue_;
                        this.bitField0_ |= 2;
                        this.intValue_ = j;
                    }
                    if ((i2 & 4) == 4) {
                        float f = value.floatValue_;
                        this.bitField0_ = 4 | this.bitField0_;
                        this.floatValue_ = f;
                    }
                    if ((i2 & 8) == 8) {
                        double d = value.doubleValue_;
                        this.bitField0_ |= 8;
                        this.doubleValue_ = d;
                    }
                    if ((i2 & 16) == 16) {
                        int i3 = value.stringValue_;
                        this.bitField0_ = 16 | this.bitField0_;
                        this.stringValue_ = i3;
                    }
                    if ((i2 & 32) == 32) {
                        int i4 = value.classId_;
                        this.bitField0_ = 32 | this.bitField0_;
                        this.classId_ = i4;
                    }
                    if ((i2 & 64) == 64) {
                        int i5 = value.enumValueId_;
                        this.bitField0_ = 64 | this.bitField0_;
                        this.enumValueId_ = i5;
                    }
                    if ((i2 & 128) == 128) {
                        ProtoBuf$Annotation protoBuf$Annotation2 = value.annotation_;
                        if ((this.bitField0_ & 128) != 128 || (protoBuf$Annotation = this.annotation_) == ProtoBuf$Annotation.defaultInstance) {
                            this.annotation_ = protoBuf$Annotation2;
                        } else {
                            ProtoBuf$TypeTable.Builder builder = new ProtoBuf$TypeTable.Builder(i);
                            builder.type_ = Collections.EMPTY_LIST;
                            builder.mergeFrom(protoBuf$Annotation);
                            builder.mergeFrom(protoBuf$Annotation2);
                            this.annotation_ = builder.m833buildPartial();
                        }
                        this.bitField0_ |= 128;
                    }
                    if (!value.arrayElement_.isEmpty()) {
                        if (this.arrayElement_.isEmpty()) {
                            this.arrayElement_ = value.arrayElement_;
                            this.bitField0_ &= -257;
                        } else {
                            if ((this.bitField0_ & 256) != 256) {
                                this.arrayElement_ = new ArrayList(this.arrayElement_);
                                this.bitField0_ |= 256;
                            }
                            this.arrayElement_.addAll(value.arrayElement_);
                        }
                    }
                    int i6 = value.bitField0_;
                    if ((i6 & 256) == 256) {
                        int i7 = value.arrayDimensionCount_;
                        this.bitField0_ |= 512;
                        this.arrayDimensionCount_ = i7;
                    }
                    if ((i6 & 512) == 512) {
                        int i8 = value.flags_;
                        this.bitField0_ |= 1024;
                        this.flags_ = i8;
                    }
                    this.unknownFields = this.unknownFields.concat(value.unknownFields);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
                public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
                    mergeFrom((Value) generatedMessageLite);
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
                        kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Annotation.Argument.Value.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                        r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                        kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument$Value r1 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument$Value     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                        r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                        r2.mergeFrom(r1)
                        return r2
                    Lf:
                        r3 = move-exception
                        goto L19
                    L11:
                        r3 = move-exception
                        kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                        kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument$Value r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Annotation.Argument.Value) r4     // Catch: java.lang.Throwable -> Lf
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
                    throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Annotation.Argument.Value.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
                }
            }

            public Value(Builder builder) {
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = builder.unknownFields;
            }

            public Value() {
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = ByteString.EMPTY;
            }
        }
    }

    public ProtoBuf$Annotation(ProtoBuf$TypeTable.Builder builder) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }

    public ProtoBuf$Annotation() {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }
}
