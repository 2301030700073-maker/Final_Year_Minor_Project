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
public final class ProtoBuf$Package extends GeneratedMessageLite.ExtendableMessage {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(11);
    public static final ProtoBuf$Package defaultInstance;
    public int bitField0_;
    public List function_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public List property_;
    public List typeAlias_;
    public ProtoBuf$TypeTable typeTable_;
    public final ByteString unknownFields;
    public ProtoBuf$VersionRequirementTable versionRequirementTable_;

    static {
        ProtoBuf$Package protoBuf$Package = new ProtoBuf$Package();
        defaultInstance = protoBuf$Package;
        List list = Collections.EMPTY_LIST;
        protoBuf$Package.function_ = list;
        protoBuf$Package.property_ = list;
        protoBuf$Package.typeAlias_ = list;
        protoBuf$Package.typeTable_ = ProtoBuf$TypeTable.defaultInstance;
        protoBuf$Package.versionRequirementTable_ = ProtoBuf$VersionRequirementTable.defaultInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8 */
    public ProtoBuf$Package(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        List list = Collections.EMPTY_LIST;
        this.function_ = list;
        this.property_ = list;
        this.typeAlias_ = list;
        this.typeTable_ = ProtoBuf$TypeTable.defaultInstance;
        this.versionRequirementTable_ = ProtoBuf$VersionRequirementTable.defaultInstance;
        ByteString.Output output = new ByteString.Output();
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
        boolean z = false;
        char c = 0;
        while (true) {
            int i = 2;
            if (z) {
                break;
            }
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    if (readTag != 0) {
                        if (readTag == 26) {
                            int i2 = (c == true ? 1 : 0) & 1;
                            c = c;
                            if (i2 != 1) {
                                this.function_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 1;
                            }
                            this.function_.add(codedInputStream.readMessage(ProtoBuf$Function.PARSER, extensionRegistryLite));
                        } else if (readTag == 34) {
                            int i3 = (c == true ? 1 : 0) & 2;
                            c = c;
                            if (i3 != 2) {
                                this.property_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 2;
                            }
                            this.property_.add(codedInputStream.readMessage(ProtoBuf$Property.PARSER, extensionRegistryLite));
                        } else if (readTag != 42) {
                            ProtoBuf$Contract.Builder builder = null;
                            ProtoBuf$TypeTable.Builder builder2 = null;
                            if (readTag == 242) {
                                if ((this.bitField0_ & 1) == 1) {
                                    ProtoBuf$TypeTable protoBuf$TypeTable = this.typeTable_;
                                    protoBuf$TypeTable.getClass();
                                    builder2 = ProtoBuf$TypeTable.newBuilder(protoBuf$TypeTable);
                                }
                                ProtoBuf$TypeTable protoBuf$TypeTable2 = (ProtoBuf$TypeTable) codedInputStream.readMessage(ProtoBuf$TypeTable.PARSER, extensionRegistryLite);
                                this.typeTable_ = protoBuf$TypeTable2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(protoBuf$TypeTable2);
                                    this.typeTable_ = builder2.m834buildPartial();
                                }
                                this.bitField0_ |= 1;
                            } else if (readTag == 258) {
                                if ((this.bitField0_ & 2) == 2) {
                                    ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = this.versionRequirementTable_;
                                    protoBuf$VersionRequirementTable.getClass();
                                    builder = new ProtoBuf$Contract.Builder(i);
                                    builder.effect_ = Collections.EMPTY_LIST;
                                    builder.mergeFrom(protoBuf$VersionRequirementTable);
                                }
                                ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable2 = (ProtoBuf$VersionRequirementTable) codedInputStream.readMessage(ProtoBuf$VersionRequirementTable.PARSER, extensionRegistryLite);
                                this.versionRequirementTable_ = protoBuf$VersionRequirementTable2;
                                if (builder != null) {
                                    builder.mergeFrom(protoBuf$VersionRequirementTable2);
                                    this.versionRequirementTable_ = builder.m832buildPartial();
                                }
                                this.bitField0_ |= 2;
                            } else if (!parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                            }
                        } else {
                            int i4 = (c == true ? 1 : 0) & 4;
                            c = c;
                            if (i4 != 4) {
                                this.typeAlias_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 4;
                            }
                            this.typeAlias_.add(codedInputStream.readMessage(ProtoBuf$TypeAlias.PARSER, extensionRegistryLite));
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (((c == true ? 1 : 0) & 1) == 1) {
                        this.function_ = DesugarCollections.unmodifiableList(this.function_);
                    }
                    if (((c == true ? 1 : 0) & 2) == 2) {
                        this.property_ = DesugarCollections.unmodifiableList(this.property_);
                    }
                    if (((c == true ? 1 : 0) & 4) == 4) {
                        this.typeAlias_ = DesugarCollections.unmodifiableList(this.typeAlias_);
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
        if (((c == true ? 1 : 0) & 1) == 1) {
            this.function_ = DesugarCollections.unmodifiableList(this.function_);
        }
        if (((c == true ? 1 : 0) & 2) == 2) {
            this.property_ = DesugarCollections.unmodifiableList(this.property_);
        }
        if (((c == true ? 1 : 0) & 4) == 4) {
            this.typeAlias_ = DesugarCollections.unmodifiableList(this.typeAlias_);
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
        for (int i3 = 0; i3 < this.function_.size(); i3++) {
            i2 += SVG.PathDefinition.computeMessageSize(3, (AbstractMessageLite) this.function_.get(i3));
        }
        for (int i4 = 0; i4 < this.property_.size(); i4++) {
            i2 += SVG.PathDefinition.computeMessageSize(4, (AbstractMessageLite) this.property_.get(i4));
        }
        for (int i5 = 0; i5 < this.typeAlias_.size(); i5++) {
            i2 += SVG.PathDefinition.computeMessageSize(5, (AbstractMessageLite) this.typeAlias_.get(i5));
        }
        if ((this.bitField0_ & 1) == 1) {
            i2 += SVG.PathDefinition.computeMessageSize(30, this.typeTable_);
        }
        if ((this.bitField0_ & 2) == 2) {
            i2 += SVG.PathDefinition.computeMessageSize(32, this.versionRequirementTable_);
        }
        int size = this.unknownFields.size() + extensionsSerializedSize() + i2;
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
        for (int i = 0; i < this.function_.size(); i++) {
            if (!((ProtoBuf$Function) this.function_.get(i)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i2 = 0; i2 < this.property_.size(); i2++) {
            if (!((ProtoBuf$Property) this.property_.get(i2)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i3 = 0; i3 < this.typeAlias_.size(); i3++) {
            if (!((ProtoBuf$TypeAlias) this.typeAlias_.get(i3)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if ((this.bitField0_ & 1) == 1 && !this.typeTable_.isInitialized()) {
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
        for (int i = 0; i < this.function_.size(); i++) {
            pathDefinition.writeMessage(3, (AbstractMessageLite) this.function_.get(i));
        }
        for (int i2 = 0; i2 < this.property_.size(); i2++) {
            pathDefinition.writeMessage(4, (AbstractMessageLite) this.property_.get(i2));
        }
        for (int i3 = 0; i3 < this.typeAlias_.size(); i3++) {
            pathDefinition.writeMessage(5, (AbstractMessageLite) this.typeAlias_.get(i3));
        }
        if ((this.bitField0_ & 1) == 1) {
            pathDefinition.writeMessage(30, this.typeTable_);
        }
        if ((this.bitField0_ & 2) == 2) {
            pathDefinition.writeMessage(32, this.versionRequirementTable_);
        }
        builder.writeUntil(200, pathDefinition);
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.ExtendableBuilder {
        public int bitField0_;
        public List function_;
        public List property_;
        public List typeAlias_;
        public ProtoBuf$TypeTable typeTable_;
        public ProtoBuf$VersionRequirementTable versionRequirementTable_;

        public static Builder create() {
            Builder builder = new Builder();
            List list = Collections.EMPTY_LIST;
            builder.function_ = list;
            builder.property_ = list;
            builder.typeAlias_ = list;
            builder.typeTable_ = ProtoBuf$TypeTable.defaultInstance;
            builder.versionRequirementTable_ = ProtoBuf$VersionRequirementTable.defaultInstance;
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            ProtoBuf$Package buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw new HttpException(false);
        }

        public final ProtoBuf$Package buildPartial() {
            int i;
            ProtoBuf$Package protoBuf$Package = new ProtoBuf$Package(this);
            int i2 = this.bitField0_;
            if ((i2 & 1) == 1) {
                this.function_ = DesugarCollections.unmodifiableList(this.function_);
                i = this.bitField0_ & (-2);
                this.bitField0_ = i;
            } else {
                i = i2;
            }
            protoBuf$Package.function_ = this.function_;
            if ((i & 2) == 2) {
                this.property_ = DesugarCollections.unmodifiableList(this.property_);
                i = this.bitField0_ & (-3);
                this.bitField0_ = i;
            }
            protoBuf$Package.property_ = this.property_;
            if ((i & 4) == 4) {
                this.typeAlias_ = DesugarCollections.unmodifiableList(this.typeAlias_);
                this.bitField0_ &= -5;
            }
            protoBuf$Package.typeAlias_ = this.typeAlias_;
            int i3 = (i2 & 8) != 8 ? 0 : 1;
            protoBuf$Package.typeTable_ = this.typeTable_;
            if ((i2 & 16) == 16) {
                i3 |= 2;
            }
            protoBuf$Package.versionRequirementTable_ = this.versionRequirementTable_;
            protoBuf$Package.bitField0_ = i3;
            return protoBuf$Package;
        }

        public final Object clone() {
            Builder create = create();
            create.mergeFrom(buildPartial());
            return create;
        }

        public final void mergeFrom(ProtoBuf$Package protoBuf$Package) {
            ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable;
            ProtoBuf$TypeTable protoBuf$TypeTable;
            if (protoBuf$Package == ProtoBuf$Package.defaultInstance) {
                return;
            }
            if (!protoBuf$Package.function_.isEmpty()) {
                if (this.function_.isEmpty()) {
                    this.function_ = protoBuf$Package.function_;
                    this.bitField0_ &= -2;
                } else {
                    if ((this.bitField0_ & 1) != 1) {
                        this.function_ = new ArrayList(this.function_);
                        this.bitField0_ |= 1;
                    }
                    this.function_.addAll(protoBuf$Package.function_);
                }
            }
            int i = 2;
            if (!protoBuf$Package.property_.isEmpty()) {
                if (this.property_.isEmpty()) {
                    this.property_ = protoBuf$Package.property_;
                    this.bitField0_ &= -3;
                } else {
                    if ((this.bitField0_ & 2) != 2) {
                        this.property_ = new ArrayList(this.property_);
                        this.bitField0_ |= 2;
                    }
                    this.property_.addAll(protoBuf$Package.property_);
                }
            }
            if (!protoBuf$Package.typeAlias_.isEmpty()) {
                if (this.typeAlias_.isEmpty()) {
                    this.typeAlias_ = protoBuf$Package.typeAlias_;
                    this.bitField0_ &= -5;
                } else {
                    if ((this.bitField0_ & 4) != 4) {
                        this.typeAlias_ = new ArrayList(this.typeAlias_);
                        this.bitField0_ |= 4;
                    }
                    this.typeAlias_.addAll(protoBuf$Package.typeAlias_);
                }
            }
            if ((protoBuf$Package.bitField0_ & 1) == 1) {
                ProtoBuf$TypeTable protoBuf$TypeTable2 = protoBuf$Package.typeTable_;
                if ((this.bitField0_ & 8) != 8 || (protoBuf$TypeTable = this.typeTable_) == ProtoBuf$TypeTable.defaultInstance) {
                    this.typeTable_ = protoBuf$TypeTable2;
                } else {
                    ProtoBuf$TypeTable.Builder newBuilder = ProtoBuf$TypeTable.newBuilder(protoBuf$TypeTable);
                    newBuilder.mergeFrom(protoBuf$TypeTable2);
                    this.typeTable_ = newBuilder.m834buildPartial();
                }
                this.bitField0_ |= 8;
            }
            if ((protoBuf$Package.bitField0_ & 2) == 2) {
                ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable2 = protoBuf$Package.versionRequirementTable_;
                if ((this.bitField0_ & 16) != 16 || (protoBuf$VersionRequirementTable = this.versionRequirementTable_) == ProtoBuf$VersionRequirementTable.defaultInstance) {
                    this.versionRequirementTable_ = protoBuf$VersionRequirementTable2;
                } else {
                    ProtoBuf$Contract.Builder builder = new ProtoBuf$Contract.Builder(i);
                    builder.effect_ = Collections.EMPTY_LIST;
                    builder.mergeFrom(protoBuf$VersionRequirementTable);
                    builder.mergeFrom(protoBuf$VersionRequirementTable2);
                    this.versionRequirementTable_ = builder.m832buildPartial();
                }
                this.bitField0_ |= 16;
            }
            mergeExtensionFields(protoBuf$Package);
            this.unknownFields = this.unknownFields.concat(protoBuf$Package.unknownFields);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            mergeFrom((ProtoBuf$Package) generatedMessageLite);
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package r1 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r2.mergeFrom(r1)
                return r2
            Lf:
                r3 = move-exception
                goto L19
            L11:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }
    }

    public ProtoBuf$Package() {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }

    public ProtoBuf$Package(Builder builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }
}
