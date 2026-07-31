package com.fsck.k9.helper;

import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MediatorLiveData$Source;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class SingleLiveEvent extends MutableLiveData {
    public final /* synthetic */ int $r8$classId;
    public final Object pending;

    public SingleLiveEvent(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this.pending = new SafeIterableMap();
                break;
            default:
                this.pending = new AtomicBoolean(false);
                break;
        }
    }

    @Override // androidx.lifecycle.LiveData
    public void observe(LifecycleOwner lifecycleOwner, final Observer observer) {
        switch (this.$r8$classId) {
            case 0:
                if (this.mActiveCount > 0) {
                    Log.w("Multiple observers registered but only one will be notified of changes.", new Object[0]);
                }
                super.observe(lifecycleOwner, new Observer() { // from class: com.fsck.k9.helper.SingleLiveEvent.1
                    @Override // androidx.lifecycle.Observer
                    public final void onChanged(Object obj) {
                        if (((AtomicBoolean) SingleLiveEvent.this.pending).compareAndSet(true, false)) {
                            observer.onChanged(obj);
                        }
                    }
                });
                break;
            default:
                super.observe(lifecycleOwner, observer);
                break;
        }
    }

    @Override // androidx.lifecycle.LiveData
    public void onActive() {
        switch (this.$r8$classId) {
            case 1:
                Iterator it = ((SafeIterableMap) this.pending).iterator();
                while (true) {
                    SafeIterableMap.AscendingIterator ascendingIterator = (SafeIterableMap.AscendingIterator) it;
                    if (!ascendingIterator.hasNext()) {
                        break;
                    } else {
                        MediatorLiveData$Source mediatorLiveData$Source = (MediatorLiveData$Source) ((Map.Entry) ascendingIterator.next()).getValue();
                        mediatorLiveData$Source.mLiveData.observeForever(mediatorLiveData$Source);
                    }
                }
        }
    }

    @Override // androidx.lifecycle.LiveData
    public void onInactive() {
        switch (this.$r8$classId) {
            case 1:
                Iterator it = ((SafeIterableMap) this.pending).iterator();
                while (true) {
                    SafeIterableMap.AscendingIterator ascendingIterator = (SafeIterableMap.AscendingIterator) it;
                    if (!ascendingIterator.hasNext()) {
                        break;
                    } else {
                        MediatorLiveData$Source mediatorLiveData$Source = (MediatorLiveData$Source) ((Map.Entry) ascendingIterator.next()).getValue();
                        mediatorLiveData$Source.mLiveData.removeObserver(mediatorLiveData$Source);
                    }
                }
        }
    }

    @Override // androidx.lifecycle.LiveData
    public void setValue(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((AtomicBoolean) this.pending).set(true);
                super.setValue(obj);
                break;
            default:
                super.setValue(obj);
                break;
        }
    }
}
