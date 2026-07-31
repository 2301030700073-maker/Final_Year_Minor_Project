package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Connector {
    public final ColorSpace destination;
    public final float[] transform;
    public final ColorSpace transformDestination;
    public final ColorSpace transformSource;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RgbConnector extends Connector {
        public final Rgb mDestination;
        public final Rgb mSource;
        public final float[] mTransform;

        public RgbConnector(Rgb rgb, Rgb rgb2) {
            super(rgb2, rgb, rgb2, null);
            float[] mul3x3;
            this.mSource = rgb;
            this.mDestination = rgb2;
            float[] fArr = Adaptation$Companion$Bradford$1.Bradford.transform;
            WhitePoint whitePoint = rgb.whitePoint;
            float[] fArr2 = rgb.transform;
            WhitePoint whitePoint2 = rgb2.whitePoint;
            float[] fArr3 = rgb2.inverseTransform;
            if (Illuminant.compare(whitePoint, whitePoint2)) {
                mul3x3 = Illuminant.mul3x3(fArr3, fArr2);
            } else {
                float[] xyz$ui_graphics = whitePoint.toXyz$ui_graphics();
                float[] xyz$ui_graphics2 = whitePoint2.toXyz$ui_graphics();
                WhitePoint whitePoint3 = Illuminant.D50;
                mul3x3 = Illuminant.mul3x3(Illuminant.compare(whitePoint2, whitePoint3) ? fArr3 : Illuminant.inverse3x3(Illuminant.mul3x3(Illuminant.chromaticAdaptation(fArr, xyz$ui_graphics2, new float[]{0.964212f, 1.0f, 0.825188f}), rgb2.transform)), Illuminant.compare(whitePoint, whitePoint3) ? fArr2 : Illuminant.mul3x3(Illuminant.chromaticAdaptation(fArr, xyz$ui_graphics, new float[]{0.964212f, 1.0f, 0.825188f}), fArr2));
            }
            this.mTransform = mul3x3;
        }

        @Override // androidx.compose.ui.graphics.colorspace.Connector
        /* renamed from: transformToColor-l2rxGTc$ui_graphics */
        public final long mo256transformToColorl2rxGTc$ui_graphics(long j) {
            float m249getRedimpl = Color.m249getRedimpl(j);
            float m248getGreenimpl = Color.m248getGreenimpl(j);
            float m246getBlueimpl = Color.m246getBlueimpl(j);
            float m245getAlphaimpl = Color.m245getAlphaimpl(j);
            Rgb$$ExternalSyntheticLambda0 rgb$$ExternalSyntheticLambda0 = this.mSource.eotfFunc;
            float invoke = (float) rgb$$ExternalSyntheticLambda0.invoke(m249getRedimpl);
            float invoke2 = (float) rgb$$ExternalSyntheticLambda0.invoke(m248getGreenimpl);
            float invoke3 = (float) rgb$$ExternalSyntheticLambda0.invoke(m246getBlueimpl);
            float[] fArr = this.mTransform;
            float f = (fArr[6] * invoke3) + (fArr[3] * invoke2) + (fArr[0] * invoke);
            float f2 = (fArr[7] * invoke3) + (fArr[4] * invoke2) + (fArr[1] * invoke);
            float f3 = (fArr[8] * invoke3) + (fArr[5] * invoke2) + (fArr[2] * invoke);
            Rgb rgb = this.mDestination;
            float invoke4 = (float) rgb.oetfFunc.invoke(f);
            Rgb$$ExternalSyntheticLambda0 rgb$$ExternalSyntheticLambda02 = rgb.oetfFunc;
            return Brush.Color(invoke4, (float) rgb$$ExternalSyntheticLambda02.invoke(f2), (float) rgb$$ExternalSyntheticLambda02.invoke(f3), m245getAlphaimpl, rgb);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Connector(androidx.compose.ui.graphics.colorspace.ColorSpace r9, androidx.compose.ui.graphics.colorspace.ColorSpace r10, int r11) {
        /*
            r8 = this;
            long r0 = r9.model
            r2 = 12884901888(0x300000000, double:6.365987373E-314)
            boolean r0 = androidx.compose.ui.graphics.colorspace.Illuminant.m258equalsimpl0(r0, r2)
            if (r0 == 0) goto L12
            androidx.compose.ui.graphics.colorspace.ColorSpace r0 = androidx.compose.ui.graphics.colorspace.Illuminant.adapt$default(r9)
            goto L13
        L12:
            r0 = r9
        L13:
            long r4 = r10.model
            boolean r1 = androidx.compose.ui.graphics.colorspace.Illuminant.m258equalsimpl0(r4, r2)
            if (r1 == 0) goto L20
            androidx.compose.ui.graphics.colorspace.ColorSpace r1 = androidx.compose.ui.graphics.colorspace.Illuminant.adapt$default(r10)
            goto L21
        L20:
            r1 = r10
        L21:
            r4 = 3
            if (r11 != r4) goto L6c
            long r5 = r9.model
            boolean r11 = androidx.compose.ui.graphics.colorspace.Illuminant.m258equalsimpl0(r5, r2)
            long r5 = r10.model
            boolean r2 = androidx.compose.ui.graphics.colorspace.Illuminant.m258equalsimpl0(r5, r2)
            if (r11 == 0) goto L35
            if (r2 == 0) goto L35
            goto L6c
        L35:
            if (r11 != 0) goto L39
            if (r2 == 0) goto L6c
        L39:
            if (r11 == 0) goto L3c
            goto L3d
        L3c:
            r9 = r10
        L3d:
            androidx.compose.ui.graphics.colorspace.Rgb r9 = (androidx.compose.ui.graphics.colorspace.Rgb) r9
            androidx.compose.ui.graphics.colorspace.WhitePoint r9 = r9.whitePoint
            float[] r3 = androidx.compose.ui.graphics.colorspace.Illuminant.D50Xyz
            if (r11 == 0) goto L4a
            float[] r11 = r9.toXyz$ui_graphics()
            goto L4b
        L4a:
            r11 = r3
        L4b:
            if (r2 == 0) goto L51
            float[] r3 = r9.toXyz$ui_graphics()
        L51:
            r9 = 0
            r2 = r11[r9]
            r5 = r3[r9]
            float r2 = r2 / r5
            r5 = 1
            r6 = r11[r5]
            r7 = r3[r5]
            float r6 = r6 / r7
            r7 = 2
            r11 = r11[r7]
            r3 = r3[r7]
            float r11 = r11 / r3
            float[] r3 = new float[r4]
            r3[r9] = r2
            r3[r5] = r6
            r3[r7] = r11
            goto L6d
        L6c:
            r3 = 0
        L6d:
            r8.<init>(r10, r0, r1, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.colorspace.Connector.<init>(androidx.compose.ui.graphics.colorspace.ColorSpace, androidx.compose.ui.graphics.colorspace.ColorSpace, int):void");
    }

    /* renamed from: transformToColor-l2rxGTc$ui_graphics, reason: not valid java name */
    public long mo256transformToColorl2rxGTc$ui_graphics(long j) {
        float m249getRedimpl = Color.m249getRedimpl(j);
        float m248getGreenimpl = Color.m248getGreenimpl(j);
        float m246getBlueimpl = Color.m246getBlueimpl(j);
        float m245getAlphaimpl = Color.m245getAlphaimpl(j);
        ColorSpace colorSpace = this.transformSource;
        long xy$ui_graphics = colorSpace.toXy$ui_graphics(m249getRedimpl, m248getGreenimpl, m246getBlueimpl);
        float intBitsToFloat = Float.intBitsToFloat((int) (xy$ui_graphics >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (xy$ui_graphics & 4294967295L));
        float z$ui_graphics = colorSpace.toZ$ui_graphics(m249getRedimpl, m248getGreenimpl, m246getBlueimpl);
        float[] fArr = this.transform;
        if (fArr != null) {
            intBitsToFloat *= fArr[0];
            intBitsToFloat2 *= fArr[1];
            z$ui_graphics *= fArr[2];
        }
        float f = intBitsToFloat;
        float f2 = intBitsToFloat2;
        return this.transformDestination.mo255xyzaToColorJlNiLsg$ui_graphics(f, f2, z$ui_graphics, m245getAlphaimpl, this.destination);
    }

    public Connector(ColorSpace colorSpace, ColorSpace colorSpace2, ColorSpace colorSpace3, float[] fArr) {
        this.destination = colorSpace;
        this.transformSource = colorSpace2;
        this.transformDestination = colorSpace3;
        this.transform = fArr;
    }
}
