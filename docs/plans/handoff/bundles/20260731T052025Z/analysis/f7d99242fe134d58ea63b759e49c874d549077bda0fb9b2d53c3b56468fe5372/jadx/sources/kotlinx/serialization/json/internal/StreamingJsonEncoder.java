package kotlinx.serialization.json.internal;

import androidx.compose.runtime.ProvidedValue;
import com.fsck.k9.mailstore.LocalFolder;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonDecodingException;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.modules.SerialModuleImpl;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StreamingJsonEncoder extends CharsKt__CharKt {
    public final LocalFolder.AnonymousClass8 composer;
    public final ProvidedValue configuration;
    public boolean forceQuoting;
    public final Json json;
    public final WriteMode mode;
    public final StreamingJsonEncoder[] modeReuseCache;
    public String polymorphicDiscriminator;
    public String polymorphicSerialName;
    public final SerialModuleImpl serializersModule;

    public StreamingJsonEncoder(LocalFolder.AnonymousClass8 anonymousClass8, Json json, WriteMode writeMode, StreamingJsonEncoder[] streamingJsonEncoderArr) {
        anonymousClass8.getClass();
        json.getClass();
        this.composer = anonymousClass8;
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

    @Override // kotlin.text.CharsKt__CharKt
    public final CharsKt__CharKt beginStructure(SerialDescriptor serialDescriptor) {
        StreamingJsonEncoder streamingJsonEncoder;
        serialDescriptor.getClass();
        Json json = this.json;
        WriteMode switchMode = WriteModeKt.switchMode(serialDescriptor, json);
        char c = switchMode.begin;
        LocalFolder.AnonymousClass8 anonymousClass8 = this.composer;
        anonymousClass8.print(c);
        anonymousClass8.val$includeDeleted = true;
        String str = this.polymorphicDiscriminator;
        if (str != null) {
            String str2 = this.polymorphicSerialName;
            if (str2 == null) {
                str2 = serialDescriptor.getSerialName();
            }
            anonymousClass8.nextItem();
            anonymousClass8.printQuoted(str);
            anonymousClass8.print(':');
            encodeString(str2);
            this.polymorphicDiscriminator = null;
            this.polymorphicSerialName = null;
        }
        if (this.mode == switchMode) {
            return this;
        }
        StreamingJsonEncoder[] streamingJsonEncoderArr = this.modeReuseCache;
        return (streamingJsonEncoderArr == null || (streamingJsonEncoder = streamingJsonEncoderArr[switchMode.ordinal()]) == null) ? new StreamingJsonEncoder(anonymousClass8, json, switchMode, streamingJsonEncoderArr) : streamingJsonEncoder;
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeBoolean(boolean z) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(z));
        } else {
            ((PriorityQueue) this.composer.this$0).write(String.valueOf(z));
        }
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeByte(byte b) {
        if (this.forceQuoting) {
            encodeString(String.valueOf((int) b));
        } else {
            this.composer.print(b);
        }
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeChar(char c) {
        encodeString(String.valueOf(c));
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeDouble(double d) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(d));
        } else {
            ((PriorityQueue) this.composer.this$0).write(String.valueOf(d));
        }
        if (Math.abs(d) > Double.MAX_VALUE) {
            throw new JsonDecodingException(WriteModeKt.nonFiniteFpMessage(Double.valueOf(d), null), "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'");
        }
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        int ordinal = this.mode.ordinal();
        LocalFolder.AnonymousClass8 anonymousClass8 = this.composer;
        boolean z = true;
        if (ordinal == 1) {
            if (!anonymousClass8.val$includeDeleted) {
                anonymousClass8.print(',');
            }
            anonymousClass8.nextItem();
            return;
        }
        if (ordinal == 2) {
            if (anonymousClass8.val$includeDeleted) {
                this.forceQuoting = true;
                anonymousClass8.nextItem();
                return;
            }
            if (i % 2 == 0) {
                anonymousClass8.print(',');
                anonymousClass8.nextItem();
            } else {
                anonymousClass8.print(':');
                anonymousClass8.space();
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
                anonymousClass8.print(',');
                anonymousClass8.space();
                this.forceQuoting = false;
                return;
            }
            return;
        }
        if (!anonymousClass8.val$includeDeleted) {
            anonymousClass8.print(',');
        }
        anonymousClass8.nextItem();
        Json json = this.json;
        json.getClass();
        WriteModeKt.namingStrategy(serialDescriptor, json);
        encodeString(serialDescriptor.getElementName(i));
        anonymousClass8.print(':');
        anonymousClass8.space();
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeEnum(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        encodeString(serialDescriptor.getElementName(i));
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeFloat(float f) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(f));
        } else {
            ((PriorityQueue) this.composer.this$0).write(String.valueOf(f));
        }
        if (Math.abs(f) > Float.MAX_VALUE) {
            throw new JsonDecodingException(WriteModeKt.nonFiniteFpMessage(Float.valueOf(f), null), "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'");
        }
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final CharsKt__CharKt encodeInline(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        boolean isUnsignedNumber = StreamingJsonEncoderKt.isUnsignedNumber(serialDescriptor);
        WriteMode writeMode = this.mode;
        Json json = this.json;
        LocalFolder.AnonymousClass8 anonymousClass8 = this.composer;
        if (isUnsignedNumber) {
            if (!(anonymousClass8 instanceof ComposerForUnsignedNumbers)) {
                anonymousClass8 = new ComposerForUnsignedNumbers((PriorityQueue) anonymousClass8.this$0, this.forceQuoting);
            }
            return new StreamingJsonEncoder(anonymousClass8, json, writeMode, null);
        }
        if (serialDescriptor.isInline() && serialDescriptor.equals(JsonElementKt.jsonUnquotedLiteralDescriptor)) {
            if (!(anonymousClass8 instanceof ComposerForUnquotedLiterals)) {
                anonymousClass8 = new ComposerForUnquotedLiterals((PriorityQueue) anonymousClass8.this$0, this.forceQuoting);
            }
            return new StreamingJsonEncoder(anonymousClass8, json, writeMode, null);
        }
        if (this.polymorphicDiscriminator != null) {
            this.polymorphicSerialName = serialDescriptor.getSerialName();
        }
        return this;
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeInt(int i) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(i));
        } else {
            this.composer.print(i);
        }
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeLong(long j) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(j));
        } else {
            this.composer.print(j);
        }
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeNull() {
        LocalFolder.AnonymousClass8 anonymousClass8 = this.composer;
        anonymousClass8.getClass();
        ((PriorityQueue) anonymousClass8.this$0).write("null");
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        serialDescriptor.getClass();
        if (obj != null || this.configuration.explicitNull) {
            super.encodeNullableSerializableElement(serialDescriptor, i, kSerializer, obj);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0011, code lost:
    
        if (r1 != kotlinx.serialization.json.ClassDiscriminatorMode.NONE) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x003b, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1, kotlinx.serialization.descriptors.StructureKind$MAP.INSTANCE$3) == false) goto L21;
     */
    @Override // kotlin.text.CharsKt__CharKt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void encodeSerializableValue(kotlinx.serialization.KSerializer r5, java.lang.Object r6) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.StreamingJsonEncoder.encodeSerializableValue(kotlinx.serialization.KSerializer, java.lang.Object):void");
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeShort(short s) {
        if (this.forceQuoting) {
            encodeString(String.valueOf((int) s));
        } else {
            this.composer.print(s);
        }
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeString(String str) {
        str.getClass();
        this.composer.printQuoted(str);
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void endStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        LocalFolder.AnonymousClass8 anonymousClass8 = this.composer;
        anonymousClass8.getClass();
        anonymousClass8.val$includeDeleted = false;
        anonymousClass8.print(this.mode.end);
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final SerialModuleImpl getSerializersModule() {
        return this.serializersModule;
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final boolean shouldEncodeElementDefault(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return false;
    }
}
