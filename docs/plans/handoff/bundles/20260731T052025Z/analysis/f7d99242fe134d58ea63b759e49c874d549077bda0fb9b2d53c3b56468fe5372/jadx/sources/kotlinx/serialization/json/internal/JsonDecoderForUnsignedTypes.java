package kotlinx.serialization.json.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.node.RulerTrackingMap;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.modules.SerialModuleImpl;
import org.jsoup.Jsoup;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JsonDecoderForUnsignedTypes extends Base64 {
    public final RulerTrackingMap lexer;
    public final SerialModuleImpl serializersModule;

    public JsonDecoderForUnsignedTypes(RulerTrackingMap rulerTrackingMap, Json json) {
        json.getClass();
        this.lexer = rulerTrackingMap;
        this.serializersModule = json.serializersModule;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002b A[Catch: IllegalArgumentException -> 0x0032, TryCatch #0 {IllegalArgumentException -> 0x0032, blocks: (B:3:0x0007, B:5:0x0012, B:8:0x0021, B:10:0x002b, B:13:0x002e, B:14:0x0031), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002e A[Catch: IllegalArgumentException -> 0x0032, TryCatch #0 {IllegalArgumentException -> 0x0032, blocks: (B:3:0x0007, B:5:0x0012, B:8:0x0021, B:10:0x002b, B:13:0x002e, B:14:0x0031), top: B:2:0x0007 }] */
    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
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
            r0.getClass()     // Catch: java.lang.IllegalArgumentException -> L32
            r2 = 10
            kotlin.UInt r2 = org.jsoup.Jsoup.toUIntOrNull(r0, r2)     // Catch: java.lang.IllegalArgumentException -> L32
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
            java.lang.String r0 = androidx.camera.camera2.pipe.CameraDevices$CC.m(r3, r2, r0)
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

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final int decodeInt() {
        RulerTrackingMap rulerTrackingMap = this.lexer;
        String consumeStringLenient = rulerTrackingMap.consumeStringLenient();
        try {
            consumeStringLenient.getClass();
            UInt uIntOrNull = Jsoup.toUIntOrNull(consumeStringLenient, 10);
            if (uIntOrNull != null) {
                return uIntOrNull.data;
            }
            StringsKt__StringsJVMKt.numberFormatError(consumeStringLenient);
            throw null;
        } catch (IllegalArgumentException unused) {
            RulerTrackingMap.fail$default(rulerTrackingMap, CameraDevices$CC.m('\'', "Failed to parse type 'UInt' for input '", consumeStringLenient), 0, null, 6);
            throw null;
        }
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final long decodeLong() {
        RulerTrackingMap rulerTrackingMap = this.lexer;
        String consumeStringLenient = rulerTrackingMap.consumeStringLenient();
        try {
            consumeStringLenient.getClass();
            ULong uLongOrNull = Jsoup.toULongOrNull(consumeStringLenient);
            if (uLongOrNull != null) {
                return uLongOrNull.data;
            }
            StringsKt__StringsJVMKt.numberFormatError(consumeStringLenient);
            throw null;
        } catch (IllegalArgumentException unused) {
            RulerTrackingMap.fail$default(rulerTrackingMap, CameraDevices$CC.m('\'', "Failed to parse type 'ULong' for input '", consumeStringLenient), 0, null, 6);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002b A[Catch: IllegalArgumentException -> 0x0032, TryCatch #0 {IllegalArgumentException -> 0x0032, blocks: (B:3:0x0007, B:5:0x0012, B:8:0x0021, B:10:0x002b, B:13:0x002e, B:14:0x0031), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002e A[Catch: IllegalArgumentException -> 0x0032, TryCatch #0 {IllegalArgumentException -> 0x0032, blocks: (B:3:0x0007, B:5:0x0012, B:8:0x0021, B:10:0x002b, B:13:0x002e, B:14:0x0031), top: B:2:0x0007 }] */
    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
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
            r0.getClass()     // Catch: java.lang.IllegalArgumentException -> L32
            r2 = 10
            kotlin.UInt r2 = org.jsoup.Jsoup.toUIntOrNull(r0, r2)     // Catch: java.lang.IllegalArgumentException -> L32
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
            java.lang.String r0 = androidx.camera.camera2.pipe.CameraDevices$CC.m(r3, r2, r0)
            r2 = 0
            r3 = 6
            androidx.compose.ui.node.RulerTrackingMap.fail$default(r5, r0, r2, r1, r3)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.JsonDecoderForUnsignedTypes.decodeShort():short");
    }

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.CompositeDecoder
    public final SerialModuleImpl getSerializersModule() {
        return this.serializersModule;
    }
}
