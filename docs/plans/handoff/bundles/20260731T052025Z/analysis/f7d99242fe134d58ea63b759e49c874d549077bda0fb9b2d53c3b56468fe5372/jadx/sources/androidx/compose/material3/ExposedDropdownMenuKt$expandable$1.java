package androidx.compose.material3;

import androidx.camera.view.PreviewView;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGestureNode;
import androidx.compose.foundation.text.handwriting.StylusHandwritingNode;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1;
import androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.core.view.ViewKt$allViews$1;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.InvalidationTracker$implementation$1;
import com.fsck.k9.mailstore.LocalFolder;
import com.skydoves.landscapist.ImageLoadKt$ImageLoad$2$1$1;
import de.cketti.changelog.XmlParser;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$LongRef;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.SettingListKt$$ExternalSyntheticLambda0;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;
import org.jetbrains.compose.resources.AsyncCache$getOrLoad$2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExposedDropdownMenuKt$expandable$1 implements PointerInputEventHandler {
    public final /* synthetic */ Object $onExpandedChange;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ExposedDropdownMenuKt$expandable$1(int i, Object obj) {
        this.$r8$classId = i;
        this.$onExpandedChange = obj;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
        int i = this.$r8$classId;
        int i2 = 4;
        int i3 = 1;
        Continuation continuation2 = null;
        Object obj = this.$onExpandedChange;
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (i) {
            case 0:
                Object awaitEachGesture = ScrollableKt.awaitEachGesture(pointerInputScope, new ViewKt$allViews$1((ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2) obj, continuation2, i2), continuation);
                return awaitEachGesture == coroutineSingletons ? awaitEachGesture : unit;
            case 1:
                Object awaitEachGesture2 = ScrollableKt.awaitEachGesture(pointerInputScope, new ViewKt$allViews$1((AndroidEdgeEffectOverscrollEffect) obj, continuation2, i3), continuation);
                return awaitEachGesture2 == coroutineSingletons ? awaitEachGesture2 : unit;
            case 2:
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj;
                LocalFolder.AnonymousClass12 anonymousClass12 = textFieldSelectionManager.mouseSelectionObserver;
                TextFieldSelectionManager$touchSelectionObserver$1 textFieldSelectionManager$touchSelectionObserver$1 = textFieldSelectionManager.touchSelectionObserver;
                SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = (SuspendingPointerInputModifierNodeImpl) pointerInputScope;
                suspendingPointerInputModifierNodeImpl.getClass();
                Object awaitEachGesture3 = ScrollableKt.awaitEachGesture(pointerInputScope, new BasicTooltipKt$handleGestures$2$1$1(new XmlParser(HitTestResultKt.requireLayoutNode(suspendingPointerInputModifierNodeImpl).viewConfiguration), anonymousClass12, textFieldSelectionManager$touchSelectionObserver$1, null), continuation);
                if (awaitEachGesture3 != coroutineSingletons) {
                    awaitEachGesture3 = unit;
                }
                return awaitEachGesture3 == coroutineSingletons ? awaitEachGesture3 : unit;
            case 3:
                Object awaitEachGesture4 = ScrollableKt.awaitEachGesture(pointerInputScope, new ViewKt$allViews$1(new InvalidationTracker$implementation$1(1, (TextContextMenuGestureNode) obj, TextContextMenuGestureNode.class, "tryShowContextMenu", "tryShowContextMenu-k-4lQ0M(J)V", 0, 5), continuation2, 2), continuation);
                if (awaitEachGesture4 != coroutineSingletons) {
                    awaitEachGesture4 = unit;
                }
                return awaitEachGesture4 == coroutineSingletons ? awaitEachGesture4 : unit;
            case 4:
                Object awaitEachGesture5 = ScrollableKt.awaitEachGesture(pointerInputScope, new BasicTooltipKt$handleGestures$2$1$1((StylusHandwritingNode) obj, null), continuation);
                return awaitEachGesture5 == coroutineSingletons ? awaitEachGesture5 : unit;
            case 5:
                Object awaitPointerEventScope = ((SuspendingPointerInputModifierNodeImpl) pointerInputScope).awaitPointerEventScope(new ViewKt$allViews$1((CoreTextFieldKt$$ExternalSyntheticLambda1) obj, continuation2, 3), continuation);
                return awaitPointerEventScope == coroutineSingletons ? awaitPointerEventScope : unit;
            case 6:
                Object coroutineScope = JobKt.coroutineScope(new ImageLoadKt$ImageLoad$2$1$1(pointerInputScope, (TextDragObserver) obj, continuation2, i3), continuation);
                if (coroutineScope != coroutineSingletons) {
                    coroutineScope = unit;
                }
                return coroutineScope == coroutineSingletons ? coroutineScope : unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Object detectTapGestures$default = TapGestureDetectorKt.detectTapGestures$default(pointerInputScope, new AppBarKt$$ExternalSyntheticLambda0(4, (Function0) obj), continuation);
                return detectTapGestures$default == coroutineSingletons ? detectTapGestures$default : unit;
            default:
                PreviewView.AnonymousClass1 anonymousClass1 = new PreviewView.AnonymousClass1(24);
                Ref$LongRef ref$LongRef = new Ref$LongRef();
                DraggableNode draggableNode = (DraggableNode) obj;
                ref$LongRef.element = HitTestResultKt.requireLayoutCoordinates(draggableNode).mo580localToScreenMKHz9U(0L);
                Object coroutineScope2 = JobKt.coroutineScope(new AsyncCache$getOrLoad$2(pointerInputScope, draggableNode, new ThemeSizesKt$$ExternalSyntheticLambda0(draggableNode), new BufferedChannel$$ExternalSyntheticLambda1(18, draggableNode, anonymousClass1), new SegmentedButtonKt$$ExternalSyntheticLambda4(draggableNode, ref$LongRef, anonymousClass1, 20), new ResourceFileSystem$$ExternalSyntheticLambda0(i2, draggableNode), new SettingListKt$$ExternalSyntheticLambda0(anonymousClass1, pointerInputScope, draggableNode, i3), null), continuation);
                return coroutineScope2 == coroutineSingletons ? coroutineScope2 : unit;
        }
    }
}
