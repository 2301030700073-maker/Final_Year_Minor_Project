package com.android.quickstep;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.os.Process;
import android.util.SparseBooleanArray;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.quickstep.RecentTasksList;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.KeyguardManagerCompat;
import com.android.systemui.shared.system.TaskStackChangeListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;

@TargetApi(30)
/* loaded from: classes.dex */
public class RecentTasksList extends TaskStackChangeListener {
    public static final TaskLoadResult INVALID_RESULT = new TaskLoadResult(-1, false, 0);
    public final ActivityManagerWrapper mActivityManagerWrapper;
    public int mChangeId;
    public final KeyguardManagerCompat mKeyguardManager;
    public final LooperExecutor mMainThreadExecutor;
    public TaskLoadResult mResultsBg;
    public TaskLoadResult mResultsUi;

    public class TaskLoadResult extends ArrayList {
        public final int mId;
        public final boolean mKeysOnly;

        public TaskLoadResult(int i, boolean z, int i2) {
            super(i2);
            this.mId = i;
            this.mKeysOnly = z;
        }

        public boolean isValidForRequest(int i, boolean z) {
            return this.mId == i && (!this.mKeysOnly || z);
        }
    }

    public RecentTasksList(LooperExecutor looperExecutor, KeyguardManagerCompat keyguardManagerCompat, ActivityManagerWrapper activityManagerWrapper) {
        TaskLoadResult taskLoadResult = INVALID_RESULT;
        this.mResultsBg = taskLoadResult;
        this.mResultsUi = taskLoadResult;
        this.mMainThreadExecutor = looperExecutor;
        this.mKeyguardManager = keyguardManagerCompat;
        this.mChangeId = 1;
        this.mActivityManagerWrapper = activityManagerWrapper;
        activityManagerWrapper.registerTaskStackListener(this);
    }

    private ArrayList copyOf(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            Task task = (Task) arrayList.get(i);
            arrayList2.add(new Task(task.key, task.colorPrimary, task.colorBackground, task.isDockable, task.isLocked, task.taskDescription, task.topActivity));
        }
        return arrayList2;
    }

    private synchronized void invalidateLoadedTasks() {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.b.C0
            @Override // java.lang.Runnable
            public final void run() {
                RecentTasksList.this.f();
            }
        });
        this.mResultsUi = INVALID_RESULT;
        this.mChangeId++;
    }

    public /* synthetic */ void b(int i, final Consumer consumer) {
        final TaskLoadResult loadTasksInBackground = loadTasksInBackground(i, -1, true);
        this.mMainThreadExecutor.execute(new Runnable() { // from class: c.a.b.F0
            @Override // java.lang.Runnable
            public final void run() {
                consumer.accept(loadTasksInBackground);
            }
        });
    }

    public /* synthetic */ void d(TaskLoadResult taskLoadResult, Consumer consumer) {
        this.mResultsUi = taskLoadResult;
        if (consumer != null) {
            consumer.accept(copyOf(taskLoadResult));
        }
    }

    public /* synthetic */ void e(int i, boolean z, final Consumer consumer) {
        if (!this.mResultsBg.isValidForRequest(i, z)) {
            this.mResultsBg = loadTasksInBackground(Integer.MAX_VALUE, i, z);
        }
        final TaskLoadResult taskLoadResult = this.mResultsBg;
        this.mMainThreadExecutor.execute(new Runnable() { // from class: c.a.b.E0
            @Override // java.lang.Runnable
            public final void run() {
                RecentTasksList.this.d(taskLoadResult, consumer);
            }
        });
    }

    public /* synthetic */ void f() {
        this.mResultsBg = INVALID_RESULT;
    }

    public void getTaskKeys(final int i, final Consumer consumer) {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.b.B0
            @Override // java.lang.Runnable
            public final void run() {
                RecentTasksList.this.b(i, consumer);
            }
        });
    }

    public synchronized int getTasks(final boolean z, final Consumer consumer) {
        final int i = this.mChangeId;
        if (!this.mResultsUi.isValidForRequest(i, z)) {
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.b.D0
                @Override // java.lang.Runnable
                public final void run() {
                    RecentTasksList.this.e(i, z, consumer);
                }
            });
            return i;
        }
        if (consumer != null) {
            final ArrayList copyOf = copyOf(this.mResultsUi);
            LooperExecutor looperExecutor = this.mMainThreadExecutor;
            looperExecutor.mHandler.post(new Runnable() { // from class: c.a.b.A0
                @Override // java.lang.Runnable
                public final void run() {
                    consumer.accept(copyOf);
                }
            });
        }
        return i;
    }

    public synchronized boolean isTaskListValid(int i) {
        return this.mChangeId == i;
    }

    public TaskLoadResult loadTasksInBackground(int i, int i2, boolean z) {
        List<ActivityManager.RecentTaskInfo> recentTasks = this.mActivityManagerWrapper.getRecentTasks(i, Process.myUserHandle().getIdentifier());
        Collections.reverse(recentTasks);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray() { // from class: com.android.quickstep.RecentTasksList.1
            @Override // android.util.SparseBooleanArray
            public boolean get(int i3) {
                if (indexOfKey(i3) < 0) {
                    put(i3, RecentTasksList.this.mKeyguardManager.isDeviceLocked(i3));
                }
                return super.get(i3);
            }
        };
        TaskLoadResult taskLoadResult = new TaskLoadResult(i2, z, recentTasks.size());
        for (ActivityManager.RecentTaskInfo recentTaskInfo : recentTasks) {
            Task.TaskKey taskKey = new Task.TaskKey(recentTaskInfo);
            taskLoadResult.add(!z ? Task.from(taskKey, recentTaskInfo, sparseBooleanArray.get(taskKey.userId)) : new Task(taskKey));
        }
        return taskLoadResult;
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public void onActivityPinned(String str, int i, int i2, int i3) {
        invalidateLoadedTasks();
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public synchronized void onActivityUnpinned() {
        invalidateLoadedTasks();
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public void onRecentTaskListUpdated() {
        invalidateLoadedTasks();
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public void onTaskRemoved(int i) {
        invalidateLoadedTasks();
    }

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public void onTaskStackChanged() {
        invalidateLoadedTasks();
    }
}
