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
import kotlin.reflect.jvm.internal.impl.protobuf.LazyStringArrayList;
import kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$Contract extends GeneratedMessageLite {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(6);
    public static final ProtoBuf$Contract defaultInstance;
    public List effect_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public final ByteString unknownFields;

    static {
        ProtoBuf$Contract protoBuf$Contract = new ProtoBuf$Contract();
        defaultInstance = protoBuf$Contract;
        protoBuf$Contract.effect_ = Collections.EMPTY_LIST;
    }

    public ProtoBuf$Contract(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.effect_ = Collections.EMPTY_LIST;
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
                                this.effect_ = new ArrayList();
                                z2 = true;
                            }
                            this.effect_.add(codedInputStream.readMessage(ProtoBuf$Effect.PARSER, extensionRegistryLite));
                        } else if (!codedInputStream.skipField(readTag, newInstance)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (z2) {
                        this.effect_ = DesugarCollections.unmodifiableList(this.effect_);
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
            this.effect_ = DesugarCollections.unmodifiableList(this.effect_);
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
        for (int i3 = 0; i3 < this.effect_.size(); i3++) {
            i2 += SVG.PathDefinition.computeMessageSize(1, (AbstractMessageLite) this.effect_.get(i3));
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
        for (int i = 0; i < this.effect_.size(); i++) {
            if (!((ProtoBuf$Effect) this.effect_.get(i)).isInitialized()) {
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
        builder.effect_ = Collections.EMPTY_LIST;
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final GeneratedMessageLite.Builder toBuilder() {
        Builder builder = new Builder(0);
        builder.effect_ = Collections.EMPTY_LIST;
        builder.mergeFrom(this);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
    public final void writeTo(SVG.PathDefinition pathDefinition) {
        getSerializedSize();
        for (int i = 0; i < this.effect_.size(); i++) {
            pathDefinition.writeMessage(1, (AbstractMessageLite) this.effect_.get(i));
        }
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.Builder implements MessageLiteOrBuilder {
        public final /* synthetic */ int $r8$classId;
        public int bitField0_;
        public List effect_;

        public /* synthetic */ Builder(int i) {
            this.$r8$classId = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            switch (this.$r8$classId) {
                case 0:
                    ProtoBuf$Contract buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw new HttpException(false);
                case 1:
                    ProtoBuf$QualifiedNameTable m830buildPartial = m830buildPartial();
                    if (m830buildPartial.isInitialized()) {
                        return m830buildPartial;
                    }
                    throw new HttpException(false);
                case 2:
                    ProtoBuf$VersionRequirementTable m832buildPartial = m832buildPartial();
                    if (m832buildPartial.isInitialized()) {
                        return m832buildPartial;
                    }
                    throw new HttpException(false);
                default:
                    ProtoBuf$StringTable m831buildPartial = m831buildPartial();
                    if (m831buildPartial.isInitialized()) {
                        return m831buildPartial;
                    }
                    throw new HttpException(false);
            }
        }

        /* renamed from: buildPartial, reason: collision with other method in class */
        public ProtoBuf$StringTable m831buildPartial() {
            ProtoBuf$StringTable protoBuf$StringTable = new ProtoBuf$StringTable(this);
            if ((this.bitField0_ & 1) == 1) {
                this.effect_ = ((LazyStringList) this.effect_).getUnmodifiableView();
                this.bitField0_ &= -2;
            }
            protoBuf$StringTable.string_ = (LazyStringList) this.effect_;
            return protoBuf$StringTable;
        }

        public final Object clone() {
            switch (this.$r8$classId) {
                case 0:
                    Builder builder = new Builder(0);
                    builder.effect_ = Collections.EMPTY_LIST;
                    builder.mergeFrom(buildPartial());
                    return builder;
                case 1:
                    Builder builder2 = new Builder(1);
                    builder2.effect_ = Collections.EMPTY_LIST;
                    builder2.mergeFrom(m830buildPartial());
                    return builder2;
                case 2:
                    Builder builder3 = new Builder(2);
                    builder3.effect_ = Collections.EMPTY_LIST;
                    builder3.mergeFrom(m832buildPartial());
                    return builder3;
                default:
                    Builder builder4 = new Builder(3);
                    builder4.effect_ = LazyStringArrayList.EMPTY;
                    builder4.mergeFrom(m831buildPartial());
                    return builder4;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0020  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x007a  */
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
                    case 0: goto L60;
                    case 1: goto L42;
                    case 2: goto L24;
                    default: goto L6;
                }
            L6:
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r4 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable.PARSER     // Catch: java.lang.Throwable -> L14 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L16
                r4.getClass()     // Catch: java.lang.Throwable -> L14 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L16
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable r4 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable     // Catch: java.lang.Throwable -> L14 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L16
                r4.<init>(r3)     // Catch: java.lang.Throwable -> L14 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L16
                r2.mergeFrom(r4)
                return r2
            L14:
                r3 = move-exception
                goto L1e
            L16:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> L14
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable) r4     // Catch: java.lang.Throwable -> L14
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r0 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable.PARSER     // Catch: java.lang.Throwable -> L32 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L34
                r0.getClass()     // Catch: java.lang.Throwable -> L32 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L34
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable r0 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable     // Catch: java.lang.Throwable -> L32 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L34
                r0.<init>(r3, r4)     // Catch: java.lang.Throwable -> L32 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L34
                r2.mergeFrom(r0)
                return r2
            L32:
                r3 = move-exception
                goto L3c
            L34:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> L32
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable) r4     // Catch: java.lang.Throwable -> L32
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r0 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable.PARSER     // Catch: java.lang.Throwable -> L50 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L52
                r0.getClass()     // Catch: java.lang.Throwable -> L50 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L52
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable r0 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable     // Catch: java.lang.Throwable -> L50 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L52
                r0.<init>(r3, r4)     // Catch: java.lang.Throwable -> L50 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L52
                r2.mergeFrom(r0)
                return r2
            L50:
                r3 = move-exception
                goto L5a
            L52:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> L50
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable) r4     // Catch: java.lang.Throwable -> L50
                throw r3     // Catch: java.lang.Throwable -> L58
            L58:
                r3 = move-exception
                r1 = r4
            L5a:
                if (r1 == 0) goto L5f
                r2.mergeFrom(r1)
            L5f:
                throw r3
            L60:
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r0 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract.PARSER     // Catch: java.lang.Throwable -> L6e kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L70
                r0.getClass()     // Catch: java.lang.Throwable -> L6e kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L70
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract r0 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract     // Catch: java.lang.Throwable -> L6e kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L70
                r0.<init>(r3, r4)     // Catch: java.lang.Throwable -> L6e kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L70
                r2.mergeFrom(r0)
                return r2
            L6e:
                r3 = move-exception
                goto L78
            L70:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> L6e
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract) r4     // Catch: java.lang.Throwable -> L6e
                throw r3     // Catch: java.lang.Throwable -> L76
            L76:
                r3 = move-exception
                r1 = r4
            L78:
                if (r1 == 0) goto L7d
                r2.mergeFrom(r1)
            L7d:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }

        /* renamed from: buildPartial, reason: collision with other method in class */
        public ProtoBuf$QualifiedNameTable m830buildPartial() {
            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = new ProtoBuf$QualifiedNameTable(this);
            if ((this.bitField0_ & 1) == 1) {
                this.effect_ = DesugarCollections.unmodifiableList(this.effect_);
                this.bitField0_ &= -2;
            }
            protoBuf$QualifiedNameTable.qualifiedName_ = this.effect_;
            return protoBuf$QualifiedNameTable;
        }

        /* renamed from: buildPartial, reason: collision with other method in class */
        public ProtoBuf$VersionRequirementTable m832buildPartial() {
            ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = new ProtoBuf$VersionRequirementTable(this);
            if ((this.bitField0_ & 1) == 1) {
                this.effect_ = DesugarCollections.unmodifiableList(this.effect_);
                this.bitField0_ &= -2;
            }
            protoBuf$VersionRequirementTable.requirement_ = this.effect_;
            return protoBuf$VersionRequirementTable;
        }

        public ProtoBuf$Contract buildPartial() {
            ProtoBuf$Contract protoBuf$Contract = new ProtoBuf$Contract(this);
            if ((this.bitField0_ & 1) == 1) {
                this.effect_ = DesugarCollections.unmodifiableList(this.effect_);
                this.bitField0_ &= -2;
            }
            protoBuf$Contract.effect_ = this.effect_;
            return protoBuf$Contract;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            switch (this.$r8$classId) {
                case 0:
                    mergeFrom((ProtoBuf$Contract) generatedMessageLite);
                    break;
                case 1:
                    mergeFrom((ProtoBuf$QualifiedNameTable) generatedMessageLite);
                    break;
                case 2:
                    mergeFrom((ProtoBuf$VersionRequirementTable) generatedMessageLite);
                    break;
                default:
                    mergeFrom((ProtoBuf$StringTable) generatedMessageLite);
                    break;
            }
            return this;
        }

        public void mergeFrom(ProtoBuf$StringTable protoBuf$StringTable) {
            if (protoBuf$StringTable == ProtoBuf$StringTable.defaultInstance) {
                return;
            }
            if (!protoBuf$StringTable.string_.isEmpty()) {
                if (((LazyStringList) this.effect_).isEmpty()) {
                    this.effect_ = protoBuf$StringTable.string_;
                    this.bitField0_ &= -2;
                } else {
                    if ((this.bitField0_ & 1) != 1) {
                        this.effect_ = new LazyStringArrayList((LazyStringList) this.effect_);
                        this.bitField0_ |= 1;
                    }
                    ((LazyStringList) this.effect_).addAll(protoBuf$StringTable.string_);
                }
            }
            this.unknownFields = this.unknownFields.concat(protoBuf$StringTable.unknownFields);
        }

        public void mergeFrom(ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable) {
            if (protoBuf$QualifiedNameTable == ProtoBuf$QualifiedNameTable.defaultInstance) {
                return;
            }
            if (!protoBuf$QualifiedNameTable.qualifiedName_.isEmpty()) {
                if (this.effect_.isEmpty()) {
                    this.effect_ = protoBuf$QualifiedNameTable.qualifiedName_;
                    this.bitField0_ &= -2;
                } else {
                    if ((this.bitField0_ & 1) != 1) {
                        this.effect_ = new ArrayList(this.effect_);
                        this.bitField0_ |= 1;
                    }
                    this.effect_.addAll(protoBuf$QualifiedNameTable.qualifiedName_);
                }
            }
            this.unknownFields = this.unknownFields.concat(protoBuf$QualifiedNameTable.unknownFields);
        }

        public void mergeFrom(ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable) {
            if (protoBuf$VersionRequirementTable == ProtoBuf$VersionRequirementTable.defaultInstance) {
                return;
            }
            if (!protoBuf$VersionRequirementTable.requirement_.isEmpty()) {
                if (this.effect_.isEmpty()) {
                    this.effect_ = protoBuf$VersionRequirementTable.requirement_;
                    this.bitField0_ &= -2;
                } else {
                    if ((this.bitField0_ & 1) != 1) {
                        this.effect_ = new ArrayList(this.effect_);
                        this.bitField0_ |= 1;
                    }
                    this.effect_.addAll(protoBuf$VersionRequirementTable.requirement_);
                }
            }
            this.unknownFields = this.unknownFields.concat(protoBuf$VersionRequirementTable.unknownFields);
        }

        public void mergeFrom(ProtoBuf$Contract protoBuf$Contract) {
            if (protoBuf$Contract == ProtoBuf$Contract.defaultInstance) {
                return;
            }
            if (!protoBuf$Contract.effect_.isEmpty()) {
                if (this.effect_.isEmpty()) {
                    this.effect_ = protoBuf$Contract.effect_;
                    this.bitField0_ &= -2;
                } else {
                    if ((this.bitField0_ & 1) != 1) {
                        this.effect_ = new ArrayList(this.effect_);
                        this.bitField0_ |= 1;
                    }
                    this.effect_.addAll(protoBuf$Contract.effect_);
                }
            }
            this.unknownFields = this.unknownFields.concat(protoBuf$Contract.unknownFields);
        }
    }

    public ProtoBuf$Contract(Builder builder) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }

    public ProtoBuf$Contract() {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }
}
