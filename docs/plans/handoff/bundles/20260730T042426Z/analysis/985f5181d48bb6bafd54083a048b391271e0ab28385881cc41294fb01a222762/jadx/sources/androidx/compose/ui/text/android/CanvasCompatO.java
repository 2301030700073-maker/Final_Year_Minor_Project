package androidx.compose.ui.text.android;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;

/* compiled from: TextAndroidCanvas.android.kt */
/* loaded from: classes.dex */
final class CanvasCompatO {
    public static final CanvasCompatO INSTANCE = new CanvasCompatO();

    private CanvasCompatO() {
    }

    public final boolean clipOutRect(Canvas canvas, RectF rectF) {
        boolean clipOutRect;
        clipOutRect = canvas.clipOutRect(rectF);
        return clipOutRect;
    }

    public final boolean clipOutRect(Canvas canvas, Rect rect) {
        boolean clipOutRect;
        clipOutRect = canvas.clipOutRect(rect);
        return clipOutRect;
    }

    public final boolean clipOutRect(Canvas canvas, float f, float f2, float f3, float f4) {
        boolean clipOutRect;
        clipOutRect = canvas.clipOutRect(f, f2, f3, f4);
        return clipOutRect;
    }

    public final boolean clipOutRect(Canvas canvas, int i, int i2, int i3, int i4) {
        boolean clipOutRect;
        clipOutRect = canvas.clipOutRect(i, i2, i3, i4);
        return clipOutRect;
    }

    public final boolean clipOutPath(Canvas canvas, Path path) {
        boolean clipOutPath;
        clipOutPath = canvas.clipOutPath(path);
        return clipOutPath;
    }
}
