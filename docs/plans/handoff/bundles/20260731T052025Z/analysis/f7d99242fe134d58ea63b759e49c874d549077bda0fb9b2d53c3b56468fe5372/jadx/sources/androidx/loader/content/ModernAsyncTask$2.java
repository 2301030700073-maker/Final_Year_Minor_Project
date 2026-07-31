package androidx.loader.content;

import android.os.Binder;
import android.os.Process;
import androidx.core.os.OperationCanceledException;
import androidx.loader.content.AsyncTaskLoader;
import com.bumptech.glide.disklrucache.DiskLruCache;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ModernAsyncTask$2 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ ModernAsyncTask$2(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Object obj = null;
        switch (this.$r8$classId) {
            case 0:
                AsyncTaskLoader.LoadTask loadTask = (AsyncTaskLoader.LoadTask) this.this$0;
                AtomicBoolean atomicBoolean = loadTask.mCancelled;
                loadTask.mTaskInvoked.set(true);
                try {
                    Process.setThreadPriority(10);
                    try {
                        obj = loadTask.this$0.loadInBackground();
                    } catch (OperationCanceledException e) {
                        if (!atomicBoolean.get()) {
                            throw e;
                        }
                    }
                    Binder.flushPendingCommands();
                    return obj;
                } finally {
                }
            case 1:
                ((Runnable) this.this$0).run();
                return null;
            default:
                synchronized (((DiskLruCache) this.this$0)) {
                    try {
                        DiskLruCache diskLruCache = (DiskLruCache) this.this$0;
                        if (diskLruCache.journalWriter != null) {
                            diskLruCache.trimToSize();
                            if (((DiskLruCache) this.this$0).journalRebuildRequired()) {
                                ((DiskLruCache) this.this$0).rebuildJournal();
                                ((DiskLruCache) this.this$0).redundantOpCount = 0;
                            }
                        }
                    } finally {
                    }
                }
                return null;
        }
    }
}
