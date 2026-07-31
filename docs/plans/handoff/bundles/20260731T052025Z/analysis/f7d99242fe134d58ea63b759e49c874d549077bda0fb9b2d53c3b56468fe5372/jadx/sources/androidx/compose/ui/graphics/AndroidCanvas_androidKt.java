package androidx.compose.ui.graphics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AndroidCanvas_androidKt {
    public static final android.graphics.Canvas EmptyCanvas = new android.graphics.Canvas();

    public static final android.graphics.Canvas getNativeCanvas(Canvas canvas) {
        canvas.getClass();
        return ((AndroidCanvas) canvas).internalCanvas;
    }
}
