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
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.decode.DecodeUtils;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.util.BitmapsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MovieDrawable extends Drawable implements Animatable {
    public static final Companion Companion = new Companion(null);
    public static final int REPEAT_INFINITE = -1;
    private AnimatedTransformation animatedTransformation;
    private Picture animatedTransformationPicture;
    private final List<Animatable2Compat$AnimationCallback> callbacks;
    private final Bitmap.Config config;
    private final Rect currentBounds;
    private long frameTimeMillis;
    private float hardwareDx;
    private float hardwareDy;
    private float hardwareScale;
    private boolean isRunning;
    private boolean isSoftwareScalingEnabled;
    private int loopIteration;
    private final Movie movie;
    private final Paint paint;
    private PixelOpacity pixelOpacity;
    private int repeatCount;
    private final Scale scale;
    private Bitmap softwareBitmap;
    private Canvas softwareCanvas;
    private float softwareScale;
    private long startTimeMillis;
    private final Rect tempCanvasBounds;

    public MovieDrawable(Movie movie, Bitmap.Config config, Scale scale) {
        this.movie = movie;
        this.config = config;
        this.scale = scale;
        this.paint = new Paint(3);
        this.callbacks = new ArrayList();
        this.currentBounds = new Rect();
        this.tempCanvasBounds = new Rect();
        this.softwareScale = 1.0f;
        this.hardwareScale = 1.0f;
        this.repeatCount = -1;
        this.pixelOpacity = PixelOpacity.UNCHANGED;
        if (BitmapsKt.isHardware(config)) {
            UriKt$$ExternalSyntheticBUOutline0.m("Bitmap config must not be hardware.");
            throw null;
        }
    }

    private final void drawFrame(Canvas canvas) {
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
            this.movie.draw(canvas2, 0.0f, 0.0f, this.paint);
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
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.paint);
            } finally {
                canvas.restoreToCount(save2);
            }
        } catch (Throwable th) {
            canvas2.restoreToCount(save);
            throw th;
        }
    }

    private final Rect getBounds(Canvas canvas) {
        Rect rect = this.tempCanvasBounds;
        rect.set(0, 0, canvas.getWidth(), canvas.getHeight());
        return rect;
    }

    private final void updateBounds(Rect rect) {
        if (Intrinsics.areEqual(this.currentBounds, rect)) {
            return;
        }
        this.currentBounds.set(rect);
        int width = rect.width();
        int height = rect.height();
        int width2 = this.movie.width();
        int height2 = this.movie.height();
        if (width2 <= 0 || height2 <= 0) {
            return;
        }
        Scale scale = this.scale;
        Size size = Size.ORIGINAL;
        double computeSizeMultiplier = DecodeUtils.computeSizeMultiplier(width2, height2, width, height, scale, size);
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
            this.hardwareDx = 0.0f;
            this.hardwareDy = 0.0f;
        } else {
            float computeSizeMultiplier2 = (float) DecodeUtils.computeSizeMultiplier(i, i2, width, height, this.scale, size);
            this.hardwareScale = computeSizeMultiplier2;
            this.hardwareDx = ((width - (i * computeSizeMultiplier2)) / 2.0f) + rect.left;
            this.hardwareDy = ((height - (computeSizeMultiplier2 * i2)) / 2.0f) + rect.top;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean updateFrameTime() {
        boolean z;
        int duration = this.movie.duration();
        if (duration == 0) {
            z = 0;
        } else {
            if (this.isRunning) {
                this.frameTimeMillis = SystemClock.uptimeMillis();
            }
            int i = (int) (this.frameTimeMillis - this.startTimeMillis);
            int i2 = i / duration;
            this.loopIteration = i2;
            int i3 = this.repeatCount;
            r1 = (i3 == -1 || i2 <= i3) ? 1 : 0;
            if (r1 != 0) {
                duration = i - (i2 * duration);
            }
            int i4 = r1;
            r1 = duration;
            z = i4;
        }
        this.movie.setTime(r1);
        return z;
    }

    public void clearAnimationCallbacks() {
        this.callbacks.clear();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean updateFrameTime = updateFrameTime();
        if (this.isSoftwareScalingEnabled) {
            updateBounds(getBounds(canvas));
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
        if (this.isRunning && updateFrameTime) {
            invalidateSelf();
        } else {
            stop();
        }
    }

    public final AnimatedTransformation getAnimatedTransformation() {
        return this.animatedTransformation;
    }

    public final Bitmap.Config getConfig() {
        return this.config;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.movie.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.movie.width();
    }

    @Override // android.graphics.drawable.Drawable
    @Deprecated
    public int getOpacity() {
        if (this.paint.getAlpha() != 255) {
            return -3;
        }
        PixelOpacity pixelOpacity = this.pixelOpacity;
        if (pixelOpacity != PixelOpacity.OPAQUE) {
            return (pixelOpacity == PixelOpacity.UNCHANGED && this.movie.isOpaque()) ? -1 : -3;
        }
        return -1;
    }

    public final int getRepeatCount() {
        return this.repeatCount;
    }

    public final Scale getScale() {
        return this.scale;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.isRunning;
    }

    public void registerAnimationCallback(Animatable2Compat$AnimationCallback animatable2Compat$AnimationCallback) {
        this.callbacks.add(animatable2Compat$AnimationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i < 0 || i >= 256) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Invalid alpha: ", i));
        } else {
            this.paint.setAlpha(i);
        }
    }

    public final void setAnimatedTransformation(AnimatedTransformation animatedTransformation) {
        this.animatedTransformation = animatedTransformation;
        if (animatedTransformation == null || this.movie.width() <= 0 || this.movie.height() <= 0) {
            this.animatedTransformationPicture = null;
            this.pixelOpacity = PixelOpacity.UNCHANGED;
            this.isSoftwareScalingEnabled = false;
        } else {
            Picture picture = new Picture();
            this.pixelOpacity = animatedTransformation.transform(picture.beginRecording(this.movie.width(), this.movie.height()));
            picture.endRecording();
            this.animatedTransformationPicture = picture;
            this.isSoftwareScalingEnabled = true;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    public final void setRepeatCount(int i) {
        if (i >= -1) {
            this.repeatCount = i;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Invalid repeatCount: ", i));
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.isRunning) {
            return;
        }
        this.isRunning = true;
        this.loopIteration = 0;
        this.startTimeMillis = SystemClock.uptimeMillis();
        int size = this.callbacks.size();
        for (int i = 0; i < size; i++) {
            this.callbacks.get(i).onAnimationStart(this);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.isRunning) {
            this.isRunning = false;
            int size = this.callbacks.size();
            for (int i = 0; i < size; i++) {
                this.callbacks.get(i).onAnimationEnd(this);
            }
        }
    }

    public boolean unregisterAnimationCallback(Animatable2Compat$AnimationCallback animatable2Compat$AnimationCallback) {
        return this.callbacks.remove(animatable2Compat$AnimationCallback);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public MovieDrawable(Movie movie, Bitmap.Config config) {
        this(movie, config, null, 4, null);
    }

    public MovieDrawable(Movie movie) {
        this(movie, null, null, 6, null);
    }

    public /* synthetic */ MovieDrawable(Movie movie, Bitmap.Config config, Scale scale, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(movie, (i & 2) != 0 ? Bitmap.Config.ARGB_8888 : config, (i & 4) != 0 ? Scale.FIT : scale);
    }
}
