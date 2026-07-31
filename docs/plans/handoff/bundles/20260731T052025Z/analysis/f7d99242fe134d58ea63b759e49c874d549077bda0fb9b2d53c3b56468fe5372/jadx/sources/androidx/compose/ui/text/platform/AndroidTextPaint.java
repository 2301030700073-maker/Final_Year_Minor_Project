package androidx.compose.ui.text.platform;

import android.graphics.Paint;
import android.text.TextPaint;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.text.style.TextDecoration;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidTextPaint extends TextPaint {
    public int backingBlendMode;
    public AndroidPaint backingComposePaint;
    public Brush brush;
    public Size brushSize;
    public DrawStyle drawStyle;
    public Color lastColor;
    public DerivedSnapshotState shaderState;
    public Shadow shadow;
    public TextDecoration textDecoration;

    public final AndroidPaint getComposePaint() {
        AndroidPaint androidPaint = this.backingComposePaint;
        if (androidPaint != null) {
            return androidPaint;
        }
        AndroidPaint androidPaint2 = new AndroidPaint(this);
        this.backingComposePaint = androidPaint2;
        return androidPaint2;
    }

    /* renamed from: setBlendMode-s9anfk8, reason: not valid java name */
    public final void m716setBlendModes9anfk8(int i) {
        if (i == this.backingBlendMode) {
            return;
        }
        getComposePaint().m463setBlendModes9anfk8(i);
        this.backingBlendMode = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0036, code lost:
    
        if ((r1 == null ? false : androidx.compose.ui.geometry.Size.m449equalsimpl0(r1.packedValue, r7)) == false) goto L19;
     */
    /* renamed from: setBrush-12SF9DM, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m717setBrush12SF9DM(androidx.compose.ui.graphics.Brush r6, long r7, float r9) {
        /*
            r5 = this;
            r0 = 0
            if (r6 != 0) goto Ld
            r5.shaderState = r0
            r5.brush = r0
            r5.brushSize = r0
            r5.setShader(r0)
            return
        Ld:
            boolean r1 = r6 instanceof androidx.compose.ui.graphics.SolidColor
            if (r1 == 0) goto L1d
            androidx.compose.ui.graphics.SolidColor r6 = (androidx.compose.ui.graphics.SolidColor) r6
            long r6 = r6.value
            long r6 = androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.m800modulateDxMtmZc(r9, r6)
            r5.m718setColor8_81llA(r6)
            return
        L1d:
            boolean r1 = r6 instanceof androidx.compose.ui.graphics.ShaderBrush
            if (r1 == 0) goto L6e
            androidx.compose.ui.graphics.Brush r1 = r5.brush
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r6)
            r2 = 0
            if (r1 == 0) goto L38
            androidx.compose.ui.geometry.Size r1 = r5.brushSize
            if (r1 != 0) goto L30
            r1 = r2
            goto L36
        L30:
            long r3 = r1.packedValue
            boolean r1 = androidx.compose.ui.geometry.Size.m449equalsimpl0(r3, r7)
        L36:
            if (r1 != 0) goto L55
        L38:
            r3 = 9205357640488583168(0x7fc000007fc00000, double:2.247117487993712E307)
            int r1 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r1 == 0) goto L55
            r5.brush = r6
            androidx.compose.ui.geometry.Size r1 = new androidx.compose.ui.geometry.Size
            r1.<init>(r7)
            r5.brushSize = r1
            androidx.compose.ui.text.platform.AndroidTextPaint$$ExternalSyntheticLambda0 r1 = new androidx.compose.ui.text.platform.AndroidTextPaint$$ExternalSyntheticLambda0
            r1.<init>(r6, r7, r2)
            androidx.compose.runtime.DerivedSnapshotState r6 = androidx.compose.runtime.Updater.derivedStateOf(r1)
            r5.shaderState = r6
        L55:
            androidx.compose.ui.graphics.AndroidPaint r6 = r5.getComposePaint()
            androidx.compose.runtime.DerivedSnapshotState r7 = r5.shaderState
            if (r7 == 0) goto L64
            java.lang.Object r7 = r7.getValue()
            android.graphics.Shader r7 = (android.graphics.Shader) r7
            goto L65
        L64:
            r7 = r0
        L65:
            r6.setShader(r7)
            r5.lastColor = r0
            androidx.compose.ui.text.platform.AndroidTextPaint_androidKt.setAlpha(r5, r9)
            return
        L6e:
            coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.platform.AndroidTextPaint.m717setBrush12SF9DM(androidx.compose.ui.graphics.Brush, long, float):void");
    }

    /* renamed from: setColor-8_81llA, reason: not valid java name */
    public final void m718setColor8_81llA(long j) {
        Color color = this.lastColor;
        if ((color == null ? false : Color.m482equalsimpl0(color.value, j)) || j == 16) {
            return;
        }
        this.lastColor = new Color(j);
        setColor(ColorKt.m500toArgb8_81llA(j));
        this.shaderState = null;
        this.brush = null;
        this.brushSize = null;
        setShader(null);
    }

    public final void setDrawStyle(DrawStyle drawStyle) {
        if (drawStyle == null || Intrinsics.areEqual(this.drawStyle, drawStyle)) {
            return;
        }
        this.drawStyle = drawStyle;
        if (drawStyle.equals(Fill.INSTANCE)) {
            setStyle(Paint.Style.FILL);
            return;
        }
        if (!(drawStyle instanceof Stroke)) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return;
        }
        getComposePaint().m468setStylek9PVt8s(1);
        Stroke stroke = (Stroke) drawStyle;
        getComposePaint().setStrokeWidth(stroke.width);
        AndroidPaint composePaint = getComposePaint();
        composePaint.internalPaint.setStrokeMiter(stroke.miter);
        getComposePaint().m467setStrokeJoinWw9F2mQ(stroke.join);
        getComposePaint().m466setStrokeCapBeK7IIE(stroke.cap);
        getComposePaint().internalPaint.setPathEffect(null);
    }

    public final void setShadow(Shadow shadow) {
        if (shadow == null || Intrinsics.areEqual(this.shadow, shadow)) {
            return;
        }
        this.shadow = shadow;
        if (shadow.equals(Shadow.None)) {
            clearShadowLayer();
            return;
        }
        Shadow shadow2 = this.shadow;
        float f = shadow2.blurRadius;
        if (f == 0.0f) {
            f = Float.MIN_VALUE;
        }
        setShadowLayer(f, Float.intBitsToFloat((int) (shadow2.offset >> 32)), Float.intBitsToFloat((int) (this.shadow.offset & 4294967295L)), ColorKt.m500toArgb8_81llA(this.shadow.color));
    }

    public final void setTextDecoration(TextDecoration textDecoration) {
        if (textDecoration == null || Intrinsics.areEqual(this.textDecoration, textDecoration)) {
            return;
        }
        this.textDecoration = textDecoration;
        int i = textDecoration.mask;
        setUnderlineText((i | 1) == i);
        int i2 = this.textDecoration.mask;
        setStrikeThruText((i2 | 2) == i2);
    }
}
