package androidx.compose.ui.node;

import android.content.res.Resources;
import android.graphics.Rect;
import android.os.CancellationSignal;
import android.view.MotionEvent;
import androidx.camera.core.impl.Config;
import androidx.camera.view.PreviewView;
import androidx.collection.IntObjectMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.input.internal.RecordingInputConnection;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draganddrop.DragAndDropNode;
import androidx.compose.ui.draw.ShadowGraphicsLayerElement;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.SimpleGraphicsLayerModifier;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.vector.GroupComponent;
import androidx.compose.ui.graphics.vector.VNode;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.RectRulersImpl;
import androidx.compose.ui.layout.WindowInsetsRulers;
import androidx.compose.ui.layout.WindowInsetsRulersImpl;
import androidx.compose.ui.layout.WindowInsetsRulers_androidKt;
import androidx.compose.ui.layout.WindowWindowInsetsAnimationValues;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.DisposableSaveableStateRegistry;
import androidx.compose.ui.platform.GlobalSnapshotManager;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.platform.InputMethodSession;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.input.NullableInputConnectionWrapperApi21;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$4;
import androidx.compose.ui.viewinterop.BringIntoViewNode;
import androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.navigation.Navigator$$ExternalSyntheticLambda1;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferedChannel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NodeChainKt$fillVector$1 extends Lambda implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $result;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NodeChainKt$fillVector$1(int i, Object obj) {
        super(1);
        this.$r8$classId = i;
        this.$result = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Continuation continuation = null;
        int i2 = 0;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$result;
        switch (i) {
            case 0:
                ((MutableVector) obj2).add((Modifier.Element) obj);
                return Boolean.TRUE;
            case 1:
                return Boolean.valueOf(Intrinsics.areEqual(obj, obj2));
            case 2:
                AnimationVector4D animationVector4D = (AnimationVector4D) obj;
                float f = animationVector4D.v2;
                if (f < 0.0f) {
                    f = 0.0f;
                }
                if (f > 1.0f) {
                    f = 1.0f;
                }
                float f2 = animationVector4D.v3;
                if (f2 < -0.5f) {
                    f2 = -0.5f;
                }
                if (f2 > 0.5f) {
                    f2 = 0.5f;
                }
                float f3 = animationVector4D.v4;
                float f4 = f3 >= -0.5f ? f3 : -0.5f;
                float f5 = f4 <= 0.5f ? f4 : 0.5f;
                float f6 = animationVector4D.v1;
                float f7 = f6 >= 0.0f ? f6 : 0.0f;
                return new Color(Color.m480convertvNxB06k(ColorKt.Color(f, f2, f5, f7 <= 1.0f ? f7 : 1.0f, ColorSpaces.Oklab), (ColorSpace) obj2));
            case 3:
                return Boolean.valueOf(!Intrinsics.areEqual(obj, ((Transition) obj2).targetState$delegate.getValue()));
            case 4:
                ((ReusableGraphicsLayerScope) obj).setAlpha(((Number) ((State) obj2).getValue()).floatValue());
                return unit;
            case 5:
                DragAndDropNode dragAndDropNode = (DragAndDropNode) obj;
                if (!dragAndDropNode.node.isAttached) {
                    return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
                }
                DragAndDropNode dragAndDropNode2 = dragAndDropNode.thisDragAndDropTarget;
                TraversableNode$Companion$TraverseDescendantsAction traversableNode$Companion$TraverseDescendantsAction = TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                if (dragAndDropNode2 != null) {
                    NodeChainKt$fillVector$1 nodeChainKt$fillVector$1 = new NodeChainKt$fillVector$1(5, (PreviewView.AnonymousClass1) obj2);
                    if (nodeChainKt$fillVector$1.invoke(dragAndDropNode2) == traversableNode$Companion$TraverseDescendantsAction) {
                        HitTestResultKt.traverseDescendants(dragAndDropNode2, nodeChainKt$fillVector$1);
                    }
                }
                dragAndDropNode.thisDragAndDropTarget = null;
                dragAndDropNode.lastChildDragAndDropModifierNode = null;
                return traversableNode$Companion$TraverseDescendantsAction;
            case 6:
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                ((Navigator$$ExternalSyntheticLambda1) obj2).invoke(layoutNodeDrawScope);
                layoutNodeDrawScope.drawContent();
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) obj;
                ShadowGraphicsLayerElement shadowGraphicsLayerElement = (ShadowGraphicsLayerElement) obj2;
                reusableGraphicsLayerScope.setShadowElevation(reusableGraphicsLayerScope.graphicsDensity.getDensity() * 3.0f);
                reusableGraphicsLayerScope.setShape(shadowGraphicsLayerElement.shape);
                reusableGraphicsLayerScope.setClip(shadowGraphicsLayerElement.clip);
                reusableGraphicsLayerScope.m509setAmbientShadowColor8_81llA(shadowGraphicsLayerElement.ambientColor);
                reusableGraphicsLayerScope.m510setSpotShadowColor8_81llA(shadowGraphicsLayerElement.spotColor);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ReusableGraphicsLayerScope reusableGraphicsLayerScope2 = (ReusableGraphicsLayerScope) obj;
                SimpleGraphicsLayerModifier simpleGraphicsLayerModifier = (SimpleGraphicsLayerModifier) obj2;
                reusableGraphicsLayerScope2.setScaleX(simpleGraphicsLayerModifier.scaleX);
                reusableGraphicsLayerScope2.setScaleY(simpleGraphicsLayerModifier.scaleY);
                reusableGraphicsLayerScope2.setAlpha(simpleGraphicsLayerModifier.alpha);
                reusableGraphicsLayerScope2.setTranslationY(0.0f);
                reusableGraphicsLayerScope2.setShadowElevation(simpleGraphicsLayerModifier.shadowElevation);
                float f8 = simpleGraphicsLayerModifier.rotationZ;
                if (reusableGraphicsLayerScope2.rotationZ != f8) {
                    reusableGraphicsLayerScope2.mutatedFields |= 1024;
                    reusableGraphicsLayerScope2.rotationZ = f8;
                }
                float f9 = simpleGraphicsLayerModifier.cameraDistance;
                if (reusableGraphicsLayerScope2.cameraDistance != f9) {
                    reusableGraphicsLayerScope2.mutatedFields |= 2048;
                    reusableGraphicsLayerScope2.cameraDistance = f9;
                }
                reusableGraphicsLayerScope2.m511setTransformOrigin__ExYCQ(simpleGraphicsLayerModifier.transformOrigin);
                reusableGraphicsLayerScope2.setShape(simpleGraphicsLayerModifier.shape);
                reusableGraphicsLayerScope2.setClip(simpleGraphicsLayerModifier.clip);
                reusableGraphicsLayerScope2.m509setAmbientShadowColor8_81llA(simpleGraphicsLayerModifier.ambientShadowColor);
                reusableGraphicsLayerScope2.m510setSpotShadowColor8_81llA(simpleGraphicsLayerModifier.spotShadowColor);
                int i3 = simpleGraphicsLayerModifier.blendMode;
                if (reusableGraphicsLayerScope2.blendMode != i3) {
                    reusableGraphicsLayerScope2.mutatedFields |= 524288;
                    reusableGraphicsLayerScope2.blendMode = i3;
                }
                return unit;
            case 9:
                DrawScope drawScope = (DrawScope) obj;
                GraphicsLayer graphicsLayer = (GraphicsLayer) obj2;
                AndroidPath androidPath = graphicsLayer.outlinePath;
                if (graphicsLayer.usePathForClip && graphicsLayer.clip && androidPath != null) {
                    MenuHostHelper drawContext = drawScope.getDrawContext();
                    long m795getSizeNHjbRc = drawContext.m795getSizeNHjbRc();
                    drawContext.getCanvas().save();
                    try {
                        ((MenuHostHelper) ((PreviewView.AnonymousClass1) drawContext.mOnInvalidateMenuCallback).this$0).getCanvas().mo453clipPathmtrdDE(androidPath);
                        graphicsLayer.drawWithChildTracking(drawScope);
                    } finally {
                        Config.CC.m(drawContext, m795getSizeNHjbRc);
                    }
                } else {
                    graphicsLayer.drawWithChildTracking(drawScope);
                }
                return unit;
            case 10:
                VNode vNode = (VNode) obj;
                GroupComponent groupComponent = (GroupComponent) obj2;
                groupComponent.markTintForVNode(vNode);
                Function1 function1 = groupComponent.invalidateListener;
                if (function1 != null) {
                    function1.invoke(vNode);
                }
                return unit;
            case 11:
                ((AndroidViewHolder$layoutNode$1$4) ((PointerInteropFilter) obj2).getOnTouchEvent()).invoke((MotionEvent) obj);
                return unit;
            case BasicTextKt.ShiftMeta /* 12 */:
                Throwable th = (Throwable) obj;
                SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine pointerEventHandlerCoroutine = (SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj2;
                CancellableContinuationImpl cancellableContinuationImpl = pointerEventHandlerCoroutine.pointerAwaiter;
                if (cancellableContinuationImpl != null) {
                    cancellableContinuationImpl.cancel(th);
                }
                pointerEventHandlerCoroutine.pointerAwaiter = null;
                return unit;
            case 13:
                AlignmentLinesOwner alignmentLinesOwner = (AlignmentLinesOwner) obj;
                LookaheadAlignmentLines lookaheadAlignmentLines = (LookaheadAlignmentLines) obj2;
                if (alignmentLinesOwner.getPlaceOrder() != Integer.MAX_VALUE) {
                    if (alignmentLinesOwner.getAlignmentLines().dirty) {
                        alignmentLinesOwner.layoutChildren();
                    }
                    for (Map.Entry entry : alignmentLinesOwner.getAlignmentLines().alignmentLineMap.entrySet()) {
                        LookaheadAlignmentLines.access$addAlignmentLine(lookaheadAlignmentLines, (AlignmentLine) entry.getKey(), ((Number) entry.getValue()).intValue(), alignmentLinesOwner.getInnerCoordinator());
                    }
                    NodeCoordinator nodeCoordinator = alignmentLinesOwner.getInnerCoordinator().wrappedBy;
                    nodeCoordinator.getClass();
                    while (!nodeCoordinator.equals(lookaheadAlignmentLines.alignmentLinesOwner.getInnerCoordinator())) {
                        for (AlignmentLine alignmentLine : lookaheadAlignmentLines.getAlignmentLinesMap(nodeCoordinator).keySet()) {
                            LookaheadAlignmentLines.access$addAlignmentLine(lookaheadAlignmentLines, alignmentLine, lookaheadAlignmentLines.getPositionFor(nodeCoordinator, alignmentLine), nodeCoordinator);
                        }
                        nodeCoordinator = nodeCoordinator.wrappedBy;
                        nodeCoordinator.getClass();
                    }
                }
                return unit;
            case 14:
                return Boolean.valueOf(((FocusTargetNode) obj).m420requestFocus3ESFkO8(((FocusDirection) obj2).value));
            case OffsetKt.Horizontal /* 15 */:
                LookaheadCapablePlaceable.ResettableRulerScope resettableRulerScope = (LookaheadCapablePlaceable.ResettableRulerScope) obj;
                AndroidComposeView androidComposeView = AndroidComposeView.this;
                if (androidComposeView.getInsetsListener().generation.getIntValue() > 0) {
                    MutableIntObjectMap mutableIntObjectMap = WindowInsetsRulers_androidKt.WindowInsetsTypeMap;
                    resettableRulerScope.coordinatesAccessed = true;
                    LookaheadCapablePlaceable lookaheadCapablePlaceable = LookaheadCapablePlaceable.this;
                    LayoutCoordinates coordinates = lookaheadCapablePlaceable.getCoordinates();
                    if (IntOffset.m752equalsimpl0(resettableRulerScope.positionOnScreen, 9223372034707292159L)) {
                        resettableRulerScope.positionOnScreen = IntOffsetKt.m760roundk4lQ0M(coordinates.mo580localToScreenMKHz9U(0L));
                        resettableRulerScope.size = coordinates.mo576getSizeYbymL2g();
                    }
                    lookaheadCapablePlaceable.getLayoutNode().layoutDelegate.onCoordinatesUsed();
                    long mo576getSizeYbymL2g = coordinates.mo576getSizeYbymL2g();
                    MutableScatterMap mutableScatterMap = androidComposeView.getInsetsListener().insetsValues;
                    int i4 = (int) (mo576getSizeYbymL2g >> 32);
                    int i5 = (int) (mo576getSizeYbymL2g & 4294967295L);
                    for (WindowInsetsRulers windowInsetsRulers : WindowInsetsRulers_androidKt.AnimatableInsetsRulers) {
                        Object obj3 = mutableScatterMap.get(windowInsetsRulers);
                        obj3.getClass();
                        WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = (WindowWindowInsetsAnimationValues) obj3;
                        WindowInsetsRulers_androidKt.m597provideInsetsValuescytEWk0(resettableRulerScope, ((WindowInsetsRulersImpl) windowInsetsRulers).current, windowWindowInsetsAnimationValues.current, i4, i5);
                        if (((Boolean) windowWindowInsetsAnimationValues.isAnimating$delegate.getValue()).booleanValue()) {
                            WindowInsetsRulers_androidKt.m597provideInsetsValuescytEWk0(resettableRulerScope, windowWindowInsetsAnimationValues.source, windowWindowInsetsAnimationValues.sourceValueInsets, i4, i5);
                            WindowInsetsRulers_androidKt.m597provideInsetsValuescytEWk0(resettableRulerScope, windowWindowInsetsAnimationValues.target, windowWindowInsetsAnimationValues.targetValueInsets, i4, i5);
                        }
                        WindowInsetsRulers_androidKt.m597provideInsetsValuescytEWk0(resettableRulerScope, ((WindowInsetsRulersImpl) windowInsetsRulers).maximum, windowWindowInsetsAnimationValues.maximum, i4, i5);
                    }
                    MutableObjectList mutableObjectList = androidComposeView.getInsetsListener().displayCutouts;
                    if (mutableObjectList.isNotEmpty()) {
                        SnapshotStateList snapshotStateList = androidComposeView.getInsetsListener().displayCutoutRulers;
                        Object[] objArr = mutableObjectList.content;
                        int i6 = mutableObjectList._size;
                        while (i2 < i6) {
                            MutableState mutableState = (MutableState) objArr[i2];
                            RectRulersImpl rectRulersImpl = (RectRulersImpl) snapshotStateList.get(i2);
                            Rect rect = (Rect) mutableState.getValue();
                            resettableRulerScope.provides(rectRulersImpl.getLeft(), rect.left);
                            resettableRulerScope.provides(rectRulersImpl.getTop(), rect.top);
                            resettableRulerScope.provides(rectRulersImpl.getRight(), rect.right);
                            resettableRulerScope.provides(rectRulersImpl.getBottom(), rect.bottom);
                            i2++;
                        }
                    }
                }
                return unit;
            case 16:
                return Boolean.valueOf(((IntObjectMap) obj2).containsKey(((SemanticsNode) obj).id));
            case 17:
                return Boolean.valueOf(TestTagKt.access$isScreenReaderFocusable((SemanticsNode) obj, (Resources) obj2));
            case 18:
                return new AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1(12, (DisposableSaveableStateRegistry) obj2);
            case 19:
                if (GlobalSnapshotManager.sent.compareAndSet(false, true)) {
                    ((BufferedChannel) obj2).mo1016trySendJP2dKIU(unit);
                }
                return unit;
            case 20:
                DrawScope drawScope2 = (DrawScope) obj;
                Canvas canvas = drawScope2.getDrawContext().getCanvas();
                Function2 function2 = ((GraphicsLayerOwnerLayer) obj2).drawBlock;
                if (function2 != null) {
                    function2.invoke(canvas, (GraphicsLayer) drawScope2.getDrawContext().mMenuProviders);
                }
                return unit;
            case 21:
                NullableInputConnectionWrapperApi21 nullableInputConnectionWrapperApi21 = (NullableInputConnectionWrapperApi21) obj;
                RecordingInputConnection recordingInputConnection = nullableInputConnectionWrapperApi21.delegate;
                if (recordingInputConnection != null) {
                    nullableInputConnectionWrapperApi21.closeDelegate(recordingInputConnection);
                    nullableInputConnectionWrapperApi21.delegate = null;
                }
                InputMethodSession inputMethodSession = (InputMethodSession) obj2;
                MutableVector mutableVector = inputMethodSession.connections;
                Object[] objArr2 = mutableVector.content;
                int i7 = mutableVector.size;
                while (true) {
                    if (i2 >= i7) {
                        i2 = -1;
                    } else if (!Intrinsics.areEqual((WeakReference) objArr2[i2], nullableInputConnectionWrapperApi21)) {
                        i2++;
                    }
                }
                if (i2 >= 0) {
                    mutableVector.removeAt(i2);
                }
                if (mutableVector.size == 0) {
                    inputMethodSession.onAllConnectionsClosed.invoke();
                }
                return unit;
            case 22:
                if (((Throwable) obj) != null) {
                    ((CancellationSignal) obj2).cancel();
                }
                return unit;
            case 23:
                SemanticsPropertiesKt.m674setRolekuIjeqM((SemanticsPropertyReceiver) obj, ((Role) obj2).value);
                return unit;
            case 24:
                SemanticsPropertiesKt.setContentDescription((SemanticsPropertyReceiver) obj, (String) obj2);
                return unit;
            case 25:
                ((List) obj).add((Float) ((LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1) obj2).invoke());
                return true;
            case 26:
                ((LayoutNode) obj2).setDensity((Density) obj);
                return unit;
            case 27:
                androidx.compose.ui.geometry.Rect rect2 = (androidx.compose.ui.geometry.Rect) obj;
                BringIntoViewNode bringIntoViewNode = (BringIntoViewNode) obj2;
                if (bringIntoViewNode.isAttached) {
                    JobKt.launch$default(bringIntoViewNode.getCoroutineScope(), null, null, new BlockRunner$maybeRun$1(bringIntoViewNode, rect2, continuation, 4), 3);
                }
                return unit;
            default:
                ((ListenableFuture) obj2).cancel(false);
                return unit;
        }
    }
}
