package kotlin.reflect.jvm.internal.impl.metadata;

import coil3.network.HttpException;
import com.caverock.androidsvg.SVG;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.LazyStringArrayList;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$PackageFragment extends GeneratedMessageLite.ExtendableMessage {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(12);
    public static final ProtoBuf$PackageFragment defaultInstance;
    public int bitField0_;
    public List class__;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public ProtoBuf$Package package_;
    public ProtoBuf$QualifiedNameTable qualifiedNames_;
    public ProtoBuf$StringTable strings_;
    public final ByteString unknownFields;

    static {
        ProtoBuf$PackageFragment protoBuf$PackageFragment = new ProtoBuf$PackageFragment();
        defaultInstance = protoBuf$PackageFragment;
        protoBuf$PackageFragment.strings_ = ProtoBuf$StringTable.defaultInstance;
        protoBuf$PackageFragment.qualifiedNames_ = ProtoBuf$QualifiedNameTable.defaultInstance;
        protoBuf$PackageFragment.package_ = ProtoBuf$Package.defaultInstance;
        protoBuf$PackageFragment.class__ = Collections.EMPTY_LIST;
    }

    public ProtoBuf$PackageFragment(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.strings_ = ProtoBuf$StringTable.defaultInstance;
        this.qualifiedNames_ = ProtoBuf$QualifiedNameTable.defaultInstance;
        this.package_ = ProtoBuf$Package.defaultInstance;
        this.class__ = Collections.EMPTY_LIST;
        ByteString.Output output = new ByteString.Output();
        int i = 1;
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
        boolean z = false;
        char c = 0;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    if (readTag != 0) {
                        ProtoBuf$Package.Builder builder = null;
                        ProtoBuf$Contract.Builder builder2 = null;
                        ProtoBuf$Contract.Builder builder3 = null;
                        if (readTag == 10) {
                            if ((this.bitField0_ & 1) == 1) {
                                ProtoBuf$StringTable protoBuf$StringTable = this.strings_;
                                protoBuf$StringTable.getClass();
                                builder2 = new ProtoBuf$Contract.Builder(3);
                                builder2.effect_ = LazyStringArrayList.EMPTY;
                                builder2.mergeFrom(protoBuf$StringTable);
                            }
                            ProtoBuf$StringTable protoBuf$StringTable2 = (ProtoBuf$StringTable) codedInputStream.readMessage(ProtoBuf$StringTable.PARSER, extensionRegistryLite);
                            this.strings_ = protoBuf$StringTable2;
                            if (builder2 != null) {
                                builder2.mergeFrom(protoBuf$StringTable2);
                                this.strings_ = builder2.m831buildPartial();
                            }
                            this.bitField0_ |= 1;
                        } else if (readTag == 18) {
                            if ((this.bitField0_ & 2) == 2) {
                                ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = this.qualifiedNames_;
                                protoBuf$QualifiedNameTable.getClass();
                                builder3 = new ProtoBuf$Contract.Builder(i);
                                builder3.effect_ = Collections.EMPTY_LIST;
                                builder3.mergeFrom(protoBuf$QualifiedNameTable);
                            }
                            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable2 = (ProtoBuf$QualifiedNameTable) codedInputStream.readMessage(ProtoBuf$QualifiedNameTable.PARSER, extensionRegistryLite);
                            this.qualifiedNames_ = protoBuf$QualifiedNameTable2;
                            if (builder3 != null) {
                                builder3.mergeFrom(protoBuf$QualifiedNameTable2);
                                this.qualifiedNames_ = builder3.m830buildPartial();
                            }
                            this.bitField0_ |= 2;
                        } else if (readTag == 26) {
                            if ((this.bitField0_ & 4) == 4) {
                                ProtoBuf$Package protoBuf$Package = this.package_;
                                protoBuf$Package.getClass();
                                builder = ProtoBuf$Package.Builder.create();
                                builder.mergeFrom(protoBuf$Package);
                            }
                            ProtoBuf$Package protoBuf$Package2 = (ProtoBuf$Package) codedInputStream.readMessage(ProtoBuf$Package.PARSER, extensionRegistryLite);
                            this.package_ = protoBuf$Package2;
                            if (builder != null) {
                                builder.mergeFrom(protoBuf$Package2);
                                this.package_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 4;
                        } else if (readTag == 34) {
                            int i2 = (c == true ? 1 : 0) & '\b';
                            c = c;
                            if (i2 != 8) {
                                this.class__ = new ArrayList();
                                c = '\b';
                            }
                            this.class__.add(codedInputStream.readMessage(ProtoBuf$Class.PARSER, extensionRegistryLite));
                        } else if (!parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (((c == true ? 1 : 0) & '\b') == 8) {
                        this.class__ = DesugarCollections.unmodifiableList(this.class__);
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
        if (((c == true ? 1 : 0) & '\b') == 8) {
            this.class__ = DesugarCollections.unmodifiableList(this.class__);
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
        int computeMessageSize = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeMessageSize(1, this.strings_) : 0;
        if ((this.bitField0_ & 2) == 2) {
            computeMessageSize += SVG.PathDefinition.computeMessageSize(2, this.qualifiedNames_);
        }
        if ((this.bitField0_ & 4) == 4) {
            computeMessageSize += SVG.PathDefinition.computeMessageSize(3, this.package_);
        }
        for (int i2 = 0; i2 < this.class__.size(); i2++) {
            computeMessageSize += SVG.PathDefinition.computeMessageSize(4, (AbstractMessageLite) this.class__.get(i2));
        }
        int size = this.unknownFields.size() + extensionsSerializedSize() + computeMessageSize;
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
        if ((this.bitField0_ & 2) == 2 && !this.qualifiedNames_.isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if ((this.bitField0_ & 4) == 4 && !this.package_.isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < this.class__.size(); i++) {
            if (!((ProtoBuf$Class) this.class__.get(i)).isInitialized()) {
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
        if ((this.bitField0_ & 1) == 1) {
            pathDefinition.writeMessage(1, this.strings_);
        }
        if ((this.bitField0_ & 2) == 2) {
            pathDefinition.writeMessage(2, this.qualifiedNames_);
        }
        if ((this.bitField0_ & 4) == 4) {
            pathDefinition.writeMessage(3, this.package_);
        }
        for (int i = 0; i < this.class__.size(); i++) {
            pathDefinition.writeMessage(4, (AbstractMessageLite) this.class__.get(i));
        }
        builder.writeUntil(200, pathDefinition);
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.ExtendableBuilder {
        public int bitField0_;
        public List class__;
        public ProtoBuf$Package package_;
        public ProtoBuf$QualifiedNameTable qualifiedNames_;
        public ProtoBuf$StringTable strings_;

        public static Builder create() {
            Builder builder = new Builder();
            builder.strings_ = ProtoBuf$StringTable.defaultInstance;
            builder.qualifiedNames_ = ProtoBuf$QualifiedNameTable.defaultInstance;
            builder.package_ = ProtoBuf$Package.defaultInstance;
            builder.class__ = Collections.EMPTY_LIST;
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            ProtoBuf$PackageFragment buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw new HttpException(false);
        }

        public final ProtoBuf$PackageFragment buildPartial() {
            ProtoBuf$PackageFragment protoBuf$PackageFragment = new ProtoBuf$PackageFragment(this);
            int i = this.bitField0_;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$PackageFragment.strings_ = this.strings_;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$PackageFragment.qualifiedNames_ = this.qualifiedNames_;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$PackageFragment.package_ = this.package_;
            if ((i & 8) == 8) {
                this.class__ = DesugarCollections.unmodifiableList(this.class__);
                this.bitField0_ &= -9;
            }
            protoBuf$PackageFragment.class__ = this.class__;
            protoBuf$PackageFragment.bitField0_ = i2;
            return protoBuf$PackageFragment;
        }

        public final Object clone() {
            Builder create = create();
            create.mergeFrom(buildPartial());
            return create;
        }

        public final void mergeFrom(ProtoBuf$PackageFragment protoBuf$PackageFragment) {
            ProtoBuf$Package protoBuf$Package;
            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable;
            ProtoBuf$StringTable protoBuf$StringTable;
            if (protoBuf$PackageFragment == ProtoBuf$PackageFragment.defaultInstance) {
                return;
            }
            int i = 1;
            if ((protoBuf$PackageFragment.bitField0_ & 1) == 1) {
                ProtoBuf$StringTable protoBuf$StringTable2 = protoBuf$PackageFragment.strings_;
                if ((this.bitField0_ & 1) != 1 || (protoBuf$StringTable = this.strings_) == ProtoBuf$StringTable.defaultInstance) {
                    this.strings_ = protoBuf$StringTable2;
                } else {
                    ProtoBuf$Contract.Builder builder = new ProtoBuf$Contract.Builder(3);
                    builder.effect_ = LazyStringArrayList.EMPTY;
                    builder.mergeFrom(protoBuf$StringTable);
                    builder.mergeFrom(protoBuf$StringTable2);
                    this.strings_ = builder.m831buildPartial();
                }
                this.bitField0_ |= 1;
            }
            if ((protoBuf$PackageFragment.bitField0_ & 2) == 2) {
                ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable2 = protoBuf$PackageFragment.qualifiedNames_;
                if ((this.bitField0_ & 2) != 2 || (protoBuf$QualifiedNameTable = this.qualifiedNames_) == ProtoBuf$QualifiedNameTable.defaultInstance) {
                    this.qualifiedNames_ = protoBuf$QualifiedNameTable2;
                } else {
                    ProtoBuf$Contract.Builder builder2 = new ProtoBuf$Contract.Builder(i);
                    builder2.effect_ = Collections.EMPTY_LIST;
                    builder2.mergeFrom(protoBuf$QualifiedNameTable);
                    builder2.mergeFrom(protoBuf$QualifiedNameTable2);
                    this.qualifiedNames_ = builder2.m830buildPartial();
                }
                this.bitField0_ |= 2;
            }
            if ((protoBuf$PackageFragment.bitField0_ & 4) == 4) {
                ProtoBuf$Package protoBuf$Package2 = protoBuf$PackageFragment.package_;
                if ((this.bitField0_ & 4) != 4 || (protoBuf$Package = this.package_) == ProtoBuf$Package.defaultInstance) {
                    this.package_ = protoBuf$Package2;
                } else {
                    ProtoBuf$Package.Builder create = ProtoBuf$Package.Builder.create();
                    create.mergeFrom(protoBuf$Package);
                    create.mergeFrom(protoBuf$Package2);
                    this.package_ = create.buildPartial();
                }
                this.bitField0_ |= 4;
            }
            if (!protoBuf$PackageFragment.class__.isEmpty()) {
                if (this.class__.isEmpty()) {
                    this.class__ = protoBuf$PackageFragment.class__;
                    this.bitField0_ &= -9;
                } else {
                    if ((this.bitField0_ & 8) != 8) {
                        this.class__ = new ArrayList(this.class__);
                        this.bitField0_ |= 8;
                    }
                    this.class__.addAll(protoBuf$PackageFragment.class__);
                }
            }
            mergeExtensionFields(protoBuf$PackageFragment);
            this.unknownFields = this.unknownFields.concat(protoBuf$PackageFragment.unknownFields);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            mergeFrom((ProtoBuf$PackageFragment) generatedMessageLite);
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment r1 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r2.mergeFrom(r1)
                return r2
            Lf:
                r3 = move-exception
                goto L19
            L11:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }
    }

    public ProtoBuf$PackageFragment() {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }

    public ProtoBuf$PackageFragment(Builder builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }
}
