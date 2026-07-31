package kotlin.reflect.jvm.internal.impl.metadata;

import androidx.collection.internal.Lock;
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
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoBuf$Class extends GeneratedMessageLite.ExtendableMessage {
    public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(4);
    public static final ProtoBuf$Class defaultInstance;
    public int bitField0_;
    public int companionObjectName_;
    public List constructor_;
    public int contextReceiverTypeIdMemoizedSerializedSize;
    public List contextReceiverTypeId_;
    public List contextReceiverType_;
    public List enumEntry_;
    public int flags_;
    public int fqName_;
    public List function_;
    public int inlineClassUnderlyingPropertyName_;
    public int inlineClassUnderlyingTypeId_;
    public ProtoBuf$Type inlineClassUnderlyingType_;
    public byte memoizedIsInitialized;
    public int memoizedSerializedSize;
    public int multiFieldValueClassUnderlyingNameMemoizedSerializedSize;
    public List multiFieldValueClassUnderlyingName_;
    public int multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize;
    public List multiFieldValueClassUnderlyingTypeId_;
    public List multiFieldValueClassUnderlyingType_;
    public int nestedClassNameMemoizedSerializedSize;
    public List nestedClassName_;
    public List property_;
    public int sealedSubclassFqNameMemoizedSerializedSize;
    public List sealedSubclassFqName_;
    public int supertypeIdMemoizedSerializedSize;
    public List supertypeId_;
    public List supertype_;
    public List typeAlias_;
    public List typeParameter_;
    public ProtoBuf$TypeTable typeTable_;
    public final ByteString unknownFields;
    public ProtoBuf$VersionRequirementTable versionRequirementTable_;
    public List versionRequirement_;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public enum Kind implements Internal.EnumLite {
        CLASS(0),
        INTERFACE(1),
        ENUM_CLASS(2),
        ENUM_ENTRY(3),
        ANNOTATION_CLASS(4),
        OBJECT(5),
        COMPANION_OBJECT(6);

        private static Internal.EnumLiteMap internalValueMap = new Lock(29);
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
        ProtoBuf$Class protoBuf$Class = new ProtoBuf$Class();
        defaultInstance = protoBuf$Class;
        protoBuf$Class.initFields$3();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v35 */
    /* JADX WARN: Type inference failed for: r7v37 */
    /* JADX WARN: Type inference failed for: r7v39 */
    /* JADX WARN: Type inference failed for: r7v41 */
    /* JADX WARN: Type inference failed for: r7v43 */
    /* JADX WARN: Type inference failed for: r7v45 */
    /* JADX WARN: Type inference failed for: r7v47 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v9 */
    public ProtoBuf$Class(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        ProtoBuf$Contract.Builder builder;
        this.supertypeIdMemoizedSerializedSize = -1;
        this.nestedClassNameMemoizedSerializedSize = -1;
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.sealedSubclassFqNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields$3();
        ByteString.Output newOutput = ByteString.newOutput();
        boolean z = true;
        SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(newOutput, 1);
        boolean z2 = false;
        char c = 0;
        while (true) {
            boolean z3 = z;
            if (z2) {
                if (((c == true ? 1 : 0) & 32) == 32) {
                    this.supertypeId_ = DesugarCollections.unmodifiableList(this.supertypeId_);
                }
                if (((c == true ? 1 : 0) & 8) == 8) {
                    this.typeParameter_ = DesugarCollections.unmodifiableList(this.typeParameter_);
                }
                if (((c == true ? 1 : 0) & 16) == 16) {
                    this.supertype_ = DesugarCollections.unmodifiableList(this.supertype_);
                }
                if (((c == true ? 1 : 0) & 64) == 64) {
                    this.nestedClassName_ = DesugarCollections.unmodifiableList(this.nestedClassName_);
                }
                if (((c == true ? 1 : 0) & 512) == 512) {
                    this.constructor_ = DesugarCollections.unmodifiableList(this.constructor_);
                }
                if (((c == true ? 1 : 0) & 1024) == 1024) {
                    this.function_ = DesugarCollections.unmodifiableList(this.function_);
                }
                if (((c == true ? 1 : 0) & 2048) == 2048) {
                    this.property_ = DesugarCollections.unmodifiableList(this.property_);
                }
                if (((c == true ? 1 : 0) & 4096) == 4096) {
                    this.typeAlias_ = DesugarCollections.unmodifiableList(this.typeAlias_);
                }
                if (((c == true ? 1 : 0) & 8192) == 8192) {
                    this.enumEntry_ = DesugarCollections.unmodifiableList(this.enumEntry_);
                }
                if (((c == true ? 1 : 0) & 16384) == 16384) {
                    this.sealedSubclassFqName_ = DesugarCollections.unmodifiableList(this.sealedSubclassFqName_);
                }
                if (((c == true ? 1 : 0) & 128) == 128) {
                    this.contextReceiverType_ = DesugarCollections.unmodifiableList(this.contextReceiverType_);
                }
                if (((c == true ? 1 : 0) & 256) == 256) {
                    this.contextReceiverTypeId_ = DesugarCollections.unmodifiableList(this.contextReceiverTypeId_);
                }
                if (((c == true ? 1 : 0) & 262144) == 262144) {
                    this.multiFieldValueClassUnderlyingName_ = DesugarCollections.unmodifiableList(this.multiFieldValueClassUnderlyingName_);
                }
                if (((c == true ? 1 : 0) & 524288) == 524288) {
                    this.multiFieldValueClassUnderlyingType_ = DesugarCollections.unmodifiableList(this.multiFieldValueClassUnderlyingType_);
                }
                if (((c == true ? 1 : 0) & 1048576) == 1048576) {
                    this.multiFieldValueClassUnderlyingTypeId_ = DesugarCollections.unmodifiableList(this.multiFieldValueClassUnderlyingTypeId_);
                }
                if (((c == true ? 1 : 0) & 4194304) == 4194304) {
                    this.versionRequirement_ = DesugarCollections.unmodifiableList(this.versionRequirement_);
                }
                try {
                    newInstance.flush();
                } catch (IOException unused) {
                } catch (Throwable th) {
                    this.unknownFields = newOutput.toByteString();
                    throw th;
                }
                this.unknownFields = newOutput.toByteString();
                makeExtensionsImmutable();
                return;
            }
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    int i = 2;
                    ProtoBuf$Type.Builder builder2 = null;
                    ProtoBuf$TypeTable.Builder builder3 = null;
                    switch (readTag) {
                        case 0:
                            z2 = z3;
                            z = z3;
                            c = c;
                        case 8:
                            this.bitField0_ |= 1;
                            this.flags_ = codedInputStream.readRawVarint32();
                            z = z3;
                            c = c;
                        case LAZY_VERTICAL_GRID_VALUE:
                            int i2 = (c == true ? 1 : 0) & 32;
                            c = c;
                            if (i2 != 32) {
                                this.supertypeId_ = new ArrayList();
                                c = (c == true ? 1 : 0) | ' ';
                            }
                            this.supertypeId_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            z = z3;
                            c = c;
                        case RADIO_GROUP_VALUE:
                            int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            int i3 = (c == true ? 1 : 0) & 32;
                            c = c;
                            if (i3 != 32) {
                                c = c;
                                if (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.supertypeId_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | ' ';
                                }
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.supertypeId_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            }
                            codedInputStream.popLimit(pushLimit);
                            z = z3;
                            c = c;
                        case 24:
                            this.bitField0_ = 2 | this.bitField0_;
                            this.fqName_ = codedInputStream.readRawVarint32();
                            z = z3;
                            c = c;
                        case 32:
                            this.bitField0_ |= 4;
                            this.companionObjectName_ = codedInputStream.readRawVarint32();
                            z = z3;
                            c = c;
                        case 42:
                            int i4 = (c == true ? 1 : 0) & 8;
                            c = c;
                            if (i4 != 8) {
                                this.typeParameter_ = new ArrayList();
                                c = (c == true ? 1 : 0) | '\b';
                            }
                            this.typeParameter_.add(codedInputStream.readMessage(ProtoBuf$TypeParameter.PARSER, extensionRegistryLite));
                            z = z3;
                            c = c;
                        case 50:
                            int i5 = (c == true ? 1 : 0) & 16;
                            c = c;
                            if (i5 != 16) {
                                this.supertype_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 16;
                            }
                            this.supertype_.add(codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite));
                            z = z3;
                            c = c;
                        case 56:
                            int i6 = (c == true ? 1 : 0) & 64;
                            c = c;
                            if (i6 != 64) {
                                this.nestedClassName_ = new ArrayList();
                                c = (c == true ? 1 : 0) | '@';
                            }
                            this.nestedClassName_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            z = z3;
                            c = c;
                        case 58:
                            int pushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            int i7 = (c == true ? 1 : 0) & 64;
                            c = c;
                            if (i7 != 64) {
                                c = c;
                                if (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.nestedClassName_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | '@';
                                }
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.nestedClassName_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            }
                            codedInputStream.popLimit(pushLimit2);
                            z = z3;
                            c = c;
                        case 66:
                            int i8 = (c == true ? 1 : 0) & 512;
                            c = c;
                            if (i8 != 512) {
                                this.constructor_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 512;
                            }
                            this.constructor_.add(codedInputStream.readMessage(ProtoBuf$Constructor.PARSER, extensionRegistryLite));
                            z = z3;
                            c = c;
                        case 74:
                            int i9 = (c == true ? 1 : 0) & 1024;
                            c = c;
                            if (i9 != 1024) {
                                this.function_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 1024;
                            }
                            this.function_.add(codedInputStream.readMessage(ProtoBuf$Function.PARSER, extensionRegistryLite));
                            z = z3;
                            c = c;
                        case 82:
                            int i10 = (c == true ? 1 : 0) & 2048;
                            c = c;
                            if (i10 != 2048) {
                                this.property_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 2048;
                            }
                            this.property_.add(codedInputStream.readMessage(ProtoBuf$Property.PARSER, extensionRegistryLite));
                            z = z3;
                            c = c;
                        case 90:
                            int i11 = (c == true ? 1 : 0) & 4096;
                            c = c;
                            if (i11 != 4096) {
                                this.typeAlias_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 4096;
                            }
                            this.typeAlias_.add(codedInputStream.readMessage(ProtoBuf$TypeAlias.PARSER, extensionRegistryLite));
                            z = z3;
                            c = c;
                        case 106:
                            int i12 = (c == true ? 1 : 0) & 8192;
                            c = c;
                            if (i12 != 8192) {
                                this.enumEntry_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 8192;
                            }
                            this.enumEntry_.add(codedInputStream.readMessage(ProtoBuf$EnumEntry.PARSER, extensionRegistryLite));
                            z = z3;
                            c = c;
                        case 128:
                            int i13 = (c == true ? 1 : 0) & 16384;
                            c = c;
                            if (i13 != 16384) {
                                this.sealedSubclassFqName_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 16384;
                            }
                            this.sealedSubclassFqName_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            z = z3;
                            c = c;
                        case 130:
                            int pushLimit3 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            int i14 = (c == true ? 1 : 0) & 16384;
                            c = c;
                            if (i14 != 16384) {
                                c = c;
                                if (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.sealedSubclassFqName_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | 16384;
                                }
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.sealedSubclassFqName_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            }
                            codedInputStream.popLimit(pushLimit3);
                            z = z3;
                            c = c;
                        case 136:
                            this.bitField0_ |= 8;
                            this.inlineClassUnderlyingPropertyName_ = codedInputStream.readRawVarint32();
                            z = z3;
                            c = c;
                        case 146:
                            if ((this.bitField0_ & 16) == 16) {
                                ProtoBuf$Type protoBuf$Type = this.inlineClassUnderlyingType_;
                                protoBuf$Type.getClass();
                                builder2 = ProtoBuf$Type.newBuilder(protoBuf$Type);
                            }
                            ProtoBuf$Type.Builder builder4 = builder2;
                            ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite);
                            this.inlineClassUnderlyingType_ = protoBuf$Type2;
                            if (builder4 != null) {
                                builder4.mergeFrom(protoBuf$Type2);
                                this.inlineClassUnderlyingType_ = builder4.buildPartial();
                            }
                            this.bitField0_ |= 16;
                            z = z3;
                            c = c;
                        case 152:
                            this.bitField0_ |= 32;
                            this.inlineClassUnderlyingTypeId_ = codedInputStream.readRawVarint32();
                            z = z3;
                            c = c;
                        case 162:
                            int i15 = (c == true ? 1 : 0) & 128;
                            c = c;
                            if (i15 != 128) {
                                this.contextReceiverType_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 128;
                            }
                            this.contextReceiverType_.add(codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite));
                            z = z3;
                            c = c;
                        case 168:
                            int i16 = (c == true ? 1 : 0) & 256;
                            c = c;
                            if (i16 != 256) {
                                this.contextReceiverTypeId_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 256;
                            }
                            this.contextReceiverTypeId_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            z = z3;
                            c = c;
                        case 170:
                            int pushLimit4 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            int i17 = (c == true ? 1 : 0) & 256;
                            c = c;
                            if (i17 != 256) {
                                c = c;
                                if (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.contextReceiverTypeId_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | 256;
                                }
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.contextReceiverTypeId_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            }
                            codedInputStream.popLimit(pushLimit4);
                            z = z3;
                            c = c;
                        case 176:
                            int i18 = (c == true ? 1 : 0) & 262144;
                            c = c;
                            if (i18 != 262144) {
                                this.multiFieldValueClassUnderlyingName_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 0;
                            }
                            this.multiFieldValueClassUnderlyingName_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            z = z3;
                            c = c;
                        case 178:
                            int pushLimit5 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            int i19 = (c == true ? 1 : 0) & 262144;
                            c = c;
                            if (i19 != 262144) {
                                c = c;
                                if (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.multiFieldValueClassUnderlyingName_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | 0;
                                }
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.multiFieldValueClassUnderlyingName_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            }
                            codedInputStream.popLimit(pushLimit5);
                            z = z3;
                            c = c;
                        case 186:
                            int i20 = (c == true ? 1 : 0) & 524288;
                            c = c;
                            if (i20 != 524288) {
                                this.multiFieldValueClassUnderlyingType_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 0;
                            }
                            this.multiFieldValueClassUnderlyingType_.add(codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite));
                            z = z3;
                            c = c;
                        case 192:
                            int i21 = (c == true ? 1 : 0) & 1048576;
                            c = c;
                            if (i21 != 1048576) {
                                this.multiFieldValueClassUnderlyingTypeId_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 0;
                            }
                            this.multiFieldValueClassUnderlyingTypeId_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            z = z3;
                            c = c;
                        case 194:
                            int pushLimit6 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            int i22 = (c == true ? 1 : 0) & 1048576;
                            c = c;
                            if (i22 != 1048576) {
                                c = c;
                                if (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.multiFieldValueClassUnderlyingTypeId_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | 0;
                                }
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.multiFieldValueClassUnderlyingTypeId_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            }
                            codedInputStream.popLimit(pushLimit6);
                            z = z3;
                            c = c;
                        case 242:
                            if ((this.bitField0_ & 64) == 64) {
                                ProtoBuf$TypeTable protoBuf$TypeTable = this.typeTable_;
                                protoBuf$TypeTable.getClass();
                                builder3 = ProtoBuf$TypeTable.newBuilder(protoBuf$TypeTable);
                            }
                            ProtoBuf$TypeTable.Builder builder5 = builder3;
                            ProtoBuf$TypeTable protoBuf$TypeTable2 = (ProtoBuf$TypeTable) codedInputStream.readMessage(ProtoBuf$TypeTable.PARSER, extensionRegistryLite);
                            this.typeTable_ = protoBuf$TypeTable2;
                            if (builder5 != null) {
                                builder5.mergeFrom(protoBuf$TypeTable2);
                                this.typeTable_ = builder5.m834buildPartial();
                            }
                            this.bitField0_ |= 64;
                            z = z3;
                            c = c;
                        case 248:
                            int i23 = (c == true ? 1 : 0) & 4194304;
                            c = c;
                            if (i23 != 4194304) {
                                this.versionRequirement_ = new ArrayList();
                                c = (c == true ? 1 : 0) | 0;
                            }
                            this.versionRequirement_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            z = z3;
                            c = c;
                        case 250:
                            int pushLimit7 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            int i24 = (c == true ? 1 : 0) & 4194304;
                            c = c;
                            if (i24 != 4194304) {
                                c = c;
                                if (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.versionRequirement_ = new ArrayList();
                                    c = (c == true ? 1 : 0) | 0;
                                }
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.versionRequirement_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                            }
                            codedInputStream.popLimit(pushLimit7);
                            z = z3;
                            c = c;
                        case 258:
                            if ((this.bitField0_ & 128) == 128) {
                                ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = this.versionRequirementTable_;
                                protoBuf$VersionRequirementTable.getClass();
                                builder = new ProtoBuf$Contract.Builder(i);
                                builder.effect_ = Collections.EMPTY_LIST;
                                builder.mergeFrom(protoBuf$VersionRequirementTable);
                            } else {
                                builder = null;
                            }
                            ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable2 = (ProtoBuf$VersionRequirementTable) codedInputStream.readMessage(ProtoBuf$VersionRequirementTable.PARSER, extensionRegistryLite);
                            this.versionRequirementTable_ = protoBuf$VersionRequirementTable2;
                            if (builder != null) {
                                builder.mergeFrom(protoBuf$VersionRequirementTable2);
                                this.versionRequirementTable_ = builder.m832buildPartial();
                            }
                            this.bitField0_ |= 128;
                            z = z3;
                            c = c;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                z = z3;
                                c = c;
                            }
                            z2 = z3;
                            z = z3;
                            c = c;
                    }
                } catch (InvalidProtocolBufferException e) {
                    e.unfinishedMessage = this;
                    throw e;
                } catch (IOException e2) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                    invalidProtocolBufferException.unfinishedMessage = this;
                    throw invalidProtocolBufferException;
                }
            } catch (Throwable th2) {
                if (((c == true ? 1 : 0) & 32) == 32) {
                    this.supertypeId_ = DesugarCollections.unmodifiableList(this.supertypeId_);
                }
                if (((c == true ? 1 : 0) & 8) == 8) {
                    this.typeParameter_ = DesugarCollections.unmodifiableList(this.typeParameter_);
                }
                if (((c == true ? 1 : 0) & 16) == 16) {
                    this.supertype_ = DesugarCollections.unmodifiableList(this.supertype_);
                }
                if (((c == true ? 1 : 0) & 64) == 64) {
                    this.nestedClassName_ = DesugarCollections.unmodifiableList(this.nestedClassName_);
                }
                if (((c == true ? 1 : 0) & 512) == 512) {
                    this.constructor_ = DesugarCollections.unmodifiableList(this.constructor_);
                }
                if (((c == true ? 1 : 0) & 1024) == 1024) {
                    this.function_ = DesugarCollections.unmodifiableList(this.function_);
                }
                if (((c == true ? 1 : 0) & 2048) == 2048) {
                    this.property_ = DesugarCollections.unmodifiableList(this.property_);
                }
                if (((c == true ? 1 : 0) & 4096) == 4096) {
                    this.typeAlias_ = DesugarCollections.unmodifiableList(this.typeAlias_);
                }
                if (((c == true ? 1 : 0) & 8192) == 8192) {
                    this.enumEntry_ = DesugarCollections.unmodifiableList(this.enumEntry_);
                }
                if (((c == true ? 1 : 0) & 16384) == 16384) {
                    this.sealedSubclassFqName_ = DesugarCollections.unmodifiableList(this.sealedSubclassFqName_);
                }
                if (((c == true ? 1 : 0) & 128) == 128) {
                    this.contextReceiverType_ = DesugarCollections.unmodifiableList(this.contextReceiverType_);
                }
                if (((c == true ? 1 : 0) & 256) == 256) {
                    this.contextReceiverTypeId_ = DesugarCollections.unmodifiableList(this.contextReceiverTypeId_);
                }
                if (((c == true ? 1 : 0) & 262144) == 262144) {
                    this.multiFieldValueClassUnderlyingName_ = DesugarCollections.unmodifiableList(this.multiFieldValueClassUnderlyingName_);
                }
                if (((c == true ? 1 : 0) & 524288) == 524288) {
                    this.multiFieldValueClassUnderlyingType_ = DesugarCollections.unmodifiableList(this.multiFieldValueClassUnderlyingType_);
                }
                if (((c == true ? 1 : 0) & 1048576) == 1048576) {
                    this.multiFieldValueClassUnderlyingTypeId_ = DesugarCollections.unmodifiableList(this.multiFieldValueClassUnderlyingTypeId_);
                }
                if (((c == true ? 1 : 0) & 4194304) == 4194304) {
                    this.versionRequirement_ = DesugarCollections.unmodifiableList(this.versionRequirement_);
                }
                try {
                    newInstance.flush();
                } catch (IOException unused2) {
                } catch (Throwable th3) {
                    this.unknownFields = newOutput.toByteString();
                    throw th3;
                }
                this.unknownFields = newOutput.toByteString();
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
        List list3;
        List list4;
        List list5;
        List list6;
        List list7;
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        int computeInt32Size = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeInt32Size(1, this.flags_) : 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int size = this.supertypeId_.size();
            list = this.supertypeId_;
            if (i3 >= size) {
                break;
            }
            i4 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list.get(i3)).intValue());
            i3++;
        }
        int i5 = computeInt32Size + i4;
        if (!list.isEmpty()) {
            i5 = i5 + 1 + SVG.PathDefinition.computeInt32SizeNoTag(i4);
        }
        this.supertypeIdMemoizedSerializedSize = i4;
        if ((this.bitField0_ & 2) == 2) {
            i5 += SVG.PathDefinition.computeInt32Size(3, this.fqName_);
        }
        if ((this.bitField0_ & 4) == 4) {
            i5 += SVG.PathDefinition.computeInt32Size(4, this.companionObjectName_);
        }
        for (int i6 = 0; i6 < this.typeParameter_.size(); i6++) {
            i5 += SVG.PathDefinition.computeMessageSize(5, (AbstractMessageLite) this.typeParameter_.get(i6));
        }
        for (int i7 = 0; i7 < this.supertype_.size(); i7++) {
            i5 += SVG.PathDefinition.computeMessageSize(6, (AbstractMessageLite) this.supertype_.get(i7));
        }
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int size2 = this.nestedClassName_.size();
            list2 = this.nestedClassName_;
            if (i8 >= size2) {
                break;
            }
            i9 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list2.get(i8)).intValue());
            i8++;
        }
        int i10 = i5 + i9;
        if (!list2.isEmpty()) {
            i10 = i10 + 1 + SVG.PathDefinition.computeInt32SizeNoTag(i9);
        }
        this.nestedClassNameMemoizedSerializedSize = i9;
        for (int i11 = 0; i11 < this.constructor_.size(); i11++) {
            i10 += SVG.PathDefinition.computeMessageSize(8, (AbstractMessageLite) this.constructor_.get(i11));
        }
        for (int i12 = 0; i12 < this.function_.size(); i12++) {
            i10 += SVG.PathDefinition.computeMessageSize(9, (AbstractMessageLite) this.function_.get(i12));
        }
        for (int i13 = 0; i13 < this.property_.size(); i13++) {
            i10 += SVG.PathDefinition.computeMessageSize(10, (AbstractMessageLite) this.property_.get(i13));
        }
        for (int i14 = 0; i14 < this.typeAlias_.size(); i14++) {
            i10 += SVG.PathDefinition.computeMessageSize(11, (AbstractMessageLite) this.typeAlias_.get(i14));
        }
        for (int i15 = 0; i15 < this.enumEntry_.size(); i15++) {
            i10 += SVG.PathDefinition.computeMessageSize(13, (AbstractMessageLite) this.enumEntry_.get(i15));
        }
        int i16 = 0;
        int i17 = 0;
        while (true) {
            int size3 = this.sealedSubclassFqName_.size();
            list3 = this.sealedSubclassFqName_;
            if (i16 >= size3) {
                break;
            }
            i17 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list3.get(i16)).intValue());
            i16++;
        }
        int i18 = i10 + i17;
        if (!list3.isEmpty()) {
            i18 = i18 + 2 + SVG.PathDefinition.computeInt32SizeNoTag(i17);
        }
        this.sealedSubclassFqNameMemoizedSerializedSize = i17;
        if ((this.bitField0_ & 8) == 8) {
            i18 += SVG.PathDefinition.computeInt32Size(17, this.inlineClassUnderlyingPropertyName_);
        }
        if ((this.bitField0_ & 16) == 16) {
            i18 += SVG.PathDefinition.computeMessageSize(18, this.inlineClassUnderlyingType_);
        }
        if ((this.bitField0_ & 32) == 32) {
            i18 += SVG.PathDefinition.computeInt32Size(19, this.inlineClassUnderlyingTypeId_);
        }
        for (int i19 = 0; i19 < this.contextReceiverType_.size(); i19++) {
            i18 += SVG.PathDefinition.computeMessageSize(20, (AbstractMessageLite) this.contextReceiverType_.get(i19));
        }
        int i20 = 0;
        int i21 = 0;
        while (true) {
            int size4 = this.contextReceiverTypeId_.size();
            list4 = this.contextReceiverTypeId_;
            if (i20 >= size4) {
                break;
            }
            i21 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list4.get(i20)).intValue());
            i20++;
        }
        int i22 = i18 + i21;
        if (!list4.isEmpty()) {
            i22 = i22 + 2 + SVG.PathDefinition.computeInt32SizeNoTag(i21);
        }
        this.contextReceiverTypeIdMemoizedSerializedSize = i21;
        int i23 = 0;
        int i24 = 0;
        while (true) {
            int size5 = this.multiFieldValueClassUnderlyingName_.size();
            list5 = this.multiFieldValueClassUnderlyingName_;
            if (i23 >= size5) {
                break;
            }
            i24 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list5.get(i23)).intValue());
            i23++;
        }
        int i25 = i22 + i24;
        if (!list5.isEmpty()) {
            i25 = i25 + 2 + SVG.PathDefinition.computeInt32SizeNoTag(i24);
        }
        this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize = i24;
        for (int i26 = 0; i26 < this.multiFieldValueClassUnderlyingType_.size(); i26++) {
            i25 += SVG.PathDefinition.computeMessageSize(23, (AbstractMessageLite) this.multiFieldValueClassUnderlyingType_.get(i26));
        }
        int i27 = 0;
        int i28 = 0;
        while (true) {
            int size6 = this.multiFieldValueClassUnderlyingTypeId_.size();
            list6 = this.multiFieldValueClassUnderlyingTypeId_;
            if (i27 >= size6) {
                break;
            }
            i28 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list6.get(i27)).intValue());
            i27++;
        }
        int i29 = i25 + i28;
        if (!list6.isEmpty()) {
            i29 = i29 + 2 + SVG.PathDefinition.computeInt32SizeNoTag(i28);
        }
        this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize = i28;
        if ((this.bitField0_ & 64) == 64) {
            i29 += SVG.PathDefinition.computeMessageSize(30, this.typeTable_);
        }
        int i30 = 0;
        while (true) {
            int size7 = this.versionRequirement_.size();
            list7 = this.versionRequirement_;
            if (i2 >= size7) {
                break;
            }
            i30 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list7.get(i2)).intValue());
            i2++;
        }
        int size8 = (list7.size() * 2) + i29 + i30;
        if ((this.bitField0_ & 128) == 128) {
            size8 += SVG.PathDefinition.computeMessageSize(32, this.versionRequirementTable_);
        }
        int size9 = this.unknownFields.size() + extensionsSerializedSize() + size8;
        this.memoizedSerializedSize = size9;
        return size9;
    }

    public final void initFields$3() {
        this.flags_ = 6;
        this.fqName_ = 0;
        this.companionObjectName_ = 0;
        List list = Collections.EMPTY_LIST;
        this.typeParameter_ = list;
        this.supertype_ = list;
        this.supertypeId_ = list;
        this.nestedClassName_ = list;
        this.contextReceiverType_ = list;
        this.contextReceiverTypeId_ = list;
        this.constructor_ = list;
        this.function_ = list;
        this.property_ = list;
        this.typeAlias_ = list;
        this.enumEntry_ = list;
        this.sealedSubclassFqName_ = list;
        this.inlineClassUnderlyingPropertyName_ = 0;
        this.inlineClassUnderlyingType_ = ProtoBuf$Type.defaultInstance;
        this.inlineClassUnderlyingTypeId_ = 0;
        this.multiFieldValueClassUnderlyingName_ = list;
        this.multiFieldValueClassUnderlyingType_ = list;
        this.multiFieldValueClassUnderlyingTypeId_ = list;
        this.typeTable_ = ProtoBuf$TypeTable.defaultInstance;
        this.versionRequirement_ = list;
        this.versionRequirementTable_ = ProtoBuf$VersionRequirementTable.defaultInstance;
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
        if ((this.bitField0_ & 2) != 2) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < this.typeParameter_.size(); i++) {
            if (!((ProtoBuf$TypeParameter) this.typeParameter_.get(i)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i2 = 0; i2 < this.supertype_.size(); i2++) {
            if (!((ProtoBuf$Type) this.supertype_.get(i2)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i3 = 0; i3 < this.contextReceiverType_.size(); i3++) {
            if (!((ProtoBuf$Type) this.contextReceiverType_.get(i3)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i4 = 0; i4 < this.constructor_.size(); i4++) {
            if (!((ProtoBuf$Constructor) this.constructor_.get(i4)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i5 = 0; i5 < this.function_.size(); i5++) {
            if (!((ProtoBuf$Function) this.function_.get(i5)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i6 = 0; i6 < this.property_.size(); i6++) {
            if (!((ProtoBuf$Property) this.property_.get(i6)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i7 = 0; i7 < this.typeAlias_.size(); i7++) {
            if (!((ProtoBuf$TypeAlias) this.typeAlias_.get(i7)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i8 = 0; i8 < this.enumEntry_.size(); i8++) {
            if (!((ProtoBuf$EnumEntry) this.enumEntry_.get(i8)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if ((this.bitField0_ & 16) == 16 && !this.inlineClassUnderlyingType_.isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i9 = 0; i9 < this.multiFieldValueClassUnderlyingType_.size(); i9++) {
            if (!((ProtoBuf$Type) this.multiFieldValueClassUnderlyingType_.get(i9)).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if ((this.bitField0_ & 64) == 64 && !this.typeTable_.isInitialized()) {
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
        if ((this.bitField0_ & 1) == 1) {
            pathDefinition.writeInt32(1, this.flags_);
        }
        if (this.supertypeId_.size() > 0) {
            pathDefinition.writeRawVarint32(18);
            pathDefinition.writeRawVarint32(this.supertypeIdMemoizedSerializedSize);
        }
        for (int i = 0; i < this.supertypeId_.size(); i++) {
            pathDefinition.writeInt32NoTag(((Integer) this.supertypeId_.get(i)).intValue());
        }
        if ((this.bitField0_ & 2) == 2) {
            pathDefinition.writeInt32(3, this.fqName_);
        }
        if ((this.bitField0_ & 4) == 4) {
            pathDefinition.writeInt32(4, this.companionObjectName_);
        }
        for (int i2 = 0; i2 < this.typeParameter_.size(); i2++) {
            pathDefinition.writeMessage(5, (AbstractMessageLite) this.typeParameter_.get(i2));
        }
        for (int i3 = 0; i3 < this.supertype_.size(); i3++) {
            pathDefinition.writeMessage(6, (AbstractMessageLite) this.supertype_.get(i3));
        }
        if (this.nestedClassName_.size() > 0) {
            pathDefinition.writeRawVarint32(58);
            pathDefinition.writeRawVarint32(this.nestedClassNameMemoizedSerializedSize);
        }
        for (int i4 = 0; i4 < this.nestedClassName_.size(); i4++) {
            pathDefinition.writeInt32NoTag(((Integer) this.nestedClassName_.get(i4)).intValue());
        }
        for (int i5 = 0; i5 < this.constructor_.size(); i5++) {
            pathDefinition.writeMessage(8, (AbstractMessageLite) this.constructor_.get(i5));
        }
        for (int i6 = 0; i6 < this.function_.size(); i6++) {
            pathDefinition.writeMessage(9, (AbstractMessageLite) this.function_.get(i6));
        }
        for (int i7 = 0; i7 < this.property_.size(); i7++) {
            pathDefinition.writeMessage(10, (AbstractMessageLite) this.property_.get(i7));
        }
        for (int i8 = 0; i8 < this.typeAlias_.size(); i8++) {
            pathDefinition.writeMessage(11, (AbstractMessageLite) this.typeAlias_.get(i8));
        }
        for (int i9 = 0; i9 < this.enumEntry_.size(); i9++) {
            pathDefinition.writeMessage(13, (AbstractMessageLite) this.enumEntry_.get(i9));
        }
        if (this.sealedSubclassFqName_.size() > 0) {
            pathDefinition.writeRawVarint32(130);
            pathDefinition.writeRawVarint32(this.sealedSubclassFqNameMemoizedSerializedSize);
        }
        for (int i10 = 0; i10 < this.sealedSubclassFqName_.size(); i10++) {
            pathDefinition.writeInt32NoTag(((Integer) this.sealedSubclassFqName_.get(i10)).intValue());
        }
        if ((this.bitField0_ & 8) == 8) {
            pathDefinition.writeInt32(17, this.inlineClassUnderlyingPropertyName_);
        }
        if ((this.bitField0_ & 16) == 16) {
            pathDefinition.writeMessage(18, this.inlineClassUnderlyingType_);
        }
        if ((this.bitField0_ & 32) == 32) {
            pathDefinition.writeInt32(19, this.inlineClassUnderlyingTypeId_);
        }
        for (int i11 = 0; i11 < this.contextReceiverType_.size(); i11++) {
            pathDefinition.writeMessage(20, (AbstractMessageLite) this.contextReceiverType_.get(i11));
        }
        if (this.contextReceiverTypeId_.size() > 0) {
            pathDefinition.writeRawVarint32(170);
            pathDefinition.writeRawVarint32(this.contextReceiverTypeIdMemoizedSerializedSize);
        }
        for (int i12 = 0; i12 < this.contextReceiverTypeId_.size(); i12++) {
            pathDefinition.writeInt32NoTag(((Integer) this.contextReceiverTypeId_.get(i12)).intValue());
        }
        if (this.multiFieldValueClassUnderlyingName_.size() > 0) {
            pathDefinition.writeRawVarint32(178);
            pathDefinition.writeRawVarint32(this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize);
        }
        for (int i13 = 0; i13 < this.multiFieldValueClassUnderlyingName_.size(); i13++) {
            pathDefinition.writeInt32NoTag(((Integer) this.multiFieldValueClassUnderlyingName_.get(i13)).intValue());
        }
        for (int i14 = 0; i14 < this.multiFieldValueClassUnderlyingType_.size(); i14++) {
            pathDefinition.writeMessage(23, (AbstractMessageLite) this.multiFieldValueClassUnderlyingType_.get(i14));
        }
        if (this.multiFieldValueClassUnderlyingTypeId_.size() > 0) {
            pathDefinition.writeRawVarint32(194);
            pathDefinition.writeRawVarint32(this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize);
        }
        for (int i15 = 0; i15 < this.multiFieldValueClassUnderlyingTypeId_.size(); i15++) {
            pathDefinition.writeInt32NoTag(((Integer) this.multiFieldValueClassUnderlyingTypeId_.get(i15)).intValue());
        }
        if ((this.bitField0_ & 64) == 64) {
            pathDefinition.writeMessage(30, this.typeTable_);
        }
        for (int i16 = 0; i16 < this.versionRequirement_.size(); i16++) {
            pathDefinition.writeInt32(31, ((Integer) this.versionRequirement_.get(i16)).intValue());
        }
        if ((this.bitField0_ & 128) == 128) {
            pathDefinition.writeMessage(32, this.versionRequirementTable_);
        }
        builder.writeUntil(19000, pathDefinition);
        pathDefinition.writeRawBytes(this.unknownFields);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.ExtendableBuilder {
        public int bitField0_;
        public int companionObjectName_;
        public List constructor_;
        public List contextReceiverTypeId_;
        public List contextReceiverType_;
        public List enumEntry_;
        public int flags_;
        public int fqName_;
        public List function_;
        public int inlineClassUnderlyingPropertyName_;
        public int inlineClassUnderlyingTypeId_;
        public ProtoBuf$Type inlineClassUnderlyingType_;
        public List multiFieldValueClassUnderlyingName_;
        public List multiFieldValueClassUnderlyingTypeId_;
        public List multiFieldValueClassUnderlyingType_;
        public List nestedClassName_;
        public List property_;
        public List sealedSubclassFqName_;
        public List supertypeId_;
        public List supertype_;
        public List typeAlias_;
        public List typeParameter_;
        public ProtoBuf$TypeTable typeTable_;
        public ProtoBuf$VersionRequirementTable versionRequirementTable_;
        public List versionRequirement_;

        public static Builder create() {
            Builder builder = new Builder();
            builder.flags_ = 6;
            List list = Collections.EMPTY_LIST;
            builder.typeParameter_ = list;
            builder.supertype_ = list;
            builder.supertypeId_ = list;
            builder.nestedClassName_ = list;
            builder.contextReceiverType_ = list;
            builder.contextReceiverTypeId_ = list;
            builder.constructor_ = list;
            builder.function_ = list;
            builder.property_ = list;
            builder.typeAlias_ = list;
            builder.enumEntry_ = list;
            builder.sealedSubclassFqName_ = list;
            builder.inlineClassUnderlyingType_ = ProtoBuf$Type.defaultInstance;
            builder.multiFieldValueClassUnderlyingName_ = list;
            builder.multiFieldValueClassUnderlyingType_ = list;
            builder.multiFieldValueClassUnderlyingTypeId_ = list;
            builder.typeTable_ = ProtoBuf$TypeTable.defaultInstance;
            builder.versionRequirement_ = list;
            builder.versionRequirementTable_ = ProtoBuf$VersionRequirementTable.defaultInstance;
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final AbstractMessageLite build() {
            ProtoBuf$Class buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw new HttpException(false);
        }

        public final ProtoBuf$Class buildPartial() {
            int i;
            ProtoBuf$Class protoBuf$Class = new ProtoBuf$Class(this);
            int i2 = this.bitField0_;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$Class.flags_ = this.flags_;
            if ((i2 & 2) == 2) {
                i3 |= 2;
            }
            protoBuf$Class.fqName_ = this.fqName_;
            if ((i2 & 4) == 4) {
                i3 |= 4;
            }
            protoBuf$Class.companionObjectName_ = this.companionObjectName_;
            if ((i2 & 8) == 8) {
                this.typeParameter_ = DesugarCollections.unmodifiableList(this.typeParameter_);
                i = this.bitField0_ & (-9);
                this.bitField0_ = i;
            } else {
                i = i2;
            }
            protoBuf$Class.typeParameter_ = this.typeParameter_;
            if ((i & 16) == 16) {
                this.supertype_ = DesugarCollections.unmodifiableList(this.supertype_);
                i = this.bitField0_ & (-17);
                this.bitField0_ = i;
            }
            protoBuf$Class.supertype_ = this.supertype_;
            if ((i & 32) == 32) {
                this.supertypeId_ = DesugarCollections.unmodifiableList(this.supertypeId_);
                i = this.bitField0_ & (-33);
                this.bitField0_ = i;
            }
            protoBuf$Class.supertypeId_ = this.supertypeId_;
            if ((i & 64) == 64) {
                this.nestedClassName_ = DesugarCollections.unmodifiableList(this.nestedClassName_);
                i = this.bitField0_ & (-65);
                this.bitField0_ = i;
            }
            protoBuf$Class.nestedClassName_ = this.nestedClassName_;
            if ((i & 128) == 128) {
                this.contextReceiverType_ = DesugarCollections.unmodifiableList(this.contextReceiverType_);
                i = this.bitField0_ & (-129);
                this.bitField0_ = i;
            }
            protoBuf$Class.contextReceiverType_ = this.contextReceiverType_;
            if ((i & 256) == 256) {
                this.contextReceiverTypeId_ = DesugarCollections.unmodifiableList(this.contextReceiverTypeId_);
                i = this.bitField0_ & (-257);
                this.bitField0_ = i;
            }
            protoBuf$Class.contextReceiverTypeId_ = this.contextReceiverTypeId_;
            if ((i & 512) == 512) {
                this.constructor_ = DesugarCollections.unmodifiableList(this.constructor_);
                i = this.bitField0_ & (-513);
                this.bitField0_ = i;
            }
            protoBuf$Class.constructor_ = this.constructor_;
            if ((i & 1024) == 1024) {
                this.function_ = DesugarCollections.unmodifiableList(this.function_);
                i = this.bitField0_ & (-1025);
                this.bitField0_ = i;
            }
            protoBuf$Class.function_ = this.function_;
            if ((i & 2048) == 2048) {
                this.property_ = DesugarCollections.unmodifiableList(this.property_);
                i = this.bitField0_ & (-2049);
                this.bitField0_ = i;
            }
            protoBuf$Class.property_ = this.property_;
            if ((i & 4096) == 4096) {
                this.typeAlias_ = DesugarCollections.unmodifiableList(this.typeAlias_);
                i = this.bitField0_ & (-4097);
                this.bitField0_ = i;
            }
            protoBuf$Class.typeAlias_ = this.typeAlias_;
            if ((i & 8192) == 8192) {
                this.enumEntry_ = DesugarCollections.unmodifiableList(this.enumEntry_);
                i = this.bitField0_ & (-8193);
                this.bitField0_ = i;
            }
            protoBuf$Class.enumEntry_ = this.enumEntry_;
            if ((i & 16384) == 16384) {
                this.sealedSubclassFqName_ = DesugarCollections.unmodifiableList(this.sealedSubclassFqName_);
                i = this.bitField0_ & (-16385);
                this.bitField0_ = i;
            }
            protoBuf$Class.sealedSubclassFqName_ = this.sealedSubclassFqName_;
            if ((i2 & 32768) == 32768) {
                i3 |= 8;
            }
            protoBuf$Class.inlineClassUnderlyingPropertyName_ = this.inlineClassUnderlyingPropertyName_;
            if ((i2 & 65536) == 65536) {
                i3 |= 16;
            }
            protoBuf$Class.inlineClassUnderlyingType_ = this.inlineClassUnderlyingType_;
            if ((i2 & 131072) == 131072) {
                i3 |= 32;
            }
            protoBuf$Class.inlineClassUnderlyingTypeId_ = this.inlineClassUnderlyingTypeId_;
            if ((i & 262144) == 262144) {
                this.multiFieldValueClassUnderlyingName_ = DesugarCollections.unmodifiableList(this.multiFieldValueClassUnderlyingName_);
                i = this.bitField0_ & (-262145);
                this.bitField0_ = i;
            }
            protoBuf$Class.multiFieldValueClassUnderlyingName_ = this.multiFieldValueClassUnderlyingName_;
            if ((i & 524288) == 524288) {
                this.multiFieldValueClassUnderlyingType_ = DesugarCollections.unmodifiableList(this.multiFieldValueClassUnderlyingType_);
                i = this.bitField0_ & (-524289);
                this.bitField0_ = i;
            }
            protoBuf$Class.multiFieldValueClassUnderlyingType_ = this.multiFieldValueClassUnderlyingType_;
            if ((i & 1048576) == 1048576) {
                this.multiFieldValueClassUnderlyingTypeId_ = DesugarCollections.unmodifiableList(this.multiFieldValueClassUnderlyingTypeId_);
                i = this.bitField0_ & (-1048577);
                this.bitField0_ = i;
            }
            protoBuf$Class.multiFieldValueClassUnderlyingTypeId_ = this.multiFieldValueClassUnderlyingTypeId_;
            if ((i2 & 2097152) == 2097152) {
                i3 |= 64;
            }
            protoBuf$Class.typeTable_ = this.typeTable_;
            if ((i & 4194304) == 4194304) {
                this.versionRequirement_ = DesugarCollections.unmodifiableList(this.versionRequirement_);
                this.bitField0_ &= -4194305;
            }
            protoBuf$Class.versionRequirement_ = this.versionRequirement_;
            if ((i2 & 8388608) == 8388608) {
                i3 |= 128;
            }
            protoBuf$Class.versionRequirementTable_ = this.versionRequirementTable_;
            protoBuf$Class.bitField0_ = i3;
            return protoBuf$Class;
        }

        public final Object clone() {
            Builder create = create();
            create.mergeFrom(buildPartial());
            return create;
        }

        public final void mergeFrom(ProtoBuf$Class protoBuf$Class) {
            ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable;
            ProtoBuf$TypeTable protoBuf$TypeTable;
            ProtoBuf$Type protoBuf$Type;
            if (protoBuf$Class == ProtoBuf$Class.defaultInstance) {
                return;
            }
            int i = protoBuf$Class.bitField0_;
            if ((i & 1) == 1) {
                int i2 = protoBuf$Class.flags_;
                this.bitField0_ = 1 | this.bitField0_;
                this.flags_ = i2;
            }
            int i3 = 2;
            if ((i & 2) == 2) {
                int i4 = protoBuf$Class.fqName_;
                this.bitField0_ |= 2;
                this.fqName_ = i4;
            }
            if ((i & 4) == 4) {
                int i5 = protoBuf$Class.companionObjectName_;
                this.bitField0_ = 4 | this.bitField0_;
                this.companionObjectName_ = i5;
            }
            if (!protoBuf$Class.typeParameter_.isEmpty()) {
                if (this.typeParameter_.isEmpty()) {
                    this.typeParameter_ = protoBuf$Class.typeParameter_;
                    this.bitField0_ &= -9;
                } else {
                    if ((this.bitField0_ & 8) != 8) {
                        this.typeParameter_ = new ArrayList(this.typeParameter_);
                        this.bitField0_ |= 8;
                    }
                    this.typeParameter_.addAll(protoBuf$Class.typeParameter_);
                }
            }
            if (!protoBuf$Class.supertype_.isEmpty()) {
                if (this.supertype_.isEmpty()) {
                    this.supertype_ = protoBuf$Class.supertype_;
                    this.bitField0_ &= -17;
                } else {
                    if ((this.bitField0_ & 16) != 16) {
                        this.supertype_ = new ArrayList(this.supertype_);
                        this.bitField0_ |= 16;
                    }
                    this.supertype_.addAll(protoBuf$Class.supertype_);
                }
            }
            if (!protoBuf$Class.supertypeId_.isEmpty()) {
                if (this.supertypeId_.isEmpty()) {
                    this.supertypeId_ = protoBuf$Class.supertypeId_;
                    this.bitField0_ &= -33;
                } else {
                    if ((this.bitField0_ & 32) != 32) {
                        this.supertypeId_ = new ArrayList(this.supertypeId_);
                        this.bitField0_ |= 32;
                    }
                    this.supertypeId_.addAll(protoBuf$Class.supertypeId_);
                }
            }
            if (!protoBuf$Class.nestedClassName_.isEmpty()) {
                if (this.nestedClassName_.isEmpty()) {
                    this.nestedClassName_ = protoBuf$Class.nestedClassName_;
                    this.bitField0_ &= -65;
                } else {
                    if ((this.bitField0_ & 64) != 64) {
                        this.nestedClassName_ = new ArrayList(this.nestedClassName_);
                        this.bitField0_ |= 64;
                    }
                    this.nestedClassName_.addAll(protoBuf$Class.nestedClassName_);
                }
            }
            if (!protoBuf$Class.contextReceiverType_.isEmpty()) {
                if (this.contextReceiverType_.isEmpty()) {
                    this.contextReceiverType_ = protoBuf$Class.contextReceiverType_;
                    this.bitField0_ &= -129;
                } else {
                    if ((this.bitField0_ & 128) != 128) {
                        this.contextReceiverType_ = new ArrayList(this.contextReceiverType_);
                        this.bitField0_ |= 128;
                    }
                    this.contextReceiverType_.addAll(protoBuf$Class.contextReceiverType_);
                }
            }
            if (!protoBuf$Class.contextReceiverTypeId_.isEmpty()) {
                if (this.contextReceiverTypeId_.isEmpty()) {
                    this.contextReceiverTypeId_ = protoBuf$Class.contextReceiverTypeId_;
                    this.bitField0_ &= -257;
                } else {
                    if ((this.bitField0_ & 256) != 256) {
                        this.contextReceiverTypeId_ = new ArrayList(this.contextReceiverTypeId_);
                        this.bitField0_ |= 256;
                    }
                    this.contextReceiverTypeId_.addAll(protoBuf$Class.contextReceiverTypeId_);
                }
            }
            if (!protoBuf$Class.constructor_.isEmpty()) {
                if (this.constructor_.isEmpty()) {
                    this.constructor_ = protoBuf$Class.constructor_;
                    this.bitField0_ &= -513;
                } else {
                    if ((this.bitField0_ & 512) != 512) {
                        this.constructor_ = new ArrayList(this.constructor_);
                        this.bitField0_ |= 512;
                    }
                    this.constructor_.addAll(protoBuf$Class.constructor_);
                }
            }
            if (!protoBuf$Class.function_.isEmpty()) {
                if (this.function_.isEmpty()) {
                    this.function_ = protoBuf$Class.function_;
                    this.bitField0_ &= -1025;
                } else {
                    if ((this.bitField0_ & 1024) != 1024) {
                        this.function_ = new ArrayList(this.function_);
                        this.bitField0_ |= 1024;
                    }
                    this.function_.addAll(protoBuf$Class.function_);
                }
            }
            if (!protoBuf$Class.property_.isEmpty()) {
                if (this.property_.isEmpty()) {
                    this.property_ = protoBuf$Class.property_;
                    this.bitField0_ &= -2049;
                } else {
                    if ((this.bitField0_ & 2048) != 2048) {
                        this.property_ = new ArrayList(this.property_);
                        this.bitField0_ |= 2048;
                    }
                    this.property_.addAll(protoBuf$Class.property_);
                }
            }
            if (!protoBuf$Class.typeAlias_.isEmpty()) {
                if (this.typeAlias_.isEmpty()) {
                    this.typeAlias_ = protoBuf$Class.typeAlias_;
                    this.bitField0_ &= -4097;
                } else {
                    if ((this.bitField0_ & 4096) != 4096) {
                        this.typeAlias_ = new ArrayList(this.typeAlias_);
                        this.bitField0_ |= 4096;
                    }
                    this.typeAlias_.addAll(protoBuf$Class.typeAlias_);
                }
            }
            if (!protoBuf$Class.enumEntry_.isEmpty()) {
                if (this.enumEntry_.isEmpty()) {
                    this.enumEntry_ = protoBuf$Class.enumEntry_;
                    this.bitField0_ &= -8193;
                } else {
                    if ((this.bitField0_ & 8192) != 8192) {
                        this.enumEntry_ = new ArrayList(this.enumEntry_);
                        this.bitField0_ |= 8192;
                    }
                    this.enumEntry_.addAll(protoBuf$Class.enumEntry_);
                }
            }
            if (!protoBuf$Class.sealedSubclassFqName_.isEmpty()) {
                if (this.sealedSubclassFqName_.isEmpty()) {
                    this.sealedSubclassFqName_ = protoBuf$Class.sealedSubclassFqName_;
                    this.bitField0_ &= -16385;
                } else {
                    if ((this.bitField0_ & 16384) != 16384) {
                        this.sealedSubclassFqName_ = new ArrayList(this.sealedSubclassFqName_);
                        this.bitField0_ |= 16384;
                    }
                    this.sealedSubclassFqName_.addAll(protoBuf$Class.sealedSubclassFqName_);
                }
            }
            int i6 = protoBuf$Class.bitField0_;
            if ((i6 & 8) == 8) {
                int i7 = protoBuf$Class.inlineClassUnderlyingPropertyName_;
                this.bitField0_ |= 32768;
                this.inlineClassUnderlyingPropertyName_ = i7;
            }
            if ((i6 & 16) == 16) {
                ProtoBuf$Type protoBuf$Type2 = protoBuf$Class.inlineClassUnderlyingType_;
                if ((this.bitField0_ & 65536) != 65536 || (protoBuf$Type = this.inlineClassUnderlyingType_) == ProtoBuf$Type.defaultInstance) {
                    this.inlineClassUnderlyingType_ = protoBuf$Type2;
                } else {
                    ProtoBuf$Type.Builder newBuilder = ProtoBuf$Type.newBuilder(protoBuf$Type);
                    newBuilder.mergeFrom(protoBuf$Type2);
                    this.inlineClassUnderlyingType_ = newBuilder.buildPartial();
                }
                this.bitField0_ |= 65536;
            }
            if ((protoBuf$Class.bitField0_ & 32) == 32) {
                int i8 = protoBuf$Class.inlineClassUnderlyingTypeId_;
                this.bitField0_ |= 131072;
                this.inlineClassUnderlyingTypeId_ = i8;
            }
            if (!protoBuf$Class.multiFieldValueClassUnderlyingName_.isEmpty()) {
                if (this.multiFieldValueClassUnderlyingName_.isEmpty()) {
                    this.multiFieldValueClassUnderlyingName_ = protoBuf$Class.multiFieldValueClassUnderlyingName_;
                    this.bitField0_ &= -262145;
                } else {
                    if ((this.bitField0_ & 262144) != 262144) {
                        this.multiFieldValueClassUnderlyingName_ = new ArrayList(this.multiFieldValueClassUnderlyingName_);
                        this.bitField0_ |= 262144;
                    }
                    this.multiFieldValueClassUnderlyingName_.addAll(protoBuf$Class.multiFieldValueClassUnderlyingName_);
                }
            }
            if (!protoBuf$Class.multiFieldValueClassUnderlyingType_.isEmpty()) {
                if (this.multiFieldValueClassUnderlyingType_.isEmpty()) {
                    this.multiFieldValueClassUnderlyingType_ = protoBuf$Class.multiFieldValueClassUnderlyingType_;
                    this.bitField0_ &= -524289;
                } else {
                    if ((this.bitField0_ & 524288) != 524288) {
                        this.multiFieldValueClassUnderlyingType_ = new ArrayList(this.multiFieldValueClassUnderlyingType_);
                        this.bitField0_ |= 524288;
                    }
                    this.multiFieldValueClassUnderlyingType_.addAll(protoBuf$Class.multiFieldValueClassUnderlyingType_);
                }
            }
            if (!protoBuf$Class.multiFieldValueClassUnderlyingTypeId_.isEmpty()) {
                if (this.multiFieldValueClassUnderlyingTypeId_.isEmpty()) {
                    this.multiFieldValueClassUnderlyingTypeId_ = protoBuf$Class.multiFieldValueClassUnderlyingTypeId_;
                    this.bitField0_ &= -1048577;
                } else {
                    if ((this.bitField0_ & 1048576) != 1048576) {
                        this.multiFieldValueClassUnderlyingTypeId_ = new ArrayList(this.multiFieldValueClassUnderlyingTypeId_);
                        this.bitField0_ |= 1048576;
                    }
                    this.multiFieldValueClassUnderlyingTypeId_.addAll(protoBuf$Class.multiFieldValueClassUnderlyingTypeId_);
                }
            }
            if ((protoBuf$Class.bitField0_ & 64) == 64) {
                ProtoBuf$TypeTable protoBuf$TypeTable2 = protoBuf$Class.typeTable_;
                if ((this.bitField0_ & 2097152) != 2097152 || (protoBuf$TypeTable = this.typeTable_) == ProtoBuf$TypeTable.defaultInstance) {
                    this.typeTable_ = protoBuf$TypeTable2;
                } else {
                    ProtoBuf$TypeTable.Builder newBuilder2 = ProtoBuf$TypeTable.newBuilder(protoBuf$TypeTable);
                    newBuilder2.mergeFrom(protoBuf$TypeTable2);
                    this.typeTable_ = newBuilder2.m834buildPartial();
                }
                this.bitField0_ |= 2097152;
            }
            if (!protoBuf$Class.versionRequirement_.isEmpty()) {
                if (this.versionRequirement_.isEmpty()) {
                    this.versionRequirement_ = protoBuf$Class.versionRequirement_;
                    this.bitField0_ &= -4194305;
                } else {
                    if ((this.bitField0_ & 4194304) != 4194304) {
                        this.versionRequirement_ = new ArrayList(this.versionRequirement_);
                        this.bitField0_ |= 4194304;
                    }
                    this.versionRequirement_.addAll(protoBuf$Class.versionRequirement_);
                }
            }
            if ((protoBuf$Class.bitField0_ & 128) == 128) {
                ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable2 = protoBuf$Class.versionRequirementTable_;
                if ((this.bitField0_ & 8388608) != 8388608 || (protoBuf$VersionRequirementTable = this.versionRequirementTable_) == ProtoBuf$VersionRequirementTable.defaultInstance) {
                    this.versionRequirementTable_ = protoBuf$VersionRequirementTable2;
                } else {
                    ProtoBuf$Contract.Builder builder = new ProtoBuf$Contract.Builder(i3);
                    builder.effect_ = Collections.EMPTY_LIST;
                    builder.mergeFrom(protoBuf$VersionRequirementTable);
                    builder.mergeFrom(protoBuf$VersionRequirementTable2);
                    this.versionRequirementTable_ = builder.m832buildPartial();
                }
                this.bitField0_ |= 8388608;
            }
            mergeExtensionFields(protoBuf$Class);
            this.unknownFields = this.unknownFields.concat(protoBuf$Class.unknownFields);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
            mergeFrom((ProtoBuf$Class) generatedMessageLite);
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class r1 = new kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                r2.mergeFrom(r1)
                return r2
            Lf:
                r3 = move-exception
                goto L19
            L11:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
        }
    }

    public ProtoBuf$Class() {
        this.supertypeIdMemoizedSerializedSize = -1;
        this.nestedClassNameMemoizedSerializedSize = -1;
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.sealedSubclassFqNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }

    public ProtoBuf$Class(Builder builder) {
        super(builder);
        this.supertypeIdMemoizedSerializedSize = -1;
        this.nestedClassNameMemoizedSerializedSize = -1;
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.sealedSubclassFqNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = builder.unknownFields;
    }
}
