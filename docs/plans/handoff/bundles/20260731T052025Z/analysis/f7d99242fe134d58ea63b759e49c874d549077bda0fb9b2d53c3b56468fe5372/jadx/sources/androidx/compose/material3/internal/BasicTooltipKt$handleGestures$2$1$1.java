package androidx.compose.material3.internal;

import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.handwriting.StylusHandwritingNode;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import com.fsck.k9.mailstore.LocalFolder;
import de.cketti.changelog.XmlParser;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BasicTooltipKt$handleGestures$2$1$1 extends RestrictedSuspendLambda implements Function2 {
    public Object $$this$coroutineScope;
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object $state;
    public /* synthetic */ Object L$0;
    public Object L$1;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BasicTooltipKt$handleGestures$2$1$1(XmlParser xmlParser, LocalFolder.AnonymousClass12 anonymousClass12, TextDragObserver textDragObserver, Continuation continuation) {
        super(2, continuation);
        this.L$1 = xmlParser;
        this.$$this$coroutineScope = anonymousClass12;
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
                BasicTooltipKt$handleGestures$2$1$1 basicTooltipKt$handleGestures$2$1$12 = new BasicTooltipKt$handleGestures$2$1$1((StylusHandwritingNode) obj2, continuation);
                basicTooltipKt$handleGestures$2$1$12.L$0 = obj;
                return basicTooltipKt$handleGestures$2$1$12;
            default:
                BasicTooltipKt$handleGestures$2$1$1 basicTooltipKt$handleGestures$2$1$13 = new BasicTooltipKt$handleGestures$2$1$1((XmlParser) this.L$1, (LocalFolder.AnonymousClass12) this.$$this$coroutineScope, (TextDragObserver) obj2, continuation);
                basicTooltipKt$handleGestures$2$1$13.L$0 = obj;
                return basicTooltipKt$handleGestures$2$1$13;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine pointerEventHandlerCoroutine = (SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((BasicTooltipKt$handleGestures$2$1$1) create(pointerEventHandlerCoroutine, continuation)).invokeSuspend(unit);
                break;
        }
        return ((BasicTooltipKt$handleGestures$2$1$1) create(pointerEventHandlerCoroutine, continuation)).invokeSuspend(unit);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:247:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:252:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:256:0x03c0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:159:0x01a6 -> B:70:0x01aa). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:197:0x038e -> B:191:0x0391). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0319 -> B:50:0x031d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 974
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BasicTooltipKt$handleGestures$2$1$1(StylusHandwritingNode stylusHandwritingNode, Continuation continuation) {
        super(2, continuation);
        this.$state = stylusHandwritingNode;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BasicTooltipKt$handleGestures$2$1$1(CoroutineScope coroutineScope, TooltipStateImpl tooltipStateImpl, Continuation continuation) {
        super(2, continuation);
        this.$$this$coroutineScope = coroutineScope;
        this.$state = tooltipStateImpl;
    }
}
