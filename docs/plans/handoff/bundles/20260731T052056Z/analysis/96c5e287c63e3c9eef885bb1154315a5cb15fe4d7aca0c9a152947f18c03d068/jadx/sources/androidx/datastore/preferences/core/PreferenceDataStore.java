package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStore;
import androidx.datastore.core.SingleProcessDataStore;
import androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PreferenceDataStore implements DataStore {
    public final SingleProcessDataStore delegate;

    public PreferenceDataStore(SingleProcessDataStore singleProcessDataStore) {
        this.delegate = singleProcessDataStore;
    }

    @Override // androidx.datastore.core.DataStore
    public final Flow getData() {
        return this.delegate.data;
    }

    @Override // androidx.datastore.core.DataStore
    public final Object updateData(Function2 function2, ContinuationImpl continuationImpl) {
        return this.delegate.updateData(new SimpleChannelFlowKt$simpleChannelFlow$1(function2, (Continuation) null, 2), continuationImpl);
    }
}
