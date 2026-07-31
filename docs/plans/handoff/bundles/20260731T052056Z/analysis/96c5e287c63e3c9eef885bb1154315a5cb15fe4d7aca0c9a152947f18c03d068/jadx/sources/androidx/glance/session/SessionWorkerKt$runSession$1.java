package androidx.glance.session;

import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.Recomposer;
import kotlin.ExceptionsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.StandaloneCoroutine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SessionWorkerKt$runSession$1 extends ContinuationImpl {
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public InteractiveFrameClock L$4;
    public StandaloneCoroutine L$5;
    public Recomposer L$6;
    public CompositionImpl L$7;
    public int label;
    public /* synthetic */ Object result;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ExceptionsKt.runSession(null, null, null, null, null, this);
    }
}
