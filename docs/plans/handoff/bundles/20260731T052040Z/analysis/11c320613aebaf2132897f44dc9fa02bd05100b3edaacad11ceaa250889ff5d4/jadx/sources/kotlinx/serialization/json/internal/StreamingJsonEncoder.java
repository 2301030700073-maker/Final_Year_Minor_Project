package kotlinx.serialization.json.internal;

import androidx.sqlite.SQLite;
import coil3.ComponentRegistry;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonEncodingException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamingJsonEncoder extends SQLite {
    public final Composer composer;
    public final JsonConfiguration configuration;
    public boolean forceQuoting;
    public final Json json;
    public final WriteMode mode;
    public final StreamingJsonEncoder[] modeReuseCache;
    public String polymorphicDiscriminator;
    public String polymorphicSerialName;
    public final ComponentRegistry.Builder serializersModule;

    public StreamingJsonEncoder(Composer composer, Json json, WriteMode writeMode, StreamingJsonEncoder[] streamingJsonEncoderArr) {
        composer.getClass();
        json.getClass();
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

    @Override // kotlinx.serialization.encoding.Encoder
    public final SQLite beginStructure(SerialDescriptor serialDescriptor) {
        StreamingJsonEncoder streamingJsonEncoder;
        serialDescriptor.getClass();
        Json json = this.json;
        WriteMode switchMode = WriteModeKt.switchMode(serialDescriptor, json);
        char c = switchMode.begin;
        Composer composer = this.composer;
        if (c != 0) {
            composer.print(c);
            composer.indent();
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
            composer.space();
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

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeBoolean(boolean z) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(z));
        } else {
            ((InternalJsonWriter) this.composer.writer).write(String.valueOf(z));
        }
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeByte(byte b) {
        if (this.forceQuoting) {
            encodeString(String.valueOf((int) b));
        } else {
            this.composer.print(b);
        }
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeChar(char c) {
        encodeString(String.valueOf(c));
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeDouble(double d) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(d));
        } else {
            ((InternalJsonWriter) this.composer.writer).write(String.valueOf(d));
        }
        if (Math.abs(d) > Double.MAX_VALUE) {
            throw new JsonEncodingException(WriteModeKt.nonFiniteFpMessage(Double.valueOf(d), null), (String) null, 2);
        }
    }

    @Override // androidx.sqlite.SQLite
    public final void encodeElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        int ordinal = this.mode.ordinal();
        Composer composer = this.composer;
        boolean z = true;
        if (ordinal == 1) {
            if (!composer.writingFirst) {
                composer.print(',');
            }
            composer.nextItem();
            return;
        }
        if (ordinal == 2) {
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
        if (ordinal == 3) {
            if (i == 0) {
                this.forceQuoting = true;
            }
            if (i == 1) {
                composer.print(',');
                composer.space();
                this.forceQuoting = false;
                return;
            }
            return;
        }
        if (!composer.writingFirst) {
            composer.print(',');
        }
        composer.nextItem();
        Json json = this.json;
        json.getClass();
        WriteModeKt.namingStrategy(serialDescriptor, json);
        encodeString(serialDescriptor.getElementName(i));
        composer.print(':');
        composer.space();
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeFloat(float f) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(f));
        } else {
            ((InternalJsonWriter) this.composer.writer).write(String.valueOf(f));
        }
        if (Math.abs(f) > Float.MAX_VALUE) {
            throw new JsonEncodingException(WriteModeKt.nonFiniteFpMessage(Float.valueOf(f), null), (String) null, 2);
        }
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final Encoder encodeInline(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        boolean isUnsignedNumber = StreamingJsonEncoderKt.isUnsignedNumber(serialDescriptor);
        WriteMode writeMode = this.mode;
        Json json = this.json;
        Composer composer = this.composer;
        if (isUnsignedNumber) {
            if (!(composer instanceof ComposerForUnsignedNumbers)) {
                composer = new ComposerForUnsignedNumbers((InternalJsonWriter) composer.writer, this.forceQuoting);
            }
            return new StreamingJsonEncoder(composer, json, writeMode, null);
        }
        if (serialDescriptor.isInline() && serialDescriptor.equals(JsonElementKt.jsonUnquotedLiteralDescriptor)) {
            if (!(composer instanceof ComposerForUnquotedLiterals)) {
                composer = new ComposerForUnquotedLiterals((InternalJsonWriter) composer.writer, this.forceQuoting);
            }
            return new StreamingJsonEncoder(composer, json, writeMode, null);
        }
        if (this.polymorphicDiscriminator != null) {
            this.polymorphicSerialName = serialDescriptor.getSerialName();
        }
        return this;
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeInt(int i) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(i));
        } else {
            this.composer.print(i);
        }
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeLong(long j) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(j));
        } else {
            this.composer.print(j);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeNull() {
        Composer composer = this.composer;
        composer.getClass();
        ((InternalJsonWriter) composer.writer).write("null");
    }

    @Override // androidx.sqlite.SQLite
    public final void encodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, Object obj) {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        serialDescriptor.getClass();
        if (obj != null || this.configuration.explicitNulls) {
            super.encodeNullableSerializableElement(serialDescriptor, i, obj);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000f, code lost:
    
        if (r1 != kotlinx.serialization.json.ClassDiscriminatorMode.NONE) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0039, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1, kotlinx.serialization.descriptors.StructureKind$MAP.INSTANCE$3) == false) goto L21;
     */
    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void encodeSerializableValue(kotlinx.serialization.KSerializer r5, java.lang.Object r6) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.StreamingJsonEncoder.encodeSerializableValue(kotlinx.serialization.KSerializer, java.lang.Object):void");
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeShort(short s) {
        if (this.forceQuoting) {
            encodeString(String.valueOf((int) s));
        } else {
            this.composer.print(s);
        }
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeString(String str) {
        str.getClass();
        this.composer.printQuoted(str);
    }

    @Override // androidx.sqlite.SQLite
    public final void endStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        WriteMode writeMode = this.mode;
        if (writeMode.end != 0) {
            Composer composer = this.composer;
            composer.unIndent();
            composer.nextItemIfNotFirst();
            composer.print(writeMode.end);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final ComponentRegistry.Builder getSerializersModule() {
        return this.serializersModule;
    }

    @Override // androidx.sqlite.SQLite
    public final boolean shouldEncodeElementDefault(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this.configuration.encodeDefaults;
    }
}
