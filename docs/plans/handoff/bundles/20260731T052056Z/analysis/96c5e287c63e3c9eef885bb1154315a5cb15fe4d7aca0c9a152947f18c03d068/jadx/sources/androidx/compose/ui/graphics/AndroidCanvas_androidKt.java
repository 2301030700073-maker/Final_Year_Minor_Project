package androidx.compose.ui.graphics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AndroidCanvas_androidKt {
    public static final android.graphics.Canvas EmptyCanvas = new android.graphics.Canvas();

    public static final AndroidCanvas ActualCanvas(AndroidImageBitmap androidImageBitmap) {
        AndroidCanvas androidCanvas = new AndroidCanvas();
        androidCanvas.internalCanvas = new android.graphics.Canvas(Api26Bitmap.asAndroidBitmap(androidImageBitmap));
        return androidCanvas;
    }

    public static final android.graphics.Canvas getNativeCanvas(Canvas canvas) {
        canvas.getClass();
        return ((AndroidCanvas) canvas).internalCanvas;
    }
}
