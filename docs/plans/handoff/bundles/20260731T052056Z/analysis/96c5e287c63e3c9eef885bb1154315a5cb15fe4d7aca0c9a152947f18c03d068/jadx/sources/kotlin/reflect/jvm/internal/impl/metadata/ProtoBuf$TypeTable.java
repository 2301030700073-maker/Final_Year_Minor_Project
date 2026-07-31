package kotlin.reflect.jvm.internal.impl.metadata;

import coil3.network.HttpException;
import com.caverock.androidsvg.SVG;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$TypeTable extends GeneratedMessageLite {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(20);
    public static final ProtoBuf$TypeTable defaultInstance;
    public int bitField0_;
    public int firstNullable_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public List type_;
    public final ByteString unknownFields;

    static {
        ProtoBuf$TypeTable protoBuf$TypeTable = new ProtoBuf$TypeTable();
        defaultInstance = protoBuf$TypeTable;
        protoBuf$TypeTable.type_ = Collections.EMPTY_LIST;
        protoBuf$TypeTable.firstNullable_ = -1;
    }

    public ProtoBuf$TypeTable(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.type_ = Collections.EMPTY_LIST;
        this.firstNullable_ = -1;
        ByteString.Output output = new ByteString.Output();
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                if (!z2) {
                                    this.type_ = new ArrayList();
                                    z2 = true;
                                }
                                this.type_.add(codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite));
                            } else if (readTag == 16) {
                                this.bitField0_ |= 1;
                                this.firstNullable_ = codedInputStream.readRawVarint32();
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
                if (z2) {
                    this.type_ = DesugarCollections.unmodifiableList(this.type_);
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
        if (z2) {
            this.type_ = DesugarCollections.unmodifiableList(this.type_);
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

    public static Builder newBuilder(ProtoBuf$TypeTable protoBuf$TypeTable) {
        Builder builder = new Builder(0);
        builder.type_ = Collections.EMPTY_LIST;
        builder.firstNullable_ = -1;
        builder.mergeFrom(protoBuf$TypeTable);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.type_.size(); i3++) {
            i2 += SVG.PathDefinition.computeMessageSize(1, (AbstractMessageLite) this.type_.get(i3));
        }
        if ((this.bitField0_ & 1) == 1) {
            i2 += SVG.PathDefinition.computeInt32Size(2, this.firstNullable_);
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
        for (int i = 0; i < this.type_.size(); i++) {
            if (!((ProtoBuf$Type) this.type_.get(i)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder newBuilderForType() {
        Builder builder = new Builder(0);
        builder.type_ = Collections.EMPTY_LIST;
        builder.firstNullable_ = -1;
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder toBuilder() {
        return newBuilder(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final void writeTo(SVG.PathDefinition pathDefinition) {
        getSerializedSize();
        for (int i = 0; i < this.type_.size(); i++) {
            pathDefinition.writeMessage(1, (AbstractMessageLite) this.type_.get(i));
        }
        if ((this.bitField0_ & 1) == 1) {
            pathDefinition.writeInt32(2, this.firstNullable_);
        }
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.Builder implements MessageLiteOrBuilder {
        public final /* synthetic */ int $r8$classId;
        public int bitField0_;
        public int firstNullable_;
        public Object type_;

        public /* synthetic */ Builder(int i) {
            this.$r8$classId = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            switch (this.$r8$classId) {
                case 0:
                    ProtoBuf$TypeTable m834buildPartial = m834buildPartial();
                    if (m834buildPartial.isInitialized()) {
                        return m834buildPartial;
                    }
                    throw new HttpException(false);
                case 1:
                    ProtoBuf$Annotation m833buildPartial = m833buildPartial();
                    if (m833buildPartial.isInitialized()) {
                        return m833buildPartial;
                    }
                    throw new HttpException(false);
                default:
                    ProtoBuf$Annotation.Argument buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw new HttpException(false);
            }
        }

        /* renamed from: buildPartial, reason: collision with other method in class */
        public ProtoBuf$Annotation m833buildPartial() {
            ProtoBuf$Annotation protoBuf$Annotation = new ProtoBuf$Annotation(this);
            int i = this.bitField0_;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Annotation.id_ = this.firstNullable_;
            if ((i & 2) == 2) {
                this.type_ = DesugarCollections.unmodifiableList((List) this.type_);
                this.bitField0_ &= -3;
            }
            protoBuf$Annotation.argument_ = (List) this.type_;
            protoBuf$Annotation.bitField0_ = i2;
            return protoBuf$Annotation;
        }

        public final Object clone() {
            switch (this.$r8$classId) {
                case 0:
                    Builder builder = new Builder(0);
                    builder.type_ = Collections.EMPTY_LIST;
                    builder.firstNullable_ = -1;
                    builder.mergeFrom(m834buildPartial());
                    return builder;
                case 1:
                    Builder builder2 = new Builder(1);
                    builder2.type_ = Collections.EMPTY_LIST;
                    builder2.mergeFrom(m833buildPartial());
                    return builder2;
                default:
                    Builder builder3 = new Builder(2);
                    builder3.type_ = ProtoBuf$Annotation.Argument.Value.defaultInstance;
                    builder3.mergeFrom(buildPartial());
                    return builder3;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0020  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) {
            /*
                r2 = this;
                int r0 = r2.$r8$classId
                r1 = 0
                switch(r0) {
                    case 0: goto L42;
                    case 1: goto L24;
                    default: goto L6;
                }
            L6:
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r0 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation.Argument.PARSER     // Catch: java.lang.Throwable -> L14 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L16
                r0.getClass()     // Catch: java.lang.Throwable -> L14 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L16
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument r0 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument     // Catch: java.lang.Throwable -> L14 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L16
                r0.<init>(r3, r4)     // Catch: java.lang.Throwable -> L14 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L16
                r2.mergeFrom(r0)
                return r2
            L14:
                r3 = move-exception
                goto L1e
            L16:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> L14
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation.Argument) r4     // Catch: java.lang.Throwable -> L14
                throw r3     // Catch: java.lang.Throwable -> L1c
            L1c:
                r3 = move-exception
                r1 = r4
            L1e:
                if (r1 == 0) goto L23
                r2.mergeFrom(r1)
            L23:
                throw r3
            L24:
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r0 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation.PARSER     // Catch: java.lang.Throwable -> L32 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L34
                r0.getClass()     // Catch: java.lang.Throwable -> L32 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L34
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation r0 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation     // Catch: java.lang.Throwable -> L32 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L34
                r0.<init>(r3, r4)     // Catch: java.lang.Throwable -> L32 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L34
                r2.mergeFrom(r0)
                return r2
            L32:
                r3 = move-exception
                goto L3c
            L34:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> L32
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation) r4     // Catch: java.lang.Throwable -> L32
                throw r3     // Catch: java.lang.Throwable -> L3a
            L3a:
                r3 = move-exception
                r1 = r4
            L3c:
                if (r1 == 0) goto L41
                r2.mergeFrom(r1)
            L41:
                throw r3
            L42:
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r0 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable.PARSER     // Catch: java.lang.Throwable -> L50 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L52
                r0.getClass()     // Catch: java.lang.Throwable -> L50 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L52
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable r0 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable     // Catch: java.lang.Throwable -> L50 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L52
                r0.<init>(r3, r4)     // Catch: java.lang.Throwable -> L50 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L52
                r2.mergeFrom(r0)
                return r2
            L50:
                r3 = move-exception
                goto L5a
            L52:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> L50
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable) r4     // Catch: java.lang.Throwable -> L50
                throw r3     // Catch: java.lang.Throwable -> L58
            L58:
                r3 = move-exception
                r1 = r4
            L5a:
                if (r1 == 0) goto L5f
                r2.mergeFrom(r1)
            L5f:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }

        public ProtoBuf$Annotation.Argument buildPartial() {
            ProtoBuf$Annotation.Argument argument = new ProtoBuf$Annotation.Argument(this);
            int i = this.bitField0_;
            int i2 = (i & 1) != 1 ? 0 : 1;
            argument.nameId_ = this.firstNullable_;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            argument.value_ = (ProtoBuf$Annotation.Argument.Value) this.type_;
            argument.bitField0_ = i2;
            return argument;
        }

        /* renamed from: buildPartial, reason: collision with other method in class */
        public ProtoBuf$TypeTable m834buildPartial() {
            ProtoBuf$TypeTable protoBuf$TypeTable = new ProtoBuf$TypeTable(this);
            int i = this.bitField0_;
            if ((i & 1) == 1) {
                this.type_ = DesugarCollections.unmodifiableList((List) this.type_);
                this.bitField0_ &= -2;
            }
            protoBuf$TypeTable.type_ = (List) this.type_;
            int i2 = (i & 2) != 2 ? 0 : 1;
            protoBuf$TypeTable.firstNullable_ = this.firstNullable_;
            protoBuf$TypeTable.bitField0_ = i2;
            return protoBuf$TypeTable;
        }

        public void mergeFrom(ProtoBuf$Annotation.Argument argument) {
            ProtoBuf$Annotation.Argument.Value value;
            if (argument == ProtoBuf$Annotation.Argument.defaultInstance) {
                return;
            }
            int i = argument.bitField0_;
            if ((i & 1) == 1) {
                int i2 = argument.nameId_;
                this.bitField0_ = 1 | this.bitField0_;
                this.firstNullable_ = i2;
            }
            if ((i & 2) == 2) {
                ProtoBuf$Annotation.Argument.Value value2 = argument.value_;
                if ((this.bitField0_ & 2) == 2 && (value = (ProtoBuf$Annotation.Argument.Value) this.type_) != ProtoBuf$Annotation.Argument.Value.defaultInstance) {
                    ProtoBuf$Annotation.Argument.Value.Builder create = ProtoBuf$Annotation.Argument.Value.Builder.create();
                    create.mergeFrom(value);
                    create.mergeFrom(value2);
                    this.type_ = create.buildPartial();
                } else {
                    this.type_ = value2;
                }
                this.bitField0_ |= 2;
            }
            this.unknownFields = this.unknownFields.concat(argument.unknownFields);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            switch (this.$r8$classId) {
                case 0:
                    mergeFrom((ProtoBuf$TypeTable) generatedMessageLite);
                    break;
                case 1:
                    mergeFrom((ProtoBuf$Annotation) generatedMessageLite);
                    break;
                default:
                    mergeFrom((ProtoBuf$Annotation.Argument) generatedMessageLite);
                    break;
            }
            return this;
        }

        public void mergeFrom(ProtoBuf$Annotation protoBuf$Annotation) {
            if (protoBuf$Annotation == ProtoBuf$Annotation.defaultInstance) {
                return;
            }
            if ((protoBuf$Annotation.bitField0_ & 1) == 1) {
                int i = protoBuf$Annotation.id_;
                this.bitField0_ = 1 | this.bitField0_;
                this.firstNullable_ = i;
            }
            if (!protoBuf$Annotation.argument_.isEmpty()) {
                if (((List) this.type_).isEmpty()) {
                    this.type_ = protoBuf$Annotation.argument_;
                    this.bitField0_ &= -3;
                } else {
                    if ((this.bitField0_ & 2) != 2) {
                        this.type_ = new ArrayList((List) this.type_);
                        this.bitField0_ |= 2;
                    }
                    ((List) this.type_).addAll(protoBuf$Annotation.argument_);
                }
            }
            this.unknownFields = this.unknownFields.concat(protoBuf$Annotation.unknownFields);
        }

        public void mergeFrom(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if (protoBuf$TypeTable == ProtoBuf$TypeTable.defaultInstance) {
                return;
            }
            if (!protoBuf$TypeTable.type_.isEmpty()) {
                if (((List) this.type_).isEmpty()) {
                    this.type_ = protoBuf$TypeTable.type_;
                    this.bitField0_ &= -2;
                } else {
                    if ((this.bitField0_ & 1) != 1) {
                        this.type_ = new ArrayList((List) this.type_);
                        this.bitField0_ |= 1;
                    }
                    ((List) this.type_).addAll(protoBuf$TypeTable.type_);
                }
            }
            if ((protoBuf$TypeTable.bitField0_ & 1) == 1) {
                int i = protoBuf$TypeTable.firstNullable_;
                this.bitField0_ |= 2;
                this.firstNullable_ = i;
            }
            this.unknownFields = this.unknownFields.concat(protoBuf$TypeTable.unknownFields);
        }
    }

    public ProtoBuf$TypeTable(Builder builder) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }

    public ProtoBuf$TypeTable() {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }
}
