package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStore;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreferenceDataStore implements DataStore {
    public final DataStore delegate;

    public PreferenceDataStore(DataStore dataStore) {
        this.delegate = dataStore;
    }

    @Override // androidx.datastore.core.DataStore
    public final Object updateData(Function2 function2, ContinuationImpl continuationImpl) {
        return this.delegate.updateData(new PreferenceDataStore$updateData$2(function2, null, 0), continuationImpl);
    }
}
