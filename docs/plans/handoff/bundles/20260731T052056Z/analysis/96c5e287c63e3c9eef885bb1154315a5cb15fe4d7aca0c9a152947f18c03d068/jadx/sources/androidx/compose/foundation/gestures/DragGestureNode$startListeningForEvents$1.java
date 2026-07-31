package androidx.compose.foundation.gestures;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DragGestureNode$startListeningForEvents$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public /* synthetic */ Object L$0;
    public Ref$ObjectRef L$1;
    public Ref$ObjectRef L$2;
    public int label;
    public final /* synthetic */ ScrollableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragGestureNode$startListeningForEvents$1(Ref$ObjectRef ref$ObjectRef, ScrollableNode scrollableNode, Continuation continuation) {
        super(2, continuation);
        this.L$2 = ref$ObjectRef;
        this.this$0 = scrollableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        ScrollableNode scrollableNode = this.this$0;
        switch (i) {
            case 0:
                DragGestureNode$startListeningForEvents$1 dragGestureNode$startListeningForEvents$1 = new DragGestureNode$startListeningForEvents$1(scrollableNode, continuation);
                dragGestureNode$startListeningForEvents$1.L$0 = obj;
                return dragGestureNode$startListeningForEvents$1;
            default:
                DragGestureNode$startListeningForEvents$1 dragGestureNode$startListeningForEvents$12 = new DragGestureNode$startListeningForEvents$1(this.L$2, scrollableNode, continuation);
                dragGestureNode$startListeningForEvents$12.L$0 = obj;
                return dragGestureNode$startListeningForEvents$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((DragGestureNode$startListeningForEvents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((DragGestureNode$startListeningForEvents$1) create((Function1) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0113, code lost:
    
        if (r12 != r0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x013d, code lost:
    
        if (r1.processDragCancel(r11) == r0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x014b, code lost:
    
        if (r1.processDragCancel(r11) != r0) goto L38;
     */
    /* JADX WARN: Path cross not found for [B:63:0x012e, B:60:0x011c], limit reached: 89 */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:76:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0057 -> B:7:0x0058). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x005b -> B:8:0x005d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00dd -> B:36:0x00b2). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x0129 -> B:36:0x00b2). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0130 -> B:36:0x00b2). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x013d -> B:36:0x00b2). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x014b -> B:35:0x0083). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragGestureNode$startListeningForEvents$1(ScrollableNode scrollableNode, Continuation continuation) {
        super(2, continuation);
        this.this$0 = scrollableNode;
    }
}
