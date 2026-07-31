package androidx.arch.core.executor;

import android.os.Looper;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ArchTaskExecutor extends Jsoup {
    public static final ArchTaskExecutor$$ExternalSyntheticLambda0 sIOThreadExecutor = new ArchTaskExecutor$$ExternalSyntheticLambda0(0);
    public static volatile ArchTaskExecutor sInstance;
    public final DefaultTaskExecutor mDelegate;

    public ArchTaskExecutor() {
        super(2);
        this.mDelegate = new DefaultTaskExecutor();
    }

    public static ArchTaskExecutor getInstance() {
        if (sInstance != null) {
            return sInstance;
        }
        synchronized (ArchTaskExecutor.class) {
            try {
                if (sInstance == null) {
                    sInstance = new ArchTaskExecutor();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sInstance;
    }

    public final void postToMainThread(Runnable runnable) {
        DefaultTaskExecutor defaultTaskExecutor = this.mDelegate;
        if (defaultTaskExecutor.mMainHandler == null) {
            synchronized (defaultTaskExecutor.mLock) {
                try {
                    if (defaultTaskExecutor.mMainHandler == null) {
                        defaultTaskExecutor.mMainHandler = DefaultTaskExecutor.createAsync(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        defaultTaskExecutor.mMainHandler.post(runnable);
    }
}
