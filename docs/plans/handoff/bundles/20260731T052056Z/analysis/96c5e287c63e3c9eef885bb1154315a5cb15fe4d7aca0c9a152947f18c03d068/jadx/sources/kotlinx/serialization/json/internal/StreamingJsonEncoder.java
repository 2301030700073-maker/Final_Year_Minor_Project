package kotlinx.serialization.json.internal;

import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonEncodingException;
import okio.PriorityQueue;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StreamingJsonEncoder extends UuidKt {
    public final Composer composer;
    public final JsonConfiguration configuration;
    public boolean forceQuoting;
    public final Json json;
    public final WriteMode mode;
    public final StreamingJsonEncoder[] modeReuseCache;
    public String polymorphicDiscriminator;
    public String polymorphicSerialName;
    public final LoginClient serializersModule;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WriteMode.values().length];
            try {
                iArr[WriteMode.LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WriteMode.MAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WriteMode.POLY_OBJ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public StreamingJsonEncoder(Composer composer, Json json, WriteMode writeMode, StreamingJsonEncoder[] streamingJsonEncoderArr) {
        composer.getClass();
        this.composer = composer;
        this.json = json;
        this.mode = writeMode;
        this.modeReuseCache = streamingJsonEncoderArr;
        this.serializersModule = json.serializersModule;
        this.configuration = json.configuration;
        int ordinal = writeMode.ordinal();
        if (streamingJsonEncoderArr != null) {
            StreamingJsonEncoder streamingJsonEncoder = streamingJsonEncoderArr[ordinal];
            if (streamingJsonEncoder == null && streamingJsonEncoder == this) {
                return;
            }
            streamingJsonEncoderArr[ordinal] = this;
        }
    }

    @Override // kotlin.uuid.UuidKt
    public final UuidKt beginStructure(SerialDescriptor serialDescriptor) {
        StreamingJsonEncoder streamingJsonEncoder;
        serialDescriptor.getClass();
        Json json = this.json;
        WriteMode switchMode = WriteModeKt.switchMode(serialDescriptor, json);
        char c = switchMode.begin;
        Composer composer = this.composer;
        if (c != 0) {
            composer.print(c);
            composer.writingFirst = true;
        }
        String str = this.polymorphicDiscriminator;
        if (str != null) {
            String str2 = this.polymorphicSerialName;
            if (str2 == null) {
                str2 = serialDescriptor.getSerialName();
            }
            composer.nextItem();
            composer.printQuoted(str);
            composer.print(':');
            encodeString(str2);
            this.polymorphicDiscriminator = null;
            this.polymorphicSerialName = null;
        }
        if (this.mode == switchMode) {
            return this;
        }
        StreamingJsonEncoder[] streamingJsonEncoderArr = this.modeReuseCache;
        return (streamingJsonEncoderArr == null || (streamingJsonEncoder = streamingJsonEncoderArr[switchMode.ordinal()]) == null) ? new StreamingJsonEncoder(composer, json, switchMode, streamingJsonEncoderArr) : streamingJsonEncoder;
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeBoolean(boolean z) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(z));
        } else {
            ((PriorityQueue) this.composer.writer).write(String.valueOf(z));
        }
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeByte(byte b) {
        if (this.forceQuoting) {
            encodeString(String.valueOf((int) b));
        } else {
            this.composer.print(b);
        }
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeChar(char c) {
        encodeString(String.valueOf(c));
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeDouble(double d) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(d));
        } else {
            ((PriorityQueue) this.composer.writer).write(String.valueOf(d));
        }
        if (Math.abs(d) > Double.MAX_VALUE) {
            throw new JsonEncodingException(WriteModeKt.nonFiniteFpMessage(null, Double.valueOf(d)), "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'");
        }
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.mode.ordinal()];
        Composer composer = this.composer;
        boolean z = true;
        if (i2 == 1) {
            if (!composer.writingFirst) {
                composer.print(',');
            }
            composer.nextItem();
            return;
        }
        if (i2 == 2) {
            if (composer.writingFirst) {
                this.forceQuoting = true;
                composer.nextItem();
                return;
            }
            if (i % 2 == 0) {
                composer.print(',');
                composer.nextItem();
            } else {
                composer.print(':');
                composer.space();
                z = false;
            }
            this.forceQuoting = z;
            return;
        }
        if (i2 != 3) {
            if (!composer.writingFirst) {
                composer.print(',');
            }
            composer.nextItem();
            WriteModeKt.namingStrategy(serialDescriptor, this.json);
            encodeString(serialDescriptor.getElementName(i));
            composer.print(':');
            composer.space();
            return;
        }
        if (i == 0) {
            this.forceQuoting = true;
        }
        if (i == 1) {
            composer.print(',');
            composer.space();
            this.forceQuoting = false;
        }
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeEnum(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        encodeString(serialDescriptor.getElementName(i));
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeFloat(float f) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(f));
        } else {
            ((PriorityQueue) this.composer.writer).write(String.valueOf(f));
        }
        if (Math.abs(f) > Float.MAX_VALUE) {
            throw new JsonEncodingException(WriteModeKt.nonFiniteFpMessage(null, Float.valueOf(f)), "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'");
        }
    }

    @Override // kotlin.uuid.UuidKt
    public final UuidKt encodeInline(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        boolean isUnsignedNumber = StreamingJsonEncoderKt.isUnsignedNumber(serialDescriptor);
        WriteMode writeMode = this.mode;
        Json json = this.json;
        Composer composer = this.composer;
        if (isUnsignedNumber) {
            if (!(composer instanceof ComposerForUnsignedNumbers)) {
                composer = new ComposerForUnsignedNumbers((PriorityQueue) composer.writer, this.forceQuoting);
            }
            return new StreamingJsonEncoder(composer, json, writeMode, null);
        }
        if (serialDescriptor.isInline() && serialDescriptor.equals(JsonElementKt.jsonUnquotedLiteralDescriptor)) {
            if (!(composer instanceof ComposerForUnquotedLiterals)) {
                composer = new ComposerForUnquotedLiterals((PriorityQueue) composer.writer, this.forceQuoting);
            }
            return new StreamingJsonEncoder(composer, json, writeMode, null);
        }
        if (this.polymorphicDiscriminator != null) {
            this.polymorphicSerialName = serialDescriptor.getSerialName();
        }
        return this;
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeInt(int i) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(i));
        } else {
            this.composer.print(i);
        }
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeLong(long j) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(j));
        } else {
            this.composer.print(j);
        }
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeNull() {
        Composer composer = this.composer;
        composer.getClass();
        ((PriorityQueue) composer.writer).write("null");
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        serialDescriptor.getClass();
        kSerializer.getClass();
        if (obj != null || this.configuration.explicitNulls) {
            super.encodeNullableSerializableElement(serialDescriptor, i, kSerializer, obj);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000f, code lost:
    
        if (r3 != kotlinx.serialization.json.ClassDiscriminatorMode.NONE) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0039, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r3, kotlinx.serialization.descriptors.StructureKind$MAP.INSTANCE$3) == false) goto L20;
     */
    @Override // kotlin.uuid.UuidKt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void encodeSerializableValue(kotlinx.serialization.KSerializer r6, java.lang.Object r7) {
        /*
            r5 = this;
            r6.getClass()
            kotlinx.serialization.json.Json r0 = r5.json
            kotlinx.serialization.json.JsonConfiguration r1 = r0.configuration
            boolean r2 = r6 instanceof kotlinx.serialization.internal.AbstractPolymorphicSerializer
            kotlinx.serialization.json.ClassDiscriminatorMode r3 = r1.classDiscriminatorMode
            if (r2 == 0) goto L12
            kotlinx.serialization.json.ClassDiscriminatorMode r4 = kotlinx.serialization.json.ClassDiscriminatorMode.NONE
            if (r3 == r4) goto L48
            goto L3b
        L12:
            int[] r4 = kotlinx.serialization.json.internal.PolymorphicKt$WhenMappings.$EnumSwitchMapping$0
            int r3 = r3.ordinal()
            r3 = r4[r3]
            r4 = 1
            if (r3 == r4) goto L48
            r4 = 2
            if (r3 == r4) goto L48
            r4 = 3
            if (r3 != r4) goto L44
            kotlinx.serialization.descriptors.SerialDescriptor r3 = r6.getDescriptor()
            androidx.room.Room r3 = r3.getKind()
            kotlinx.serialization.descriptors.StructureKind$MAP r4 = kotlinx.serialization.descriptors.StructureKind$MAP.INSTANCE$1
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
            if (r4 != 0) goto L3b
            kotlinx.serialization.descriptors.StructureKind$MAP r4 = kotlinx.serialization.descriptors.StructureKind$MAP.INSTANCE$3
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
            if (r3 == 0) goto L48
        L3b:
            kotlinx.serialization.descriptors.SerialDescriptor r3 = r6.getDescriptor()
            java.lang.String r3 = kotlinx.serialization.json.internal.WriteModeKt.classDiscriminator(r3, r0)
            goto L49
        L44:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
            return
        L48:
            r3 = 0
        L49:
            if (r2 == 0) goto L61
            r2 = r6
            kotlinx.serialization.internal.AbstractPolymorphicSerializer r2 = (kotlinx.serialization.internal.AbstractPolymorphicSerializer) r2
            if (r7 == 0) goto L55
            kotlinx.serialization.KSerializer r2 = coil3.util.ContextsKt.findPolymorphicSerializer(r2, r5, r7)
            goto L62
        L55:
            kotlinx.serialization.descriptors.SerialDescriptor r5 = r2.getDescriptor()
            java.lang.String r6 = " should always be non-null. Please report issue to the kotlinx.serialization tracker."
            java.lang.String r7 = "Value for serializer "
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m(r5, r6, r7)
            return
        L61:
            r2 = r6
        L62:
            if (r3 == 0) goto Led
            kotlinx.serialization.descriptors.SerialDescriptor r4 = r2.getDescriptor()
            r4.getClass()
            kotlinx.serialization.json.internal.WriteModeKt.namingStrategy(r4, r0)
            java.util.Set r0 = kotlinx.serialization.internal.TuplesKt.cachedSerialNames(r4)
            boolean r0 = r0.contains(r3)
            if (r0 == 0) goto Lb7
            kotlinx.serialization.descriptors.SerialDescriptor r5 = r6.getDescriptor()
            java.lang.String r5 = r5.getSerialName()
            kotlinx.serialization.descriptors.SerialDescriptor r6 = r2.getDescriptor()
            java.lang.String r6 = r6.getSerialName()
            kotlinx.serialization.json.ClassDiscriminatorMode r7 = r1.classDiscriminatorMode
            kotlinx.serialization.json.ClassDiscriminatorMode r0 = kotlinx.serialization.json.ClassDiscriminatorMode.ALL_JSON_OBJECTS
            if (r7 != r0) goto L97
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r7 == 0) goto L97
            java.lang.String r5 = "in ALL_JSON_OBJECTS class discriminator mode"
            goto L9f
        L97:
            java.lang.String r7 = "as base class '"
            r0 = 39
            java.lang.String r5 = androidx.compose.animation.core.Animation.CC.m(r0, r7, r5)
        L9f:
            java.lang.String r7 = "' cannot be serialized "
            java.lang.String r0 = " because it has property name that conflicts with JSON class discriminator '"
            java.lang.String r1 = "Class '"
            java.lang.StringBuilder r5 = androidx.compose.ui.Modifier.CC.m352m(r1, r6, r7, r5, r0)
            java.lang.String r6 = "'."
            java.lang.String r5 = androidx.compose.animation.core.Animation.CC.m(r5, r3, r6)
            kotlinx.serialization.json.JsonEncodingException r6 = new kotlinx.serialization.json.JsonEncodingException
            java.lang.String r7 = "You can either change class discriminator in JsonConfiguration, or rename property with @SerialName annotation."
            r6.<init>(r5, r7)
            throw r6
        Lb7:
            kotlinx.serialization.descriptors.SerialDescriptor r6 = r2.getDescriptor()
            androidx.room.Room r6 = r6.getKind()
            r6.getClass()
            boolean r0 = r6 instanceof kotlinx.serialization.descriptors.SerialKind$ENUM
            if (r0 != 0) goto Le7
            boolean r0 = r6 instanceof kotlinx.serialization.descriptors.PrimitiveKind$INT
            if (r0 != 0) goto Le1
            boolean r6 = r6 instanceof kotlinx.serialization.descriptors.PolymorphicKind$OPEN
            if (r6 != 0) goto Ldb
            kotlinx.serialization.descriptors.SerialDescriptor r6 = r2.getDescriptor()
            java.lang.String r6 = r6.getSerialName()
            r5.polymorphicDiscriminator = r3
            r5.polymorphicSerialName = r6
            goto Led
        Ldb:
            java.lang.String r5 = "Actual serializer for polymorphic cannot be polymorphic itself"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return
        Le1:
            java.lang.String r5 = "Primitives cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return
        Le7:
            java.lang.String r5 = "Enums cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return
        Led:
            r2.serialize(r5, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.StreamingJsonEncoder.encodeSerializableValue(kotlinx.serialization.KSerializer, java.lang.Object):void");
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeShort(short s) {
        if (this.forceQuoting) {
            encodeString(String.valueOf((int) s));
        } else {
            this.composer.print(s);
        }
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeString(String str) {
        str.getClass();
        this.composer.printQuoted(str);
    }

    @Override // kotlin.uuid.UuidKt
    public final void endStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        WriteMode writeMode = this.mode;
        if (writeMode.end != 0) {
            Composer composer = this.composer;
            composer.getClass();
            composer.writingFirst = false;
            composer.print(writeMode.end);
        }
    }

    @Override // kotlin.uuid.UuidKt
    public final LoginClient getSerializersModule() {
        return this.serializersModule;
    }

    @Override // kotlin.uuid.UuidKt
    public final boolean shouldEncodeElementDefault(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return false;
    }
}
