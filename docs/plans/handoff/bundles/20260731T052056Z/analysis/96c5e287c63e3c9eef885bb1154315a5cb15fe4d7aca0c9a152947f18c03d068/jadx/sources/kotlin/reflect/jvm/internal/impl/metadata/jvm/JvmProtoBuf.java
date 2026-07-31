package kotlin.reflect.jvm.internal.impl.metadata.jvm;

import coil3.network.HttpException;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder;
import kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$FieldType;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class JvmProtoBuf {
    public static final GeneratedMessageLite.GeneratedExtension anonymousObjectOriginName;
    public static final GeneratedMessageLite.GeneratedExtension classLocalVariable;
    public static final GeneratedMessageLite.GeneratedExtension classModuleName;
    public static final GeneratedMessageLite.GeneratedExtension constructorSignature;
    public static final GeneratedMessageLite.GeneratedExtension flags;
    public static final GeneratedMessageLite.GeneratedExtension isRaw;
    public static final GeneratedMessageLite.GeneratedExtension jvmClassFlags;
    public static final GeneratedMessageLite.GeneratedExtension lambdaClassOriginName;
    public static final GeneratedMessageLite.GeneratedExtension methodSignature;
    public static final GeneratedMessageLite.GeneratedExtension packageLocalVariable;
    public static final GeneratedMessageLite.GeneratedExtension packageModuleName;
    public static final GeneratedMessageLite.GeneratedExtension propertySignature;
    public static final GeneratedMessageLite.GeneratedExtension typeAnnotation;
    public static final GeneratedMessageLite.GeneratedExtension typeParameterAnnotation;

    static {
        ProtoBuf$Constructor protoBuf$Constructor = ProtoBuf$Constructor.defaultInstance;
        JvmMethodSignature jvmMethodSignature = JvmMethodSignature.defaultInstance;
        WireFormat$FieldType wireFormat$FieldType = WireFormat$FieldType.MESSAGE;
        constructorSignature = GeneratedMessageLite.newSingularGeneratedExtension(protoBuf$Constructor, jvmMethodSignature, jvmMethodSignature, 100, wireFormat$FieldType, JvmMethodSignature.class);
        ProtoBuf$Function protoBuf$Function = ProtoBuf$Function.defaultInstance;
        methodSignature = GeneratedMessageLite.newSingularGeneratedExtension(protoBuf$Function, jvmMethodSignature, jvmMethodSignature, 100, wireFormat$FieldType, JvmMethodSignature.class);
        WireFormat$FieldType wireFormat$FieldType2 = WireFormat$FieldType.INT32;
        lambdaClassOriginName = GeneratedMessageLite.newSingularGeneratedExtension(protoBuf$Function, 0, null, 101, wireFormat$FieldType2, Integer.class);
        ProtoBuf$Property protoBuf$Property = ProtoBuf$Property.defaultInstance;
        JvmPropertySignature jvmPropertySignature = JvmPropertySignature.defaultInstance;
        propertySignature = GeneratedMessageLite.newSingularGeneratedExtension(protoBuf$Property, jvmPropertySignature, jvmPropertySignature, 100, wireFormat$FieldType, JvmPropertySignature.class);
        flags = GeneratedMessageLite.newSingularGeneratedExtension(protoBuf$Property, 0, null, 101, wireFormat$FieldType2, Integer.class);
        ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.defaultInstance;
        ProtoBuf$Annotation protoBuf$Annotation = ProtoBuf$Annotation.defaultInstance;
        typeAnnotation = GeneratedMessageLite.newRepeatedGeneratedExtension(protoBuf$Type, protoBuf$Annotation, 100, wireFormat$FieldType, ProtoBuf$Annotation.class);
        isRaw = GeneratedMessageLite.newSingularGeneratedExtension(protoBuf$Type, Boolean.FALSE, null, 101, WireFormat$FieldType.BOOL, Boolean.class);
        typeParameterAnnotation = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$TypeParameter.defaultInstance, protoBuf$Annotation, 100, wireFormat$FieldType, ProtoBuf$Annotation.class);
        ProtoBuf$Class protoBuf$Class = ProtoBuf$Class.defaultInstance;
        classModuleName = GeneratedMessageLite.newSingularGeneratedExtension(protoBuf$Class, 0, null, 101, wireFormat$FieldType2, Integer.class);
        classLocalVariable = GeneratedMessageLite.newRepeatedGeneratedExtension(protoBuf$Class, protoBuf$Property, 102, wireFormat$FieldType, ProtoBuf$Property.class);
        anonymousObjectOriginName = GeneratedMessageLite.newSingularGeneratedExtension(protoBuf$Class, 0, null, 103, wireFormat$FieldType2, Integer.class);
        jvmClassFlags = GeneratedMessageLite.newSingularGeneratedExtension(protoBuf$Class, 0, null, 104, wireFormat$FieldType2, Integer.class);
        ProtoBuf$Package protoBuf$Package = ProtoBuf$Package.defaultInstance;
        packageModuleName = GeneratedMessageLite.newSingularGeneratedExtension(protoBuf$Package, 0, null, 101, wireFormat$FieldType2, Integer.class);
        packageLocalVariable = GeneratedMessageLite.newRepeatedGeneratedExtension(protoBuf$Package, protoBuf$Property, 102, wireFormat$FieldType, ProtoBuf$Property.class);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class JvmFieldSignature extends GeneratedMessageLite {
        public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(24);
        public static final JvmFieldSignature defaultInstance;
        public int bitField0_;
        public int desc_;
        public byte memoizedIsInitialized;
        public int memoizedSerializedSize;
        public int name_;
        public final ByteString unknownFields;

        static {
            JvmFieldSignature jvmFieldSignature = new JvmFieldSignature();
            defaultInstance = jvmFieldSignature;
            jvmFieldSignature.name_ = 0;
            jvmFieldSignature.desc_ = 0;
        }

        public JvmFieldSignature(CodedInputStream codedInputStream) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            boolean z = false;
            this.name_ = 0;
            this.desc_ = 0;
            ByteString.Output output = new ByteString.Output();
            SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.bitField0_ |= 1;
                                this.name_ = codedInputStream.readRawVarint32();
                            } else if (readTag == 16) {
                                this.bitField0_ |= 2;
                                this.desc_ = codedInputStream.readRawVarint32();
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
            int computeInt32Size = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeInt32Size(1, this.name_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeInt32Size += SVG.PathDefinition.computeInt32Size(2, this.desc_);
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
            return new Builder(0);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final GeneratedMessageLite.Builder toBuilder() {
            Builder builder = new Builder(0);
            builder.mergeFrom(this);
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final void writeTo(SVG.PathDefinition pathDefinition) {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                pathDefinition.writeInt32(1, this.name_);
            }
            if ((this.bitField0_ & 2) == 2) {
                pathDefinition.writeInt32(2, this.desc_);
            }
            pathDefinition.writeRawBytes(this.unknownFields);
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Builder extends GeneratedMessageLite.Builder implements MessageLiteOrBuilder {
            public final /* synthetic */ int $r8$classId;
            public int bitField0_;
            public int desc_;
            public int name_;

            public /* synthetic */ Builder(int i) {
                this.$r8$classId = i;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            public final AbstractMessageLite build() {
                switch (this.$r8$classId) {
                    case 0:
                        JvmFieldSignature buildPartial = buildPartial();
                        if (buildPartial.isInitialized()) {
                            return buildPartial;
                        }
                        throw new HttpException(false);
                    default:
                        JvmMethodSignature m835buildPartial = m835buildPartial();
                        if (m835buildPartial.isInitialized()) {
                            return m835buildPartial;
                        }
                        throw new HttpException(false);
                }
            }

            /* renamed from: buildPartial, reason: collision with other method in class */
            public JvmMethodSignature m835buildPartial() {
                JvmMethodSignature jvmMethodSignature = new JvmMethodSignature(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                jvmMethodSignature.name_ = this.name_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                jvmMethodSignature.desc_ = this.desc_;
                jvmMethodSignature.bitField0_ = i2;
                return jvmMethodSignature;
            }

            public final Object clone() {
                switch (this.$r8$classId) {
                    case 0:
                        Builder builder = new Builder(0);
                        builder.mergeFrom(buildPartial());
                        return builder;
                    default:
                        Builder builder2 = new Builder(1);
                        builder2.mergeFrom(m835buildPartial());
                        return builder2;
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x0020  */
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r2, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r3) {
                /*
                    r1 = this;
                    int r3 = r1.$r8$classId
                    r0 = 0
                    switch(r3) {
                        case 0: goto L24;
                        default: goto L6;
                    }
                L6:
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r3 = kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmMethodSignature.PARSER     // Catch: java.lang.Throwable -> L14 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L16
                    r3.getClass()     // Catch: java.lang.Throwable -> L14 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L16
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmMethodSignature r3 = new kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmMethodSignature     // Catch: java.lang.Throwable -> L14 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L16
                    r3.<init>(r2)     // Catch: java.lang.Throwable -> L14 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L16
                    r1.mergeFrom(r3)
                    return r1
                L14:
                    r2 = move-exception
                    goto L1e
                L16:
                    r2 = move-exception
                    kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r3 = r2.unfinishedMessage     // Catch: java.lang.Throwable -> L14
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmMethodSignature r3 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmMethodSignature) r3     // Catch: java.lang.Throwable -> L14
                    throw r2     // Catch: java.lang.Throwable -> L1c
                L1c:
                    r2 = move-exception
                    r0 = r3
                L1e:
                    if (r0 == 0) goto L23
                    r1.mergeFrom(r0)
                L23:
                    throw r2
                L24:
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r3 = kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmFieldSignature.PARSER     // Catch: java.lang.Throwable -> L32 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L34
                    r3.getClass()     // Catch: java.lang.Throwable -> L32 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L34
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmFieldSignature r3 = new kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmFieldSignature     // Catch: java.lang.Throwable -> L32 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L34
                    r3.<init>(r2)     // Catch: java.lang.Throwable -> L32 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L34
                    r1.mergeFrom(r3)
                    return r1
                L32:
                    r2 = move-exception
                    goto L3c
                L34:
                    r2 = move-exception
                    kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r3 = r2.unfinishedMessage     // Catch: java.lang.Throwable -> L32
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmFieldSignature r3 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmFieldSignature) r3     // Catch: java.lang.Throwable -> L32
                    throw r2     // Catch: java.lang.Throwable -> L3a
                L3a:
                    r2 = move-exception
                    r0 = r3
                L3c:
                    if (r0 == 0) goto L41
                    r1.mergeFrom(r0)
                L41:
                    throw r2
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmFieldSignature.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
            }

            public JvmFieldSignature buildPartial() {
                JvmFieldSignature jvmFieldSignature = new JvmFieldSignature(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                jvmFieldSignature.name_ = this.name_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                jvmFieldSignature.desc_ = this.desc_;
                jvmFieldSignature.bitField0_ = i2;
                return jvmFieldSignature;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
                switch (this.$r8$classId) {
                    case 0:
                        mergeFrom((JvmFieldSignature) generatedMessageLite);
                        break;
                    default:
                        mergeFrom((JvmMethodSignature) generatedMessageLite);
                        break;
                }
                return this;
            }

            public void mergeFrom(JvmMethodSignature jvmMethodSignature) {
                if (jvmMethodSignature == JvmMethodSignature.defaultInstance) {
                    return;
                }
                int i = jvmMethodSignature.bitField0_;
                if ((i & 1) == 1) {
                    int i2 = jvmMethodSignature.name_;
                    this.bitField0_ = 1 | this.bitField0_;
                    this.name_ = i2;
                }
                if ((i & 2) == 2) {
                    int i3 = jvmMethodSignature.desc_;
                    this.bitField0_ = 2 | this.bitField0_;
                    this.desc_ = i3;
                }
                this.unknownFields = this.unknownFields.concat(jvmMethodSignature.unknownFields);
            }

            public void mergeFrom(JvmFieldSignature jvmFieldSignature) {
                if (jvmFieldSignature == JvmFieldSignature.defaultInstance) {
                    return;
                }
                int i = jvmFieldSignature.bitField0_;
                if ((i & 1) == 1) {
                    int i2 = jvmFieldSignature.name_;
                    this.bitField0_ = 1 | this.bitField0_;
                    this.name_ = i2;
                }
                if ((i & 2) == 2) {
                    int i3 = jvmFieldSignature.desc_;
                    this.bitField0_ = 2 | this.bitField0_;
                    this.desc_ = i3;
                }
                this.unknownFields = this.unknownFields.concat(jvmFieldSignature.unknownFields);
            }
        }

        public JvmFieldSignature(Builder builder) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.unknownFields;
        }

        public JvmFieldSignature() {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class StringTableTypes extends GeneratedMessageLite {
        public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(27);
        public static final StringTableTypes defaultInstance;
        public int localNameMemoizedSerializedSize;
        public List localName_;
        public byte memoizedIsInitialized;
        public int memoizedSerializedSize;
        public List record_;
        public final ByteString unknownFields;

        static {
            StringTableTypes stringTableTypes = new StringTableTypes();
            defaultInstance = stringTableTypes;
            List list = Collections.EMPTY_LIST;
            stringTableTypes.record_ = list;
            stringTableTypes.localName_ = list;
        }

        public StringTableTypes(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this.localNameMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            List list = Collections.EMPTY_LIST;
            this.record_ = list;
            this.localName_ = list;
            ByteString.Output output = new ByteString.Output();
            SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
            boolean z = false;
            int i = 0;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    if ((i & 1) != 1) {
                                        this.record_ = new ArrayList();
                                        i |= 1;
                                    }
                                    this.record_.add(codedInputStream.readMessage(Record.PARSER, extensionRegistryLite));
                                } else if (readTag == 40) {
                                    if ((i & 2) != 2) {
                                        this.localName_ = new ArrayList();
                                        i |= 2;
                                    }
                                    this.localName_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                                } else if (readTag == 42) {
                                    int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    if ((i & 2) != 2 && codedInputStream.getBytesUntilLimit() > 0) {
                                        this.localName_ = new ArrayList();
                                        i |= 2;
                                    }
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.localName_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                                    }
                                    codedInputStream.popLimit(pushLimit);
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
                    if ((i & 1) == 1) {
                        this.record_ = DesugarCollections.unmodifiableList(this.record_);
                    }
                    if ((i & 2) == 2) {
                        this.localName_ = DesugarCollections.unmodifiableList(this.localName_);
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
            if ((i & 1) == 1) {
                this.record_ = DesugarCollections.unmodifiableList(this.record_);
            }
            if ((i & 2) == 2) {
                this.localName_ = DesugarCollections.unmodifiableList(this.localName_);
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
            List list;
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < this.record_.size(); i4++) {
                i3 += SVG.PathDefinition.computeMessageSize(1, (AbstractMessageLite) this.record_.get(i4));
            }
            int i5 = 0;
            while (true) {
                int size = this.localName_.size();
                list = this.localName_;
                if (i2 >= size) {
                    break;
                }
                i5 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list.get(i2)).intValue());
                i2++;
            }
            int i6 = i3 + i5;
            if (!list.isEmpty()) {
                i6 = i6 + 1 + SVG.PathDefinition.computeInt32SizeNoTag(i5);
            }
            this.localNameMemoizedSerializedSize = i5;
            int size2 = this.unknownFields.size() + i6;
            this.memoizedSerializedSize = size2;
            return size2;
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
            List list = Collections.EMPTY_LIST;
            builder.record_ = list;
            builder.localName_ = list;
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final GeneratedMessageLite.Builder toBuilder() {
            Builder builder = new Builder();
            List list = Collections.EMPTY_LIST;
            builder.record_ = list;
            builder.localName_ = list;
            builder.mergeFrom(this);
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final void writeTo(SVG.PathDefinition pathDefinition) {
            getSerializedSize();
            for (int i = 0; i < this.record_.size(); i++) {
                pathDefinition.writeMessage(1, (AbstractMessageLite) this.record_.get(i));
            }
            if (this.localName_.size() > 0) {
                pathDefinition.writeRawVarint32(42);
                pathDefinition.writeRawVarint32(this.localNameMemoizedSerializedSize);
            }
            for (int i2 = 0; i2 < this.localName_.size(); i2++) {
                pathDefinition.writeInt32NoTag(((Integer) this.localName_.get(i2)).intValue());
            }
            pathDefinition.writeRawBytes(this.unknownFields);
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Builder extends GeneratedMessageLite.Builder implements MessageLiteOrBuilder {
            public int bitField0_;
            public List localName_;
            public List record_;

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            public final AbstractMessageLite build() {
                StringTableTypes buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw new HttpException(false);
            }

            public final StringTableTypes buildPartial() {
                StringTableTypes stringTableTypes = new StringTableTypes(this);
                int i = this.bitField0_;
                if ((i & 1) == 1) {
                    this.record_ = DesugarCollections.unmodifiableList(this.record_);
                    i = this.bitField0_ & (-2);
                    this.bitField0_ = i;
                }
                stringTableTypes.record_ = this.record_;
                if ((i & 2) == 2) {
                    this.localName_ = DesugarCollections.unmodifiableList(this.localName_);
                    this.bitField0_ &= -3;
                }
                stringTableTypes.localName_ = this.localName_;
                return stringTableTypes;
            }

            public final Object clone() {
                Builder builder = new Builder();
                List list = Collections.EMPTY_LIST;
                builder.record_ = list;
                builder.localName_ = list;
                builder.mergeFrom(buildPartial());
                return builder;
            }

            public final void mergeFrom(StringTableTypes stringTableTypes) {
                if (stringTableTypes == StringTableTypes.defaultInstance) {
                    return;
                }
                if (!stringTableTypes.record_.isEmpty()) {
                    if (this.record_.isEmpty()) {
                        this.record_ = stringTableTypes.record_;
                        this.bitField0_ &= -2;
                    } else {
                        if ((this.bitField0_ & 1) != 1) {
                            this.record_ = new ArrayList(this.record_);
                            this.bitField0_ |= 1;
                        }
                        this.record_.addAll(stringTableTypes.record_);
                    }
                }
                if (!stringTableTypes.localName_.isEmpty()) {
                    if (this.localName_.isEmpty()) {
                        this.localName_ = stringTableTypes.localName_;
                        this.bitField0_ &= -3;
                    } else {
                        if ((this.bitField0_ & 2) != 2) {
                            this.localName_ = new ArrayList(this.localName_);
                            this.bitField0_ |= 2;
                        }
                        this.localName_.addAll(stringTableTypes.localName_);
                    }
                }
                this.unknownFields = this.unknownFields.concat(stringTableTypes.unknownFields);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
                mergeFrom((StringTableTypes) generatedMessageLite);
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
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes r1 = new kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    r2.mergeFrom(r1)
                    return r2
                Lf:
                    r3 = move-exception
                    goto L19
                L11:
                    r3 = move-exception
                    kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes r4 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Record extends GeneratedMessageLite {
            public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(28);
            public static final Record defaultInstance;
            public int bitField0_;
            public byte memoizedIsInitialized;
            public int memoizedSerializedSize;
            public Operation operation_;
            public int predefinedIndex_;
            public int range_;
            public int replaceCharMemoizedSerializedSize;
            public List replaceChar_;
            public Object string_;
            public int substringIndexMemoizedSerializedSize;
            public List substringIndex_;
            public final ByteString unknownFields;

            /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
            public enum Operation implements Internal.EnumLite {
                NONE(0),
                INTERNAL_TO_CLASS_ID(1),
                DESC_TO_CLASS_ID(2);

                private static Internal.EnumLiteMap internalValueMap = new LoginClient(4);
                private final int value;

                Operation(int i) {
                    this.value = i;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
                public final int getNumber() {
                    return this.value;
                }
            }

            static {
                Record record = new Record();
                defaultInstance = record;
                record.range_ = 1;
                record.predefinedIndex_ = 0;
                record.string_ = "";
                record.operation_ = Operation.NONE;
                List list = Collections.EMPTY_LIST;
                record.substringIndex_ = list;
                record.replaceChar_ = list;
            }

            public Record(CodedInputStream codedInputStream) {
                this.substringIndexMemoizedSerializedSize = -1;
                this.replaceCharMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
                this.range_ = 1;
                boolean z = false;
                this.predefinedIndex_ = 0;
                this.string_ = "";
                this.operation_ = Operation.NONE;
                List list = Collections.EMPTY_LIST;
                this.substringIndex_ = list;
                this.replaceChar_ = list;
                ByteString.Output output = new ByteString.Output();
                SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
                int i = 0;
                while (!z) {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 8) {
                                    this.bitField0_ |= 1;
                                    this.range_ = codedInputStream.readRawVarint32();
                                } else if (readTag == 16) {
                                    this.bitField0_ |= 2;
                                    this.predefinedIndex_ = codedInputStream.readRawVarint32();
                                } else if (readTag == 24) {
                                    int readRawVarint32 = codedInputStream.readRawVarint32();
                                    Operation operation = readRawVarint32 != 0 ? readRawVarint32 != 1 ? readRawVarint32 != 2 ? null : Operation.DESC_TO_CLASS_ID : Operation.INTERNAL_TO_CLASS_ID : Operation.NONE;
                                    if (operation == null) {
                                        newInstance.writeRawVarint32(readTag);
                                        newInstance.writeRawVarint32(readRawVarint32);
                                    } else {
                                        this.bitField0_ |= 8;
                                        this.operation_ = operation;
                                    }
                                } else if (readTag == 32) {
                                    if ((i & 16) != 16) {
                                        this.substringIndex_ = new ArrayList();
                                        i |= 16;
                                    }
                                    this.substringIndex_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                                } else if (readTag == 34) {
                                    int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    if ((i & 16) != 16 && codedInputStream.getBytesUntilLimit() > 0) {
                                        this.substringIndex_ = new ArrayList();
                                        i |= 16;
                                    }
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.substringIndex_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                                    }
                                    codedInputStream.popLimit(pushLimit);
                                } else if (readTag == 40) {
                                    if ((i & 32) != 32) {
                                        this.replaceChar_ = new ArrayList();
                                        i |= 32;
                                    }
                                    this.replaceChar_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                                } else if (readTag == 42) {
                                    int pushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    if ((i & 32) != 32 && codedInputStream.getBytesUntilLimit() > 0) {
                                        this.replaceChar_ = new ArrayList();
                                        i |= 32;
                                    }
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.replaceChar_.add(Integer.valueOf(codedInputStream.readRawVarint32()));
                                    }
                                    codedInputStream.popLimit(pushLimit2);
                                } else if (readTag == 50) {
                                    LiteralByteString readBytes = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                    this.string_ = readBytes;
                                } else if (!codedInputStream.skipField(readTag, newInstance)) {
                                }
                            }
                            z = true;
                        } catch (Throwable th) {
                            if ((i & 16) == 16) {
                                this.substringIndex_ = DesugarCollections.unmodifiableList(this.substringIndex_);
                            }
                            if ((i & 32) == 32) {
                                this.replaceChar_ = DesugarCollections.unmodifiableList(this.replaceChar_);
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
                if ((i & 16) == 16) {
                    this.substringIndex_ = DesugarCollections.unmodifiableList(this.substringIndex_);
                }
                if ((i & 32) == 32) {
                    this.replaceChar_ = DesugarCollections.unmodifiableList(this.replaceChar_);
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
                List list;
                List list2;
                ByteString byteString;
                int i = this.memoizedSerializedSize;
                if (i != -1) {
                    return i;
                }
                int computeInt32Size = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeInt32Size(1, this.range_) : 0;
                if ((this.bitField0_ & 2) == 2) {
                    computeInt32Size += SVG.PathDefinition.computeInt32Size(2, this.predefinedIndex_);
                }
                if ((this.bitField0_ & 8) == 8) {
                    computeInt32Size += SVG.PathDefinition.computeEnumSize(3, this.operation_.getNumber());
                }
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    int size = this.substringIndex_.size();
                    list = this.substringIndex_;
                    if (i2 >= size) {
                        break;
                    }
                    i3 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list.get(i2)).intValue());
                    i2++;
                }
                int i4 = computeInt32Size + i3;
                if (!list.isEmpty()) {
                    i4 = i4 + 1 + SVG.PathDefinition.computeInt32SizeNoTag(i3);
                }
                this.substringIndexMemoizedSerializedSize = i3;
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    int size2 = this.replaceChar_.size();
                    list2 = this.replaceChar_;
                    if (i5 >= size2) {
                        break;
                    }
                    i6 += SVG.PathDefinition.computeInt32SizeNoTag(((Integer) list2.get(i5)).intValue());
                    i5++;
                }
                int i7 = i4 + i6;
                if (!list2.isEmpty()) {
                    i7 = i7 + 1 + SVG.PathDefinition.computeInt32SizeNoTag(i6);
                }
                this.replaceCharMemoizedSerializedSize = i6;
                if ((this.bitField0_ & 4) == 4) {
                    Object obj = this.string_;
                    if (obj instanceof String) {
                        try {
                            byteString = new LiteralByteString(((String) obj).getBytes("UTF-8"));
                            this.string_ = byteString;
                        } catch (UnsupportedEncodingException e) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m("UTF-8 not supported?", (Throwable) e);
                            return 0;
                        }
                    } else {
                        byteString = (ByteString) obj;
                    }
                    i7 += byteString.size() + SVG.PathDefinition.computeRawVarint32Size(byteString.size()) + SVG.PathDefinition.computeTagSize(6);
                }
                int size3 = this.unknownFields.size() + i7;
                this.memoizedSerializedSize = size3;
                return size3;
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
                ByteString byteString;
                getSerializedSize();
                if ((this.bitField0_ & 1) == 1) {
                    pathDefinition.writeInt32(1, this.range_);
                }
                if ((this.bitField0_ & 2) == 2) {
                    pathDefinition.writeInt32(2, this.predefinedIndex_);
                }
                if ((this.bitField0_ & 8) == 8) {
                    pathDefinition.writeEnum(3, this.operation_.getNumber());
                }
                if (this.substringIndex_.size() > 0) {
                    pathDefinition.writeRawVarint32(34);
                    pathDefinition.writeRawVarint32(this.substringIndexMemoizedSerializedSize);
                }
                for (int i = 0; i < this.substringIndex_.size(); i++) {
                    pathDefinition.writeInt32NoTag(((Integer) this.substringIndex_.get(i)).intValue());
                }
                if (this.replaceChar_.size() > 0) {
                    pathDefinition.writeRawVarint32(42);
                    pathDefinition.writeRawVarint32(this.replaceCharMemoizedSerializedSize);
                }
                for (int i2 = 0; i2 < this.replaceChar_.size(); i2++) {
                    pathDefinition.writeInt32NoTag(((Integer) this.replaceChar_.get(i2)).intValue());
                }
                if ((this.bitField0_ & 4) == 4) {
                    Object obj = this.string_;
                    if (obj instanceof String) {
                        try {
                            byteString = new LiteralByteString(((String) obj).getBytes("UTF-8"));
                            this.string_ = byteString;
                        } catch (UnsupportedEncodingException e) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m("UTF-8 not supported?", (Throwable) e);
                            return;
                        }
                    } else {
                        byteString = (ByteString) obj;
                    }
                    pathDefinition.writeTag(6, 2);
                    pathDefinition.writeRawVarint32(byteString.size());
                    pathDefinition.writeRawBytes(byteString);
                }
                pathDefinition.writeRawBytes(this.unknownFields);
            }

            /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
            public final class Builder extends GeneratedMessageLite.Builder implements MessageLiteOrBuilder {
                public int bitField0_;
                public Operation operation_;
                public int predefinedIndex_;
                public int range_;
                public List replaceChar_;
                public Object string_;
                public List substringIndex_;

                public static Builder create() {
                    Builder builder = new Builder();
                    builder.range_ = 1;
                    builder.string_ = "";
                    builder.operation_ = Operation.NONE;
                    List list = Collections.EMPTY_LIST;
                    builder.substringIndex_ = list;
                    builder.replaceChar_ = list;
                    return builder;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
                public final AbstractMessageLite build() {
                    Record buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw new HttpException(false);
                }

                public final Record buildPartial() {
                    Record record = new Record(this);
                    int i = this.bitField0_;
                    int i2 = (i & 1) != 1 ? 0 : 1;
                    record.range_ = this.range_;
                    if ((i & 2) == 2) {
                        i2 |= 2;
                    }
                    record.predefinedIndex_ = this.predefinedIndex_;
                    if ((i & 4) == 4) {
                        i2 |= 4;
                    }
                    record.string_ = this.string_;
                    if ((i & 8) == 8) {
                        i2 |= 8;
                    }
                    record.operation_ = this.operation_;
                    if ((i & 16) == 16) {
                        this.substringIndex_ = DesugarCollections.unmodifiableList(this.substringIndex_);
                        i = this.bitField0_ & (-17);
                        this.bitField0_ = i;
                    }
                    record.substringIndex_ = this.substringIndex_;
                    if ((i & 32) == 32) {
                        this.replaceChar_ = DesugarCollections.unmodifiableList(this.replaceChar_);
                        this.bitField0_ &= -33;
                    }
                    record.replaceChar_ = this.replaceChar_;
                    record.bitField0_ = i2;
                    return record;
                }

                public final Object clone() {
                    Builder create = create();
                    create.mergeFrom(buildPartial());
                    return create;
                }

                public final void mergeFrom(Record record) {
                    if (record == Record.defaultInstance) {
                        return;
                    }
                    int i = record.bitField0_;
                    if ((i & 1) == 1) {
                        int i2 = record.range_;
                        this.bitField0_ = 1 | this.bitField0_;
                        this.range_ = i2;
                    }
                    if ((i & 2) == 2) {
                        int i3 = record.predefinedIndex_;
                        this.bitField0_ = 2 | this.bitField0_;
                        this.predefinedIndex_ = i3;
                    }
                    if ((i & 4) == 4) {
                        this.bitField0_ |= 4;
                        this.string_ = record.string_;
                    }
                    if ((i & 8) == 8) {
                        Operation operation = record.operation_;
                        operation.getClass();
                        this.bitField0_ = 8 | this.bitField0_;
                        this.operation_ = operation;
                    }
                    if (!record.substringIndex_.isEmpty()) {
                        if (this.substringIndex_.isEmpty()) {
                            this.substringIndex_ = record.substringIndex_;
                            this.bitField0_ &= -17;
                        } else {
                            if ((this.bitField0_ & 16) != 16) {
                                this.substringIndex_ = new ArrayList(this.substringIndex_);
                                this.bitField0_ |= 16;
                            }
                            this.substringIndex_.addAll(record.substringIndex_);
                        }
                    }
                    if (!record.replaceChar_.isEmpty()) {
                        if (this.replaceChar_.isEmpty()) {
                            this.replaceChar_ = record.replaceChar_;
                            this.bitField0_ &= -33;
                        } else {
                            if ((this.bitField0_ & 32) != 32) {
                                this.replaceChar_ = new ArrayList(this.replaceChar_);
                                this.bitField0_ |= 32;
                            }
                            this.replaceChar_.addAll(record.replaceChar_);
                        }
                    }
                    this.unknownFields = this.unknownFields.concat(record.unknownFields);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
                public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
                    mergeFrom((Record) generatedMessageLite);
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
                        kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r0 = kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes.Record.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                        r0.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                        kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes$Record r0 = new kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes$Record     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                        r0.<init>(r2)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                        r1.mergeFrom(r0)
                        return r1
                    Lf:
                        r2 = move-exception
                        goto L19
                    L11:
                        r2 = move-exception
                        kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r0 = r2.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                        kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes$Record r0 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes.Record) r0     // Catch: java.lang.Throwable -> Lf
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
                    throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes.Record.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
                }
            }

            public Record(Builder builder) {
                this.substringIndexMemoizedSerializedSize = -1;
                this.replaceCharMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = builder.unknownFields;
            }

            public Record() {
                this.substringIndexMemoizedSerializedSize = -1;
                this.replaceCharMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = ByteString.EMPTY;
            }
        }

        public StringTableTypes(Builder builder) {
            this.localNameMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.unknownFields;
        }

        public StringTableTypes() {
            this.localNameMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class JvmMethodSignature extends GeneratedMessageLite {
        public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(25);
        public static final JvmMethodSignature defaultInstance;
        public int bitField0_;
        public int desc_;
        public byte memoizedIsInitialized;
        public int memoizedSerializedSize;
        public int name_;
        public final ByteString unknownFields;

        static {
            JvmMethodSignature jvmMethodSignature = new JvmMethodSignature();
            defaultInstance = jvmMethodSignature;
            jvmMethodSignature.name_ = 0;
            jvmMethodSignature.desc_ = 0;
        }

        public JvmMethodSignature(CodedInputStream codedInputStream) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            boolean z = false;
            this.name_ = 0;
            this.desc_ = 0;
            ByteString.Output output = new ByteString.Output();
            SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.bitField0_ |= 1;
                                this.name_ = codedInputStream.readRawVarint32();
                            } else if (readTag == 16) {
                                this.bitField0_ |= 2;
                                this.desc_ = codedInputStream.readRawVarint32();
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

        public static JvmFieldSignature.Builder newBuilder(JvmMethodSignature jvmMethodSignature) {
            JvmFieldSignature.Builder builder = new JvmFieldSignature.Builder(1);
            builder.mergeFrom(jvmMethodSignature);
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeInt32Size = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeInt32Size(1, this.name_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeInt32Size += SVG.PathDefinition.computeInt32Size(2, this.desc_);
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
            return new JvmFieldSignature.Builder(1);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final GeneratedMessageLite.Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite
        public final void writeTo(SVG.PathDefinition pathDefinition) {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                pathDefinition.writeInt32(1, this.name_);
            }
            if ((this.bitField0_ & 2) == 2) {
                pathDefinition.writeInt32(2, this.desc_);
            }
            pathDefinition.writeRawBytes(this.unknownFields);
        }

        public JvmMethodSignature(JvmFieldSignature.Builder builder) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.unknownFields;
        }

        public JvmMethodSignature() {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class JvmPropertySignature extends GeneratedMessageLite {
        public static final ProtoBuf$Type.AnonymousClass1 PARSER = new ProtoBuf$Type.AnonymousClass1(26);
        public static final JvmPropertySignature defaultInstance;
        public int bitField0_;
        public JvmMethodSignature delegateMethod_;
        public JvmFieldSignature field_;
        public JvmMethodSignature getter_;
        public byte memoizedIsInitialized;
        public int memoizedSerializedSize;
        public JvmMethodSignature setter_;
        public JvmMethodSignature syntheticMethod_;
        public final ByteString unknownFields;

        static {
            JvmPropertySignature jvmPropertySignature = new JvmPropertySignature();
            defaultInstance = jvmPropertySignature;
            jvmPropertySignature.field_ = JvmFieldSignature.defaultInstance;
            JvmMethodSignature jvmMethodSignature = JvmMethodSignature.defaultInstance;
            jvmPropertySignature.syntheticMethod_ = jvmMethodSignature;
            jvmPropertySignature.getter_ = jvmMethodSignature;
            jvmPropertySignature.setter_ = jvmMethodSignature;
            jvmPropertySignature.delegateMethod_ = jvmMethodSignature;
        }

        public JvmPropertySignature(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.field_ = JvmFieldSignature.defaultInstance;
            JvmMethodSignature jvmMethodSignature = JvmMethodSignature.defaultInstance;
            this.syntheticMethod_ = jvmMethodSignature;
            this.getter_ = jvmMethodSignature;
            this.setter_ = jvmMethodSignature;
            this.delegateMethod_ = jvmMethodSignature;
            ByteString.Output output = new ByteString.Output();
            SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(output, 1);
            int i = 0;
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            JvmFieldSignature.Builder builder = null;
                            if (readTag == 10) {
                                if ((this.bitField0_ & 1) == 1) {
                                    JvmFieldSignature jvmFieldSignature = this.field_;
                                    jvmFieldSignature.getClass();
                                    builder = new JvmFieldSignature.Builder(i);
                                    builder.mergeFrom(jvmFieldSignature);
                                }
                                JvmFieldSignature jvmFieldSignature2 = (JvmFieldSignature) codedInputStream.readMessage(JvmFieldSignature.PARSER, extensionRegistryLite);
                                this.field_ = jvmFieldSignature2;
                                if (builder != null) {
                                    builder.mergeFrom(jvmFieldSignature2);
                                    this.field_ = builder.buildPartial();
                                }
                                this.bitField0_ |= 1;
                            } else if (readTag == 18) {
                                if ((this.bitField0_ & 2) == 2) {
                                    JvmMethodSignature jvmMethodSignature2 = this.syntheticMethod_;
                                    jvmMethodSignature2.getClass();
                                    builder = JvmMethodSignature.newBuilder(jvmMethodSignature2);
                                }
                                JvmMethodSignature jvmMethodSignature3 = (JvmMethodSignature) codedInputStream.readMessage(JvmMethodSignature.PARSER, extensionRegistryLite);
                                this.syntheticMethod_ = jvmMethodSignature3;
                                if (builder != null) {
                                    builder.mergeFrom(jvmMethodSignature3);
                                    this.syntheticMethod_ = builder.m835buildPartial();
                                }
                                this.bitField0_ |= 2;
                            } else if (readTag == 26) {
                                if ((this.bitField0_ & 4) == 4) {
                                    JvmMethodSignature jvmMethodSignature4 = this.getter_;
                                    jvmMethodSignature4.getClass();
                                    builder = JvmMethodSignature.newBuilder(jvmMethodSignature4);
                                }
                                JvmMethodSignature jvmMethodSignature5 = (JvmMethodSignature) codedInputStream.readMessage(JvmMethodSignature.PARSER, extensionRegistryLite);
                                this.getter_ = jvmMethodSignature5;
                                if (builder != null) {
                                    builder.mergeFrom(jvmMethodSignature5);
                                    this.getter_ = builder.m835buildPartial();
                                }
                                this.bitField0_ |= 4;
                            } else if (readTag == 34) {
                                if ((this.bitField0_ & 8) == 8) {
                                    JvmMethodSignature jvmMethodSignature6 = this.setter_;
                                    jvmMethodSignature6.getClass();
                                    builder = JvmMethodSignature.newBuilder(jvmMethodSignature6);
                                }
                                JvmMethodSignature jvmMethodSignature7 = (JvmMethodSignature) codedInputStream.readMessage(JvmMethodSignature.PARSER, extensionRegistryLite);
                                this.setter_ = jvmMethodSignature7;
                                if (builder != null) {
                                    builder.mergeFrom(jvmMethodSignature7);
                                    this.setter_ = builder.m835buildPartial();
                                }
                                this.bitField0_ |= 8;
                            } else if (readTag == 42) {
                                if ((this.bitField0_ & 16) == 16) {
                                    JvmMethodSignature jvmMethodSignature8 = this.delegateMethod_;
                                    jvmMethodSignature8.getClass();
                                    builder = JvmMethodSignature.newBuilder(jvmMethodSignature8);
                                }
                                JvmMethodSignature jvmMethodSignature9 = (JvmMethodSignature) codedInputStream.readMessage(JvmMethodSignature.PARSER, extensionRegistryLite);
                                this.delegateMethod_ = jvmMethodSignature9;
                                if (builder != null) {
                                    builder.mergeFrom(jvmMethodSignature9);
                                    this.delegateMethod_ = builder.m835buildPartial();
                                }
                                this.bitField0_ |= 16;
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
            int computeMessageSize = (this.bitField0_ & 1) == 1 ? SVG.PathDefinition.computeMessageSize(1, this.field_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeMessageSize += SVG.PathDefinition.computeMessageSize(2, this.syntheticMethod_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeMessageSize += SVG.PathDefinition.computeMessageSize(3, this.getter_);
            }
            if ((this.bitField0_ & 8) == 8) {
                computeMessageSize += SVG.PathDefinition.computeMessageSize(4, this.setter_);
            }
            if ((this.bitField0_ & 16) == 16) {
                computeMessageSize += SVG.PathDefinition.computeMessageSize(5, this.delegateMethod_);
            }
            int size = this.unknownFields.size() + computeMessageSize;
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
                pathDefinition.writeMessage(1, this.field_);
            }
            if ((this.bitField0_ & 2) == 2) {
                pathDefinition.writeMessage(2, this.syntheticMethod_);
            }
            if ((this.bitField0_ & 4) == 4) {
                pathDefinition.writeMessage(3, this.getter_);
            }
            if ((this.bitField0_ & 8) == 8) {
                pathDefinition.writeMessage(4, this.setter_);
            }
            if ((this.bitField0_ & 16) == 16) {
                pathDefinition.writeMessage(5, this.delegateMethod_);
            }
            pathDefinition.writeRawBytes(this.unknownFields);
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Builder extends GeneratedMessageLite.Builder implements MessageLiteOrBuilder {
            public int bitField0_;
            public JvmMethodSignature delegateMethod_;
            public JvmFieldSignature field_;
            public JvmMethodSignature getter_;
            public JvmMethodSignature setter_;
            public JvmMethodSignature syntheticMethod_;

            public static Builder create() {
                Builder builder = new Builder();
                builder.field_ = JvmFieldSignature.defaultInstance;
                JvmMethodSignature jvmMethodSignature = JvmMethodSignature.defaultInstance;
                builder.syntheticMethod_ = jvmMethodSignature;
                builder.getter_ = jvmMethodSignature;
                builder.setter_ = jvmMethodSignature;
                builder.delegateMethod_ = jvmMethodSignature;
                return builder;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            public final AbstractMessageLite build() {
                JvmPropertySignature buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw new HttpException(false);
            }

            public final JvmPropertySignature buildPartial() {
                JvmPropertySignature jvmPropertySignature = new JvmPropertySignature(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                jvmPropertySignature.field_ = this.field_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                jvmPropertySignature.syntheticMethod_ = this.syntheticMethod_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                jvmPropertySignature.getter_ = this.getter_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                jvmPropertySignature.setter_ = this.setter_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                jvmPropertySignature.delegateMethod_ = this.delegateMethod_;
                jvmPropertySignature.bitField0_ = i2;
                return jvmPropertySignature;
            }

            public final Object clone() {
                Builder create = create();
                create.mergeFrom(buildPartial());
                return create;
            }

            public final void mergeFrom(JvmPropertySignature jvmPropertySignature) {
                JvmMethodSignature jvmMethodSignature;
                JvmMethodSignature jvmMethodSignature2;
                JvmMethodSignature jvmMethodSignature3;
                JvmMethodSignature jvmMethodSignature4;
                JvmFieldSignature jvmFieldSignature;
                if (jvmPropertySignature == JvmPropertySignature.defaultInstance) {
                    return;
                }
                if ((jvmPropertySignature.bitField0_ & 1) == 1) {
                    JvmFieldSignature jvmFieldSignature2 = jvmPropertySignature.field_;
                    if ((this.bitField0_ & 1) != 1 || (jvmFieldSignature = this.field_) == JvmFieldSignature.defaultInstance) {
                        this.field_ = jvmFieldSignature2;
                    } else {
                        JvmFieldSignature.Builder builder = new JvmFieldSignature.Builder(0);
                        builder.mergeFrom(jvmFieldSignature);
                        builder.mergeFrom(jvmFieldSignature2);
                        this.field_ = builder.buildPartial();
                    }
                    this.bitField0_ |= 1;
                }
                if ((jvmPropertySignature.bitField0_ & 2) == 2) {
                    JvmMethodSignature jvmMethodSignature5 = jvmPropertySignature.syntheticMethod_;
                    if ((this.bitField0_ & 2) != 2 || (jvmMethodSignature4 = this.syntheticMethod_) == JvmMethodSignature.defaultInstance) {
                        this.syntheticMethod_ = jvmMethodSignature5;
                    } else {
                        JvmFieldSignature.Builder newBuilder = JvmMethodSignature.newBuilder(jvmMethodSignature4);
                        newBuilder.mergeFrom(jvmMethodSignature5);
                        this.syntheticMethod_ = newBuilder.m835buildPartial();
                    }
                    this.bitField0_ |= 2;
                }
                if ((jvmPropertySignature.bitField0_ & 4) == 4) {
                    JvmMethodSignature jvmMethodSignature6 = jvmPropertySignature.getter_;
                    if ((this.bitField0_ & 4) != 4 || (jvmMethodSignature3 = this.getter_) == JvmMethodSignature.defaultInstance) {
                        this.getter_ = jvmMethodSignature6;
                    } else {
                        JvmFieldSignature.Builder newBuilder2 = JvmMethodSignature.newBuilder(jvmMethodSignature3);
                        newBuilder2.mergeFrom(jvmMethodSignature6);
                        this.getter_ = newBuilder2.m835buildPartial();
                    }
                    this.bitField0_ |= 4;
                }
                if ((jvmPropertySignature.bitField0_ & 8) == 8) {
                    JvmMethodSignature jvmMethodSignature7 = jvmPropertySignature.setter_;
                    if ((this.bitField0_ & 8) != 8 || (jvmMethodSignature2 = this.setter_) == JvmMethodSignature.defaultInstance) {
                        this.setter_ = jvmMethodSignature7;
                    } else {
                        JvmFieldSignature.Builder newBuilder3 = JvmMethodSignature.newBuilder(jvmMethodSignature2);
                        newBuilder3.mergeFrom(jvmMethodSignature7);
                        this.setter_ = newBuilder3.m835buildPartial();
                    }
                    this.bitField0_ |= 8;
                }
                if ((jvmPropertySignature.bitField0_ & 16) == 16) {
                    JvmMethodSignature jvmMethodSignature8 = jvmPropertySignature.delegateMethod_;
                    if ((this.bitField0_ & 16) != 16 || (jvmMethodSignature = this.delegateMethod_) == JvmMethodSignature.defaultInstance) {
                        this.delegateMethod_ = jvmMethodSignature8;
                    } else {
                        JvmFieldSignature.Builder newBuilder4 = JvmMethodSignature.newBuilder(jvmMethodSignature);
                        newBuilder4.mergeFrom(jvmMethodSignature8);
                        this.delegateMethod_ = newBuilder4.m835buildPartial();
                    }
                    this.bitField0_ |= 16;
                }
                this.unknownFields = this.unknownFields.concat(jvmPropertySignature.unknownFields);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder mergeFrom(GeneratedMessageLite generatedMessageLite) {
                mergeFrom((JvmPropertySignature) generatedMessageLite);
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
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r1 = kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmPropertySignature.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    r1.getClass()     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmPropertySignature r1 = new kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmPropertySignature     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    r2.mergeFrom(r1)
                    return r2
                Lf:
                    r3 = move-exception
                    goto L19
                L11:
                    r3 = move-exception
                    kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r4 = r3.unfinishedMessage     // Catch: java.lang.Throwable -> Lf
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmPropertySignature r4 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmPropertySignature) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmPropertySignature.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$Builder");
            }
        }

        public JvmPropertySignature(Builder builder) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.unknownFields;
        }

        public JvmPropertySignature() {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }
    }
}
