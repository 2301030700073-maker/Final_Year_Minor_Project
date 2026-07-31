package kotlinx.serialization.json.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.ui.node.RulerTrackingMap;
import com.fsck.k9.mailstore.LocalStore;
import kotlinx.coroutines.flow.SharingConfig;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.modules.SerialModuleImpl;
import okio.PriorityQueue;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StreamingJsonDecoder extends Base64 implements JsonDecoder {
    public int currentIndex;
    public LocalStore.AnonymousClass8 discriminatorHolder;
    public final JsonElementMarker elementMarker;
    public final Json json;
    public final RulerTrackingMap lexer;
    public final WriteMode mode;
    public final SerialModuleImpl serializersModule;

    public StreamingJsonDecoder(Json json, WriteMode writeMode, RulerTrackingMap rulerTrackingMap, SerialDescriptor serialDescriptor, LocalStore.AnonymousClass8 anonymousClass8) {
        json.getClass();
        serialDescriptor.getClass();
        this.json = json;
        this.mode = writeMode;
        this.lexer = rulerTrackingMap;
        this.serializersModule = json.serializersModule;
        this.currentIndex = -1;
        this.discriminatorHolder = anonymousClass8;
        this.elementMarker = json.configuration.explicitNull ? null : new JsonElementMarker(serialDescriptor);
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final CompositeDecoder beginStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        Json json = this.json;
        WriteMode switchMode = WriteModeKt.switchMode(serialDescriptor, json);
        RulerTrackingMap rulerTrackingMap = this.lexer;
        SharingConfig sharingConfig = (SharingConfig) rulerTrackingMap.values;
        sharingConfig.getClass();
        int i = sharingConfig.extraBufferCapacity + 1;
        sharingConfig.extraBufferCapacity = i;
        if (i == ((Object[]) sharingConfig.onBufferOverflow).length) {
            sharingConfig.resize();
        }
        ((Object[]) sharingConfig.onBufferOverflow)[i] = serialDescriptor;
        rulerTrackingMap.consumeNextToken(switchMode.begin);
        if (rulerTrackingMap.peekNextToken() != 4) {
            int ordinal = switchMode.ordinal();
            return (ordinal == 1 || ordinal == 2 || ordinal == 3) ? new StreamingJsonDecoder(this.json, switchMode, rulerTrackingMap, serialDescriptor, this.discriminatorHolder) : (this.mode == switchMode && json.configuration.explicitNull) ? this : new StreamingJsonDecoder(this.json, switchMode, rulerTrackingMap, serialDescriptor, this.discriminatorHolder);
        }
        RulerTrackingMap.fail$default(rulerTrackingMap, "Unexpected leading comma", 0, null, 6);
        throw null;
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final boolean decodeBoolean() {
        boolean z;
        boolean z2;
        RulerTrackingMap rulerTrackingMap = this.lexer;
        int skipWhitespaces = rulerTrackingMap.skipWhitespaces();
        String str = (String) rulerTrackingMap.newRulers;
        if (skipWhitespaces == str.length()) {
            RulerTrackingMap.fail$default(rulerTrackingMap, "EOF", 0, null, 6);
            throw null;
        }
        if (str.charAt(skipWhitespaces) == '\"') {
            skipWhitespaces++;
            z = true;
        } else {
            z = false;
        }
        int prefetchOrEof = rulerTrackingMap.prefetchOrEof(skipWhitespaces);
        if (prefetchOrEof >= str.length() || prefetchOrEof == -1) {
            RulerTrackingMap.fail$default(rulerTrackingMap, "EOF", 0, null, 6);
            throw null;
        }
        int i = prefetchOrEof + 1;
        int charAt = str.charAt(prefetchOrEof) | ' ';
        if (charAt == 102) {
            rulerTrackingMap.consumeBooleanLiteral("alse", i);
            z2 = false;
        } else {
            if (charAt != 116) {
                RulerTrackingMap.fail$default(rulerTrackingMap, "Expected valid boolean literal prefix, but had '" + rulerTrackingMap.consumeStringLenient() + '\'', 0, null, 6);
                throw null;
            }
            rulerTrackingMap.consumeBooleanLiteral("rue", i);
            z2 = true;
        }
        if (!z) {
            return z2;
        }
        if (rulerTrackingMap.size == str.length()) {
            RulerTrackingMap.fail$default(rulerTrackingMap, "EOF", 0, null, 6);
            throw null;
        }
        if (str.charAt(rulerTrackingMap.size) == '\"') {
            rulerTrackingMap.size++;
            return z2;
        }
        RulerTrackingMap.fail$default(rulerTrackingMap, "Expected closing quotation mark", 0, null, 6);
        throw null;
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final byte decodeByte() {
        RulerTrackingMap rulerTrackingMap = this.lexer;
        long consumeNumericLiteral = rulerTrackingMap.consumeNumericLiteral();
        byte b = (byte) consumeNumericLiteral;
        if (consumeNumericLiteral == b) {
            return b;
        }
        RulerTrackingMap.fail$default(rulerTrackingMap, "Failed to parse byte for input '" + consumeNumericLiteral + '\'', 0, null, 6);
        throw null;
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final char decodeChar() {
        RulerTrackingMap rulerTrackingMap = this.lexer;
        String consumeStringLenient = rulerTrackingMap.consumeStringLenient();
        if (consumeStringLenient.length() == 1) {
            return consumeStringLenient.charAt(0);
        }
        RulerTrackingMap.fail$default(rulerTrackingMap, CameraDevices$CC.m('\'', "Expected single char, but got '", consumeStringLenient), 0, null, 6);
        throw null;
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final double decodeDouble() {
        RulerTrackingMap rulerTrackingMap = this.lexer;
        String consumeStringLenient = rulerTrackingMap.consumeStringLenient();
        try {
            double parseDouble = Double.parseDouble(consumeStringLenient);
            ProvidedValue providedValue = this.json.configuration;
            if (Math.abs(parseDouble) <= Double.MAX_VALUE) {
                return parseDouble;
            }
            RulerTrackingMap.fail$default(rulerTrackingMap, WriteModeKt.nonFiniteFpMessage(Double.valueOf(parseDouble), null), 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2);
            throw null;
        } catch (IllegalArgumentException unused) {
            RulerTrackingMap.fail$default(rulerTrackingMap, CameraDevices$CC.m('\'', "Failed to parse type 'double' for input '", consumeStringLenient), 0, null, 6);
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x00e9, code lost:
    
        r0 = r3.extraBufferCapacity;
        r1 = (int[]) r3.context;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f2, code lost:
    
        if (r1[r0] != (-2)) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00f4, code lost:
    
        r1[r0] = -1;
        r3.extraBufferCapacity = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00f9, code lost:
    
        r0 = r3.extraBufferCapacity;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00fb, code lost:
    
        if (r0 == (-1)) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00fd, code lost:
    
        r3.extraBufferCapacity = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0100, code lost:
    
        r2.fail(kotlin.text.StringsKt.lastIndexOf$default(6, ((java.lang.String) r2.newRulers).subSequence(0, r2.size).toString(), r5), androidx.camera.camera2.pipe.CameraDevices$CC.m('\'', "Encountered an unknown key '", r5), "Use 'ignoreUnknownKeys = true' in 'Json {}' builder or '@JsonIgnoreUnknownKeys' annotation to ignore unknown keys.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x011f, code lost:
    
        throw null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.encoding.CompositeDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int decodeElementIndex(kotlinx.serialization.descriptors.SerialDescriptor r20) {
        /*
            Method dump skipped, instructions count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.StreamingJsonDecoder.decodeElementIndex(kotlinx.serialization.descriptors.SerialDescriptor):int");
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final int decodeEnum(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        RulerTrackingMap rulerTrackingMap = this.lexer;
        return WriteModeKt.getJsonNameIndexOrThrow(serialDescriptor, this.json, rulerTrackingMap.consumeString(), " at path ".concat(((SharingConfig) rulerTrackingMap.values).getPath()));
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final float decodeFloat() {
        RulerTrackingMap rulerTrackingMap = this.lexer;
        String consumeStringLenient = rulerTrackingMap.consumeStringLenient();
        try {
            float parseFloat = Float.parseFloat(consumeStringLenient);
            ProvidedValue providedValue = this.json.configuration;
            if (Math.abs(parseFloat) <= Float.MAX_VALUE) {
                return parseFloat;
            }
            RulerTrackingMap.fail$default(rulerTrackingMap, WriteModeKt.nonFiniteFpMessage(Float.valueOf(parseFloat), null), 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2);
            throw null;
        } catch (IllegalArgumentException unused) {
            RulerTrackingMap.fail$default(rulerTrackingMap, CameraDevices$CC.m('\'', "Failed to parse type 'float' for input '", consumeStringLenient), 0, null, 6);
            throw null;
        }
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final Decoder decodeInline(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return StreamingJsonEncoderKt.isUnsignedNumber(serialDescriptor) ? new JsonDecoderForUnsignedTypes(this.lexer, this.json) : this;
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final int decodeInt() {
        RulerTrackingMap rulerTrackingMap = this.lexer;
        long consumeNumericLiteral = rulerTrackingMap.consumeNumericLiteral();
        int i = (int) consumeNumericLiteral;
        if (consumeNumericLiteral == i) {
            return i;
        }
        RulerTrackingMap.fail$default(rulerTrackingMap, "Failed to parse int for input '" + consumeNumericLiteral + '\'', 0, null, 6);
        throw null;
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public final JsonElement decodeJsonElement() {
        return new PriorityQueue(this.json.configuration, this.lexer).read();
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final long decodeLong() {
        return this.lexer.consumeNumericLiteral();
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final boolean decodeNotNullMark() {
        boolean z;
        JsonElementMarker jsonElementMarker = this.elementMarker;
        if (!(jsonElementMarker != null ? jsonElementMarker.isUnmarkedNull : false)) {
            RulerTrackingMap rulerTrackingMap = this.lexer;
            int prefetchOrEof = rulerTrackingMap.prefetchOrEof(rulerTrackingMap.skipWhitespaces());
            String str = (String) rulerTrackingMap.newRulers;
            int length = str.length() - prefetchOrEof;
            if (length >= 4 && prefetchOrEof != -1) {
                int i = 0;
                while (true) {
                    if (i < 4) {
                        if ("null".charAt(i) != str.charAt(prefetchOrEof + i)) {
                            break;
                        }
                        i++;
                    } else if (length <= 4 || WriteModeKt.charToTokenClass(str.charAt(prefetchOrEof + 4)) != 0) {
                        rulerTrackingMap.size = prefetchOrEof + 4;
                        z = true;
                    }
                }
            }
            z = false;
            if (!z) {
                return true;
            }
        }
        return false;
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.CompositeDecoder
    public final Object decodeSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        SharingConfig sharingConfig = (SharingConfig) this.lexer.values;
        serialDescriptor.getClass();
        kSerializer.getClass();
        boolean z = this.mode == WriteMode.MAP && (i & 1) == 0;
        if (z) {
            int[] iArr = (int[]) sharingConfig.context;
            int i2 = sharingConfig.extraBufferCapacity;
            if (iArr[i2] == -2) {
                ((Object[]) sharingConfig.onBufferOverflow)[i2] = JsonPath$Tombstone.INSTANCE;
            }
        }
        Object decodeSerializableValue = decodeSerializableValue(kSerializer);
        if (z) {
            int[] iArr2 = (int[]) sharingConfig.context;
            int i3 = sharingConfig.extraBufferCapacity;
            if (iArr2[i3] != -2) {
                int i4 = i3 + 1;
                sharingConfig.extraBufferCapacity = i4;
                if (i4 == ((Object[]) sharingConfig.onBufferOverflow).length) {
                    sharingConfig.resize();
                }
            }
            Object[] objArr = (Object[]) sharingConfig.onBufferOverflow;
            int i5 = sharingConfig.extraBufferCapacity;
            objArr[i5] = ((ProvidedValue) sharingConfig.upstream).canOverride ? decodeSerializableValue : JsonPath$Tombstone.INSTANCE$1;
            ((int[]) sharingConfig.context)[i5] = -2;
        }
        return decodeSerializableValue;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0145  */
    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object decodeSerializableValue(kotlinx.serialization.KSerializer r11) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.StreamingJsonDecoder.decodeSerializableValue(kotlinx.serialization.KSerializer):java.lang.Object");
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final short decodeShort() {
        RulerTrackingMap rulerTrackingMap = this.lexer;
        long consumeNumericLiteral = rulerTrackingMap.consumeNumericLiteral();
        short s = (short) consumeNumericLiteral;
        if (consumeNumericLiteral == s) {
            return s;
        }
        RulerTrackingMap.fail$default(rulerTrackingMap, "Failed to parse short for input '" + consumeNumericLiteral + '\'', 0, null, 6);
        throw null;
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final String decodeString() {
        return this.lexer.consumeString();
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.CompositeDecoder
    public final void endStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        int elementsCount = serialDescriptor.getElementsCount();
        Json json = this.json;
        if (elementsCount == 0 && WriteModeKt.ignoreUnknownKeys(serialDescriptor, json)) {
            while (decodeElementIndex(serialDescriptor) != -1) {
            }
        }
        RulerTrackingMap rulerTrackingMap = this.lexer;
        if (rulerTrackingMap.tryConsumeComma()) {
            ProvidedValue providedValue = json.configuration;
            WriteModeKt.invalidTrailingComma(rulerTrackingMap, "");
            throw null;
        }
        rulerTrackingMap.consumeNextToken(this.mode.end);
        SharingConfig sharingConfig = (SharingConfig) rulerTrackingMap.values;
        int i = sharingConfig.extraBufferCapacity;
        int[] iArr = (int[]) sharingConfig.context;
        if (iArr[i] == -2) {
            iArr[i] = -1;
            sharingConfig.extraBufferCapacity = i - 1;
        }
        int i2 = sharingConfig.extraBufferCapacity;
        if (i2 != -1) {
            sharingConfig.extraBufferCapacity = i2 - 1;
        }
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public final Json getJson() {
        return this.json;
    }

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.CompositeDecoder
    public final SerialModuleImpl getSerializersModule() {
        return this.serializersModule;
    }
}
