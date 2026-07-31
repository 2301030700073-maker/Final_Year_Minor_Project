package androidx.datastore.preferences;

import androidx.datastore.preferences.core.PreferenceDataStore;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreferenceDataStoreSingletonDelegate {
    public volatile PreferenceDataStore INSTANCE;
    public final Object lock = new Object();
    public final Function1 produceMigrations;
    public final CoroutineScope scope;

    public PreferenceDataStoreSingletonDelegate(Function1 function1, CoroutineScope coroutineScope) {
        this.produceMigrations = function1;
        this.scope = coroutineScope;
    }
}
