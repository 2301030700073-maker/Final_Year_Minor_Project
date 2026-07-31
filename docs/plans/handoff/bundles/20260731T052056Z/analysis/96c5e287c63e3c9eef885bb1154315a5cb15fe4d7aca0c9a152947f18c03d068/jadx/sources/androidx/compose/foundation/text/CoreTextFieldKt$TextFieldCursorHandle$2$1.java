package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.ForEachGestureKt$awaitEachGesture$2;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.SelectionManager$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import com.airbnb.lottie.compose.RememberLottieCompositionKt$loadFontsFromAssets$2;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.AwaitKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CoreTextFieldKt$TextFieldCursorHandle$2$1 implements PointerInputEventHandler {
    public final /* synthetic */ Object $manager;
    public final /* synthetic */ Object $observer;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ CoreTextFieldKt$TextFieldCursorHandle$2$1(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.$observer = obj;
        this.$manager = obj2;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Continuation continuation2 = null;
        Object obj = this.$manager;
        Object obj2 = this.$observer;
        switch (i) {
            case 0:
                Object coroutineScope = AwaitKt.coroutineScope(new RememberLottieCompositionKt$loadFontsFromAssets$2(pointerInputScope, (TextDragObserver) obj2, (TextFieldSelectionManager) obj, null), continuation);
                return coroutineScope == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope : unit;
            default:
                Object awaitEachGesture = ScrollableKt.awaitEachGesture(pointerInputScope, new ForEachGestureKt$awaitEachGesture$2((SelectionManager) obj2, (SelectionManager$$ExternalSyntheticLambda1) obj, continuation2, 4), continuation);
                return awaitEachGesture == CoroutineSingletons.COROUTINE_SUSPENDED ? awaitEachGesture : unit;
        }
    }
}
