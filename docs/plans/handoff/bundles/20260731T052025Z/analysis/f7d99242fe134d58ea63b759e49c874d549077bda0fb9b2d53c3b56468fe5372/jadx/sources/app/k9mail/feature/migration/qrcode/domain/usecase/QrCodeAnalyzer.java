package app.k9mail.feature.migration.qrcode.domain.usecase;

import androidx.camera.core.ImageAnalysis;
import com.google.zxing.DecodeHintType;
import com.google.zxing.multi.qrcode.QRCodeMultiReader;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QrCodeAnalyzer implements ImageAnalysis.Analyzer {
    public static final Map DECODER_HINTS = MapsKt__MapsKt.mapOf(new Pair(DecodeHintType.CHARACTER_SET, "UTF-8"), new Pair(DecodeHintType.TRY_HARDER, Boolean.TRUE));
    public final Function1 qrCodeListener;
    public final QRCodeMultiReader qrCodeReader;

    public QrCodeAnalyzer(Function1 function1) {
        function1.getClass();
        this.qrCodeListener = function1;
        this.qrCodeReader = new QRCodeMultiReader();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007c A[LOOP:1: B:10:0x0076->B:12:0x007c, LOOP_END] */
    /* JADX WARN: Type inference failed for: r3v4, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.util.ArrayList] */
    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void analyze(androidx.camera.core.SettableImageProxy r11) {
        /*
            r10 = this;
            androidx.camera.core.ImageProxy r0 = r11.mImage
            androidx.camera.core.ImageProxy$PlaneProxy[] r0 = r0.getPlanes()
            r1 = 0
            r0 = r0[r1]
            java.nio.ByteBuffer r2 = r0.getBuffer()
            r2.getClass()
            int r3 = r2.remaining()
            byte[] r5 = new byte[r3]
            r2.get(r5)
            int r7 = r11.mHeight
            int r8 = r11.mWidth
            int r2 = r0.getRowStride()
            int r3 = r0.getPixelStride()
            int r3 = r3 * r8
            int r2 = r2 - r3
            int r0 = r0.getPixelStride()
            int r2 = r2 / r0
            int r6 = r2 + r8
            com.google.zxing.PlanarYUVLuminanceSource r4 = new com.google.zxing.PlanarYUVLuminanceSource
            r9 = r7
            r4.<init>(r5, r6, r7, r8, r9)
            com.google.zxing.multi.qrcode.QRCodeMultiReader r2 = r10.qrCodeReader
            com.google.zxing.BinaryBitmap r0 = new com.google.zxing.BinaryBitmap     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L60 com.google.zxing.NotFoundException -> L68
            com.google.zxing.common.HybridBinarizer r3 = new com.google.zxing.common.HybridBinarizer     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L60 com.google.zxing.NotFoundException -> L68
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L60 com.google.zxing.NotFoundException -> L68
            r0.<init>(r1, r3)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L60 com.google.zxing.NotFoundException -> L68
            java.util.Map r3 = app.k9mail.feature.migration.qrcode.domain.usecase.QrCodeAnalyzer.DECODER_HINTS     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L60 com.google.zxing.NotFoundException -> L68
            com.google.zxing.Result[] r0 = r2.decodeMultiple(r0, r3)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L60 com.google.zxing.NotFoundException -> L68
            r0.getClass()     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L60 com.google.zxing.NotFoundException -> L68
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L60 com.google.zxing.NotFoundException -> L68
            int r4 = r0.length     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L60 com.google.zxing.NotFoundException -> L68
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L60 com.google.zxing.NotFoundException -> L68
            int r4 = r0.length     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L60 com.google.zxing.NotFoundException -> L68
            r5 = r1
        L51:
            if (r5 >= r4) goto L72
            r6 = r0[r5]     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L60 com.google.zxing.NotFoundException -> L68
            java.lang.String r6 = r6.text     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L60 com.google.zxing.NotFoundException -> L68
            r3.add(r6)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L60 com.google.zxing.NotFoundException -> L68
            int r5 = r5 + 1
            goto L51
        L5d:
            r0 = move-exception
            r10 = r0
            goto L6c
        L60:
            r0 = move-exception
            java.lang.String r3 = "Error while trying to read QR code"
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L5d
            net.thunderbird.core.logging.legacy.Log.e(r0, r3, r1)     // Catch: java.lang.Throwable -> L5d
        L68:
            r2.getClass()
            goto L70
        L6c:
            r2.getClass()
            throw r10
        L70:
            kotlin.collections.EmptyList r3 = kotlin.collections.EmptyList.INSTANCE
        L72:
            java.util.Iterator r0 = r3.iterator()
        L76:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L88
            java.lang.Object r1 = r0.next()
            java.lang.String r1 = (java.lang.String) r1
            kotlin.jvm.functions.Function1 r2 = r10.qrCodeListener
            r2.invoke(r1)
            goto L76
        L88:
            r11.close()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.migration.qrcode.domain.usecase.QrCodeAnalyzer.analyze(androidx.camera.core.SettableImageProxy):void");
    }
}
