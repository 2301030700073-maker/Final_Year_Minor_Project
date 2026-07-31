package org.wikipedia.util;

import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SingleLiveData extends MutableLiveData {
    public final AtomicBoolean pending = new AtomicBoolean(false);

    @Override // androidx.lifecycle.MutableLiveData
    public final void observe(LifecycleOwner lifecycleOwner, Observer observer) {
        lifecycleOwner.getClass();
        int i = 0;
        super.observe(lifecycleOwner, new SingleLiveData$sam$androidx_lifecycle_Observer$0(new SingleLiveData$$ExternalSyntheticLambda0(i, this, observer), i));
    }

    @Override // androidx.lifecycle.MutableLiveData
    public final void setValue(Object obj) {
        this.pending.set(true);
        super.setValue(obj);
    }
}
