package net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DraggableNode$startListeningForEvents$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public /* synthetic */ Object L$0;
    public Ref$ObjectRef L$1;
    public Ref$ObjectRef L$2;
    public int label;
    public final /* synthetic */ DraggableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableNode$startListeningForEvents$1(Ref$ObjectRef ref$ObjectRef, DraggableNode draggableNode, Continuation continuation) {
        super(2, continuation);
        this.L$2 = ref$ObjectRef;
        this.this$0 = draggableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        DraggableNode draggableNode = this.this$0;
        switch (i) {
            case 0:
                DraggableNode$startListeningForEvents$1 draggableNode$startListeningForEvents$1 = new DraggableNode$startListeningForEvents$1(draggableNode, continuation);
                draggableNode$startListeningForEvents$1.L$0 = obj;
                return draggableNode$startListeningForEvents$1;
            default:
                DraggableNode$startListeningForEvents$1 draggableNode$startListeningForEvents$12 = new DraggableNode$startListeningForEvents$1(this.L$2, draggableNode, continuation);
                draggableNode$startListeningForEvents$12.L$0 = obj;
                return draggableNode$startListeningForEvents$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((DraggableNode$startListeningForEvents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((DraggableNode$startListeningForEvents$1) create((Function1) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x010a, code lost:
    
        if (r1 == r4) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0119, code lost:
    
        if (r1 != r4) goto L42;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ed A[Catch: CancellationException -> 0x010d, TryCatch #0 {CancellationException -> 0x010d, blocks: (B:39:0x0070, B:53:0x00cb, B:56:0x00e7, B:58:0x00ed, B:61:0x00fc, B:63:0x0100, B:71:0x0076), top: B:34:0x0062 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00fc A[Catch: CancellationException -> 0x010d, TryCatch #0 {CancellationException -> 0x010d, blocks: (B:39:0x0070, B:53:0x00cb, B:56:0x00e7, B:58:0x00ed, B:61:0x00fc, B:63:0x0100, B:71:0x0076), top: B:34:0x0062 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0052 -> B:7:0x0053). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0056 -> B:8:0x0058). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00b7 -> B:37:0x008c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x00f9 -> B:37:0x008c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x00fe -> B:37:0x008c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x010a -> B:37:0x008c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0119 -> B:37:0x008c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$startListeningForEvents$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableNode$startListeningForEvents$1(DraggableNode draggableNode, Continuation continuation) {
        super(2, continuation);
        this.this$0 = draggableNode;
    }
}
