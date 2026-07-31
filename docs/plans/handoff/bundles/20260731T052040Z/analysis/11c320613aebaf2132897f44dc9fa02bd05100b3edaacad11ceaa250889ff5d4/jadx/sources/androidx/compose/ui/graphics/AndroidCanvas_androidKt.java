package androidx.compose.ui.graphics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AndroidCanvas_androidKt {
    public static final android.graphics.Canvas EmptyCanvas = new android.graphics.Canvas();

    public static final android.graphics.Canvas getNativeCanvas(Canvas canvas) {
        canvas.getClass();
        return ((AndroidCanvas) canvas).internalCanvas;
    }
}
