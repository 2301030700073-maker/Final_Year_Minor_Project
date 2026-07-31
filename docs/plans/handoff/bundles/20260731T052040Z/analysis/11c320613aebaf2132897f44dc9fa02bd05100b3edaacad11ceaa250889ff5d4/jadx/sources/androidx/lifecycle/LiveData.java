package androidx.lifecycle;

import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.arch.core.internal.SafeIterableMap.IteratorWithAdditions;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.Lifecycle;
import androidx.preference.PreferenceGroup;
import androidx.sqlite.SQLite;
import androidx.work.Operation$State$SUCCESS;
import androidx.work.SystemClock;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class LiveData {
    public static final Object NOT_SET = new Object();
    public int mActiveCount;
    public boolean mChangingActiveState;
    public volatile Object mData;
    public final Object mDataLock;
    public boolean mDispatchInvalidated;
    public boolean mDispatchingValue;
    public final SafeIterableMap mObservers;
    public volatile Object mPendingData;
    public final AnonymousClass1 mPostValueRunnable;
    public int mVersion;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.lifecycle.LiveData$1, reason: invalid class name */
    public final class AnonymousClass1 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        private final void run$androidx$preference$PreferenceGroup$1() {
            synchronized (this) {
                ((PreferenceGroup) this.this$0).mIdRecycleCache.clear();
            }
        }

        private final void run$okhttp3$internal$concurrent$TaskRunner$runnable$1() {
            Task awaitTaskToRun;
            long j;
            Task awaitTaskToRun2;
            TaskRunner taskRunner = (TaskRunner) this.this$0;
            synchronized (taskRunner) {
                taskRunner.runCallCount++;
                awaitTaskToRun = taskRunner.awaitTaskToRun();
            }
            if (awaitTaskToRun == null) {
                return;
            }
            Thread currentThread = Thread.currentThread();
            String name = currentThread.getName();
            while (true) {
                try {
                    currentThread.setName(awaitTaskToRun.name);
                    Logger logger = ((TaskRunner) this.this$0).logger$1;
                    TaskQueue taskQueue = awaitTaskToRun.queue;
                    taskQueue.getClass();
                    boolean isLoggable = logger.isLoggable(Level.FINE);
                    if (isLoggable) {
                        j = System.nanoTime();
                        logger.fine(taskQueue.name + ' ' + String.format("%-22s", Arrays.copyOf(new Object[]{"starting"}, 1)) + ": " + awaitTaskToRun.name);
                    } else {
                        j = -1;
                    }
                    try {
                        long runOnce = awaitTaskToRun.runOnce();
                        if (isLoggable) {
                            logger.fine(taskQueue.name + ' ' + String.format("%-22s", Arrays.copyOf(new Object[]{"finished run in " + SQLite.formatDuration(System.nanoTime() - j)}, 1)) + ": " + awaitTaskToRun.name);
                        }
                        TaskRunner taskRunner2 = (TaskRunner) this.this$0;
                        synchronized (taskRunner2) {
                            TaskRunner.access$afterRun(taskRunner2, awaitTaskToRun, runOnce, true);
                            awaitTaskToRun2 = taskRunner2.awaitTaskToRun();
                        }
                        if (awaitTaskToRun2 == null) {
                            return;
                        } else {
                            awaitTaskToRun = awaitTaskToRun2;
                        }
                    } catch (Throwable th) {
                        if (isLoggable) {
                            logger.fine(taskQueue.name + ' ' + String.format("%-22s", Arrays.copyOf(new Object[]{"failed a run in " + SQLite.formatDuration(System.nanoTime() - j)}, 1)) + ": " + awaitTaskToRun.name);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    try {
                        TaskRunner taskRunner3 = (TaskRunner) this.this$0;
                        synchronized (taskRunner3) {
                            TaskRunner.access$afterRun(taskRunner3, awaitTaskToRun, -1L, false);
                            if (!(th2 instanceof InterruptedException)) {
                                throw th2;
                            }
                            Thread.currentThread().interrupt();
                            return;
                        }
                    } finally {
                        currentThread.setName(name);
                    }
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:150:0x027b  */
        /* JADX WARN: Removed duplicated region for block: B:152:? A[RETURN, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 724
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.LiveData.AnonymousClass1.run():void");
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AlwaysActiveObserver extends ObserverWrapper {
        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        public final boolean shouldBeActive() {
            return true;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class LifecycleBoundObserver extends ObserverWrapper implements LifecycleEventObserver {
        public final LifecycleOwner mOwner;

        public LifecycleBoundObserver(LifecycleOwner lifecycleOwner, Observer observer) {
            super(observer);
            this.mOwner = lifecycleOwner;
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        public final void detachObserver() {
            this.mOwner.getLifecycle().removeObserver(this);
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        public final boolean isAttachedTo(LifecycleOwner lifecycleOwner) {
            return this.mOwner == lifecycleOwner;
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            LifecycleOwner lifecycleOwner2 = this.mOwner;
            Lifecycle.State state = ((LifecycleRegistry) lifecycleOwner2.getLifecycle()).state;
            if (state == Lifecycle.State.DESTROYED) {
                LiveData.this.removeObserver(this.mObserver);
                return;
            }
            Lifecycle.State state2 = null;
            while (state2 != state) {
                activeStateChanged(shouldBeActive());
                state2 = state;
                state = ((LifecycleRegistry) lifecycleOwner2.getLifecycle()).state;
            }
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        public final boolean shouldBeActive() {
            return ((LifecycleRegistry) this.mOwner.getLifecycle()).state.compareTo(Lifecycle.State.STARTED) >= 0;
        }
    }

    public LiveData(int i) {
        Operation$State$SUCCESS operation$State$SUCCESS = SystemClock.IN_PROGRESS;
        this.mDataLock = new Object();
        this.mObservers = new SafeIterableMap();
        this.mActiveCount = 0;
        this.mPendingData = NOT_SET;
        this.mPostValueRunnable = new AnonymousClass1(this, 0);
        this.mData = operation$State$SUCCESS;
        this.mVersion = 0;
    }

    public static void assertMainThread(String str) {
        ArchTaskExecutor.getInstance().mDelegate.getClass();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2(Modifier.CC.m("Cannot invoke ", str, " on a background thread"));
    }

    public final void considerNotify(ObserverWrapper observerWrapper) {
        if (observerWrapper.mActive) {
            if (!observerWrapper.shouldBeActive()) {
                observerWrapper.activeStateChanged(false);
                return;
            }
            int i = observerWrapper.mLastVersion;
            int i2 = this.mVersion;
            if (i >= i2) {
                return;
            }
            observerWrapper.mLastVersion = i2;
            observerWrapper.mObserver.onChanged(this.mData);
        }
    }

    public final void dispatchingValue(ObserverWrapper observerWrapper) {
        if (this.mDispatchingValue) {
            this.mDispatchInvalidated = true;
            return;
        }
        this.mDispatchingValue = true;
        do {
            this.mDispatchInvalidated = false;
            if (observerWrapper != null) {
                considerNotify(observerWrapper);
                observerWrapper = null;
            } else {
                SafeIterableMap safeIterableMap = this.mObservers;
                safeIterableMap.getClass();
                SafeIterableMap.IteratorWithAdditions iteratorWithAdditions = safeIterableMap.new IteratorWithAdditions();
                safeIterableMap.mIterators.put(iteratorWithAdditions, Boolean.FALSE);
                while (iteratorWithAdditions.hasNext()) {
                    considerNotify((ObserverWrapper) ((Map.Entry) iteratorWithAdditions.next()).getValue());
                    if (this.mDispatchInvalidated) {
                        break;
                    }
                }
            }
        } while (this.mDispatchInvalidated);
        this.mDispatchingValue = false;
    }

    public final void observe(LifecycleOwner lifecycleOwner, Observer observer) {
        assertMainThread("observe");
        if (((LifecycleRegistry) lifecycleOwner.getLifecycle()).state == Lifecycle.State.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(lifecycleOwner, observer);
        ObserverWrapper observerWrapper = (ObserverWrapper) this.mObservers.putIfAbsent(observer, lifecycleBoundObserver);
        if (observerWrapper != null && !observerWrapper.isAttachedTo(lifecycleOwner)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Cannot add the same observer with different lifecycles");
        } else {
            if (observerWrapper != null) {
                return;
            }
            lifecycleOwner.getLifecycle().addObserver(lifecycleBoundObserver);
        }
    }

    public void removeObserver(Observer observer) {
        assertMainThread("removeObserver");
        SafeIterableMap safeIterableMap = this.mObservers;
        WeakHashMap weakHashMap = safeIterableMap.mIterators;
        SafeIterableMap.Entry entry = safeIterableMap.mStart;
        while (entry != null && !entry.mKey.equals(observer)) {
            entry = entry.mNext;
        }
        ObserverWrapper observerWrapper = null;
        if (entry != null) {
            safeIterableMap.mSize--;
            if (!weakHashMap.isEmpty()) {
                Iterator it = weakHashMap.keySet().iterator();
                while (it.hasNext()) {
                    ((SafeIterableMap.SupportRemove) it.next()).supportRemove(entry);
                }
            }
            SafeIterableMap.Entry entry2 = entry.mPrevious;
            SafeIterableMap.Entry entry3 = entry.mNext;
            if (entry2 != null) {
                entry2.mNext = entry3;
            } else {
                safeIterableMap.mStart = entry3;
            }
            SafeIterableMap.Entry entry4 = entry.mNext;
            if (entry4 != null) {
                entry4.mPrevious = entry2;
            } else {
                safeIterableMap.mEnd = entry2;
            }
            entry.mNext = null;
            entry.mPrevious = null;
            observerWrapper = entry.mValue;
        }
        if (observerWrapper == null) {
            return;
        }
        observerWrapper.detachObserver();
        observerWrapper.activeStateChanged(false);
    }

    public abstract void setValue(Object obj);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class ObserverWrapper {
        public boolean mActive;
        public int mLastVersion = -1;
        public final Observer mObserver;

        public ObserverWrapper(Observer observer) {
            this.mObserver = observer;
        }

        public final void activeStateChanged(boolean z) {
            if (z == this.mActive) {
                return;
            }
            this.mActive = z;
            int i = z ? 1 : -1;
            LiveData liveData = LiveData.this;
            int i2 = liveData.mActiveCount;
            liveData.mActiveCount = i + i2;
            if (!liveData.mChangingActiveState) {
                liveData.mChangingActiveState = true;
                while (true) {
                    try {
                        int i3 = liveData.mActiveCount;
                        if (i2 == i3) {
                            break;
                        }
                        boolean z2 = i2 == 0 && i3 > 0;
                        boolean z3 = i2 > 0 && i3 == 0;
                        if (z2) {
                            liveData.onActive();
                        } else if (z3) {
                            liveData.onInactive();
                        }
                        i2 = i3;
                    } catch (Throwable th) {
                        liveData.mChangingActiveState = false;
                        throw th;
                    }
                }
                liveData.mChangingActiveState = false;
            }
            if (this.mActive) {
                liveData.dispatchingValue(this);
            }
        }

        public boolean isAttachedTo(LifecycleOwner lifecycleOwner) {
            return false;
        }

        public abstract boolean shouldBeActive();

        public void detachObserver() {
        }
    }

    public void onActive() {
    }

    public void onInactive() {
    }

    public LiveData() {
        this.mDataLock = new Object();
        this.mObservers = new SafeIterableMap();
        this.mActiveCount = 0;
        Object obj = NOT_SET;
        this.mPendingData = obj;
        this.mPostValueRunnable = new AnonymousClass1(this, 0);
        this.mData = obj;
        this.mVersion = -1;
    }
}
