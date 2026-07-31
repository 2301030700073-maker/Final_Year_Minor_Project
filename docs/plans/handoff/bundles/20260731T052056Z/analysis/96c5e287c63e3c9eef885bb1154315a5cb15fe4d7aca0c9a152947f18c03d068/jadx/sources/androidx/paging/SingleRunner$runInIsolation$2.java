package androidx.paging;

import android.content.Context;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DefaultScrollableState;
import androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1;
import androidx.compose.foundation.gestures.PressGestureScopeImpl;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode;
import androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.ProduceStateScopeImpl;
import androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.glance.appwidget.AppWidgetId;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Request;
import org.wikipedia.settings.BasePreferenceLoader;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SingleRunner$runInIsolation$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $block;
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SingleRunner$runInIsolation$2(Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.this$0 = obj2;
        this.$block = obj3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0196, code lost:
    
        if (r13.presentPagingDataEvent(r14, r12) != r0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x009a, code lost:
    
        if (r13.presentPagingDataEvent(r14, r12) != r0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0061, code lost:
    
        if (r4.presentNewList(r5, r6, r7, true, r9, r10, r11, r12) == r0) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0081, code lost:
    
        if (kotlinx.coroutines.AwaitKt.yield(r12) == r0) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x017e, code lost:
    
        if (kotlinx.coroutines.AwaitKt.yield(r12) == r0) goto L82;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01df A[LOOP:0: B:38:0x01d9->B:40:0x01df, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$androidx$paging$PagingDataPresenter$collectFrom$2$1$2(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SingleRunner$runInIsolation$2.invokeSuspend$androidx$paging$PagingDataPresenter$collectFrom$2$1$2(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$block;
        switch (i) {
            case 0:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$2 = new SingleRunner$runInIsolation$2((HintHandler) this.this$0, (Function1) obj2, continuation, 0);
                singleRunner$runInIsolation$2.L$0 = obj;
                return singleRunner$runInIsolation$2;
            case 1:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$22 = new SingleRunner$runInIsolation$2((Transition) this.this$0, (MutableState) obj2, continuation, 1);
                singleRunner$runInIsolation$22.L$0 = obj;
                return singleRunner$runInIsolation$22;
            case 2:
                return new SingleRunner$runInIsolation$2(2, (BasePreferenceLoader) obj2, continuation);
            case 3:
                return new SingleRunner$runInIsolation$2((MutableInteractionSourceImpl) this.L$0, (PressInteraction.Cancel) this.this$0, (DisposableHandle) obj2, continuation, 3);
            case 4:
                return new SingleRunner$runInIsolation$2((MutableInteractionSourceImpl) this.L$0, (Interaction) this.this$0, (DisposableHandle) obj2, continuation, 4);
            case 5:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$23 = new SingleRunner$runInIsolation$2((DefaultScrollableState) this.this$0, (Function2) obj2, continuation, 5);
                singleRunner$runInIsolation$23.L$0 = obj;
                return singleRunner$runInIsolation$23;
            case 6:
                return new SingleRunner$runInIsolation$2((DefaultScrollableState) this.L$0, (MutatePriority) this.this$0, (Function2) obj2, continuation, 6);
            case 7:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$24 = new SingleRunner$runInIsolation$2((DragGestureNode$startListeningForEvents$1) this.this$0, (ScrollingLogic) obj2, continuation, 7);
                singleRunner$runInIsolation$24.L$0 = obj;
                return singleRunner$runInIsolation$24;
            case 8:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$25 = new SingleRunner$runInIsolation$2((ScrollingLogic) this.this$0, (Function2) obj2, continuation, 8);
                singleRunner$runInIsolation$25.L$0 = obj;
                return singleRunner$runInIsolation$25;
            case 9:
                return new SingleRunner$runInIsolation$2((TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1.AnonymousClass1) this.L$0, (PressGestureScopeImpl) this.this$0, (PointerInputChange) obj2, continuation, 9);
            case 10:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$26 = new SingleRunner$runInIsolation$2((Job) this.this$0, (Function2) obj2, continuation, 10);
                singleRunner$runInIsolation$26.L$0 = obj;
                return singleRunner$runInIsolation$26;
            case 11:
                return new SingleRunner$runInIsolation$2((LazyLayoutItemAnimation) this.L$0, (FiniteAnimationSpec) this.this$0, (GraphicsLayer) obj2, continuation, 11);
            case 12:
                return new SingleRunner$runInIsolation$2((BringIntoViewResponderNode) this.L$0, (NodeCoordinator) this.this$0, (KTypeImpl$arguments$2) obj2, continuation, 12);
            case IMAGE_VALUE:
                return new SingleRunner$runInIsolation$2((TextContextMenuToolbarHandlerNode) this.this$0, (TextContextMenuProvider) obj2, continuation, 13);
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$27 = new SingleRunner$runInIsolation$2((State) this.this$0, (Animatable) obj2, continuation, 14);
                singleRunner$runInIsolation$27.L$0 = obj;
                return singleRunner$runInIsolation$27;
            case 15:
                return new SingleRunner$runInIsolation$2((StateFlowImpl) this.this$0, (TooltipStateImpl) obj2, continuation, 15);
            case LAZY_VERTICAL_GRID_VALUE:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$28 = new SingleRunner$runInIsolation$2((Recomposer$runRecomposeAndApplyChanges$2) this.this$0, (MonotonicFrameClock) obj2, continuation, 16);
                singleRunner$runInIsolation$28.L$0 = obj;
                return singleRunner$runInIsolation$28;
            case VERTICAL_GRID_ITEM_VALUE:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$29 = new SingleRunner$runInIsolation$2((CoroutineContext) this.this$0, (Flow) obj2, continuation, 17);
                singleRunner$runInIsolation$29.L$0 = obj;
                return singleRunner$runInIsolation$29;
            case RADIO_GROUP_VALUE:
                return new SingleRunner$runInIsolation$2(18, (BufferedChannel) obj2, continuation);
            case RADIO_BUTTON_VALUE:
                return new SingleRunner$runInIsolation$2((ReadingChallengeWidget) this.L$0, (Context) this.this$0, (AppWidgetId) obj2, continuation, 19);
            case RADIO_ROW_VALUE:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$210 = new SingleRunner$runInIsolation$2((Function2) this.this$0, (TimeSource$Companion$$ExternalSyntheticLambda0) obj2, continuation, 20);
                singleRunner$runInIsolation$210.L$0 = obj;
                return singleRunner$runInIsolation$210;
            case RADIO_COLUMN_VALUE:
                return new SingleRunner$runInIsolation$2((CoroutineContext) this.L$0, (ReadonlyStateFlow) this.this$0, (ProduceStateScopeImpl) obj2, continuation, 21);
            case SIZE_BOX_VALUE:
                return new SingleRunner$runInIsolation$2((SeekableTransitionState) this.L$0, (MutableState) this.this$0, (ParcelableSnapshotMutableFloatState) obj2, continuation, 22);
            case 23:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$211 = new SingleRunner$runInIsolation$2((Flow) this.this$0, continuation, (AsyncPagingDataDiffer) obj2);
                singleRunner$runInIsolation$211.L$0 = obj;
                return singleRunner$runInIsolation$211;
            case 24:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$212 = new SingleRunner$runInIsolation$2(24, (Request.Builder) obj2, continuation);
                singleRunner$runInIsolation$212.L$0 = obj;
                return singleRunner$runInIsolation$212;
            case 25:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$213 = new SingleRunner$runInIsolation$2((JobImpl) this.this$0, (FlowExtKt$simpleScan$1) obj2, continuation, 25);
                singleRunner$runInIsolation$213.L$0 = obj;
                return singleRunner$runInIsolation$213;
            case 26:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$214 = new SingleRunner$runInIsolation$2((Function3) this.this$0, (ChannelFlowCollector) obj2, continuation, 26);
                singleRunner$runInIsolation$214.L$0 = obj;
                return singleRunner$runInIsolation$214;
            case 27:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$215 = new SingleRunner$runInIsolation$2((BufferedChannel) this.this$0, (PageFetcherSnapshot) obj2, continuation, 27);
                singleRunner$runInIsolation$215.L$0 = obj;
                return singleRunner$runInIsolation$215;
            case 28:
                return new SingleRunner$runInIsolation$2((PageEvent) this.L$0, (AsyncPagingDataDiffer$presenter$1) this.this$0, (PagingData) obj2, continuation, 28);
            default:
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$216 = new SingleRunner$runInIsolation$2((BufferedChannel) this.this$0, (Function2) obj2, continuation, 29);
                singleRunner$runInIsolation$216.L$0 = obj;
                return singleRunner$runInIsolation$216;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((SingleRunner$runInIsolation$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x020e, code lost:
    
        if (r1.$$delegate_0.collect(r2, r17) == r6) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:?, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x021c, code lost:
    
        if (kotlinx.coroutines.AwaitKt.withContext(r3, r5, r17) == r6) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x034a, code lost:
    
        if (r0.collect(r1, r17) == r2) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:?, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x035a, code lost:
    
        if (kotlinx.coroutines.AwaitKt.withContext(r1, r5, r17) == r2) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x03e4, code lost:
    
        if (kotlinx.coroutines.flow.StateFlowKt.collectLatest(r1, r0, r17) == r3) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0400, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x03d0, code lost:
    
        if (r2.show(r0, r17) == r3) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0494, code lost:
    
        if (r0.invoke(r17) == r3) goto L262;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0487, code lost:
    
        if (r0.showTextContextMenu(r2, r17) == r3) goto L262;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x0580, code lost:
    
        if (r1 == kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED) goto L303;
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x061a, code lost:
    
        if (r2.invoke(r1, r17) == r0) goto L335;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x060b, code lost:
    
        if (r2.join(r17) == r0) goto L335;
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x08e2, code lost:
    
        if (r2.onFinish(r5, r17) != r3) goto L488;
     */
    /* JADX WARN: Code restructure failed: missing block: B:554:0x08bf, code lost:
    
        if (r5 == r3) goto L486;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0120, code lost:
    
        if (r3 == r1) goto L61;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02e0 A[Catch: all -> 0x02b4, TryCatch #2 {all -> 0x02b4, blocks: (B:153:0x02ae, B:155:0x02d8, B:157:0x02e0, B:158:0x02ed, B:165:0x02fd, B:167:0x02ca, B:171:0x0300, B:175:0x0305, B:176:0x0306, B:183:0x02c5, B:160:0x02ee, B:162:0x02f4), top: B:149:0x02a2, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:539:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0136  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v57, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r2v59, types: [kotlinx.coroutines.channels.BufferedChannel] */
    /* JADX WARN: Type inference failed for: r2v60, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v61, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r2v96 */
    /* JADX WARN: Type inference failed for: r2v97 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:144:0x02d4 -> B:131:0x02d8). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 2364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SingleRunner$runInIsolation$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SingleRunner$runInIsolation$2(int i, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$block = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SingleRunner$runInIsolation$2(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$block = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleRunner$runInIsolation$2(Flow flow, Continuation continuation, AsyncPagingDataDiffer asyncPagingDataDiffer) {
        super(2, continuation);
        this.$r8$classId = 23;
        this.this$0 = flow;
        this.$block = asyncPagingDataDiffer;
    }
}
