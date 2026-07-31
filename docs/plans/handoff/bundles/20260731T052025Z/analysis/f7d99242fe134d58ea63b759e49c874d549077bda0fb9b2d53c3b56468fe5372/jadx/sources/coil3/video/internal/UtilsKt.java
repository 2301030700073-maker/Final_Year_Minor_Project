package coil3.video.internal;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UtilsKt {
    public static final Bitmap getFrameAtIndex(MediaMetadataRetriever mediaMetadataRetriever, int i, Bitmap.Config config) {
        MediaMetadataRetriever.BitmapParams bitmapParams = new MediaMetadataRetriever.BitmapParams();
        bitmapParams.setPreferredConfig(config);
        return mediaMetadataRetriever.getFrameAtIndex(i, bitmapParams);
    }

    public static final Bitmap getFrameAtTime(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, Bitmap.Config config) {
        if (Build.VERSION.SDK_INT < 30) {
            return mediaMetadataRetriever.getFrameAtTime(j, i);
        }
        MediaMetadataRetriever.BitmapParams bitmapParams = new MediaMetadataRetriever.BitmapParams();
        bitmapParams.setPreferredConfig(config);
        return mediaMetadataRetriever.getFrameAtTime(j, i, bitmapParams);
    }

    public static final Bitmap getScaledFrameAtTime(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, Bitmap.Config config) {
        if (Build.VERSION.SDK_INT < 30) {
            return mediaMetadataRetriever.getScaledFrameAtTime(j, i, i2, i3);
        }
        MediaMetadataRetriever.BitmapParams bitmapParams = new MediaMetadataRetriever.BitmapParams();
        bitmapParams.setPreferredConfig(config);
        return mediaMetadataRetriever.getScaledFrameAtTime(j, i, i2, i3, bitmapParams);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T use(MediaMetadataRetriever mediaMetadataRetriever, Function1 function1) {
        try {
            T t = (T) function1.invoke(mediaMetadataRetriever);
            if (Build.VERSION.SDK_INT < 29) {
                mediaMetadataRetriever.release();
                return t;
            }
            if (mediaMetadataRetriever instanceof AutoCloseable) {
                mediaMetadataRetriever.close();
                return t;
            }
            if (mediaMetadataRetriever instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m$1((ExecutorService) mediaMetadataRetriever);
                return t;
            }
            if (mediaMetadataRetriever != 0) {
                mediaMetadataRetriever.release();
                return t;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            return null;
        } catch (Throwable th) {
            if (Build.VERSION.SDK_INT < 29) {
                mediaMetadataRetriever.release();
            } else if (mediaMetadataRetriever instanceof AutoCloseable) {
                mediaMetadataRetriever.close();
            } else if (mediaMetadataRetriever instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m$1((ExecutorService) mediaMetadataRetriever);
            } else {
                if (mediaMetadataRetriever == 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                    return null;
                }
                mediaMetadataRetriever.release();
            }
            throw th;
        }
    }
}
