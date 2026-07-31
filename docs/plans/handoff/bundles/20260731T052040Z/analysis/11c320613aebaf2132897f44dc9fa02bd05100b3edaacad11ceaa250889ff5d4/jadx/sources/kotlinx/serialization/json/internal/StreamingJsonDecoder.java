package kotlinx.serialization.json.internal;

import androidx.compose.ui.node.Owner;
import androidx.core.app.NotificationCompatBuilder;
import coil3.ComponentRegistry;
import com.google.common.base.Joiner;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamingJsonDecoder extends RangesKt implements JsonDecoder {
    public final JsonConfiguration configuration;
    public int currentIndex;
    public Joiner discriminatorHolder;
    public final JsonElementMarker elementMarker;
    public final Json json;
    public final AbstractJsonLexer lexer;
    public final WriteMode mode;
    public final ComponentRegistry.Builder serializersModule;

    public StreamingJsonDecoder(Json json, WriteMode writeMode, AbstractJsonLexer abstractJsonLexer, SerialDescriptor serialDescriptor, Joiner joiner) {
        json.getClass();
        serialDescriptor.getClass();
        this.json = json;
        this.mode = writeMode;
        this.lexer = abstractJsonLexer;
        this.serializersModule = json.serializersModule;
        this.currentIndex = -1;
        this.discriminatorHolder = joiner;
        JsonConfiguration jsonConfiguration = json.configuration;
        this.configuration = jsonConfiguration;
        this.elementMarker = jsonConfiguration.explicitNulls ? null : new JsonElementMarker(serialDescriptor);
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final CompositeDecoder beginStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        Json json = this.json;
        WriteMode switchMode = WriteModeKt.switchMode(serialDescriptor, json);
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        NotificationCompatBuilder notificationCompatBuilder = (NotificationCompatBuilder) abstractJsonLexer.path;
        notificationCompatBuilder.getClass();
        int i = notificationCompatBuilder.mGroupAlertBehavior + 1;
        notificationCompatBuilder.mGroupAlertBehavior = i;
        if (i == ((Object[]) notificationCompatBuilder.mBuilderCompat).length) {
            notificationCompatBuilder.resize();
        }
        ((Object[]) notificationCompatBuilder.mBuilderCompat)[i] = serialDescriptor;
        abstractJsonLexer.consumeNextToken(switchMode.begin);
        if (abstractJsonLexer.peekNextToken() != 4) {
            int ordinal = switchMode.ordinal();
            return (ordinal == 1 || ordinal == 2 || ordinal == 3) ? new StreamingJsonDecoder(this.json, switchMode, abstractJsonLexer, serialDescriptor, this.discriminatorHolder) : (this.mode == switchMode && json.configuration.explicitNulls) ? this : new StreamingJsonDecoder(this.json, switchMode, abstractJsonLexer, serialDescriptor, this.discriminatorHolder);
        }
        AbstractJsonLexer.fail$default(abstractJsonLexer, "Unexpected leading comma", 0, null, 6);
        throw null;
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final boolean decodeBoolean() {
        boolean z;
        boolean z2;
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        int skipWhitespaces = abstractJsonLexer.skipWhitespaces();
        if (skipWhitespaces == abstractJsonLexer.getSource().length()) {
            AbstractJsonLexer.fail$default(abstractJsonLexer, "EOF", 0, null, 6);
            throw null;
        }
        if (abstractJsonLexer.getSource().charAt(skipWhitespaces) == '\"') {
            skipWhitespaces++;
            z = true;
        } else {
            z = false;
        }
        int prefetchOrEof = abstractJsonLexer.prefetchOrEof(skipWhitespaces);
        if (prefetchOrEof >= abstractJsonLexer.getSource().length() || prefetchOrEof == -1) {
            AbstractJsonLexer.fail$default(abstractJsonLexer, "EOF", 0, null, 6);
            throw null;
        }
        int i = prefetchOrEof + 1;
        int charAt = abstractJsonLexer.getSource().charAt(prefetchOrEof) | ' ';
        if (charAt == 102) {
            abstractJsonLexer.consumeBooleanLiteral(i, "alse");
            z2 = false;
        } else {
            if (charAt != 116) {
                AbstractJsonLexer.fail$default(abstractJsonLexer, "Expected valid boolean literal prefix, but had '" + abstractJsonLexer.consumeStringLenient() + '\'', 0, null, 6);
                throw null;
            }
            abstractJsonLexer.consumeBooleanLiteral(i, "rue");
            z2 = true;
        }
        if (!z) {
            return z2;
        }
        if (abstractJsonLexer.currentPosition == abstractJsonLexer.getSource().length()) {
            AbstractJsonLexer.fail$default(abstractJsonLexer, "EOF", 0, null, 6);
            throw null;
        }
        if (abstractJsonLexer.getSource().charAt(abstractJsonLexer.currentPosition) == '\"') {
            abstractJsonLexer.currentPosition++;
            return z2;
        }
        AbstractJsonLexer.fail$default(abstractJsonLexer, "Expected closing quotation mark", 0, null, 6);
        throw null;
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final byte decodeByte() {
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        long consumeNumericLiteral = abstractJsonLexer.consumeNumericLiteral();
        byte b = (byte) consumeNumericLiteral;
        if (consumeNumericLiteral == b) {
            return b;
        }
        AbstractJsonLexer.fail$default(abstractJsonLexer, "Failed to parse byte for input '" + consumeNumericLiteral + '\'', 0, null, 6);
        throw null;
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final char decodeChar() {
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        String consumeStringLenient = abstractJsonLexer.consumeStringLenient();
        if (consumeStringLenient.length() == 1) {
            return consumeStringLenient.charAt(0);
        }
        AbstractJsonLexer.fail$default(abstractJsonLexer, Owner.CC.m('\'', "Expected single char, but got '", consumeStringLenient), 0, null, 6);
        throw null;
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final double decodeDouble() {
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        String consumeStringLenient = abstractJsonLexer.consumeStringLenient();
        try {
            double parseDouble = Double.parseDouble(consumeStringLenient);
            JsonConfiguration jsonConfiguration = this.json.configuration;
            if (Math.abs(parseDouble) <= Double.MAX_VALUE) {
                return parseDouble;
            }
            AbstractJsonLexer.fail$default(abstractJsonLexer, WriteModeKt.nonFiniteFpMessage(Double.valueOf(parseDouble), null), 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2);
            throw null;
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.fail$default(abstractJsonLexer, Owner.CC.m('\'', "Failed to parse type 'double' for input '", consumeStringLenient), 0, null, 6);
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x011a, code lost:
    
        r0 = r7.origin;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x011e, code lost:
    
        if (r14 >= 64) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0120, code lost:
    
        r0.lowerMarks |= 1 << r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x012a, code lost:
    
        r1 = (r14 >>> 6) - 1;
        r0 = r0.highMarksArray;
        r0[r1] = r0[r1] | (1 << (r14 & 63));
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0127, code lost:
    
        r12 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x015b, code lost:
    
        r0 = r3.mGroupAlertBehavior;
        r1 = (int[]) r3.mExtras;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0164, code lost:
    
        if (r1[r0] != (-2)) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0166, code lost:
    
        r1[r0] = r20;
        r3.mGroupAlertBehavior = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x016c, code lost:
    
        r0 = r3.mGroupAlertBehavior;
        r8 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0170, code lost:
    
        if (r0 == r8) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0172, code lost:
    
        r3.mGroupAlertBehavior = r0 + r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0175, code lost:
    
        r2.fail(androidx.compose.ui.node.Owner.CC.m('\'', "Encountered an unknown key '", r5), kotlin.text.StringsKt.lastIndexOf$default(r2.substring(0, r2.currentPosition), 6, r5), "Use 'ignoreUnknownKeys = true' in 'Json {}' builder or '@JsonIgnoreUnknownKeys' annotation to ignore unknown keys.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x018f, code lost:
    
        throw null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.encoding.CompositeDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int decodeElementIndex(kotlinx.serialization.descriptors.SerialDescriptor r24) {
        /*
            Method dump skipped, instructions count: 672
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.StreamingJsonDecoder.decodeElementIndex(kotlinx.serialization.descriptors.SerialDescriptor):int");
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final float decodeFloat() {
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        String consumeStringLenient = abstractJsonLexer.consumeStringLenient();
        try {
            float parseFloat = Float.parseFloat(consumeStringLenient);
            JsonConfiguration jsonConfiguration = this.json.configuration;
            if (Math.abs(parseFloat) <= Float.MAX_VALUE) {
                return parseFloat;
            }
            AbstractJsonLexer.fail$default(abstractJsonLexer, WriteModeKt.nonFiniteFpMessage(Float.valueOf(parseFloat), null), 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2);
            throw null;
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.fail$default(abstractJsonLexer, Owner.CC.m('\'', "Failed to parse type 'float' for input '", consumeStringLenient), 0, null, 6);
            throw null;
        }
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final Decoder decodeInline(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return StreamingJsonEncoderKt.isUnsignedNumber(serialDescriptor) ? new JsonDecoderForUnsignedTypes(this.lexer, this.json) : this;
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final int decodeInt() {
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        long consumeNumericLiteral = abstractJsonLexer.consumeNumericLiteral();
        int i = (int) consumeNumericLiteral;
        if (consumeNumericLiteral == i) {
            return i;
        }
        AbstractJsonLexer.fail$default(abstractJsonLexer, "Failed to parse int for input '" + consumeNumericLiteral + '\'', 0, null, 6);
        throw null;
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public final JsonElement decodeJsonElement() {
        return new JsonTreeReader(this.json.configuration, this.lexer).read();
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final long decodeLong() {
        return this.lexer.consumeNumericLiteral();
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final boolean decodeNotNullMark() {
        JsonElementMarker jsonElementMarker = this.elementMarker;
        return ((jsonElementMarker != null ? jsonElementMarker.isUnmarkedNull : false) || this.lexer.tryConsumeNull(true)) ? false : true;
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.CompositeDecoder
    public final Object decodeSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        NotificationCompatBuilder notificationCompatBuilder = (NotificationCompatBuilder) this.lexer.path;
        serialDescriptor.getClass();
        kSerializer.getClass();
        boolean z = this.mode == WriteMode.MAP && (i & 1) == 0;
        if (z) {
            int[] iArr = (int[]) notificationCompatBuilder.mExtras;
            int i2 = notificationCompatBuilder.mGroupAlertBehavior;
            if (iArr[i2] == -2) {
                ((Object[]) notificationCompatBuilder.mBuilderCompat)[i2] = JsonPath$Tombstone.INSTANCE;
            }
        }
        Object decodeSerializableValue = decodeSerializableValue(kSerializer);
        if (z) {
            int[] iArr2 = (int[]) notificationCompatBuilder.mExtras;
            int i3 = notificationCompatBuilder.mGroupAlertBehavior;
            if (iArr2[i3] != -2) {
                int i4 = i3 + 1;
                notificationCompatBuilder.mGroupAlertBehavior = i4;
                if (i4 == ((Object[]) notificationCompatBuilder.mBuilderCompat).length) {
                    notificationCompatBuilder.resize();
                }
            }
            Object[] objArr = (Object[]) notificationCompatBuilder.mBuilderCompat;
            int i5 = notificationCompatBuilder.mGroupAlertBehavior;
            objArr[i5] = ((JsonConfiguration) notificationCompatBuilder.mBuilder).exceptionsWithDebugInfo ? decodeSerializableValue : JsonPath$Tombstone.INSTANCE$1;
            ((int[]) notificationCompatBuilder.mExtras)[i5] = -2;
        }
        return decodeSerializableValue;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0160  */
    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object decodeSerializableValue(kotlinx.serialization.KSerializer r18) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.StreamingJsonDecoder.decodeSerializableValue(kotlinx.serialization.KSerializer):java.lang.Object");
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final short decodeShort() {
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        long consumeNumericLiteral = abstractJsonLexer.consumeNumericLiteral();
        short s = (short) consumeNumericLiteral;
        if (consumeNumericLiteral == s) {
            return s;
        }
        AbstractJsonLexer.fail$default(abstractJsonLexer, "Failed to parse short for input '" + consumeNumericLiteral + '\'', 0, null, 6);
        throw null;
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final String decodeString() {
        return this.lexer.consumeString();
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.CompositeDecoder
    public final void endStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        int elementsCount = serialDescriptor.getElementsCount();
        Json json = this.json;
        if (elementsCount == 0 && WriteModeKt.ignoreUnknownKeys(serialDescriptor, json)) {
            while (decodeElementIndex(serialDescriptor) != -1) {
            }
        }
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        if (abstractJsonLexer.tryConsumeComma()) {
            JsonConfiguration jsonConfiguration = json.configuration;
            WriteModeKt.invalidTrailingComma(abstractJsonLexer, "");
            throw null;
        }
        abstractJsonLexer.consumeNextToken(this.mode.end);
        NotificationCompatBuilder notificationCompatBuilder = (NotificationCompatBuilder) abstractJsonLexer.path;
        int i = notificationCompatBuilder.mGroupAlertBehavior;
        int[] iArr = (int[]) notificationCompatBuilder.mExtras;
        if (iArr[i] == -2) {
            iArr[i] = -1;
            notificationCompatBuilder.mGroupAlertBehavior = i - 1;
        }
        int i2 = notificationCompatBuilder.mGroupAlertBehavior;
        if (i2 != -1) {
            notificationCompatBuilder.mGroupAlertBehavior = i2 - 1;
        }
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public final Json getJson() {
        return this.json;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final ComponentRegistry.Builder getSerializersModule() {
        return this.serializersModule;
    }
}
