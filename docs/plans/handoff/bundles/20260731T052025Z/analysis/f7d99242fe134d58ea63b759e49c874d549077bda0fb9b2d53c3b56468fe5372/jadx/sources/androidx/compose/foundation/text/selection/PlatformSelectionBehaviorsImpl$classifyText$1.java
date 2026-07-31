package androidx.compose.foundation.text.selection;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PlatformSelectionBehaviorsImpl$classifyText$1 extends ContinuationImpl {
    public long J$0;
    public CharSequence L$0;
    public Object L$1;
    public MutexImpl L$2;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ PlatformSelectionBehaviorsImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlatformSelectionBehaviorsImpl$classifyText$1(PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = platformSelectionBehaviorsImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return PlatformSelectionBehaviorsImpl.m304access$classifyTextM8tDOmk(this.this$0, null, 0L, null, this);
    }
}
