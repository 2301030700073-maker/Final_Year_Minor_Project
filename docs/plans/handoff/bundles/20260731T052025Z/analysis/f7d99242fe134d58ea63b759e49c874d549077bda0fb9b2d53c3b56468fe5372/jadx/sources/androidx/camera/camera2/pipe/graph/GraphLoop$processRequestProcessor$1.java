package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.graph.GraphCommand;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GraphLoop$processRequestProcessor$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public List L$0;
    public GraphCommand.RequestProcessor L$1;
    public Ref$IntRef L$2;
    public List L$3;
    public GraphCommand.RequestProcessor L$4;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ GraphLoop this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GraphLoop$processRequestProcessor$1(GraphLoop graphLoop, Continuation continuation) {
        super(continuation);
        this.this$0 = graphLoop;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.processRequestProcessor(null, 0, null, this);
    }
}
