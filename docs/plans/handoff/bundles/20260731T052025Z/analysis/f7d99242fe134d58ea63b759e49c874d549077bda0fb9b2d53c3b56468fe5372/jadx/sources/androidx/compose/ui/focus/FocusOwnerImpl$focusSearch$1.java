package androidx.compose.ui.focus;

import androidx.camera.view.PreviewView;
import androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.EnterExitState;
import androidx.compose.animation.EnterTransitionImpl;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.animation.Scale;
import androidx.compose.animation.TransitionData;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.draganddrop.AndroidDragAndDropManager;
import androidx.compose.ui.draganddrop.DragAndDropNode;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.viewinterop.ViewFactoryHolder;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FocusOwnerImpl$focusSearch$1 extends Lambda implements Function1 {
    public final /* synthetic */ Object $onFound;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $source;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FocusOwnerImpl$focusSearch$1(Object obj, Object obj2, Object obj3, int i) {
        super(1);
        this.$r8$classId = i;
        this.$source = obj;
        this.this$0 = obj2;
        this.$onFound = obj3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        boolean z = false;
        Object[] objArr = 0;
        TransformOrigin transformOrigin = null;
        transformOrigin = null;
        Object obj2 = this.$onFound;
        Object obj3 = this.this$0;
        Object obj4 = this.$source;
        switch (i) {
            case 0:
                FocusTargetNode focusTargetNode = (FocusTargetNode) obj;
                if (!Intrinsics.areEqual(focusTargetNode, (FocusTargetNode) obj4)) {
                    if (Intrinsics.areEqual(focusTargetNode, ((FocusOwnerImpl) obj3).rootFocusNode)) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Focus search landed at the root.");
                        return null;
                    }
                    z = ((Boolean) ((Function1) obj2).invoke(focusTargetNode)).booleanValue();
                }
                return Boolean.valueOf(z);
            case 1:
                return new AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1((SnapshotStateList) obj4, obj3, (AnimatedContentTransitionScopeImpl) obj2, objArr == true ? 1 : 0);
            case 2:
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) obj;
                State state = (State) obj3;
                State state2 = (State) obj4;
                reusableGraphicsLayerScope.setAlpha(state2 != null ? ((Number) state2.getValue()).floatValue() : 1.0f);
                reusableGraphicsLayerScope.setScaleX(state != null ? ((Number) state.getValue()).floatValue() : 1.0f);
                reusableGraphicsLayerScope.setScaleY(state != null ? ((Number) state.getValue()).floatValue() : 1.0f);
                State state3 = (State) obj2;
                reusableGraphicsLayerScope.m511setTransformOrigin__ExYCQ(state3 != null ? ((TransformOrigin) state3.getValue()).packedValue : TransformOrigin.Center);
                return unit;
            case 3:
                TransitionData transitionData = ((EnterTransitionImpl) obj3).data;
                ExitTransitionImpl exitTransitionImpl = (ExitTransitionImpl) obj2;
                int ordinal = ((EnterExitState) obj).ordinal();
                if (ordinal == 0) {
                    Scale scale = transitionData.scale;
                    if (scale != null) {
                        transformOrigin = new TransformOrigin(scale.transformOrigin);
                    } else {
                        Scale scale2 = exitTransitionImpl.data.scale;
                        if (scale2 != null) {
                            transformOrigin = new TransformOrigin(scale2.transformOrigin);
                        }
                    }
                } else if (ordinal == 1) {
                    transformOrigin = (TransformOrigin) obj4;
                } else {
                    if (ordinal != 2) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    Scale scale3 = exitTransitionImpl.data.scale;
                    if (scale3 != null) {
                        transformOrigin = new TransformOrigin(scale3.transformOrigin);
                    } else {
                        Scale scale4 = transitionData.scale;
                        if (scale4 != null) {
                            transformOrigin = new TransformOrigin(scale4.transformOrigin);
                        }
                    }
                }
                return new TransformOrigin(transformOrigin != null ? transformOrigin.packedValue : TransformOrigin.Center);
            case 4:
                TraversableNode traversableNode = (TraversableNode) obj;
                DragAndDropNode dragAndDropNode = (DragAndDropNode) traversableNode;
                if (!((AndroidDragAndDropManager) ((AndroidComposeView) HitTestResultKt.requireOwner((DragAndDropNode) obj3)).m658getDragAndDropManager()).interestedTargets.contains(dragAndDropNode) || !IntOffsetKt.m757access$containsUv8p0NA(dragAndDropNode, IntRectKt.getPositionInRoot((PreviewView.AnonymousClass1) obj2))) {
                    return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                }
                ((Ref$ObjectRef) obj4).element = traversableNode;
                return TraversableNode$Companion$TraverseDescendantsAction.CancelTraversal;
            default:
                ViewFactoryHolder viewFactoryHolder = (ViewFactoryHolder) obj4;
                LayoutNode layoutNode = (LayoutNode) obj3;
                ViewFactoryHolder viewFactoryHolder2 = (ViewFactoryHolder) obj2;
                Canvas canvas = ((DrawScope) obj).getDrawContext().getCanvas();
                if (viewFactoryHolder.getView().getVisibility() != 8) {
                    viewFactoryHolder.isDrawing = true;
                    Owner owner = layoutNode.owner;
                    AndroidComposeView androidComposeView = owner instanceof AndroidComposeView ? (AndroidComposeView) owner : null;
                    if (androidComposeView != null) {
                        android.graphics.Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvas);
                        androidComposeView.getAndroidViewsHandler$ui().getClass();
                        viewFactoryHolder2.draw(nativeCanvas);
                    }
                    viewFactoryHolder.isDrawing = false;
                }
                return unit;
        }
    }
}
