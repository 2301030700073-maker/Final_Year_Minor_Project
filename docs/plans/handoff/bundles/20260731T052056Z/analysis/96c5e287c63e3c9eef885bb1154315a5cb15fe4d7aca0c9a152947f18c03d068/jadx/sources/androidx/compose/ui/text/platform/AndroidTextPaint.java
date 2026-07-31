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
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final void m663setBlendModes9anfk8(int i) {
        if (i == this.backingBlendMode) {
            return;
        }
        getComposePaint().m410setBlendModes9anfk8(i);
        this.backingBlendMode = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
    
        if ((r1 == null ? false : androidx.compose.ui.geometry.Size.m394equalsimpl0(r1.packedValue, r5)) == false) goto L19;
     */
    /* renamed from: setBrush-12SF9DM, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m664setBrush12SF9DM(final androidx.compose.ui.graphics.Brush r4, final long r5, float r7) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto Ld
            r3.shaderState = r0
            r3.brush = r0
            r3.brushSize = r0
            r3.setShader(r0)
            return
        Ld:
            boolean r1 = r4 instanceof androidx.compose.ui.graphics.SolidColor
            if (r1 == 0) goto L1d
            androidx.compose.ui.graphics.SolidColor r4 = (androidx.compose.ui.graphics.SolidColor) r4
            long r4 = r4.value
            long r4 = coil3.util.UtilsKt.m794modulateDxMtmZc(r7, r4)
            r3.m665setColor8_81llA(r4)
            return
        L1d:
            boolean r1 = r4 instanceof androidx.compose.ui.graphics.ShaderBrush
            if (r1 == 0) goto L6d
            androidx.compose.ui.graphics.Brush r1 = r3.brush
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r4)
            if (r1 == 0) goto L37
            androidx.compose.ui.geometry.Size r1 = r3.brushSize
            if (r1 != 0) goto L2f
            r1 = 0
            goto L35
        L2f:
            long r1 = r1.packedValue
            boolean r1 = androidx.compose.ui.geometry.Size.m394equalsimpl0(r1, r5)
        L35:
            if (r1 != 0) goto L54
        L37:
            r1 = 9205357640488583168(0x7fc000007fc00000, double:2.247117487993712E307)
            int r1 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r1 == 0) goto L54
            r3.brush = r4
            androidx.compose.ui.geometry.Size r1 = new androidx.compose.ui.geometry.Size
            r1.<init>(r5)
            r3.brushSize = r1
            androidx.compose.ui.text.platform.AndroidTextPaint$$ExternalSyntheticLambda0 r1 = new androidx.compose.ui.text.platform.AndroidTextPaint$$ExternalSyntheticLambda0
            r1.<init>()
            androidx.compose.runtime.DerivedSnapshotState r4 = androidx.compose.runtime.SnapshotStateKt__DerivedStateKt.derivedStateOf(r1)
            r3.shaderState = r4
        L54:
            androidx.compose.ui.graphics.AndroidPaint r4 = r3.getComposePaint()
            androidx.compose.runtime.DerivedSnapshotState r5 = r3.shaderState
            if (r5 == 0) goto L63
            java.lang.Object r5 = r5.getValue()
            android.graphics.Shader r5 = (android.graphics.Shader) r5
            goto L64
        L63:
            r5 = r0
        L64:
            r4.setShader(r5)
            r3.lastColor = r0
            androidx.compose.ui.text.platform.AndroidTextPaint_androidKt.setAlpha(r3, r7)
            return
        L6d:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.platform.AndroidTextPaint.m664setBrush12SF9DM(androidx.compose.ui.graphics.Brush, long, float):void");
    }

    /* renamed from: setColor-8_81llA, reason: not valid java name */
    public final void m665setColor8_81llA(long j) {
        Color color = this.lastColor;
        if ((color == null ? false : ULong.m820equalsimpl0(color.value, j)) || j == 16) {
            return;
        }
        this.lastColor = new Color(j);
        setColor(ColorKt.m444toArgb8_81llA(j));
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
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return;
        }
        getComposePaint().m415setStylek9PVt8s(1);
        Stroke stroke = (Stroke) drawStyle;
        getComposePaint().setStrokeWidth(stroke.width);
        AndroidPaint composePaint = getComposePaint();
        composePaint.internalPaint.setStrokeMiter(stroke.miter);
        getComposePaint().m414setStrokeJoinWw9F2mQ(stroke.join);
        getComposePaint().m413setStrokeCapBeK7IIE(stroke.cap);
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
        if (f == RecyclerView.DECELERATION_RATE) {
            f = Float.MIN_VALUE;
        }
        setShadowLayer(f, Float.intBitsToFloat((int) (shadow2.offset >> 32)), Float.intBitsToFloat((int) (this.shadow.offset & 4294967295L)), ColorKt.m444toArgb8_81llA(this.shadow.color));
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
