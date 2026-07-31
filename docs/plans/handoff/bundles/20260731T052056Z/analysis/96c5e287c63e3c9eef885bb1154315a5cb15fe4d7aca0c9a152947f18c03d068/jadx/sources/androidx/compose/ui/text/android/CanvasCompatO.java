package androidx.compose.ui.text.android;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.StaticLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CanvasCompatO {
    public static boolean clipOutPath(Canvas canvas, Path path) {
        return canvas.clipOutPath(path);
    }

    public static boolean clipOutRect(Canvas canvas, RectF rectF) {
        return canvas.clipOutRect(rectF);
    }

    public static final void setJustificationMode(StaticLayout.Builder builder, int i) {
        builder.setJustificationMode(i);
    }

    public static boolean clipOutRect(Canvas canvas, Rect rect) {
        return canvas.clipOutRect(rect);
    }

    public static boolean clipOutRect(Canvas canvas, float f, float f2, float f3, float f4) {
        return canvas.clipOutRect(f, f2, f3, f4);
    }

    public static boolean clipOutRect(Canvas canvas, int i, int i2, int i3, int i4) {
        return canvas.clipOutRect(i, i2, i3, i4);
    }
}
