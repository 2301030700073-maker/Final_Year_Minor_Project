package androidx.lifecycle;

import com.eygraber.uri.Uri;
import com.fsck.k9.helper.SingleLiveEvent;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CoroutineLiveData extends SingleLiveEvent {
    public Uri.Builder blockRunner;

    public final void clearSource$lifecycle_livedata(ContinuationImpl continuationImpl) {
        CoroutineLiveData$clearSource$1 coroutineLiveData$clearSource$1;
        int i;
        if (continuationImpl instanceof CoroutineLiveData$clearSource$1) {
            coroutineLiveData$clearSource$1 = (CoroutineLiveData$clearSource$1) continuationImpl;
            int i2 = coroutineLiveData$clearSource$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                coroutineLiveData$clearSource$1.label = i2 - Integer.MIN_VALUE;
                Object obj = coroutineLiveData$clearSource$1.result;
                i = coroutineLiveData$clearSource$1.label;
                if (i != 0 || i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return;
                }
            }
        }
        coroutineLiveData$clearSource$1 = new CoroutineLiveData$clearSource$1(this, continuationImpl);
        Object obj2 = coroutineLiveData$clearSource$1.result;
        i = coroutineLiveData$clearSource$1.label;
        if (i != 0) {
        }
        ResultKt.throwOnFailure(obj2);
    }

    @Override // com.fsck.k9.helper.SingleLiveEvent, androidx.lifecycle.LiveData
    public final void onActive() {
        super.onActive();
        Uri.Builder builder = this.blockRunner;
        if (builder != null) {
            StandaloneCoroutine standaloneCoroutine = (StandaloneCoroutine) builder.path;
            Continuation continuation = null;
            if (standaloneCoroutine != null) {
                standaloneCoroutine.cancel(null);
            }
            builder.path = null;
            if (((StandaloneCoroutine) builder.fragment) != null) {
                return;
            }
            builder.fragment = JobKt.launch$default((ContextScope) builder.authority, null, null, new BlockRunner$maybeRun$1(builder, continuation, 0), 3);
        }
    }

    @Override // com.fsck.k9.helper.SingleLiveEvent, androidx.lifecycle.LiveData
    public final void onInactive() {
        super.onInactive();
        Uri.Builder builder = this.blockRunner;
        if (builder != null) {
            if (((StandaloneCoroutine) builder.path) != null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cancel call cannot happen without a maybeRun");
                return;
            }
            ContextScope contextScope = (ContextScope) builder.authority;
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            builder.path = JobKt.launch$default(contextScope, MainDispatcherLoader.dispatcher.immediate, null, new BlockRunner$cancel$1(builder, null, 0), 2);
        }
    }
}
