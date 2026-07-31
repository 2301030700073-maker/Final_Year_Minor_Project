package coil3.transform;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import coil3.size.Size;
import coil3.util.BitmapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CircleCropTransformation extends Transformation {
    private final String cacheKey = String.valueOf(Reflection.getOrCreateKotlinClass(CircleCropTransformation.class).getQualifiedName());

    @Override // coil3.transform.Transformation
    public String getCacheKey() {
        return this.cacheKey;
    }

    @Override // coil3.transform.Transformation
    public Object transform(Bitmap bitmap, Size size, Continuation continuation) {
        int min = Math.min(bitmap.getWidth(), bitmap.getHeight());
        Bitmap createBitmap = Bitmap.createBitmap(min, min, BitmapsKt.getSafeConfig(bitmap));
        Canvas canvas = new Canvas(createBitmap);
        Paint newScaledShaderPaint = TransformationsKt.newScaledShaderPaint(bitmap, min, min);
        float f = min / 2.0f;
        canvas.drawCircle(f, f, f, newScaledShaderPaint);
        return createBitmap;
    }
}
