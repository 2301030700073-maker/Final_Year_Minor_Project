package kotlin.reflect.jvm.internal.impl.metadata;

import coil3.network.HttpException;
import com.caverock.androidsvg.SVG;
import java.io.IOException;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder;
import okio.ByteString;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$VersionRequirement extends GeneratedMessageLite {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(22);
    public static final ProtoBuf$VersionRequirement defaultInstance;
    public int bitField0_;
    public int errorCode_;
    public Level level_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public int message_;
    public final ByteString unknownFields;
    public int versionFull_;
    public VersionKind versionKind_;
    public int version_;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public enum Level implements Internal.EnumLite {
        WARNING(0),
        ERROR(1),
        HIDDEN(2);

        private static Internal.EnumLiteMap internalValueMap = new LoginClient(3);
        private final int value;

        Level(int i) {
            this.value = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public enum VersionKind implements Internal.EnumLite {
        LANGUAGE_VERSION(0),
        COMPILER_VERSION(1),
        API_VERSION(2);

        private static Internal.EnumLiteMap internalValueMap = new ByteString.Companion(3);
        private final int value;

        VersionKind(int i) {
            this.value = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }
    }

    static {
        ProtoBuf$VersionRequirement protoBuf$VersionRequirement = new ProtoBuf$VersionRequirement();
        defaultInstance = protoBuf$VersionRequirement;
        protoBuf$VersionRequirement.version_ = 0;
        protoBuf$VersionRequirement.versionFull_ = 0;
        protoBuf$VersionRequirement.level_ = Level.ERROR;
        protoBuf$VersionRequirement.errorCode_ = 0;
        protoBuf$VersionRequirement.message_ = 0;
        protoBuf$VersionRequirement.versionKind_ = VersionKind.LANGUAGE_VERSION;
    }

    public ProtoBuf$VersionRequirement(CodedInputStream codedInputStream) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        boolean z = false;
        this.version_ = 0;
        this.versionFull_ = 0;
        this.level_ = Level.ERROR;
        this.errorCode_ = 0;
        this.message_ = 0;
        this.versionKind_ = VersionKind.LANGUAGE_VERSION;
        ByteString.Output output = new ByteString.Output();
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    if (readTag != 0) {
                        if (readTag == 8) {
                            this.bitField0_ |= 1;
                            this.version_ = codedInputStream.readRawVarint32();
                        } else if (readTag != 16) {
                            VersionKind versionKind = null;
                            Level level = null;
                            if (readTag == 24) {
                                int readRawVarint32 = codedInputStream.readRawVarint32();
                                if (readRawVarint32 == 0) {
                                    level = Level.WARNING;
                                } else if (readRawVarint32 == 1) {
                                    level = Level.ERROR;
                                } else if (readRawVarint32 == 2) {
                                    level = Level.HIDDEN;
                                }
                                if (level == null) {
                                    newInstance.writeRawVarint32(readTag);
                                    newInstance.writeRawVarint32(readRawVarint32);
                                } else {
                                    this.bitField0_ |= 4;
                                    this.level_ = level;
                                }
                            } else if (readTag == 32) {
                                this.bitField0_ |= 8;
                                this.errorCode_ = codedInputStream.readRawVarint32();
                            } else if (readTag == 40) {
                                this.bitField0_ |= 16;
                                this.message_ = codedInputStream.readRawVarint32();
                            } else if (readTag == 48) {
                                int readRawVarint322 = codedInputStream.readRawVarint32();
                                if (readRawVarint322 == 0) {
                                    versionKind = VersionKind.LANGUAGE_VERSION;
                                } else if (readRawVarint322 == 1) {
                                    versionKind = VersionKind.COMPILER_VERSION;
                                } else if (readRawVarint322 == 2) {
                                    versionKind = VersionKind.API_VERSION;
                                }
                                if (versionKind == null) {
                                    newInstance.writeRawVarint32(readTag);
                                    newInstance.writeRawVarint32(readRawVarint322);
                                } else {
                                    this.bitField0_ |= 32;
                                    this.versionKind_ = versionKind;
                                }
                            } else if (!codedInputStream.skipField(readTag, newInstance)) {
                            }
                        } else {
                            this.bitField0_ |= 2;
                            this.versionFull_ = codedInputStream.readRawVarint32();
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
        int computeInt32Size = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeInt32Size(1, this.version_) : 0;
        if ((this.bitField0_ & 2) == 2) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(2, this.versionFull_);
        }
        if ((this.bitField0_ & 4) == 4) {
            computeInt32Size += SVG.PathDefinition.computeEnumSize(3, this.level_.getNumber());
        }
        if ((this.bitField0_ & 8) == 8) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(4, this.errorCode_);
        }
        if ((this.bitField0_ & 16) == 16) {
            computeInt32Size += SVG.PathDefinition.computeInt32Size(5, this.message_);
        }
        if ((this.bitField0_ & 32) == 32) {
            computeInt32Size += SVG.PathDefinition.computeEnumSize(6, this.versionKind_.getNumber());
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
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder newBuilderForType() {
        Builder builder = new Builder();
        builder.level_ = Level.ERROR;
        builder.versionKind_ = VersionKind.LANGUAGE_VERSION;
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder toBuilder() {
        Builder builder = new Builder();
        builder.level_ = Level.ERROR;
        builder.versionKind_ = VersionKind.LANGUAGE_VERSION;
        builder.mergeFrom(this);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final void writeTo(SVG.PathDefinition pathDefinition) {
        getSerializedSize();
        if ((this.bitField0_ & 1) == 1) {
            pathDefinition.writeInt32(1, this.version_);
        }
        if ((this.bitField0_ & 2) == 2) {
            pathDefinition.writeInt32(2, this.versionFull_);
        }
        if ((this.bitField0_ & 4) == 4) {
            pathDefinition.writeEnum(3, this.level_.getNumber());
        }
        if ((this.bitField0_ & 8) == 8) {
            pathDefinition.writeInt32(4, this.errorCode_);
        }
        if ((this.bitField0_ & 16) == 16) {
            pathDefinition.writeInt32(5, this.message_);
        }
        if ((this.bitField0_ & 32) == 32) {
            pathDefinition.writeEnum(6, this.versionKind_.getNumber());
        }
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.Builder implements MessageLiteOrBuilder {
        public int bitField0_;
        public int errorCode_;
        public Level level_;
        public int message_;
        public int versionFull_;
        public VersionKind versionKind_;
        public int version_;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            ProtoBuf$VersionRequirement buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw new HttpException(false);
        }

        public final ProtoBuf$VersionRequirement buildPartial() {
            ProtoBuf$VersionRequirement protoBuf$VersionRequirement = new ProtoBuf$VersionRequirement(this);
            int i = this.bitField0_;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$VersionRequirement.version_ = this.version_;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$VersionRequirement.versionFull_ = this.versionFull_;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$VersionRequirement.level_ = this.level_;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$VersionRequirement.errorCode_ = this.errorCode_;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$VersionRequirement.message_ = this.message_;
            if ((i & 32) == 32) {
                i2 |= 32;
            }
            protoBuf$VersionRequirement.versionKind_ = this.versionKind_;
            protoBuf$VersionRequirement.bitField0_ = i2;
            return protoBuf$VersionRequirement;
        }

        public final Object clone() {
            Builder builder = new Builder();
            builder.level_ = Level.ERROR;
            builder.versionKind_ = VersionKind.LANGUAGE_VERSION;
            builder.mergeFrom(buildPartial());
            return builder;
        }

        public final void mergeFrom(ProtoBuf$VersionRequirement protoBuf$VersionRequirement) {
            if (protoBuf$VersionRequirement == ProtoBuf$VersionRequirement.defaultInstance) {
                return;
            }
            int i = protoBuf$VersionRequirement.bitField0_;
            if ((i & 1) == 1) {
                int i2 = protoBuf$VersionRequirement.version_;
                this.bitField0_ = 1 | this.bitField0_;
                this.version_ = i2;
            }
            if ((i & 2) == 2) {
                int i3 = protoBuf$VersionRequirement.versionFull_;
                this.bitField0_ = 2 | this.bitField0_;
                this.versionFull_ = i3;
            }
            if ((i & 4) == 4) {
                Level level = protoBuf$VersionRequirement.level_;
                level.getClass();
                this.bitField0_ = 4 | this.bitField0_;
                this.level_ = level;
            }
            int i4 = protoBuf$VersionRequirement.bitField0_;
            if ((i4 & 8) == 8) {
                int i5 = protoBuf$VersionRequirement.errorCode_;
                this.bitField0_ = 8 | this.bitField0_;
                this.errorCode_ = i5;
            }
            if ((i4 & 16) == 16) {
                int i6 = protoBuf$VersionRequirement.message_;
                this.bitField0_ = 16 | this.bitField0_;
                this.message_ = i6;
            }
            if ((i4 & 32) == 32) {
                VersionKind versionKind = protoBuf$VersionRequirement.versionKind_;
                versionKind.getClass();
                this.bitField0_ = 32 | this.bitField0_;
                this.versionKind_ = versionKind;
            }
            this.unknownFields = this.unknownFields.concat(protoBuf$VersionRequirement.unknownFields);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            mergeFrom((ProtoBuf$VersionRequirement) generatedMessageLite);
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r0 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r0.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement r0 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r0.<init>(r2)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.mergeFrom(r0)
                return r1
            Lf:
                r2 = move-exception
                goto L19
            L11:
                r2 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r0 = r2.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement r0 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement) r0     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }
    }

    public ProtoBuf$VersionRequirement(Builder builder) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }

    public ProtoBuf$VersionRequirement() {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = kotlin.reflect.jvm.internal.impl.protobuf.ByteString.EMPTY;
    }
}
