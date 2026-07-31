package androidx.compose.ui.text.android;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class CanvasCompatR {
    public static boolean quickReject(Canvas canvas, RectF rectF) {
        return canvas.quickReject(rectF);
    }

    public static boolean quickReject(Canvas canvas, Path path) {
        return canvas.quickReject(path);
    }

    public static boolean quickReject(Canvas canvas, float f, float f2, float f3, float f4) {
        return canvas.quickReject(f, f2, f3, f4);
    }
}
