package kotlinx.coroutines;

import androidx.compose.ui.Modifier;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.internal.ScopeCoroutine;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TimeoutCoroutine extends ScopeCoroutine implements Runnable {
    public final long time;

    public TimeoutCoroutine(long j, ContinuationImpl continuationImpl) {
        super(continuationImpl, continuationImpl.getContext());
        this.time = j;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final String nameString$kotlinx_coroutines_core() {
        return super.nameString$kotlinx_coroutines_core() + "(timeMillis=" + this.time + ')';
    }

    @Override // java.lang.Runnable
    public final void run() {
        CoroutineContext coroutineContext = this.context;
        JobKt.getDelay(coroutineContext);
        CoroutineName coroutineName = (CoroutineName) coroutineContext.get(CoroutineName.Key);
        String str = coroutineName != null ? coroutineName.name : null;
        String str2 = "Timed out waiting for " + this.time + " ms";
        if (str != null) {
            StringBuilder m180m = Modifier.CC.m180m("Coroutine \"", str, "\" ");
            if (str2.length() > 0) {
                str2 = Character.toLowerCase(str2.charAt(0)) + str2.substring(1);
            }
            m180m.append(str2);
            str2 = m180m.toString();
        }
        cancelImpl$kotlinx_coroutines_core(new TimeoutCancellationException(str2, this));
    }
}
