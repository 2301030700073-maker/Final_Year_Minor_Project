package kotlinx.coroutines;

import com.fsck.k9.mailstore.LocalStore;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CancellableContinuation extends Continuation {
    boolean cancel(Throwable th);

    void completeResume(Object obj);

    void resume(Object obj, Function3 function3);

    LocalStore.AnonymousClass8 tryResume(Object obj, Function3 function3);
}
