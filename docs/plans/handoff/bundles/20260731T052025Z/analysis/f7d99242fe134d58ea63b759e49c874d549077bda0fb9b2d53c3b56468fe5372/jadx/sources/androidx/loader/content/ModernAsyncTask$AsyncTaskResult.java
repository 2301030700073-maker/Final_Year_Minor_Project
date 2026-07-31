package androidx.loader.content;

import androidx.loader.content.AsyncTaskLoader;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ModernAsyncTask$AsyncTaskResult {
    public final Object[] mData;
    public final AsyncTaskLoader.LoadTask mTask;

    public ModernAsyncTask$AsyncTaskResult(AsyncTaskLoader.LoadTask loadTask, Object... objArr) {
        this.mTask = loadTask;
        this.mData = objArr;
    }
}
