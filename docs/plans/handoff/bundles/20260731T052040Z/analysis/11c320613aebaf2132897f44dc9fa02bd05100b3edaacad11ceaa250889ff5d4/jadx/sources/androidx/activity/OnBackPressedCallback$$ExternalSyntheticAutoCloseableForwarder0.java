package androidx.activity;

import android.media.MediaCodec;
import android.os.Build;
import android.os.LocaleList;
import android.text.style.LocaleSpan;
import com.google.common.util.concurrent.MoreExecutors$ListeningDecorator;
import com.google.common.util.concurrent.MoreExecutors$ScheduledListeningDecorator;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.StampedLock;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0 {
    public static void m(MoreExecutors$ListeningDecorator moreExecutors$ListeningDecorator) {
        boolean isTerminated;
        ExecutorService executorService = moreExecutors$ListeningDecorator.delegate;
        if ((Build.VERSION.SDK_INT <= 23 || moreExecutors$ListeningDecorator != ForkJoinPool.commonPool()) && !(isTerminated = executorService.isTerminated())) {
            moreExecutors$ListeningDecorator.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        moreExecutors$ListeningDecorator.shutdownNow();
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

    public static /* synthetic */ LocaleList m(Locale[] localeArr) {
        return new LocaleList(localeArr);
    }

    public static /* synthetic */ LocaleSpan m(LocaleList localeList) {
        return new LocaleSpan(localeList);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ StampedLock m0m() {
        return new StampedLock();
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

    public static /* synthetic */ MediaCodec.CryptoInfo.Pattern m() {
        return new MediaCodec.CryptoInfo.Pattern(0, 0);
    }

    public static void m(MoreExecutors$ScheduledListeningDecorator moreExecutors$ScheduledListeningDecorator) {
        boolean isTerminated;
        ExecutorService executorService = ((MoreExecutors$ListeningDecorator) moreExecutors$ScheduledListeningDecorator).delegate;
        if ((Build.VERSION.SDK_INT <= 23 || moreExecutors$ScheduledListeningDecorator != ForkJoinPool.commonPool()) && !(isTerminated = executorService.isTerminated())) {
            moreExecutors$ScheduledListeningDecorator.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        moreExecutors$ScheduledListeningDecorator.shutdownNow();
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
