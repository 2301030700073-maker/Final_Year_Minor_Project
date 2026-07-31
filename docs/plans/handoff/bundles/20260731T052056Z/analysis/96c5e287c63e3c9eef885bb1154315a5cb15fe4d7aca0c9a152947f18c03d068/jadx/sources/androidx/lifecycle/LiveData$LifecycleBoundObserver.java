package androidx.lifecycle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LiveData$LifecycleBoundObserver extends LiveData$ObserverWrapper implements LifecycleEventObserver {
    public final LifecycleOwner mOwner;
    public final /* synthetic */ MutableLiveData this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveData$LifecycleBoundObserver(MutableLiveData mutableLiveData, LifecycleOwner lifecycleOwner, Observer observer) {
        super(mutableLiveData, observer);
        this.this$0 = mutableLiveData;
        this.mOwner = lifecycleOwner;
    }

    @Override // androidx.lifecycle.LiveData$ObserverWrapper
    public final void detachObserver() {
        this.mOwner.getLifecycle().removeObserver(this);
    }

    @Override // androidx.lifecycle.LiveData$ObserverWrapper
    public final boolean isAttachedTo(LifecycleOwner lifecycleOwner) {
        return this.mOwner == lifecycleOwner;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        LifecycleOwner lifecycleOwner2 = this.mOwner;
        Lifecycle$State lifecycle$State = lifecycleOwner2.getLifecycle().state;
        if (lifecycle$State == Lifecycle$State.DESTROYED) {
            this.this$0.removeObserver(this.mObserver);
            return;
        }
        Lifecycle$State lifecycle$State2 = null;
        while (lifecycle$State2 != lifecycle$State) {
            activeStateChanged(shouldBeActive());
            lifecycle$State2 = lifecycle$State;
            lifecycle$State = lifecycleOwner2.getLifecycle().state;
        }
    }

    @Override // androidx.lifecycle.LiveData$ObserverWrapper
    public final boolean shouldBeActive() {
        return this.mOwner.getLifecycle().state.isAtLeast(Lifecycle$State.STARTED);
    }
}
