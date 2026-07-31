package coil3.transform;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.decode.DecodeUtils;
import coil3.size.Dimension;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.size.SizeKt;
import coil3.util.BitmapsKt;
import coil3.util.IntPair;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RoundedCornersTransformation extends Transformation {
    private final float bottomLeft;
    private final float bottomRight;
    private final String cacheKey;
    private final float topLeft;
    private final float topRight;

    public RoundedCornersTransformation(float f, float f2, float f3, float f4) {
        this.topLeft = f;
        this.topRight = f2;
        this.bottomLeft = f3;
        this.bottomRight = f4;
        if (f < 0.0f || f2 < 0.0f || f3 < 0.0f || f4 < 0.0f) {
            UriKt$$ExternalSyntheticBUOutline0.m("All radii must be >= 0.");
            throw null;
        }
        this.cacheKey = Reflection.getOrCreateKotlinClass(RoundedCornersTransformation.class).getQualifiedName() + "-" + f + "," + f2 + "," + f3 + "," + f4;
    }

    /* renamed from: calculateOutputSize-nmZnaPc, reason: not valid java name */
    private final long m909calculateOutputSizenmZnaPc(Bitmap bitmap, Size size) {
        if (SizeKt.isOriginal(size)) {
            return IntPair.m913constructorimpl(bitmap.getWidth(), bitmap.getHeight());
        }
        Dimension component1 = size.component1();
        Dimension component2 = size.component2();
        if ((component1 instanceof Dimension.Pixels) && (component2 instanceof Dimension.Pixels)) {
            return IntPair.m913constructorimpl(((Dimension.Pixels) component1).m908unboximpl(), ((Dimension.Pixels) component2).m908unboximpl());
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Dimension width2 = size.getWidth();
        int m908unboximpl = width2 instanceof Dimension.Pixels ? ((Dimension.Pixels) width2).m908unboximpl() : Integer.MIN_VALUE;
        Dimension height2 = size.getHeight();
        double computeSizeMultiplier = DecodeUtils.computeSizeMultiplier(width, height, m908unboximpl, height2 instanceof Dimension.Pixels ? ((Dimension.Pixels) height2).m908unboximpl() : Integer.MIN_VALUE, Scale.FILL, Size.ORIGINAL);
        return IntPair.m913constructorimpl(MathKt.roundToInt(bitmap.getWidth() * computeSizeMultiplier), MathKt.roundToInt(computeSizeMultiplier * bitmap.getHeight()));
    }

    @Override // coil3.transform.Transformation
    public String getCacheKey() {
        return this.cacheKey;
    }

    @Override // coil3.transform.Transformation
    public Object transform(Bitmap bitmap, Size size, Continuation continuation) {
        long m909calculateOutputSizenmZnaPc = m909calculateOutputSizenmZnaPc(bitmap, size);
        int m917getFirstimpl = IntPair.m917getFirstimpl(m909calculateOutputSizenmZnaPc);
        int m918getSecondimpl = IntPair.m918getSecondimpl(m909calculateOutputSizenmZnaPc);
        Bitmap createBitmap = Bitmap.createBitmap(m917getFirstimpl, m918getSecondimpl, BitmapsKt.getSafeConfig(bitmap));
        Canvas canvas = new Canvas(createBitmap);
        Paint newScaledShaderPaint = TransformationsKt.newScaledShaderPaint(bitmap, m917getFirstimpl, m918getSecondimpl);
        float f = this.topLeft;
        float f2 = this.topRight;
        if (f == f2) {
            float f3 = this.bottomLeft;
            if (f2 == f3 && f3 == this.bottomRight) {
                canvas.drawRoundRect(0.0f, 0.0f, m917getFirstimpl, m918getSecondimpl, f, f, newScaledShaderPaint);
                return createBitmap;
            }
        }
        float f4 = this.bottomRight;
        float f5 = this.bottomLeft;
        float[] fArr = {f, f, f2, f2, f4, f4, f5, f5};
        RectF rectF = new RectF(0.0f, 0.0f, m917getFirstimpl, m918getSecondimpl);
        Path path = new Path();
        path.addRoundRect(rectF, fArr, Path.Direction.CW);
        canvas.drawPath(path, newScaledShaderPaint);
        return createBitmap;
    }

    public RoundedCornersTransformation() {
        this(0.0f, 0.0f, 0.0f, 0.0f, 15, null);
    }

    public /* synthetic */ RoundedCornersTransformation(float f, float f2, float f3, float f4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0f : f, (i & 2) != 0 ? 0.0f : f2, (i & 4) != 0 ? 0.0f : f3, (i & 8) != 0 ? 0.0f : f4);
    }

    public RoundedCornersTransformation(float f) {
        this(f, f, f, f);
    }
}
