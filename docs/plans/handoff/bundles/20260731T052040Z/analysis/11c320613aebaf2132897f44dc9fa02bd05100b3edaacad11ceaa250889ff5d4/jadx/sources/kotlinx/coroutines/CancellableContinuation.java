package kotlinx.coroutines;

import com.google.common.base.Joiner;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface CancellableContinuation extends Continuation {
    boolean cancel(Throwable th);

    void completeResume(Object obj);

    void resume(Object obj, Function3 function3);

    Joiner tryResume(Object obj, Function3 function3);
}
