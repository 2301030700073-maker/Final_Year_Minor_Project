package com.android.quickstep;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.quickstep.TaskThumbnailCache;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.TaskKeyLruCache;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import java.util.ArrayList;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class TaskThumbnailCache {
    public final Handler mBackgroundHandler;
    public final TaskKeyLruCache mCache;
    public final int mCacheSize;
    public final boolean mEnableTaskSnapshotPreloading;
    public final HighResLoadingState mHighResLoadingState;

    /* renamed from: com.android.quickstep.TaskThumbnailCache$1, reason: invalid class name */
    public class AnonymousClass1 extends ThumbnailLoadRequest {
        public final /* synthetic */ Consumer val$callback;
        public final /* synthetic */ Task.TaskKey val$key;
        public final /* synthetic */ boolean val$lowResolution;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Handler handler, boolean z, Task.TaskKey taskKey, boolean z2, Consumer consumer) {
            super(handler, z);
            this.val$key = taskKey;
            this.val$lowResolution = z2;
            this.val$callback = consumer;
        }

        public /* synthetic */ void a(Task.TaskKey taskKey, ThumbnailData thumbnailData, Consumer consumer) {
            if (isCanceled()) {
                return;
            }
            TaskThumbnailCache.this.mCache.put(taskKey, thumbnailData);
            consumer.accept(thumbnailData);
            onEnd();
        }

        @Override // java.lang.Runnable
        public void run() {
            final ThumbnailData taskThumbnail = ActivityManagerWrapper.getInstance().getTaskThumbnail(this.val$key.id, this.val$lowResolution);
            LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
            final Task.TaskKey taskKey = this.val$key;
            final Consumer consumer = this.val$callback;
            looperExecutor.execute(new Runnable() { // from class: c.a.b.w1
                @Override // java.lang.Runnable
                public final void run() {
                    TaskThumbnailCache.AnonymousClass1.this.a(taskKey, taskThumbnail, consumer);
                }
            });
        }
    }

    public class HighResLoadingState {
        public ArrayList mCallbacks;
        public boolean mFlingingFast;
        public boolean mForceHighResThumbnails;
        public boolean mHighResLoadingEnabled;
        public boolean mVisible;

        public interface HighResLoadingStateChangedCallback {
            void onHighResLoadingStateChanged(boolean z);
        }

        public /* synthetic */ HighResLoadingState(Context context, AnonymousClass1 anonymousClass1) {
            this(context);
        }

        private void updateState() {
            boolean z = this.mHighResLoadingEnabled;
            boolean z2 = this.mForceHighResThumbnails || (this.mVisible && !this.mFlingingFast);
            this.mHighResLoadingEnabled = z2;
            if (z != z2) {
                for (int size = this.mCallbacks.size() - 1; size >= 0; size--) {
                    ((HighResLoadingStateChangedCallback) this.mCallbacks.get(size)).onHighResLoadingStateChanged(this.mHighResLoadingEnabled);
                }
            }
        }

        public void addCallback(HighResLoadingStateChangedCallback highResLoadingStateChangedCallback) {
            this.mCallbacks.add(highResLoadingStateChangedCallback);
        }

        public boolean isEnabled() {
            return this.mHighResLoadingEnabled;
        }

        public void removeCallback(HighResLoadingStateChangedCallback highResLoadingStateChangedCallback) {
            this.mCallbacks.remove(highResLoadingStateChangedCallback);
        }

        public void setFlingingFast(boolean z) {
            this.mFlingingFast = z;
            updateState();
        }

        public void setVisible(boolean z) {
            this.mVisible = z;
            updateState();
        }

        public HighResLoadingState(Context context) {
            this.mCallbacks = new ArrayList();
            this.mForceHighResThumbnails = !TaskThumbnailCache.supportsLowResThumbnails();
        }
    }

    public abstract class ThumbnailLoadRequest extends HandlerRunnable {
        public final boolean mLowResolution;

        public ThumbnailLoadRequest(Handler handler, boolean z) {
            super(handler, null);
            this.mLowResolution = z;
        }
    }

    public TaskThumbnailCache(Context context, Looper looper) {
        this.mBackgroundHandler = new Handler(looper);
        this.mHighResLoadingState = new HighResLoadingState(context, null);
        Resources resources = context.getResources();
        this.mCacheSize = resources.getInteger(R.integer.recentsThumbnailCacheSize);
        this.mEnableTaskSnapshotPreloading = resources.getBoolean(R.bool.config_enableTaskSnapshotPreloading);
        this.mCache = new TaskKeyLruCache(this.mCacheSize);
    }

    public static boolean supportsLowResThumbnails() {
        Resources system = Resources.getSystem();
        int identifier = system.getIdentifier("config_lowResTaskSnapshotScale", "dimen", "android");
        return identifier == 0 || RecentsState.NO_OFFSET < system.getFloat(identifier);
    }

    public void clear() {
        this.mCache.evictAll();
    }

    public int getCacheSize() {
        return this.mCacheSize;
    }

    public HighResLoadingState getHighResLoadingState() {
        return this.mHighResLoadingState;
    }

    public boolean isPreloadingEnabled() {
        return this.mEnableTaskSnapshotPreloading && this.mHighResLoadingState.mVisible;
    }

    public void remove(Task.TaskKey taskKey) {
        this.mCache.remove(taskKey);
    }

    public void updateTaskSnapShot(int i, ThumbnailData thumbnailData) {
        this.mCache.updateIfAlreadyInCache(i, thumbnailData);
    }

    public ThumbnailLoadRequest updateThumbnailInBackground(final Task task, final Consumer consumer) {
        boolean z = !this.mHighResLoadingState.isEnabled();
        ThumbnailData thumbnailData = task.thumbnail;
        if (thumbnailData == null || (thumbnailData.reducedResolution && !z)) {
            return updateThumbnailInBackground(task.key, !this.mHighResLoadingState.isEnabled(), new Consumer() { // from class: c.a.b.y1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Task task2 = Task.this;
                    Consumer consumer2 = consumer;
                    ThumbnailData thumbnailData2 = (ThumbnailData) obj;
                    task2.thumbnail = thumbnailData2;
                    consumer2.accept(thumbnailData2);
                }
            });
        }
        consumer.accept(task.thumbnail);
        return null;
    }

    public void updateThumbnailInCache(final Task task) {
        if (task.thumbnail == null) {
            updateThumbnailInBackground(task.key, true, new Consumer() { // from class: c.a.b.x1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Task.this.thumbnail = (ThumbnailData) obj;
                }
            });
        }
    }

    private ThumbnailLoadRequest updateThumbnailInBackground(Task.TaskKey taskKey, boolean z, Consumer consumer) {
        ThumbnailData thumbnailData = (ThumbnailData) this.mCache.getAndInvalidateIfModified(taskKey);
        if (thumbnailData != null && (!thumbnailData.reducedResolution || z)) {
            consumer.accept(thumbnailData);
            return null;
        }
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.mBackgroundHandler, z, taskKey, z, consumer);
        Utilities.postAsyncCallback(this.mBackgroundHandler, anonymousClass1);
        return anonymousClass1;
    }
}
