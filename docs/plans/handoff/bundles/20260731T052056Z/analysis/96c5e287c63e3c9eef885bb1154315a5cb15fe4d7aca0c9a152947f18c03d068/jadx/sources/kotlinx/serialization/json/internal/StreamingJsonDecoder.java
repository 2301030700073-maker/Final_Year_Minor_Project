package kotlinx.serialization.json.internal;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.node.RulerTrackingMap;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.flow.SharingConfig;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import okio.PriorityQueue;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StreamingJsonDecoder extends UStringsKt implements JsonDecoder {
    public final JsonConfiguration configuration;
    public int currentIndex;
    public Symbol discriminatorHolder;
    public final JsonElementMarker elementMarker;
    public final Json json;
    public final RulerTrackingMap lexer;
    public final WriteMode mode;
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
            try {
                iArr[WriteMode.OBJ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public StreamingJsonDecoder(Json json, WriteMode writeMode, RulerTrackingMap rulerTrackingMap, SerialDescriptor serialDescriptor, Symbol symbol) {
        writeMode.getClass();
        serialDescriptor.getClass();
        this.json = json;
        this.mode = writeMode;
        this.lexer = rulerTrackingMap;
        this.serializersModule = json.serializersModule;
        this.currentIndex = -1;
        this.discriminatorHolder = symbol;
        JsonConfiguration jsonConfiguration = json.configuration;
        this.configuration = jsonConfiguration;
        this.elementMarker = jsonConfiguration.explicitNulls ? null : new JsonElementMarker(serialDescriptor);
    }

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
    public final CompositeDecoder beginStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        Json json = this.json;
        WriteMode switchMode = WriteModeKt.switchMode(serialDescriptor, json);
        RulerTrackingMap rulerTrackingMap = this.lexer;
        SharingConfig sharingConfig = (SharingConfig) rulerTrackingMap.values;
        int i = sharingConfig.extraBufferCapacity + 1;
        sharingConfig.extraBufferCapacity = i;
        if (i == ((Object[]) sharingConfig.onBufferOverflow).length) {
            sharingConfig.resize();
        }
        ((Object[]) sharingConfig.onBufferOverflow)[i] = serialDescriptor;
        rulerTrackingMap.consumeNextToken(switchMode.begin);
        if (rulerTrackingMap.peekNextToken() != 4) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[switchMode.ordinal()];
            return (i2 == 1 || i2 == 2 || i2 == 3) ? new StreamingJsonDecoder(json, switchMode, rulerTrackingMap, serialDescriptor, this.discriminatorHolder) : (this.mode == switchMode && json.configuration.explicitNulls) ? this : new StreamingJsonDecoder(json, switchMode, rulerTrackingMap, serialDescriptor, this.discriminatorHolder);
        }
        RulerTrackingMap.fail$default(rulerTrackingMap, "Unexpected leading comma", 0, null, 6);
        throw null;
    }

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
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
            rulerTrackingMap.consumeBooleanLiteral(i, "alse");
            z2 = false;
        } else {
            if (charAt != 116) {
                RulerTrackingMap.fail$default(rulerTrackingMap, "Expected valid boolean literal prefix, but had '" + rulerTrackingMap.consumeStringLenient() + '\'', 0, null, 6);
                throw null;
            }
            rulerTrackingMap.consumeBooleanLiteral(i, "rue");
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

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
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

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
    public final char decodeChar() {
        RulerTrackingMap rulerTrackingMap = this.lexer;
        String consumeStringLenient = rulerTrackingMap.consumeStringLenient();
        if (consumeStringLenient.length() == 1) {
            return consumeStringLenient.charAt(0);
        }
        RulerTrackingMap.fail$default(rulerTrackingMap, Animation.CC.m('\'', "Expected single char, but got '", consumeStringLenient), 0, null, 6);
        throw null;
    }

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
    public final double decodeDouble() {
        RulerTrackingMap rulerTrackingMap = this.lexer;
        String consumeStringLenient = rulerTrackingMap.consumeStringLenient();
        try {
            double parseDouble = Double.parseDouble(consumeStringLenient);
            if (Math.abs(parseDouble) <= Double.MAX_VALUE) {
                return parseDouble;
            }
            RulerTrackingMap.fail$default(rulerTrackingMap, WriteModeKt.nonFiniteFpMessage(null, Double.valueOf(parseDouble)), 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2);
            throw null;
        } catch (IllegalArgumentException unused) {
            RulerTrackingMap.fail$default(rulerTrackingMap, Animation.CC.m('\'', "Failed to parse type 'double' for input '", consumeStringLenient), 0, null, 6);
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x00d5, code lost:
    
        r0 = r15.origin;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x00d9, code lost:
    
        if (r9 >= 64) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x00db, code lost:
    
        r0.lowerMarks |= 1 << r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x00e5, code lost:
    
        r1 = (r9 >>> 6) - 1;
        r0 = r0.highMarksArray;
        r0[r1] = r0[r1] | (1 << (r9 & 63));
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0114, code lost:
    
        r0 = r3.extraBufferCapacity;
        r1 = (int[]) r3.context;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x011d, code lost:
    
        if (r1[r0] != (-2)) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x011f, code lost:
    
        r1[r0] = r18;
        r0 = r0 - 1;
        r3.extraBufferCapacity = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0125, code lost:
    
        r1 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0127, code lost:
    
        if (r0 == r1) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0129, code lost:
    
        r3.extraBufferCapacity = r0 + r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x012c, code lost:
    
        r2.fail(kotlin.text.StringsKt.lastIndexOf$default(6, ((java.lang.String) r2.newRulers).subSequence(0, r2.size).toString(), r4), androidx.compose.animation.core.Animation.CC.m('\'', "Encountered an unknown key '", r4), "Use 'ignoreUnknownKeys = true' in 'Json {}' builder or '@JsonIgnoreUnknownKeys' annotation to ignore unknown keys.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x014e, code lost:
    
        throw null;
     */
    @Override // kotlinx.serialization.encoding.CompositeDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int decodeElementIndex(kotlinx.serialization.descriptors.SerialDescriptor r22) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.StreamingJsonDecoder.decodeElementIndex(kotlinx.serialization.descriptors.SerialDescriptor):int");
    }

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
    public final int decodeEnum(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        RulerTrackingMap rulerTrackingMap = this.lexer;
        return WriteModeKt.getJsonNameIndexOrThrow(serialDescriptor, this.json, rulerTrackingMap.consumeString(), " at path ".concat(((SharingConfig) rulerTrackingMap.values).getPath()));
    }

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
    public final float decodeFloat() {
        RulerTrackingMap rulerTrackingMap = this.lexer;
        String consumeStringLenient = rulerTrackingMap.consumeStringLenient();
        try {
            float parseFloat = Float.parseFloat(consumeStringLenient);
            if (Math.abs(parseFloat) <= Float.MAX_VALUE) {
                return parseFloat;
            }
            RulerTrackingMap.fail$default(rulerTrackingMap, WriteModeKt.nonFiniteFpMessage(null, Float.valueOf(parseFloat)), 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2);
            throw null;
        } catch (IllegalArgumentException unused) {
            RulerTrackingMap.fail$default(rulerTrackingMap, Animation.CC.m('\'', "Failed to parse type 'float' for input '", consumeStringLenient), 0, null, 6);
            throw null;
        }
    }

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
    public final Decoder decodeInline(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return StreamingJsonEncoderKt.isUnsignedNumber(serialDescriptor) ? new JsonDecoderForUnsignedTypes(this.lexer, this.json) : this;
    }

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
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

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
    public final long decodeLong() {
        return this.lexer.consumeNumericLiteral();
    }

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
    public final boolean decodeNotNullMark() {
        JsonElementMarker jsonElementMarker = this.elementMarker;
        return ((jsonElementMarker != null ? jsonElementMarker.isUnmarkedNull : false) || this.lexer.tryConsumeNull(true)) ? false : true;
    }

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.CompositeDecoder
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
        Object decodeSerializableValue$1 = decodeSerializableValue$1(kSerializer);
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
            objArr[i5] = ((JsonConfiguration) sharingConfig.upstream).exceptionsWithDebugInfo ? decodeSerializableValue$1 : JsonPath$Tombstone.INSTANCE$1;
            ((int[]) sharingConfig.context)[i5] = -2;
        }
        return decodeSerializableValue$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0152  */
    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object decodeSerializableValue$1(kotlinx.serialization.KSerializer r11) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.StreamingJsonDecoder.decodeSerializableValue$1(kotlinx.serialization.KSerializer):java.lang.Object");
    }

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
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

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
    public final String decodeString() {
        return this.lexer.consumeString();
    }

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.CompositeDecoder
    public final void endStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (serialDescriptor.getElementsCount() == 0 && WriteModeKt.ignoreUnknownKeys(serialDescriptor, this.json)) {
            while (decodeElementIndex(serialDescriptor) != -1) {
            }
        }
        RulerTrackingMap rulerTrackingMap = this.lexer;
        if (rulerTrackingMap.tryConsumeComma()) {
            WriteModeKt.invalidTrailingComma(rulerTrackingMap, "");
            throw null;
        }
        rulerTrackingMap.consumeNextToken(this.mode.end);
        SharingConfig sharingConfig = (SharingConfig) rulerTrackingMap.values;
        int i = sharingConfig.extraBufferCapacity;
        int[] iArr = (int[]) sharingConfig.context;
        if (iArr[i] == -2) {
            iArr[i] = -1;
            i--;
            sharingConfig.extraBufferCapacity = i;
        }
        if (i != -1) {
            sharingConfig.extraBufferCapacity = i - 1;
        }
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public final Json getJson() {
        return this.json;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final LoginClient getSerializersModule() {
        return this.serializersModule;
    }
}
