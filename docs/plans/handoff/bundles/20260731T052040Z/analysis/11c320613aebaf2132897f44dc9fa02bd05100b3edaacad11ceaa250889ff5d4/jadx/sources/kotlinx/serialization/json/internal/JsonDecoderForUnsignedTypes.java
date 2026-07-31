package kotlinx.serialization.json.internal;

import androidx.compose.ui.node.Owner;
import coil3.ComponentRegistry;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.UStringsKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.Json;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JsonDecoderForUnsignedTypes extends RangesKt {
    public final AbstractJsonLexer lexer;
    public final ComponentRegistry.Builder serializersModule;

    public JsonDecoderForUnsignedTypes(AbstractJsonLexer abstractJsonLexer, Json json) {
        json.getClass();
        this.lexer = abstractJsonLexer;
        this.serializersModule = json.serializersModule;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002b A[Catch: IllegalArgumentException -> 0x0032, TryCatch #0 {IllegalArgumentException -> 0x0032, blocks: (B:3:0x0007, B:5:0x0012, B:8:0x0021, B:10:0x002b, B:13:0x002e, B:14:0x0031), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002e A[Catch: IllegalArgumentException -> 0x0032, TryCatch #0 {IllegalArgumentException -> 0x0032, blocks: (B:3:0x0007, B:5:0x0012, B:8:0x0021, B:10:0x002b, B:13:0x002e, B:14:0x0031), top: B:2:0x0007 }] */
    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte decodeByte() {
        /*
            r5 = this;
            kotlinx.serialization.json.internal.AbstractJsonLexer r5 = r5.lexer
            java.lang.String r0 = r5.consumeStringLenient()
            r1 = 0
            r0.getClass()     // Catch: java.lang.IllegalArgumentException -> L32
            r2 = 10
            kotlin.UInt r2 = kotlin.text.UStringsKt.toUIntOrNull(r2, r0)     // Catch: java.lang.IllegalArgumentException -> L32
            if (r2 == 0) goto L28
            int r2 = r2.data     // Catch: java.lang.IllegalArgumentException -> L32
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r3 ^ r2
            r4 = -2147483393(0xffffffff800000ff, float:-3.57E-43)
            int r3 = java.lang.Integer.compare(r3, r4)     // Catch: java.lang.IllegalArgumentException -> L32
            if (r3 <= 0) goto L21
            goto L28
        L21:
            byte r2 = (byte) r2     // Catch: java.lang.IllegalArgumentException -> L32
            kotlin.UByte r3 = new kotlin.UByte     // Catch: java.lang.IllegalArgumentException -> L32
            r3.<init>(r2)     // Catch: java.lang.IllegalArgumentException -> L32
            goto L29
        L28:
            r3 = r1
        L29:
            if (r3 == 0) goto L2e
            byte r5 = r3.data     // Catch: java.lang.IllegalArgumentException -> L32
            return r5
        L2e:
            kotlin.text.StringsKt__StringsJVMKt.numberFormatError(r0)     // Catch: java.lang.IllegalArgumentException -> L32
            throw r1     // Catch: java.lang.IllegalArgumentException -> L32
        L32:
            java.lang.String r2 = "Failed to parse type 'UByte' for input '"
            r3 = 39
            java.lang.String r0 = androidx.compose.ui.node.Owner.CC.m(r3, r2, r0)
            r2 = 0
            r3 = 6
            kotlinx.serialization.json.internal.AbstractJsonLexer.fail$default(r5, r0, r2, r1, r3)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.JsonDecoderForUnsignedTypes.decodeByte():byte");
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int decodeElementIndex(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        throw new IllegalStateException("unsupported");
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final int decodeInt() {
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        String consumeStringLenient = abstractJsonLexer.consumeStringLenient();
        try {
            consumeStringLenient.getClass();
            UInt uIntOrNull = UStringsKt.toUIntOrNull(10, consumeStringLenient);
            if (uIntOrNull != null) {
                return uIntOrNull.data;
            }
            StringsKt__StringsJVMKt.numberFormatError(consumeStringLenient);
            throw null;
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.fail$default(abstractJsonLexer, Owner.CC.m('\'', "Failed to parse type 'UInt' for input '", consumeStringLenient), 0, null, 6);
            throw null;
        }
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final long decodeLong() {
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        String consumeStringLenient = abstractJsonLexer.consumeStringLenient();
        try {
            consumeStringLenient.getClass();
            ULong uLongOrNull = UStringsKt.toULongOrNull(consumeStringLenient);
            if (uLongOrNull != null) {
                return uLongOrNull.data;
            }
            StringsKt__StringsJVMKt.numberFormatError(consumeStringLenient);
            throw null;
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.fail$default(abstractJsonLexer, Owner.CC.m('\'', "Failed to parse type 'ULong' for input '", consumeStringLenient), 0, null, 6);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002b A[Catch: IllegalArgumentException -> 0x0032, TryCatch #0 {IllegalArgumentException -> 0x0032, blocks: (B:3:0x0007, B:5:0x0012, B:8:0x0021, B:10:0x002b, B:13:0x002e, B:14:0x0031), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002e A[Catch: IllegalArgumentException -> 0x0032, TryCatch #0 {IllegalArgumentException -> 0x0032, blocks: (B:3:0x0007, B:5:0x0012, B:8:0x0021, B:10:0x002b, B:13:0x002e, B:14:0x0031), top: B:2:0x0007 }] */
    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final short decodeShort() {
        /*
            r5 = this;
            kotlinx.serialization.json.internal.AbstractJsonLexer r5 = r5.lexer
            java.lang.String r0 = r5.consumeStringLenient()
            r1 = 0
            r0.getClass()     // Catch: java.lang.IllegalArgumentException -> L32
            r2 = 10
            kotlin.UInt r2 = kotlin.text.UStringsKt.toUIntOrNull(r2, r0)     // Catch: java.lang.IllegalArgumentException -> L32
            if (r2 == 0) goto L28
            int r2 = r2.data     // Catch: java.lang.IllegalArgumentException -> L32
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r3 ^ r2
            r4 = -2147418113(0xffffffff8000ffff, float:-9.1834E-41)
            int r3 = java.lang.Integer.compare(r3, r4)     // Catch: java.lang.IllegalArgumentException -> L32
            if (r3 <= 0) goto L21
            goto L28
        L21:
            short r2 = (short) r2     // Catch: java.lang.IllegalArgumentException -> L32
            kotlin.UShort r3 = new kotlin.UShort     // Catch: java.lang.IllegalArgumentException -> L32
            r3.<init>(r2)     // Catch: java.lang.IllegalArgumentException -> L32
            goto L29
        L28:
            r3 = r1
        L29:
            if (r3 == 0) goto L2e
            short r5 = r3.data     // Catch: java.lang.IllegalArgumentException -> L32
            return r5
        L2e:
            kotlin.text.StringsKt__StringsJVMKt.numberFormatError(r0)     // Catch: java.lang.IllegalArgumentException -> L32
            throw r1     // Catch: java.lang.IllegalArgumentException -> L32
        L32:
            java.lang.String r2 = "Failed to parse type 'UShort' for input '"
            r3 = 39
            java.lang.String r0 = androidx.compose.ui.node.Owner.CC.m(r3, r2, r0)
            r2 = 0
            r3 = 6
            kotlinx.serialization.json.internal.AbstractJsonLexer.fail$default(r5, r0, r2, r1, r3)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.JsonDecoderForUnsignedTypes.decodeShort():short");
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final ComponentRegistry.Builder getSerializersModule() {
        return this.serializersModule;
    }
}
