package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationState;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$FloatRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SnapFlingBehaviorKt$animateWithTarget$1 extends ContinuationImpl {
    public float F$0;
    public float F$1;
    public AnimationState L$0;
    public Ref$FloatRef L$1;
    public int label;
    public /* synthetic */ Object result;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return Operation$State.animateWithTarget(null, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, null, null, null, this);
    }
}
