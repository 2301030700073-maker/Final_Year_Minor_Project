package androidx.compose.foundation.pager;

import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGestureNode;
import androidx.compose.foundation.text.handwriting.StylusHandwritingNode;
import androidx.compose.foundation.text.selection.SelectionGesturesKt$updateSelectionTouchMode$1$1;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.core.view.ViewKt$allViews$1;
import androidx.datastore.core.SimpleActor$offer$2;
import androidx.room.InvalidationTracker$implementation$1;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AwaitKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyLayoutPagerKt$dragDirectionDetector$1 implements PointerInputEventHandler {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $state;

    public /* synthetic */ LazyLayoutPagerKt$dragDirectionDetector$1(int i, Object obj) {
        this.$r8$classId = i;
        this.$state = obj;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
        int i = this.$r8$classId;
        int i2 = 1;
        Continuation continuation2 = null;
        Unit unit = Unit.INSTANCE;
        Object obj = this.$state;
        switch (i) {
            case 0:
                Object coroutineScope = AwaitKt.coroutineScope(new SimpleActor$offer$2(pointerInputScope, (PagerState) obj, continuation2, 10), continuation);
                return coroutineScope == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope : unit;
            case 1:
                Object awaitEachGesture = ScrollableKt.awaitEachGesture(pointerInputScope, new ViewKt$allViews$1(i2, (AndroidEdgeEffectOverscrollEffect) obj, continuation2), continuation);
                return awaitEachGesture == CoroutineSingletons.COROUTINE_SUSPENDED ? awaitEachGesture : unit;
            case 2:
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj;
                Object awaitSelectionGestures = SimpleLayoutKt.awaitSelectionGestures(pointerInputScope, textFieldSelectionManager.mouseSelectionObserver, textFieldSelectionManager.touchSelectionObserver, continuation);
                return awaitSelectionGestures == CoroutineSingletons.COROUTINE_SUSPENDED ? awaitSelectionGestures : unit;
            case 3:
                Object awaitEachGesture2 = ScrollableKt.awaitEachGesture(pointerInputScope, new SelectionGesturesKt$updateSelectionTouchMode$1$1(i2, continuation2, new InvalidationTracker$implementation$1(1, (TextContextMenuGestureNode) obj, TextContextMenuGestureNode.class, "tryShowContextMenu", "tryShowContextMenu-k-4lQ0M(J)V", 0, 3)), continuation);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (awaitEachGesture2 != coroutineSingletons) {
                    awaitEachGesture2 = unit;
                }
                return awaitEachGesture2 == coroutineSingletons ? awaitEachGesture2 : unit;
            case 4:
                Object awaitEachGesture3 = ScrollableKt.awaitEachGesture(pointerInputScope, new BasicTooltipKt$handleGestures$2$1$1(2, (StylusHandwritingNode) obj, continuation2), continuation);
                return awaitEachGesture3 == CoroutineSingletons.COROUTINE_SUSPENDED ? awaitEachGesture3 : unit;
            default:
                Object awaitPointerEventScope = ((SuspendingPointerInputModifierNodeImpl) pointerInputScope).awaitPointerEventScope(new SelectionGesturesKt$updateSelectionTouchMode$1$1(0, continuation2, (Function1) obj), continuation);
                return awaitPointerEventScope == CoroutineSingletons.COROUTINE_SUSPENDED ? awaitPointerEventScope : unit;
        }
    }
}
