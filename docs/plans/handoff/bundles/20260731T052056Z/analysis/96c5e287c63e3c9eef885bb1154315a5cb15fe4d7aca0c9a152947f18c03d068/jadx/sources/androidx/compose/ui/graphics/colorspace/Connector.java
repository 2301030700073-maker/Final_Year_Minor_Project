package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Connector {
    public final ColorSpace destination;
    public final float[] transform;
    public final ColorSpace transformDestination;
    public final ColorSpace transformSource;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        public final long mo458transformToColorl2rxGTc$ui_graphics(long j) {
            float m433getRedimpl = Color.m433getRedimpl(j);
            float m432getGreenimpl = Color.m432getGreenimpl(j);
            float m430getBlueimpl = Color.m430getBlueimpl(j);
            float m429getAlphaimpl = Color.m429getAlphaimpl(j);
            Rgb$$ExternalSyntheticLambda1 rgb$$ExternalSyntheticLambda1 = this.mSource.eotfFunc;
            float invoke = (float) rgb$$ExternalSyntheticLambda1.invoke(m433getRedimpl);
            float invoke2 = (float) rgb$$ExternalSyntheticLambda1.invoke(m432getGreenimpl);
            float invoke3 = (float) rgb$$ExternalSyntheticLambda1.invoke(m430getBlueimpl);
            float[] fArr = this.mTransform;
            float f = (fArr[6] * invoke3) + (fArr[3] * invoke2) + (fArr[0] * invoke);
            float f2 = (fArr[7] * invoke3) + (fArr[4] * invoke2) + (fArr[1] * invoke);
            float f3 = (fArr[8] * invoke3) + (fArr[5] * invoke2) + (fArr[2] * invoke);
            Rgb rgb = this.mDestination;
            Rgb$$ExternalSyntheticLambda1 rgb$$ExternalSyntheticLambda12 = rgb.oetfFunc;
            return ColorKt.Color((float) rgb$$ExternalSyntheticLambda12.invoke(f), (float) rgb$$ExternalSyntheticLambda12.invoke(f2), (float) rgb$$ExternalSyntheticLambda12.invoke(f3), m429getAlphaimpl, rgb);
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
            boolean r0 = androidx.compose.ui.graphics.colorspace.Illuminant.m460equalsimpl0(r0, r2)
            if (r0 == 0) goto L12
            androidx.compose.ui.graphics.colorspace.ColorSpace r0 = androidx.compose.ui.graphics.colorspace.Illuminant.adapt$default(r9)
            goto L13
        L12:
            r0 = r9
        L13:
            long r4 = r10.model
            boolean r1 = androidx.compose.ui.graphics.colorspace.Illuminant.m460equalsimpl0(r4, r2)
            if (r1 == 0) goto L20
            androidx.compose.ui.graphics.colorspace.ColorSpace r1 = androidx.compose.ui.graphics.colorspace.Illuminant.adapt$default(r10)
            goto L21
        L20:
            r1 = r10
        L21:
            r4 = 3
            r5 = 0
            if (r11 != r4) goto L6d
            long r6 = r9.model
            boolean r11 = androidx.compose.ui.graphics.colorspace.Illuminant.m460equalsimpl0(r6, r2)
            long r6 = r10.model
            boolean r2 = androidx.compose.ui.graphics.colorspace.Illuminant.m460equalsimpl0(r6, r2)
            if (r11 == 0) goto L36
            if (r2 == 0) goto L36
            goto L6d
        L36:
            if (r11 != 0) goto L3a
            if (r2 == 0) goto L6d
        L3a:
            if (r11 == 0) goto L3d
            goto L3e
        L3d:
            r9 = r10
        L3e:
            androidx.compose.ui.graphics.colorspace.Rgb r9 = (androidx.compose.ui.graphics.colorspace.Rgb) r9
            androidx.compose.ui.graphics.colorspace.WhitePoint r9 = r9.whitePoint
            float[] r3 = androidx.compose.ui.graphics.colorspace.Illuminant.D50Xyz
            if (r11 == 0) goto L4b
            float[] r11 = r9.toXyz$ui_graphics()
            goto L4c
        L4b:
            r11 = r3
        L4c:
            if (r2 == 0) goto L52
            float[] r3 = r9.toXyz$ui_graphics()
        L52:
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
            r5 = r3
        L6d:
            r8.<init>(r10, r0, r1, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.colorspace.Connector.<init>(androidx.compose.ui.graphics.colorspace.ColorSpace, androidx.compose.ui.graphics.colorspace.ColorSpace, int):void");
    }

    /* renamed from: transformToColor-l2rxGTc$ui_graphics, reason: not valid java name */
    public long mo458transformToColorl2rxGTc$ui_graphics(long j) {
        float m433getRedimpl = Color.m433getRedimpl(j);
        float m432getGreenimpl = Color.m432getGreenimpl(j);
        float m430getBlueimpl = Color.m430getBlueimpl(j);
        float m429getAlphaimpl = Color.m429getAlphaimpl(j);
        ColorSpace colorSpace = this.transformSource;
        long xy$ui_graphics = colorSpace.toXy$ui_graphics(m433getRedimpl, m432getGreenimpl, m430getBlueimpl);
        float intBitsToFloat = Float.intBitsToFloat((int) (xy$ui_graphics >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (xy$ui_graphics & 4294967295L));
        float z$ui_graphics = colorSpace.toZ$ui_graphics(m433getRedimpl, m432getGreenimpl, m430getBlueimpl);
        float[] fArr = this.transform;
        if (fArr != null) {
            intBitsToFloat *= fArr[0];
            intBitsToFloat2 *= fArr[1];
            z$ui_graphics *= fArr[2];
        }
        float f = intBitsToFloat;
        float f2 = intBitsToFloat2;
        return this.transformDestination.mo457xyzaToColorJlNiLsg$ui_graphics(f, f2, z$ui_graphics, m429getAlphaimpl, this.destination);
    }

    public Connector(ColorSpace colorSpace, ColorSpace colorSpace2, ColorSpace colorSpace3, float[] fArr) {
        this.destination = colorSpace;
        this.transformSource = colorSpace2;
        this.transformDestination = colorSpace3;
        this.transform = fArr;
    }
}
