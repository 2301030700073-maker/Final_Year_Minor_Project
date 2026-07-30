package androidx.lifecycle.viewmodel.internal;

import kotlin.NotImplementedError;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;

/* compiled from: CloseableCoroutineScope.kt */
/* loaded from: classes.dex */
public abstract class CloseableCoroutineScopeKt {
    public static final CloseableCoroutineScope createViewModelScope() {
        CoroutineContext coroutineContext;
        try {
            coroutineContext = Dispatchers.getMain().getImmediate();
        } catch (IllegalStateException unused) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        } catch (NotImplementedError unused2) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return new CloseableCoroutineScope(coroutineContext.plus(SupervisorKt.SupervisorJob$default(null, 1, null)));
    }
}
