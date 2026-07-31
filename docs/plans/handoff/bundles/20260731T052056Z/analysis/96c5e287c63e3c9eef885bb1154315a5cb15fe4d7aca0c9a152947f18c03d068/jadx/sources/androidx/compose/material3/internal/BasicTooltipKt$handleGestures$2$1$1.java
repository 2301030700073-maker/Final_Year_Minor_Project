package androidx.compose.material3.internal;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.handwriting.StylusHandwritingNode;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.http.StatusLine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BasicTooltipKt$handleGestures$2$1$1 extends RestrictedSuspendLambda implements Function2 {
    public Object $$this$coroutineScope;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $state;
    public /* synthetic */ Object L$0;
    public Object L$1;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BasicTooltipKt$handleGestures$2$1$1(StatusLine statusLine, MouseSelectionObserver mouseSelectionObserver, TextDragObserver textDragObserver, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 3;
        this.L$1 = statusLine;
        this.$$this$coroutineScope = mouseSelectionObserver;
        this.$state = textDragObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$state;
        switch (i) {
            case 0:
                BasicTooltipKt$handleGestures$2$1$1 basicTooltipKt$handleGestures$2$1$1 = new BasicTooltipKt$handleGestures$2$1$1((CoroutineScope) this.$$this$coroutineScope, (TooltipStateImpl) obj2, continuation);
                basicTooltipKt$handleGestures$2$1$1.L$0 = obj;
                return basicTooltipKt$handleGestures$2$1$1;
            case 1:
                BasicTooltipKt$handleGestures$2$1$1 basicTooltipKt$handleGestures$2$1$12 = new BasicTooltipKt$handleGestures$2$1$1(1, (PagerState) obj2, continuation);
                basicTooltipKt$handleGestures$2$1$12.L$0 = obj;
                return basicTooltipKt$handleGestures$2$1$12;
            case 2:
                BasicTooltipKt$handleGestures$2$1$1 basicTooltipKt$handleGestures$2$1$13 = new BasicTooltipKt$handleGestures$2$1$1(2, (StylusHandwritingNode) obj2, continuation);
                basicTooltipKt$handleGestures$2$1$13.L$0 = obj;
                return basicTooltipKt$handleGestures$2$1$13;
            default:
                BasicTooltipKt$handleGestures$2$1$1 basicTooltipKt$handleGestures$2$1$14 = new BasicTooltipKt$handleGestures$2$1$1((StatusLine) this.L$1, (MouseSelectionObserver) this.$$this$coroutineScope, (TextDragObserver) obj2, continuation);
                basicTooltipKt$handleGestures$2$1$14.L$0 = obj;
                return basicTooltipKt$handleGestures$2$1$14;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine pointerEventHandlerCoroutine = (SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((BasicTooltipKt$handleGestures$2$1$1) create(pointerEventHandlerCoroutine, continuation)).invokeSuspend(unit);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0483  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:160:0x01b1 -> B:71:0x01b5). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:202:0x03d7 -> B:195:0x03db). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:223:0x0451 -> B:217:0x0455). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0325 -> B:50:0x0329). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 1170
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BasicTooltipKt$handleGestures$2$1$1(CoroutineScope coroutineScope, TooltipStateImpl tooltipStateImpl, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 0;
        this.$$this$coroutineScope = coroutineScope;
        this.$state = tooltipStateImpl;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BasicTooltipKt$handleGestures$2$1$1(int i, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$state = obj;
    }
}
