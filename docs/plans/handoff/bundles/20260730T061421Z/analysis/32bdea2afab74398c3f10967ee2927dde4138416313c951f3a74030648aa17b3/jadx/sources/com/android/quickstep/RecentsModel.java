package com.android.quickstep;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Looper;
import android.os.Process;
import android.os.UserHandle;
import com.android.launcher3.icons.IconProvider;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.quickstep.RecentsModel;
import com.android.systemui.shared.recents.ISystemUiProxy;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.KeyguardManagerCompat;
import com.android.systemui.shared.system.TaskStackChangeListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class RecentsModel extends TaskStackChangeListener {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.b.b1
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new RecentsModel(context);
        }
    });
    public final Context mContext;
    public final TaskIconCache mIconCache;
    public final RecentTasksList mTaskList;
    public final TaskThumbnailCache mThumbnailCache;
    public final List mThumbnailChangeListeners = new ArrayList();

    public interface TaskVisualsChangeListener {
        void onTaskIconChanged(String str, UserHandle userHandle);

        Task onTaskThumbnailChanged(int i, ThumbnailData thumbnailData);
    }

    public RecentsModel(Context context) {
        this.mContext = context;
        Looper createAndStartNewLooper = Executors.createAndStartNewLooper("TaskThumbnailIconCache", 10);
        this.mTaskList = new RecentTasksList(Executors.MAIN_EXECUTOR, new KeyguardManagerCompat(context), ActivityManagerWrapper.getInstance());
        this.mIconCache = new TaskIconCache(context, createAndStartNewLooper);
        this.mThumbnailCache = new TaskThumbnailCache(context, createAndStartNewLooper);
        ActivityManagerWrapper.getInstance().registerTaskStackListener(this);
        IconProvider.registerIconChangeListener(context, new BiConsumer() { // from class: c.a.b.Z0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                RecentsModel.this.onPackageIconChanged((String) obj, (UserHandle) obj2);
            }
        }, Executors.MAIN_EXECUTOR.mHandler);
    }

    public static /* synthetic */ void b(int i, Consumer consumer, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Task.TaskKey taskKey = ((Task) it.next()).key;
            if (taskKey.id == i) {
                consumer.accept(taskKey);
                return;
            }
        }
        consumer.accept(null);
    }

    public static int getRunningTaskId() {
        ActivityManager.RunningTaskInfo runningTask = ActivityManagerWrapper.getInstance().getRunningTask();
        if (runningTask != null) {
            return runningTask.id;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPackageIconChanged(String str, UserHandle userHandle) {
        this.mIconCache.invalidateCacheEntries(str, userHandle);
        for (int size = this.mThumbnailChangeListeners.size() - 1; size >= 0; size--) {
            ((TaskVisualsChangeListener) this.mThumbnailChangeListeners.get(size)).onTaskIconChanged(str, userHandle);
        }
    }

    public void addThumbnailChangeListener(TaskVisualsChangeListener taskVisualsChangeListener) {
        this.mThumbnailChangeListeners.add(taskVisualsChangeListener);
    }

    public /* synthetic */ void c(int i, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Task task = (Task) it.next();
            if (task.key.id != i) {
                this.mThumbnailCache.updateThumbnailInCache(task);
            }
        }
    }

    public void findTaskWithId(final int i, final Consumer consumer) {
        this.mTaskList.getTasks(true, new Consumer() { // from class: c.a.b.c1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RecentsModel.b(i, consumer, (ArrayList) obj);
            }
        });
    }

    public TaskIconCache getIconCache() {
        return this.mIconCache;
    }

    public int getTasks(Consumer consumer) {
        return this.mTaskList.getTasks(false, consumer);
    }

    public TaskThumbnailCache getThumbnailCache() {
        return this.mThumbnailCache;
    }

    public boolean isTaskListValid(int i) {
        return this.mTaskList.isTaskListValid(i);
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public void onTaskRemoved(int i) {
        Task.TaskKey taskKey = new Task.TaskKey(i, 0, null, null, 0, 0L);
        this.mThumbnailCache.remove(taskKey);
        this.mIconCache.onTaskRemoved(taskKey);
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public void onTaskSnapshotChanged(int i, ThumbnailData thumbnailData) {
        this.mThumbnailCache.updateTaskSnapShot(i, thumbnailData);
        for (int size = this.mThumbnailChangeListeners.size() - 1; size >= 0; size--) {
            Task onTaskThumbnailChanged = ((TaskVisualsChangeListener) this.mThumbnailChangeListeners.get(size)).onTaskThumbnailChanged(i, thumbnailData);
            if (onTaskThumbnailChanged != null) {
                onTaskThumbnailChanged.thumbnail = thumbnailData;
            }
        }
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public void onTaskStackChangedBackground() {
        if (this.mThumbnailCache.isPreloadingEnabled() && TaskUtils.checkCurrentOrManagedUserId(Process.myUserHandle().getIdentifier(), this.mContext)) {
            final int runningTaskId = getRunningTaskId();
            this.mTaskList.getTaskKeys(this.mThumbnailCache.getCacheSize(), new Consumer() { // from class: c.a.b.a1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    RecentsModel.this.c(runningTaskId, (ArrayList) obj);
                }
            });
        }
    }

    public void onTrimMemory(int i) {
        if (i == 20) {
            this.mThumbnailCache.getHighResLoadingState().setVisible(false);
        }
        if (i == 15) {
            this.mThumbnailCache.clear();
            this.mIconCache.clear();
        }
    }

    public void removeThumbnailChangeListener(TaskVisualsChangeListener taskVisualsChangeListener) {
        this.mThumbnailChangeListeners.remove(taskVisualsChangeListener);
    }
}
