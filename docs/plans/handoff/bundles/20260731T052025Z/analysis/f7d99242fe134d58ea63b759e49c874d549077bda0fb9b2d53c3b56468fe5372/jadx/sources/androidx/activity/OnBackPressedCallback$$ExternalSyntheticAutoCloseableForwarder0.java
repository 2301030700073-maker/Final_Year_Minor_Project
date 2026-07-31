package androidx.activity;

import android.hardware.camera2.params.OutputConfiguration;
import android.os.Build;
import android.os.LocaleList;
import android.text.style.LocaleSpan;
import android.view.Surface;
import androidx.camera.core.impl.utils.executor.HandlerScheduledExecutorService;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0 {
    public static /* synthetic */ void m(GlideExecutor glideExecutor) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || glideExecutor != ForkJoinPool.commonPool()) && !(isTerminated = glideExecutor.isTerminated())) {
            glideExecutor.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = glideExecutor.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        glideExecutor.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ void m$1(ExecutorService executorService) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || executorService != ForkJoinPool.commonPool()) && !(isTerminated = executorService.isTerminated())) {
            executorService.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        executorService.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ OutputConfiguration m(Surface surface) {
        return new OutputConfiguration(surface);
    }

    public static /* synthetic */ void m$1() {
    }

    public static /* synthetic */ LocaleList m(Locale[] localeArr) {
        return new LocaleList(localeArr);
    }

    public static /* synthetic */ LocaleSpan m(LocaleList localeList) {
        return new LocaleSpan(localeList);
    }

    public static /* synthetic */ void m() {
    }

    public static /* synthetic */ void m(HandlerScheduledExecutorService handlerScheduledExecutorService) {
        if (Build.VERSION.SDK_INT <= 23 || handlerScheduledExecutorService != ForkJoinPool.commonPool()) {
            handlerScheduledExecutorService.shutdown();
            throw null;
        }
    }

    public static /* synthetic */ OutputConfiguration m(int i, Surface surface) {
        return new OutputConfiguration(i, surface);
    }

    public static /* synthetic */ void m(ExecutorService executorService) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || executorService != ForkJoinPool.commonPool()) && !(isTerminated = executorService.isTerminated())) {
            executorService.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        executorService.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
