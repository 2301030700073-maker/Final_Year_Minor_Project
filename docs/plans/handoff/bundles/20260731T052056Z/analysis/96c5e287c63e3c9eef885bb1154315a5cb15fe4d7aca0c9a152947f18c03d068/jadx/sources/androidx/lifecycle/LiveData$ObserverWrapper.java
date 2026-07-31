package androidx.lifecycle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LiveData$ObserverWrapper {
    public boolean mActive;
    public int mLastVersion = -1;
    public final Observer mObserver;
    public final /* synthetic */ MutableLiveData this$0;

    public LiveData$ObserverWrapper(MutableLiveData mutableLiveData, Observer observer) {
        this.this$0 = mutableLiveData;
        this.mObserver = observer;
    }

    public final void activeStateChanged(boolean z) {
        if (z == this.mActive) {
            return;
        }
        this.mActive = z;
        int i = z ? 1 : -1;
        MutableLiveData mutableLiveData = this.this$0;
        int i2 = mutableLiveData.mActiveCount;
        mutableLiveData.mActiveCount = i + i2;
        if (!mutableLiveData.mChangingActiveState) {
            mutableLiveData.mChangingActiveState = true;
            while (true) {
                try {
                    int i3 = mutableLiveData.mActiveCount;
                    if (i2 == i3) {
                        break;
                    } else {
                        i2 = i3;
                    }
                } finally {
                    mutableLiveData.mChangingActiveState = false;
                }
            }
        }
        if (this.mActive) {
            mutableLiveData.dispatchingValue(this);
        }
    }

    public boolean isAttachedTo(LifecycleOwner lifecycleOwner) {
        return false;
    }

    public abstract boolean shouldBeActive();

    public void detachObserver() {
    }
}
