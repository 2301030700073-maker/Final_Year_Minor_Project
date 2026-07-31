package androidx.datastore.core;

import android.view.View;
import android.view.textclassifier.TextClassifier;
import androidx.activity.compose.ComposePredictiveBackHandler;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.NonTouchScrollingLogic;
import androidx.compose.foundation.gestures.PressGestureScopeImpl;
import androidx.compose.foundation.gestures.ScrollableNode;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode;
import androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material.ripple.AndroidRippleNode;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProduceStateScopeImpl;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.platform.AccessibilityManager;
import androidx.compose.ui.platform.AndroidPlatformTextInputSession;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.platform.InputMethodSession;
import androidx.compose.ui.platform.MotionDurationScaleImpl;
import androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.viewinterop.BringIntoViewNode;
import androidx.compose.ui.window.PopupLayout;
import androidx.paging.FlowExtKt$simpleScan$1;
import coil3.ImageLoader$Builder;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;
import okhttp3.Cache;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SimpleActor$offer$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SimpleActor$offer$2(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.this$0 = obj2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new SimpleActor$offer$2(0, (ImageLoader$Builder) obj2, continuation);
            case 1:
                return new SimpleActor$offer$2(1, (ComposePredictiveBackHandler) obj2, continuation);
            case 2:
                return new SimpleActor$offer$2((MutableInteractionSourceImpl) this.L$0, (HoverInteraction$Enter) obj2, continuation, 2);
            case 3:
                return new SimpleActor$offer$2((MutableInteractionSourceImpl) this.L$0, (HoverInteraction$Exit) obj2, continuation, 3);
            case 4:
                SimpleActor$offer$2 simpleActor$offer$2 = new SimpleActor$offer$2(4, (MouseWheelScrollingLogic) obj2, continuation);
                simpleActor$offer$2.L$0 = obj;
                return simpleActor$offer$2;
            case 5:
                return new SimpleActor$offer$2((NonTouchScrollingLogic) this.L$0, (Function2) obj2, continuation, 5);
            case 6:
                SimpleActor$offer$2 simpleActor$offer$22 = new SimpleActor$offer$2(6, (BufferedChannel) obj2, continuation);
                simpleActor$offer$22.L$0 = obj;
                return simpleActor$offer$22;
            case 7:
                return new SimpleActor$offer$2((DragEvent.DragStopped) this.L$0, (ScrollableNode) obj2, continuation, 7);
            case 8:
                return new SimpleActor$offer$2((Job) this.L$0, (PressGestureScopeImpl) obj2, continuation, 8);
            case 9:
                return new SimpleActor$offer$2((MutableInteractionSourceImpl) this.L$0, (MutableState) obj2, continuation, 9);
            case 10:
                return new SimpleActor$offer$2((PointerInputScope) this.L$0, (PagerState) obj2, continuation, 10);
            case 11:
                return new SimpleActor$offer$2((BringIntoViewResponderNode) this.L$0, (HomeScreenKt$$ExternalSyntheticLambda29) obj2, continuation, 11);
            case 12:
                return new SimpleActor$offer$2((PointerInputScope) this.L$0, (TextFieldSelectionManager) obj2, continuation, 12);
            case IMAGE_VALUE:
                return new SimpleActor$offer$2((AndroidLegacyPlatformTextInputServiceAdapter) this.L$0, (CardView.AnonymousClass1) obj2, continuation, 13);
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return new SimpleActor$offer$2((Job) this.L$0, (CursorAnimationState) obj2, continuation, 14);
            case 15:
                return new SimpleActor$offer$2((LegacyAdaptingPlatformTextInputModifierNode) this.L$0, (FlowExtKt$simpleScan$1) obj2, continuation, 15);
            case LAZY_VERTICAL_GRID_VALUE:
                return new SimpleActor$offer$2((TextClassifier) this.L$0, (Function2) obj2, continuation, 16);
            case VERTICAL_GRID_ITEM_VALUE:
                return new SimpleActor$offer$2((Clipboard) this.L$0, (AnnotatedString) obj2, continuation, 17);
            case RADIO_GROUP_VALUE:
                SimpleActor$offer$2 simpleActor$offer$23 = new SimpleActor$offer$2(18, (AndroidRippleNode) obj2, continuation);
                simpleActor$offer$23.L$0 = obj;
                return simpleActor$offer$23;
            case RADIO_BUTTON_VALUE:
                return new SimpleActor$offer$2((Cache.RealCacheRequest) this.L$0, (AnimationSpec) obj2, continuation, 19);
            case RADIO_ROW_VALUE:
                return new SimpleActor$offer$2((SnackbarHostState.SnackbarDataImpl) this.L$0, (AccessibilityManager) obj2, continuation, 20);
            case RADIO_COLUMN_VALUE:
                return new SimpleActor$offer$2((FocusStateImpl) this.L$0, (TooltipStateImpl) obj2, continuation, 21);
            case SIZE_BOX_VALUE:
                return new SimpleActor$offer$2((Flow) this.L$0, (ProduceStateScopeImpl) obj2, continuation, 22);
            case 23:
                SimpleActor$offer$2 simpleActor$offer$24 = new SimpleActor$offer$2(23, (AndroidPlatformTextInputSession) obj2, continuation);
                simpleActor$offer$24.L$0 = obj;
                return simpleActor$offer$24;
            case 24:
                return new SimpleActor$offer$2((StateFlow) this.L$0, (MotionDurationScaleImpl) obj2, continuation, 24);
            case 25:
                return new SimpleActor$offer$2((Recomposer) this.L$0, (View) obj2, continuation, 25);
            case 26:
                return new SimpleActor$offer$2((ComposeScrollCaptureCallback) this.L$0, (Runnable) obj2, continuation, 26);
            case 27:
                return new SimpleActor$offer$2((BringIntoViewNode) this.L$0, (Rect) obj2, continuation, 27);
            case 28:
                SimpleActor$offer$2 simpleActor$offer$25 = new SimpleActor$offer$2(28, (PopupLayout) obj2, continuation);
                simpleActor$offer$25.L$0 = obj;
                return simpleActor$offer$25;
            default:
                SimpleActor$offer$2 simpleActor$offer$26 = new SimpleActor$offer$2(29, (List) obj2, continuation);
                simpleActor$offer$26.L$0 = obj;
                return simpleActor$offer$26;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 4:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 5:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 6:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 7:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 8:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 9:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 10:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 11:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 12:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case IMAGE_VALUE:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 15:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case LAZY_VERTICAL_GRID_VALUE:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case VERTICAL_GRID_ITEM_VALUE:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case RADIO_GROUP_VALUE:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case RADIO_BUTTON_VALUE:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case RADIO_ROW_VALUE:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case RADIO_COLUMN_VALUE:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case SIZE_BOX_VALUE:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 23:
                return ((SimpleActor$offer$2) create((InputMethodSession) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 24:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 25:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 26:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 27:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 28:
                return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((SimpleActor$offer$2) create((SingleProcessDataStore$readAndInit$api$1) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:263:0x03fa, code lost:
    
        if (kotlinx.coroutines.AwaitKt.delay(500, r4) == r0) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x03cb, code lost:
    
        if (r9 == r0) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0459, code lost:
    
        if (kotlinx.coroutines.flow.SharedFlowImpl.collect$suspendImpl((kotlinx.coroutines.flow.SharedFlowImpl) r1, r2, r4) == r0) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x043d, code lost:
    
        if (androidx.compose.runtime.Updater.getMonotonicFrameClock(r2).withFrameNanos(new androidx.compose.runtime.MonotonicFrameClockKt$withFrameMillis$2(r1, r6), r4) == r0) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x053f, code lost:
    
        if (r1.join(r4) == r0) goto L320;
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x075b, code lost:
    
        if (r3 != r1) goto L437;
     */
    /* JADX WARN: Code restructure failed: missing block: B:501:0x0766, code lost:
    
        if (r2.invoke(r3, r4) == r1) goto L439;
     */
    /* JADX WARN: Code restructure failed: missing block: B:503:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:156:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:434:0x0671  */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.util.concurrent.CancellationException] */
    /* JADX WARN: Type inference failed for: r13v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r1v116 */
    /* JADX WARN: Type inference failed for: r1v117 */
    /* JADX WARN: Type inference failed for: r1v20, types: [int] */
    /* JADX WARN: Type inference failed for: r1v21, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r1v25, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r2v45, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:220:0x03fa -> B:213:0x03fe). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x007c -> B:17:0x0080). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:365:0x0671 -> B:355:0x0635). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:421:0x0766 -> B:416:0x076a). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 1974
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SimpleActor$offer$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SimpleActor$offer$2(int i, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }
}
