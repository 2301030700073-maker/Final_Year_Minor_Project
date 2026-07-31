package com.airbnb.lottie.utils;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.os.Looper;
import android.view.Choreographer;
import androidx.compose.ui.platform.AndroidUiDispatcher;
import androidx.compose.ui.unit.DpKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.OperationKt;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import java.io.Closeable;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Random;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Utils {
    public static final Matrix IDENTITY_MATRIX = new Matrix();
    public static final AnonymousClass1 threadLocalPathMeasure = new AnonymousClass1(0);
    public static final AnonymousClass1 threadLocalTempPath = new AnonymousClass1(2);
    public static final AnonymousClass1 threadLocalTempPath2 = new AnonymousClass1(3);
    public static final AnonymousClass1 threadLocalPoints = new AnonymousClass1(4);
    public static final float INV_SQRT_2 = (float) (Math.sqrt(2.0d) / 2.0d);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.airbnb.lottie.utils.Utils$1, reason: invalid class name */
    public final class AnonymousClass1 extends ThreadLocal {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        @Override // java.lang.ThreadLocal
        public final Object initialValue() {
            switch (this.$r8$classId) {
                case 0:
                    return new PathMeasure();
                case 1:
                    Choreographer choreographer = Choreographer.getInstance();
                    Looper myLooper = Looper.myLooper();
                    if (myLooper != null) {
                        AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(choreographer, DpKt.createAsync(myLooper));
                        return OperationKt.plus(androidUiDispatcher, androidUiDispatcher.frameClock);
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("no Looper on this thread");
                    return null;
                case 2:
                    return new Path();
                case 3:
                    return new Path();
                case 4:
                    return new float[4];
                case 5:
                    return new Random();
                default:
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
                    simpleDateFormat.setLenient(false);
                    simpleDateFormat.setTimeZone(_UtilJvmKt.UTC);
                    return simpleDateFormat;
            }
        }
    }

    public static void applyTrimPathIfNeeded(Path path, float f, float f2, float f3) {
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        PathMeasure pathMeasure = (PathMeasure) threadLocalPathMeasure.get();
        Path path2 = (Path) threadLocalTempPath.get();
        Path path3 = (Path) threadLocalTempPath2.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (!(f == 1.0f && f2 == RecyclerView.DECELERATION_RATE) && length >= 1.0f && Math.abs((f2 - f) - 1.0f) >= 0.01d) {
            float f4 = f * length;
            float f5 = f2 * length;
            float f6 = f3 * length;
            float min = Math.min(f4, f5) + f6;
            float max = Math.max(f4, f5) + f6;
            if (min >= length && max >= length) {
                min = MiscUtils.floorMod(min, length);
                max = MiscUtils.floorMod(max, length);
            }
            if (min < RecyclerView.DECELERATION_RATE) {
                min = MiscUtils.floorMod(min, length);
            }
            if (max < RecyclerView.DECELERATION_RATE) {
                max = MiscUtils.floorMod(max, length);
            }
            if (min == max) {
                path.reset();
                return;
            }
            if (min >= max) {
                min -= length;
            }
            path2.reset();
            pathMeasure.getSegment(min, max, path2, true);
            if (max > length) {
                path3.reset();
                pathMeasure.getSegment(RecyclerView.DECELERATION_RATE, max % length, path3, true);
                path2.addPath(path3);
            } else if (min < RecyclerView.DECELERATION_RATE) {
                path3.reset();
                pathMeasure.getSegment(min + length, length, path3, true);
                path2.addPath(path3);
            }
            path.set(path2);
        }
    }

    public static void closeQuietly(Closeable closeable) {
        try {
            closeable.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static float dpScale() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    public static Bitmap resizeBitmapIfNeeded(Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, true);
        bitmap.recycle();
        return createScaledBitmap;
    }

    public static void saveLayerCompat(Canvas canvas, RectF rectF, Paint paint) {
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        canvas.saveLayer(rectF, paint);
    }
}
