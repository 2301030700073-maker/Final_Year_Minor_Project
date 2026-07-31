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
public final class ProtoBuf$QualifiedNameTable extends GeneratedMessageLite {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(14);
    public static final ProtoBuf$QualifiedNameTable defaultInstance;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public List qualifiedName_;
    public final ByteString unknownFields;

    static {
        ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = new ProtoBuf$QualifiedNameTable();
        defaultInstance = protoBuf$QualifiedNameTable;
        protoBuf$QualifiedNameTable.qualifiedName_ = Collections.EMPTY_LIST;
    }

    public ProtoBuf$QualifiedNameTable(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.qualifiedName_ = Collections.EMPTY_LIST;
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
                            if (!z2) {
                                this.qualifiedName_ = new ArrayList();
                                z2 = true;
                            }
                            this.qualifiedName_.add(codedInputStream.readMessage(QualifiedName.PARSER, extensionRegistryLite));
                        } else if (!codedInputStream.skipField(readTag, newInstance)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (z2) {
                        this.qualifiedName_ = DesugarCollections.unmodifiableList(this.qualifiedName_);
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
            this.qualifiedName_ = DesugarCollections.unmodifiableList(this.qualifiedName_);
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
        for (int i3 = 0; i3 < this.qualifiedName_.size(); i3++) {
            i2 += SVG.PathDefinition.computeMessageSize(1, (AbstractMessageLite) this.qualifiedName_.get(i3));
        }
        int size = this.unknownFields.size() + i2;
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
        for (int i = 0; i < this.qualifiedName_.size(); i++) {
            if (!((QualifiedName) this.qualifiedName_.get(i)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder newBuilderForType() {
        ProtoBuf$Contract.Builder builder = new ProtoBuf$Contract.Builder(1);
        builder.effect_ = Collections.EMPTY_LIST;
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder toBuilder() {
        ProtoBuf$Contract.Builder builder = new ProtoBuf$Contract.Builder(1);
        builder.effect_ = Collections.EMPTY_LIST;
        builder.mergeFrom(this);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final void writeTo(SVG.PathDefinition pathDefinition) {
        getSerializedSize();
        for (int i = 0; i < this.qualifiedName_.size(); i++) {
            pathDefinition.writeMessage(1, (AbstractMessageLite) this.qualifiedName_.get(i));
        }
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class QualifiedName extends GeneratedMessageLite {
        public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(15);
        public static final QualifiedName defaultInstance;
        public int bitField0_;
        public Kind kind_;
        public byte memoizedIsInitialized;
        public int memoizedSerializedSize;
        public int parentQualifiedName_;
        public int shortName_;
        public final ByteString unknownFields;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public enum Kind implements Internal.EnumLite {
            CLASS(0),
            PACKAGE(1),
            LOCAL(2);

            private static Internal.EnumLiteMap internalValueMap = new LoginClient(2);
            private final int value;

            Kind(int i) {
                this.value = i;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }
        }

        static {
            QualifiedName qualifiedName = new QualifiedName();
            defaultInstance = qualifiedName;
            qualifiedName.parentQualifiedName_ = -1;
            qualifiedName.shortName_ = 0;
            qualifiedName.kind_ = Kind.PACKAGE;
        }

        public QualifiedName(CodedInputStream codedInputStream) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.parentQualifiedName_ = -1;
            boolean z = false;
            this.shortName_ = 0;
            this.kind_ = Kind.PACKAGE;
            ByteString.Output output = new ByteString.Output();
            SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.bitField0_ |= 1;
                                this.parentQualifiedName_ = codedInputStream.readRawVarint32();
                            } else if (readTag == 16) {
                                this.bitField0_ |= 2;
                                this.shortName_ = codedInputStream.readRawVarint32();
                            } else if (readTag == 24) {
                                int readRawVarint32 = codedInputStream.readRawVarint32();
                                Kind kind = readRawVarint32 != 0 ? readRawVarint32 != 1 ? readRawVarint32 != 2 ? null : Kind.LOCAL : Kind.PACKAGE : Kind.CLASS;
                                if (kind == null) {
                                    newInstance.writeRawVarint32(readTag);
                                    newInstance.writeRawVarint32(readRawVarint32);
                                } else {
                                    this.bitField0_ |= 4;
                                    this.kind_ = kind;
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
            int computeInt32Size = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeInt32Size(1, this.parentQualifiedName_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeInt32Size += SVG.PathDefinition.computeInt32Size(2, this.shortName_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeInt32Size += SVG.PathDefinition.computeEnumSize(3, this.kind_.getNumber());
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
            if ((this.bitField0_ & 2) == 2) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final GeneratedMessageLite.Builder newBuilderForType() {
            Builder builder = new Builder();
            builder.parentQualifiedName_ = -1;
            builder.kind_ = Kind.PACKAGE;
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final GeneratedMessageLite.Builder toBuilder() {
            Builder builder = new Builder();
            builder.parentQualifiedName_ = -1;
            builder.kind_ = Kind.PACKAGE;
            builder.mergeFrom(this);
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final void writeTo(SVG.PathDefinition pathDefinition) {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                pathDefinition.writeInt32(1, this.parentQualifiedName_);
            }
            if ((this.bitField0_ & 2) == 2) {
                pathDefinition.writeInt32(2, this.shortName_);
            }
            if ((this.bitField0_ & 4) == 4) {
                pathDefinition.writeEnum(3, this.kind_.getNumber());
            }
            pathDefinition.writeRawBytes(this.unknownFields);
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Builder extends GeneratedMessageLite.Builder implements MessageLiteOrBuilder {
            public int bitField0_;
            public Kind kind_;
            public int parentQualifiedName_;
            public int shortName_;

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            public final AbstractMessageLite build() {
                QualifiedName buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw new HttpException(false);
            }

            public final QualifiedName buildPartial() {
                QualifiedName qualifiedName = new QualifiedName(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                qualifiedName.parentQualifiedName_ = this.parentQualifiedName_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                qualifiedName.shortName_ = this.shortName_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                qualifiedName.kind_ = this.kind_;
                qualifiedName.bitField0_ = i2;
                return qualifiedName;
            }

            public final Object clone() {
                Builder builder = new Builder();
                builder.parentQualifiedName_ = -1;
                builder.kind_ = Kind.PACKAGE;
                builder.mergeFrom(buildPartial());
                return builder;
            }

            public final void mergeFrom(QualifiedName qualifiedName) {
                if (qualifiedName == QualifiedName.defaultInstance) {
                    return;
                }
                int i = qualifiedName.bitField0_;
                if ((i & 1) == 1) {
                    int i2 = qualifiedName.parentQualifiedName_;
                    this.bitField0_ = 1 | this.bitField0_;
                    this.parentQualifiedName_ = i2;
                }
                if ((i & 2) == 2) {
                    int i3 = qualifiedName.shortName_;
                    this.bitField0_ = 2 | this.bitField0_;
                    this.shortName_ = i3;
                }
                if ((i & 4) == 4) {
                    Kind kind = qualifiedName.kind_;
                    kind.getClass();
                    this.bitField0_ = 4 | this.bitField0_;
                    this.kind_ = kind;
                }
                this.unknownFields = this.unknownFields.concat(qualifiedName.unknownFields);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
                mergeFrom((QualifiedName) generatedMessageLite);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x001b  */
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r2, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r3) {
                /*
                    r1 = this;
                    r3 = 0
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r0 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable.QualifiedName.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    r0.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable$QualifiedName r0 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable$QualifiedName     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    r0.<init>(r2)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    r1.mergeFrom(r0)
                    return r1
                Lf:
                    r2 = move-exception
                    goto L19
                L11:
                    r2 = move-exception
                    kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r0 = r2.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable$QualifiedName r0 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable.QualifiedName) r0     // Catch: java.lang.Throwable -> Lf
                    throw r2     // Catch: java.lang.Throwable -> L17
                L17:
                    r2 = move-exception
                    r3 = r0
                L19:
                    if (r3 == 0) goto L1e
                    r1.mergeFrom(r3)
                L1e:
                    throw r2
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.QualifiedNameTable.QualifiedName.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
            }
        }

        public QualifiedName(Builder builder) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.unknownFields;
        }

        public QualifiedName() {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }
    }

    public ProtoBuf$QualifiedNameTable(ProtoBuf$Contract.Builder builder) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }

    public ProtoBuf$QualifiedNameTable() {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }
}
