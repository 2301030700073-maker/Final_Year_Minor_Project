package kotlinx.coroutines.flow;

import androidx.compose.material3.ThumbNode$onAttach$1;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.settings.Prefs$observeKeys$$inlined$filter$1;

/* loaded from: classes.dex */
public final class FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1 extends ContinuationImpl {
    public ThumbNode$onAttach$1.AnonymousClass1 L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ Prefs$observeKeys$$inlined$filter$1 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1(Prefs$observeKeys$$inlined$filter$1 prefs$observeKeys$$inlined$filter$1, Continuation continuation) {
        super(continuation);
        this.this$0 = prefs$observeKeys$$inlined$filter$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.collect(null, this);
    }
}
