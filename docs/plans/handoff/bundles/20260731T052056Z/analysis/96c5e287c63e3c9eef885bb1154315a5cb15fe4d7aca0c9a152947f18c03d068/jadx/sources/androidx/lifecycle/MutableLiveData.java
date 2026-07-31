package androidx.lifecycle;

import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.arch.core.internal.SafeIterableMap.IteratorWithAdditions;
import androidx.compose.animation.core.Animation;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class MutableLiveData {
    public static final Object NOT_SET = new Object();
    public int mActiveCount;
    public boolean mChangingActiveState;
    public volatile Object mData;
    public final Object mDataLock;
    public boolean mDispatchInvalidated;
    public boolean mDispatchingValue;
    public final SafeIterableMap mObservers;
    public volatile Object mPendingData;
    public final LiveData$1 mPostValueRunnable;
    public int mVersion;

    public MutableLiveData() {
        this.mDataLock = new Object();
        this.mObservers = new SafeIterableMap();
        this.mActiveCount = 0;
        Object obj = NOT_SET;
        this.mPendingData = obj;
        this.mPostValueRunnable = new LiveData$1(0, this);
        this.mData = obj;
        this.mVersion = -1;
    }

    public static void assertMainThread(String str) {
        ArchTaskExecutor.getInstance().getClass();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Animation.CC.m("Cannot invoke ", str, " on a background thread"));
    }

    public final void considerNotify(LiveData$ObserverWrapper liveData$ObserverWrapper) {
        if (liveData$ObserverWrapper.mActive) {
            if (!liveData$ObserverWrapper.shouldBeActive()) {
                liveData$ObserverWrapper.activeStateChanged(false);
                return;
            }
            int i = liveData$ObserverWrapper.mLastVersion;
            int i2 = this.mVersion;
            if (i >= i2) {
                return;
            }
            liveData$ObserverWrapper.mLastVersion = i2;
            liveData$ObserverWrapper.mObserver.onChanged(this.mData);
        }
    }

    public final void dispatchingValue(LiveData$ObserverWrapper liveData$ObserverWrapper) {
        if (this.mDispatchingValue) {
            this.mDispatchInvalidated = true;
            return;
        }
        this.mDispatchingValue = true;
        do {
            this.mDispatchInvalidated = false;
            if (liveData$ObserverWrapper != null) {
                considerNotify(liveData$ObserverWrapper);
                liveData$ObserverWrapper = null;
            } else {
                SafeIterableMap safeIterableMap = this.mObservers;
                safeIterableMap.getClass();
                SafeIterableMap.IteratorWithAdditions iteratorWithAdditions = safeIterableMap.new IteratorWithAdditions();
                safeIterableMap.mIterators.put(iteratorWithAdditions, Boolean.FALSE);
                while (iteratorWithAdditions.hasNext()) {
                    considerNotify((LiveData$ObserverWrapper) ((Map.Entry) iteratorWithAdditions.next()).getValue());
                    if (this.mDispatchInvalidated) {
                        break;
                    }
                }
            }
        } while (this.mDispatchInvalidated);
        this.mDispatchingValue = false;
    }

    public final Object getValue() {
        Object obj = this.mData;
        if (obj != NOT_SET) {
            return obj;
        }
        return null;
    }

    public void observe(LifecycleOwner lifecycleOwner, Observer observer) {
        assertMainThread("observe");
        if (lifecycleOwner.getLifecycle().state == Lifecycle$State.DESTROYED) {
            return;
        }
        LiveData$LifecycleBoundObserver liveData$LifecycleBoundObserver = new LiveData$LifecycleBoundObserver(this, lifecycleOwner, observer);
        LiveData$ObserverWrapper liveData$ObserverWrapper = (LiveData$ObserverWrapper) this.mObservers.putIfAbsent(observer, liveData$LifecycleBoundObserver);
        if (liveData$ObserverWrapper != null && !liveData$ObserverWrapper.isAttachedTo(lifecycleOwner)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot add the same observer with different lifecycles");
        } else {
            if (liveData$ObserverWrapper != null) {
                return;
            }
            lifecycleOwner.getLifecycle().addObserver(liveData$LifecycleBoundObserver);
        }
    }

    public final void postValue(Object obj) {
        boolean z;
        synchronized (this.mDataLock) {
            z = this.mPendingData == NOT_SET;
            this.mPendingData = obj;
        }
        if (z) {
            ArchTaskExecutor.getInstance().postToMainThread(this.mPostValueRunnable);
        }
    }

    public final void removeObserver(Observer observer) {
        assertMainThread("removeObserver");
        SafeIterableMap safeIterableMap = this.mObservers;
        WeakHashMap weakHashMap = safeIterableMap.mIterators;
        SafeIterableMap.Entry entry = safeIterableMap.mStart;
        while (entry != null && !entry.mKey.equals(observer)) {
            entry = entry.mNext;
        }
        LiveData$ObserverWrapper liveData$ObserverWrapper = null;
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
            liveData$ObserverWrapper = entry.mValue;
        }
        if (liveData$ObserverWrapper == null) {
            return;
        }
        liveData$ObserverWrapper.detachObserver();
        liveData$ObserverWrapper.activeStateChanged(false);
    }

    public void setValue(Object obj) {
        assertMainThread("setValue");
        this.mVersion++;
        this.mData = obj;
        dispatchingValue(null);
    }

    public MutableLiveData(Object obj) {
        this.mDataLock = new Object();
        this.mObservers = new SafeIterableMap();
        this.mActiveCount = 0;
        this.mPendingData = NOT_SET;
        this.mPostValueRunnable = new LiveData$1(0, this);
        this.mData = obj;
        this.mVersion = 0;
    }
}
