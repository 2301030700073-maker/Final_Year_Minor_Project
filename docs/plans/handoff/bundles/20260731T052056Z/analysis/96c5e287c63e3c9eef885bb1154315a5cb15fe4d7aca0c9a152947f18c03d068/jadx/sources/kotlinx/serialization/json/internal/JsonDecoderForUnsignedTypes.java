package kotlinx.serialization.json.internal;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.node.RulerTrackingMap;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.UStringsKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.Json;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JsonDecoderForUnsignedTypes extends UStringsKt {
    public final RulerTrackingMap lexer;
    public final LoginClient serializersModule;

    public JsonDecoderForUnsignedTypes(RulerTrackingMap rulerTrackingMap, Json json) {
        this.lexer = rulerTrackingMap;
        this.serializersModule = json.serializersModule;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029 A[Catch: IllegalArgumentException -> 0x0030, TryCatch #0 {IllegalArgumentException -> 0x0030, blocks: (B:3:0x0007, B:5:0x0010, B:8:0x001f, B:10:0x0029, B:13:0x002c, B:14:0x002f), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002c A[Catch: IllegalArgumentException -> 0x0030, TryCatch #0 {IllegalArgumentException -> 0x0030, blocks: (B:3:0x0007, B:5:0x0010, B:8:0x001f, B:10:0x0029, B:13:0x002c, B:14:0x002f), top: B:2:0x0007 }] */
    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte decodeByte() {
        /*
            r5 = this;
            androidx.compose.ui.node.RulerTrackingMap r5 = r5.lexer
            java.lang.String r0 = r5.consumeStringLenient()
            r1 = 0
            r0.getClass()     // Catch: java.lang.IllegalArgumentException -> L30
            kotlin.UInt r2 = kotlin.text.UStringsKt.toUIntOrNull(r0)     // Catch: java.lang.IllegalArgumentException -> L30
            if (r2 == 0) goto L26
            int r2 = r2.data     // Catch: java.lang.IllegalArgumentException -> L30
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r3 ^ r2
            r4 = -2147483393(0xffffffff800000ff, float:-3.57E-43)
            int r3 = java.lang.Integer.compare(r3, r4)     // Catch: java.lang.IllegalArgumentException -> L30
            if (r3 <= 0) goto L1f
            goto L26
        L1f:
            byte r2 = (byte) r2     // Catch: java.lang.IllegalArgumentException -> L30
            kotlin.UByte r3 = new kotlin.UByte     // Catch: java.lang.IllegalArgumentException -> L30
            r3.<init>(r2)     // Catch: java.lang.IllegalArgumentException -> L30
            goto L27
        L26:
            r3 = r1
        L27:
            if (r3 == 0) goto L2c
            byte r5 = r3.data     // Catch: java.lang.IllegalArgumentException -> L30
            return r5
        L2c:
            kotlin.text.StringsKt__StringsJVMKt.numberFormatError(r0)     // Catch: java.lang.IllegalArgumentException -> L30
            throw r1     // Catch: java.lang.IllegalArgumentException -> L30
        L30:
            java.lang.String r2 = "Failed to parse type 'UByte' for input '"
            r3 = 39
            java.lang.String r0 = androidx.compose.animation.core.Animation.CC.m(r3, r2, r0)
            r2 = 0
            r3 = 6
            androidx.compose.ui.node.RulerTrackingMap.fail$default(r5, r0, r2, r1, r3)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.JsonDecoderForUnsignedTypes.decodeByte():byte");
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int decodeElementIndex(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        throw new IllegalStateException("unsupported");
    }

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
    public final int decodeInt() {
        RulerTrackingMap rulerTrackingMap = this.lexer;
        String consumeStringLenient = rulerTrackingMap.consumeStringLenient();
        try {
            consumeStringLenient.getClass();
            UInt uIntOrNull = UStringsKt.toUIntOrNull(consumeStringLenient);
            if (uIntOrNull != null) {
                return uIntOrNull.data;
            }
            StringsKt__StringsJVMKt.numberFormatError(consumeStringLenient);
            throw null;
        } catch (IllegalArgumentException unused) {
            RulerTrackingMap.fail$default(rulerTrackingMap, Animation.CC.m('\'', "Failed to parse type 'UInt' for input '", consumeStringLenient), 0, null, 6);
            throw null;
        }
    }

    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
    public final long decodeLong() {
        RulerTrackingMap rulerTrackingMap = this.lexer;
        String consumeStringLenient = rulerTrackingMap.consumeStringLenient();
        try {
            consumeStringLenient.getClass();
            ULong uLongOrNull = UStringsKt.toULongOrNull(consumeStringLenient);
            if (uLongOrNull != null) {
                return uLongOrNull.data;
            }
            StringsKt__StringsJVMKt.numberFormatError(consumeStringLenient);
            throw null;
        } catch (IllegalArgumentException unused) {
            RulerTrackingMap.fail$default(rulerTrackingMap, Animation.CC.m('\'', "Failed to parse type 'ULong' for input '", consumeStringLenient), 0, null, 6);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029 A[Catch: IllegalArgumentException -> 0x0030, TryCatch #0 {IllegalArgumentException -> 0x0030, blocks: (B:3:0x0007, B:5:0x0010, B:8:0x001f, B:10:0x0029, B:13:0x002c, B:14:0x002f), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002c A[Catch: IllegalArgumentException -> 0x0030, TryCatch #0 {IllegalArgumentException -> 0x0030, blocks: (B:3:0x0007, B:5:0x0010, B:8:0x001f, B:10:0x0029, B:13:0x002c, B:14:0x002f), top: B:2:0x0007 }] */
    @Override // kotlin.text.UStringsKt, kotlinx.serialization.encoding.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final short decodeShort() {
        /*
            r5 = this;
            androidx.compose.ui.node.RulerTrackingMap r5 = r5.lexer
            java.lang.String r0 = r5.consumeStringLenient()
            r1 = 0
            r0.getClass()     // Catch: java.lang.IllegalArgumentException -> L30
            kotlin.UInt r2 = kotlin.text.UStringsKt.toUIntOrNull(r0)     // Catch: java.lang.IllegalArgumentException -> L30
            if (r2 == 0) goto L26
            int r2 = r2.data     // Catch: java.lang.IllegalArgumentException -> L30
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r3 ^ r2
            r4 = -2147418113(0xffffffff8000ffff, float:-9.1834E-41)
            int r3 = java.lang.Integer.compare(r3, r4)     // Catch: java.lang.IllegalArgumentException -> L30
            if (r3 <= 0) goto L1f
            goto L26
        L1f:
            short r2 = (short) r2     // Catch: java.lang.IllegalArgumentException -> L30
            kotlin.UShort r3 = new kotlin.UShort     // Catch: java.lang.IllegalArgumentException -> L30
            r3.<init>(r2)     // Catch: java.lang.IllegalArgumentException -> L30
            goto L27
        L26:
            r3 = r1
        L27:
            if (r3 == 0) goto L2c
            short r5 = r3.data     // Catch: java.lang.IllegalArgumentException -> L30
            return r5
        L2c:
            kotlin.text.StringsKt__StringsJVMKt.numberFormatError(r0)     // Catch: java.lang.IllegalArgumentException -> L30
            throw r1     // Catch: java.lang.IllegalArgumentException -> L30
        L30:
            java.lang.String r2 = "Failed to parse type 'UShort' for input '"
            r3 = 39
            java.lang.String r0 = androidx.compose.animation.core.Animation.CC.m(r3, r2, r0)
            r2 = 0
            r3 = 6
            androidx.compose.ui.node.RulerTrackingMap.fail$default(r5, r0, r2, r1, r3)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.JsonDecoderForUnsignedTypes.decodeShort():short");
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final LoginClient getSerializersModule() {
        return this.serializersModule;
    }
}
