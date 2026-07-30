package androidx.compose.ui.text.platform.style;

import android.graphics.Paint;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DrawStyleSpan.android.kt */
/* loaded from: classes.dex */
public final class DrawStyleSpan extends CharacterStyle implements UpdateAppearance {
    private final DrawStyle drawStyle;

    public DrawStyleSpan(DrawStyle drawStyle) {
        this.drawStyle = drawStyle;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        if (textPaint != null) {
            DrawStyle drawStyle = this.drawStyle;
            if (Intrinsics.areEqual(drawStyle, Fill.INSTANCE)) {
                textPaint.setStyle(Paint.Style.FILL);
                return;
            }
            if (drawStyle instanceof Stroke) {
                textPaint.setStyle(Paint.Style.STROKE);
                textPaint.setStrokeWidth(((Stroke) this.drawStyle).getWidth());
                textPaint.setStrokeMiter(((Stroke) this.drawStyle).getMiter());
                textPaint.setStrokeJoin(m2272toAndroidJoinWw9F2mQ(((Stroke) this.drawStyle).m1520getJoinLxFBmk8()));
                textPaint.setStrokeCap(m2271toAndroidCapBeK7IIE(((Stroke) this.drawStyle).m1519getCapKaPHkGw()));
                ((Stroke) this.drawStyle).getPathEffect();
                textPaint.setPathEffect(null);
            }
        }
    }

    /* renamed from: toAndroidJoin-Ww9F2mQ, reason: not valid java name */
    private final Paint.Join m2272toAndroidJoinWw9F2mQ(int i) {
        StrokeJoin.Companion companion = StrokeJoin.Companion;
        return StrokeJoin.m1427equalsimpl0(i, companion.m1431getMiterLxFBmk8()) ? Paint.Join.MITER : StrokeJoin.m1427equalsimpl0(i, companion.m1432getRoundLxFBmk8()) ? Paint.Join.ROUND : StrokeJoin.m1427equalsimpl0(i, companion.m1430getBevelLxFBmk8()) ? Paint.Join.BEVEL : Paint.Join.MITER;
    }

    /* renamed from: toAndroidCap-BeK7IIE, reason: not valid java name */
    private final Paint.Cap m2271toAndroidCapBeK7IIE(int i) {
        StrokeCap.Companion companion = StrokeCap.Companion;
        return StrokeCap.m1420equalsimpl0(i, companion.m1423getButtKaPHkGw()) ? Paint.Cap.BUTT : StrokeCap.m1420equalsimpl0(i, companion.m1424getRoundKaPHkGw()) ? Paint.Cap.ROUND : StrokeCap.m1420equalsimpl0(i, companion.m1425getSquareKaPHkGw()) ? Paint.Cap.SQUARE : Paint.Cap.BUTT;
    }
}
