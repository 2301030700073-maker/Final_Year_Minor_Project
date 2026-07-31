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
public final class ProtoBuf$Constructor extends GeneratedMessageLite.ExtendableMessage {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(5);
    public static final ProtoBuf$Constructor defaultInstance;
    public int bitField0_;
    public int flags_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public final ByteString unknownFields;
    public List valueParameter_;
    public List versionRequirement_;

    static {
        ProtoBuf$Constructor protoBuf$Constructor = new ProtoBuf$Constructor();
        defaultInstance = protoBuf$Constructor;
        protoBuf$Constructor.flags_ = 6;
        List list = Collections.EMPTY_LIST;
        protoBuf$Constructor.valueParameter_ = list;
        protoBuf$Constructor.versionRequirement_ = list;
    }

    public ProtoBuf$Constructor(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.flags_ = 6;
        List list = Collections.EMPTY_LIST;
        this.valueParameter_ = list;
        this.versionRequirement_ = list;
        ByteString.Output output = new ByteString.Output();
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    if (readTag != 0) {
                        if (readTag == 8) {
                            this.bitField0_ |= 1;
                            this.flags_ = codedInputStream.readRawVarint32();
                        } else if (readTag == 18) {
                            if ((i & 2) != 2) {
                                this.valueParameter_ = new ArrayList();
                                i |= 2;
                            }
                            this.valueParameter_.add(codedInputStream.readMessage(ProtoBuf$ValueParameter.PARSER, extensionRegistryLite));
                        } else if (readTag == 248) {
                            if ((i & 4) != 4) {
                                this.versionRequirement_ = new ArrayList();
                                i |= 4;
                            }
                            this.versionRequirement_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                        } else if (readTag == 250) {
                            int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            if ((i & 4) != 4 && codedInputStream.getBytesUntilLimit() > 0) {
                                this.versionRequirement_ = new ArrayList();
                                i |= 4;
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.versionRequirement_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            }
                            codedInputStream.popLimit(pushLimit);
                        } else if (!parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if ((i & 2) == 2) {
                        this.valueParameter_ = DesugarCollections.unmodifiableList(this.valueParameter_);
                    }
                    if ((i & 4) == 4) {
                        this.versionRequirement_ = DesugarCollections.unmodifiableList(this.versionRequirement_);
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
        if ((i & 2) == 2) {
            this.valueParameter_ = DesugarCollections.unmodifiableList(this.valueParameter_);
        }
        if ((i & 4) == 4) {
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
        for (int i3 = 0; i3 < this.valueParameter_.size(); i3++) {
            computeInt32Size += SVG.PathDefinition.computeMessageSize(2, (AbstractMessageLite) this.valueParameter_.get(i3));
        }
        int i4 = 0;
        while (true) {
            int size = this.versionRequirement_.size();
            List list = this.versionRequirement_;
            if (i2 >= size) {
                int size2 = this.unknownFields.size() + extensionsSerializedSize() + (list.size() * 2) + computeInt32Size + i4;
                this.memoizedSerializedSize = size2;
                return size2;
            }
            i4 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list.get(i2)).intValue());
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
        for (int i = 0; i < this.valueParameter_.size(); i++) {
            if (!((ProtoBuf$ValueParameter) this.valueParameter_.get(i)).isInitialized()) {
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
        Builder builder = new Builder();
        builder.flags_ = 6;
        List list = Collections.EMPTY_LIST;
        builder.valueParameter_ = list;
        builder.versionRequirement_ = list;
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder toBuilder() {
        Builder builder = new Builder();
        builder.flags_ = 6;
        List list = Collections.EMPTY_LIST;
        builder.valueParameter_ = list;
        builder.versionRequirement_ = list;
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
        for (int i = 0; i < this.valueParameter_.size(); i++) {
            pathDefinition.writeMessage(2, (AbstractMessageLite) this.valueParameter_.get(i));
        }
        for (int i2 = 0; i2 < this.versionRequirement_.size(); i2++) {
            pathDefinition.writeInt32(31, ((Integer) this.versionRequirement_.get(i2)).intValue());
        }
        builder.writeUntil(19000, pathDefinition);
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.ExtendableBuilder {
        public int bitField0_;
        public int flags_;
        public List valueParameter_;
        public List versionRequirement_;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            ProtoBuf$Constructor buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw new HttpException(false);
        }

        public final ProtoBuf$Constructor buildPartial() {
            ProtoBuf$Constructor protoBuf$Constructor = new ProtoBuf$Constructor(this);
            int i = this.bitField0_;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Constructor.flags_ = this.flags_;
            if ((i & 2) == 2) {
                this.valueParameter_ = DesugarCollections.unmodifiableList(this.valueParameter_);
                i = this.bitField0_ & (-3);
                this.bitField0_ = i;
            }
            protoBuf$Constructor.valueParameter_ = this.valueParameter_;
            if ((i & 4) == 4) {
                this.versionRequirement_ = DesugarCollections.unmodifiableList(this.versionRequirement_);
                this.bitField0_ &= -5;
            }
            protoBuf$Constructor.versionRequirement_ = this.versionRequirement_;
            protoBuf$Constructor.bitField0_ = i2;
            return protoBuf$Constructor;
        }

        public final Object clone() {
            Builder builder = new Builder();
            builder.flags_ = 6;
            List list = Collections.EMPTY_LIST;
            builder.valueParameter_ = list;
            builder.versionRequirement_ = list;
            builder.mergeFrom(buildPartial());
            return builder;
        }

        public final void mergeFrom(ProtoBuf$Constructor protoBuf$Constructor) {
            if (protoBuf$Constructor == ProtoBuf$Constructor.defaultInstance) {
                return;
            }
            if ((protoBuf$Constructor.bitField0_ & 1) == 1) {
                int i = protoBuf$Constructor.flags_;
                this.bitField0_ = 1 | this.bitField0_;
                this.flags_ = i;
            }
            if (!protoBuf$Constructor.valueParameter_.isEmpty()) {
                if (this.valueParameter_.isEmpty()) {
                    this.valueParameter_ = protoBuf$Constructor.valueParameter_;
                    this.bitField0_ &= -3;
                } else {
                    if ((this.bitField0_ & 2) != 2) {
                        this.valueParameter_ = new ArrayList(this.valueParameter_);
                        this.bitField0_ |= 2;
                    }
                    this.valueParameter_.addAll(protoBuf$Constructor.valueParameter_);
                }
            }
            if (!protoBuf$Constructor.versionRequirement_.isEmpty()) {
                if (this.versionRequirement_.isEmpty()) {
                    this.versionRequirement_ = protoBuf$Constructor.versionRequirement_;
                    this.bitField0_ &= -5;
                } else {
                    if ((this.bitField0_ & 4) != 4) {
                        this.versionRequirement_ = new ArrayList(this.versionRequirement_);
                        this.bitField0_ |= 4;
                    }
                    this.versionRequirement_.addAll(protoBuf$Constructor.versionRequirement_);
                }
            }
            mergeExtensionFields(protoBuf$Constructor);
            this.unknownFields = this.unknownFields.concat(protoBuf$Constructor.unknownFields);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            mergeFrom((ProtoBuf$Constructor) generatedMessageLite);
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor r1 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r2.mergeFrom(r1)
                return r2
            Lf:
                r3 = move-exception
                goto L19
            L11:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }
    }

    public ProtoBuf$Constructor() {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }

    public ProtoBuf$Constructor(Builder builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }
}
