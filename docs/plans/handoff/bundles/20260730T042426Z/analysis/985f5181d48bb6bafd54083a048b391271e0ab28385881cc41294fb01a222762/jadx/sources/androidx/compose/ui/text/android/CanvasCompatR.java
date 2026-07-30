package androidx.compose.ui.text.android;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;

/* compiled from: TextAndroidCanvas.android.kt */
/* loaded from: classes.dex */
final class CanvasCompatR {
    public static final CanvasCompatR INSTANCE = new CanvasCompatR();

    private CanvasCompatR() {
    }

    public final boolean quickReject(Canvas canvas, RectF rectF) {
        boolean quickReject;
        quickReject = canvas.quickReject(rectF);
        return quickReject;
    }

    public final boolean quickReject(Canvas canvas, Path path) {
        boolean quickReject;
        quickReject = canvas.quickReject(path);
        return quickReject;
    }

    public final boolean quickReject(Canvas canvas, float f, float f2, float f3, float f4) {
        boolean quickReject;
        quickReject = canvas.quickReject(f, f2, f3, f4);
        return quickReject;
    }
}
