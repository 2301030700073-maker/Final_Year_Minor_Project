package com.android.quickstep;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.util.SparseArray;
import android.view.accessibility.AccessibilityManager;
import c.a.a.L0.a;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.IconProvider;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.quickstep.TaskIconCache;
import com.android.quickstep.util.TaskKeyLruCache;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.PackageManagerWrapper;
import com.android.systemui.shared.system.TaskDescriptionCompat;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class TaskIconCache {
    public final AccessibilityManager mAccessibilityManager;
    public final Handler mBackgroundHandler;
    public final Context mContext;
    public final SparseArray mDefaultIcons = new SparseArray();
    public final TaskKeyLruCache mIconCache;
    public final IconProvider mIconProvider;

    /* renamed from: com.android.quickstep.TaskIconCache$1, reason: invalid class name */
    public class AnonymousClass1 extends IconLoadRequest {
        public final /* synthetic */ Consumer val$callback;
        public final /* synthetic */ Task val$task;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Handler handler, Task task, Consumer consumer) {
            super(handler);
            this.val$task = task;
            this.val$callback = consumer;
        }

        public /* synthetic */ void a(Task task, TaskCacheEntry taskCacheEntry, Consumer consumer) {
            task.icon = taskCacheEntry.icon;
            task.titleDescription = taskCacheEntry.contentDescription;
            consumer.accept(task);
            onEnd();
        }

        @Override // java.lang.Runnable
        public void run() {
            final TaskCacheEntry cacheEntry = TaskIconCache.this.getCacheEntry(this.val$task);
            if (isCanceled()) {
                return;
            }
            LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
            final Task task = this.val$task;
            final Consumer consumer = this.val$callback;
            looperExecutor.execute(new Runnable() { // from class: c.a.b.l1
                @Override // java.lang.Runnable
                public final void run() {
                    TaskIconCache.AnonymousClass1.this.a(task, cacheEntry, consumer);
                }
            });
        }
    }

    public abstract class IconLoadRequest extends HandlerRunnable {
        public IconLoadRequest(Handler handler) {
            super(handler, null);
        }
    }

    public TaskIconCache(Context context, Looper looper) {
        this.mContext = context;
        this.mBackgroundHandler = new Handler(looper);
        this.mAccessibilityManager = (AccessibilityManager) context.getSystemService(AccessibilityManager.class);
        this.mIconCache = new TaskKeyLruCache(context.getResources().getInteger(R.integer.recentsIconCacheSize));
        this.mIconProvider = new IconProvider(context);
    }

    private BitmapInfo getBitmapInfo(Drawable drawable, int i, int i2, boolean z) {
        LauncherIcons obtain = LauncherIcons.obtain(this.mContext);
        try {
            obtain.mDisableColorExtractor = true;
            if (Color.alpha(i2) < 255) {
                i2 = -1;
            }
            obtain.mWrapperBackgroundColor = i2;
            BitmapInfo createBadgedIconBitmap = obtain.createBadgedIconBitmap(drawable, UserHandle.of(i), 26, z);
            obtain.recycle();
            return createBadgedIconBitmap;
        } catch (Throwable th) {
            try {
                obtain.recycle();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public TaskCacheEntry getCacheEntry(Task task) {
        TaskCacheEntry taskCacheEntry = (TaskCacheEntry) this.mIconCache.getAndInvalidateIfModified(task.key);
        if (taskCacheEntry != null) {
            return taskCacheEntry;
        }
        ActivityManager.TaskDescription taskDescription = task.taskDescription;
        Task.TaskKey taskKey = task.key;
        ActivityInfo activityInfo = null;
        TaskCacheEntry taskCacheEntry2 = new TaskCacheEntry(0 == true ? 1 : 0);
        Bitmap icon = TaskDescriptionCompat.getIcon(taskDescription, taskKey.userId);
        if (icon != null) {
            taskCacheEntry2.icon = new FastBitmapDrawable(getBitmapInfo(new BitmapDrawable(this.mContext.getResources(), icon), taskKey.userId, taskDescription.getPrimaryColor(), false));
        } else {
            activityInfo = PackageManagerWrapper.getInstance().getActivityInfo(taskKey.getComponent(), taskKey.userId);
            if (activityInfo != null) {
                IconProvider iconProvider = this.mIconProvider;
                UserHandle of = UserHandle.of(taskKey.userId);
                Objects.requireNonNull(iconProvider);
                taskCacheEntry2.icon = FastBitmapDrawable.newIcon(this.mContext, getBitmapInfo(iconProvider.getIcon(activityInfo.applicationInfo.packageName, of, activityInfo, iconProvider.mContext.getPackageManager(), a.f1441a), taskKey.userId, taskDescription.getPrimaryColor(), activityInfo.applicationInfo.isInstantApp()));
            } else {
                taskCacheEntry2.icon = getDefaultIcon(taskKey.userId);
            }
        }
        if (this.mAccessibilityManager.isEnabled()) {
            if (activityInfo == null) {
                activityInfo = PackageManagerWrapper.getInstance().getActivityInfo(taskKey.getComponent(), taskKey.userId);
            }
            if (activityInfo != null) {
                taskCacheEntry2.contentDescription = ActivityManagerWrapper.getInstance().getBadgedContentDescription(activityInfo, task.key.userId, task.taskDescription);
            }
        }
        this.mIconCache.put(task.key, taskCacheEntry2);
        return taskCacheEntry2;
    }

    private Drawable getDefaultIcon(int i) {
        FastBitmapDrawable fastBitmapDrawable;
        synchronized (this.mDefaultIcons) {
            BitmapInfo bitmapInfo = (BitmapInfo) this.mDefaultIcons.get(i);
            if (bitmapInfo == null) {
                LauncherIcons obtain = LauncherIcons.obtain(this.mContext);
                try {
                    BitmapInfo createBadgedIconBitmap = obtain.createBadgedIconBitmap(BaseIconFactory.getFullResDefaultActivityIcon(obtain.mFillResIconDpi), UserHandle.of(i), Build.VERSION.SDK_INT);
                    obtain.recycle();
                    this.mDefaultIcons.put(i, createBadgedIconBitmap);
                    bitmapInfo = createBadgedIconBitmap;
                } finally {
                }
            }
            fastBitmapDrawable = new FastBitmapDrawable(bitmapInfo);
        }
        return fastBitmapDrawable;
    }

    public /* synthetic */ void a(final String str, final UserHandle userHandle) {
        this.mIconCache.removeAll(new Predicate() { // from class: c.a.b.m1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                Task.TaskKey taskKey = (Task.TaskKey) obj;
                return str.equals(taskKey.getPackageName()) && userHandle.getIdentifier() == taskKey.userId;
            }
        });
    }

    public void clear() {
        this.mIconCache.evictAll();
    }

    public void invalidateCacheEntries(final String str, final UserHandle userHandle) {
        Utilities.postAsyncCallback(this.mBackgroundHandler, new Runnable() { // from class: c.a.b.n1
            @Override // java.lang.Runnable
            public final void run() {
                TaskIconCache.this.a(str, userHandle);
            }
        });
    }

    public void onTaskRemoved(Task.TaskKey taskKey) {
        this.mIconCache.remove(taskKey);
    }

    public IconLoadRequest updateIconInBackground(Task task, Consumer consumer) {
        if (task.icon != null) {
            consumer.accept(task);
            return null;
        }
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.mBackgroundHandler, task, consumer);
        Utilities.postAsyncCallback(this.mBackgroundHandler, anonymousClass1);
        return anonymousClass1;
    }

    public class TaskCacheEntry {
        public String contentDescription;
        public Drawable icon;

        public TaskCacheEntry() {
            this.contentDescription = "";
        }

        public /* synthetic */ TaskCacheEntry(AnonymousClass1 anonymousClass1) {
            this();
        }
    }
}
