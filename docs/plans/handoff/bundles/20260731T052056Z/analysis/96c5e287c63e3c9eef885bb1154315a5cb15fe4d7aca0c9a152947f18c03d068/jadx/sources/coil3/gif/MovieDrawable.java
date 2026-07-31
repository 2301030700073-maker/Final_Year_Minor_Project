package coil3.gif;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Movie;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.util.BitmapsKt;
import java.util.ArrayList;
import kotlin.UnsignedKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MovieDrawable extends Drawable implements Animatable {
    public Picture animatedTransformationPicture;
    public final Bitmap.Config config;
    public long frameTimeMillis;
    public float hardwareDx;
    public float hardwareDy;
    public boolean isRunning;
    public boolean isSoftwareScalingEnabled;
    public final Movie movie;
    public final Scale scale;
    public Bitmap softwareBitmap;
    public Canvas softwareCanvas;
    public long startTimeMillis;
    public final Paint paint = new Paint(3);
    public final ArrayList callbacks = new ArrayList();
    public final Rect currentBounds = new Rect();
    public final Rect tempCanvasBounds = new Rect();
    public float softwareScale = 1.0f;
    public float hardwareScale = 1.0f;
    public int repeatCount = -1;
    public PixelOpacity pixelOpacity = PixelOpacity.UNCHANGED;

    public MovieDrawable(Movie movie, Bitmap.Config config, Scale scale) {
        this.movie = movie;
        this.config = config;
        this.scale = scale;
        if (BitmapsKt.isHardware(config)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Bitmap config must not be hardware.");
            throw null;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z;
        Movie movie = this.movie;
        int duration = movie.duration();
        if (duration == 0) {
            duration = 0;
            z = false;
        } else {
            if (this.isRunning) {
                this.frameTimeMillis = SystemClock.uptimeMillis();
            }
            int i = (int) (this.frameTimeMillis - this.startTimeMillis);
            int i2 = i / duration;
            int i3 = this.repeatCount;
            z = i3 == -1 || i2 <= i3;
            if (z) {
                duration = i - (i2 * duration);
            }
        }
        movie.setTime(duration);
        if (this.isSoftwareScalingEnabled) {
            int width = canvas.getWidth();
            int height = canvas.getHeight();
            Rect rect = this.tempCanvasBounds;
            rect.set(0, 0, width, height);
            updateBounds(rect);
            int save = canvas.save();
            try {
                float f = 1.0f / this.softwareScale;
                canvas.scale(f, f);
                drawFrame(canvas);
            } finally {
                canvas.restoreToCount(save);
            }
        } else {
            updateBounds(getBounds());
            drawFrame(canvas);
        }
        if (this.isRunning && z) {
            invalidateSelf();
        } else {
            stop();
        }
    }

    public final void drawFrame(Canvas canvas) {
        Paint paint = this.paint;
        Canvas canvas2 = this.softwareCanvas;
        Bitmap bitmap = this.softwareBitmap;
        if (canvas2 == null || bitmap == null) {
            return;
        }
        canvas2.drawColor(0, PorterDuff.Mode.CLEAR);
        int save = canvas2.save();
        try {
            float f = this.softwareScale;
            canvas2.scale(f, f);
            this.movie.draw(canvas2, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, paint);
            Picture picture = this.animatedTransformationPicture;
            if (picture != null) {
                picture.draw(canvas2);
            }
            canvas2.restoreToCount(save);
            int save2 = canvas.save();
            try {
                canvas.translate(this.hardwareDx, this.hardwareDy);
                float f2 = this.hardwareScale;
                canvas.scale(f2, f2);
                canvas.drawBitmap(bitmap, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, paint);
            } finally {
                canvas.restoreToCount(save2);
            }
        } catch (Throwable th) {
            canvas2.restoreToCount(save);
            throw th;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.movie.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.movie.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (this.paint.getAlpha() != 255) {
            return -3;
        }
        PixelOpacity pixelOpacity = this.pixelOpacity;
        if (pixelOpacity != PixelOpacity.OPAQUE) {
            return (pixelOpacity == PixelOpacity.UNCHANGED && this.movie.isOpaque()) ? -1 : -3;
        }
        return -1;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.isRunning;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (i < 0 || i >= 256) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "Invalid alpha: "));
        } else {
            this.paint.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        if (this.isRunning) {
            return;
        }
        this.isRunning = true;
        this.startTimeMillis = SystemClock.uptimeMillis();
        ArrayList arrayList = this.callbacks;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Animatable2Compat$AnimationCallback) arrayList.get(i)).onAnimationStart(this);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        if (this.isRunning) {
            this.isRunning = false;
            ArrayList arrayList = this.callbacks;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Animatable2Compat$AnimationCallback) arrayList.get(i)).onAnimationEnd(this);
            }
        }
    }

    public final void updateBounds(Rect rect) {
        Rect rect2 = this.currentBounds;
        if (rect2.equals(rect)) {
            return;
        }
        rect2.set(rect);
        int width = rect.width();
        int height = rect.height();
        Movie movie = this.movie;
        int width2 = movie.width();
        int height2 = movie.height();
        if (width2 <= 0 || height2 <= 0) {
            return;
        }
        Size size = Size.ORIGINAL;
        double computeSizeMultiplier = UnsignedKt.computeSizeMultiplier(width2, height2, width, height, this.scale, size);
        if (!this.isSoftwareScalingEnabled && computeSizeMultiplier > 1.0d) {
            computeSizeMultiplier = 1.0d;
        }
        float f = (float) computeSizeMultiplier;
        this.softwareScale = f;
        int i = (int) (width2 * f);
        int i2 = (int) (f * height2);
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, this.config);
        Bitmap bitmap = this.softwareBitmap;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.softwareBitmap = createBitmap;
        this.softwareCanvas = new Canvas(createBitmap);
        if (this.isSoftwareScalingEnabled) {
            this.hardwareScale = 1.0f;
            this.hardwareDx = RecyclerView.DECELERATION_RATE;
            this.hardwareDy = RecyclerView.DECELERATION_RATE;
        } else {
            float computeSizeMultiplier2 = (float) UnsignedKt.computeSizeMultiplier(i, i2, width, height, this.scale, size);
            this.hardwareScale = computeSizeMultiplier2;
            this.hardwareDx = ((width - (i * computeSizeMultiplier2)) / 2.0f) + rect.left;
            this.hardwareDy = ((height - (computeSizeMultiplier2 * i2)) / 2.0f) + rect.top;
        }
    }
}
