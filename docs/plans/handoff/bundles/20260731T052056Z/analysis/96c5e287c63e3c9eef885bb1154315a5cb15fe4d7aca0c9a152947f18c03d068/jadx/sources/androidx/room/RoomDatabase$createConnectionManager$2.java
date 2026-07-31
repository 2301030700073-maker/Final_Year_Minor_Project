package androidx.room;

import androidx.compose.foundation.FocusableNode;
import androidx.compose.foundation.FocusedBoundsObserverNode;
import androidx.compose.foundation.GestureNode;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItem;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureResult;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.viewinterop.FocusTargetInteropNode;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.internal.JsonElementMarker;
import okhttp3.internal.http.StatusLine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RoomDatabase$createConnectionManager$2 extends FunctionReferenceImpl implements Function2 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RoomDatabase$createConnectionManager$2(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, i2, cls, obj, str, str2);
        this.$r8$classId = i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        boolean isFocused;
        boolean isFocused2;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        LazyLayoutPinnableItem lazyLayoutPinnableItem = null;
        Object[] objArr = 0;
        int i2 = 0;
        r3 = false;
        boolean z = false;
        i2 = 0;
        Object obj3 = this.receiver;
        switch (i) {
            case 0:
                return DpKt.compatTransactionCoroutineExecute((RoomDatabase) obj3, (Continuation) obj2, (Function1) obj);
            case 1:
                FocusStateImpl focusStateImpl = (FocusStateImpl) obj;
                FocusStateImpl focusStateImpl2 = (FocusStateImpl) obj2;
                FocusableNode focusableNode = (FocusableNode) obj3;
                if (focusableNode.isAttached && (isFocused = focusStateImpl2.isFocused()) != focusStateImpl.isFocused()) {
                    Function1 function1 = focusableNode.onFocusChange;
                    if (function1 != null) {
                        function1.invoke(Boolean.valueOf(isFocused));
                    }
                    GestureNode.TraverseKey traverseKey = FocusedBoundsObserverNode.TraverseKey;
                    if (isFocused) {
                        AwaitKt.launch$default(focusableNode.getCoroutineScope(), null, null, new ThumbNode$onAttach$1(3, focusableNode, objArr == true ? 1 : 0), 3);
                        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                        HitTestResultKt.observeReads(focusableNode, new Recomposer$$ExternalSyntheticLambda6(5, ref$ObjectRef, focusableNode));
                        LazyLayoutPinnableItem lazyLayoutPinnableItem2 = (LazyLayoutPinnableItem) ref$ObjectRef.element;
                        if (lazyLayoutPinnableItem2 != null) {
                            lazyLayoutPinnableItem2.pin();
                        } else {
                            lazyLayoutPinnableItem2 = null;
                        }
                        focusableNode.pinnedHandle = lazyLayoutPinnableItem2;
                        NodeCoordinator nodeCoordinator = focusableNode.globalLayoutCoordinates;
                        if (nodeCoordinator != null && nodeCoordinator.getTail().isAttached && focusableNode.isAttached) {
                            HitTestResultKt.findNearestAncestor(focusableNode, traverseKey);
                        }
                    } else {
                        LazyLayoutPinnableItem lazyLayoutPinnableItem3 = focusableNode.pinnedHandle;
                        if (lazyLayoutPinnableItem3 != null) {
                            lazyLayoutPinnableItem3.release();
                        }
                        focusableNode.pinnedHandle = null;
                        if (focusableNode.isAttached) {
                            HitTestResultKt.findNearestAncestor(focusableNode, traverseKey);
                        }
                    }
                    HitTestResultKt.invalidateSemantics(focusableNode);
                    MutableInteractionSourceImpl mutableInteractionSourceImpl = focusableNode.interactionSource;
                    if (mutableInteractionSourceImpl != null) {
                        FocusInteraction$Focus focusInteraction$Focus = focusableNode.focusedInteraction;
                        if (isFocused) {
                            if (focusInteraction$Focus != null) {
                                focusableNode.emitWithFallback(mutableInteractionSourceImpl, new FocusInteraction$Unfocus(focusInteraction$Focus));
                                focusableNode.focusedInteraction = null;
                            }
                            FocusInteraction$Focus focusInteraction$Focus2 = new FocusInteraction$Focus();
                            focusableNode.emitWithFallback(mutableInteractionSourceImpl, focusInteraction$Focus2);
                            focusableNode.focusedInteraction = focusInteraction$Focus2;
                        } else if (focusInteraction$Focus != null) {
                            focusableNode.emitWithFallback(mutableInteractionSourceImpl, new FocusInteraction$Unfocus(focusInteraction$Focus));
                            focusableNode.focusedInteraction = null;
                        }
                    }
                }
                return unit;
            case 2:
                int intValue = ((Number) obj).intValue();
                int intValue2 = ((Number) obj2).intValue();
                LazyStaggeredGridState lazyStaggeredGridState = (LazyStaggeredGridState) obj3;
                StatusLine statusLine = lazyStaggeredGridState.laneInfo;
                int[] iArr = new int[intValue2];
                if (((LazyStaggeredGridMeasureResult) lazyStaggeredGridState.layoutInfoState.getValue()).spanProvider.isFullSpan(intValue)) {
                    ArraysKt___ArraysKt.fill$default(iArr, intValue, 0, 6);
                } else {
                    statusLine.ensureValidIndex(intValue + intValue2);
                    int lane = statusLine.getLane(intValue);
                    if (lane != -2 && lane != -1) {
                        if (lane < 0) {
                            InlineClassHelperKt.throwIllegalArgumentException("Expected positive lane number, got " + lane + " instead.");
                        }
                        i2 = Math.min(lane, intValue2);
                    }
                    int i3 = i2 - 1;
                    int i4 = intValue;
                    while (true) {
                        if (-1 < i3) {
                            i4 = statusLine.findPreviousItemIndex(i4, i3);
                            iArr[i3] = i4;
                            if (i4 == -1) {
                                ArraysKt___ArraysKt.fill$default(iArr, -1, i3, 2);
                            } else {
                                i3--;
                            }
                        }
                    }
                    iArr[i2] = intValue;
                    for (int i5 = i2 + 1; i5 < intValue2; i5++) {
                        intValue++;
                        int length = statusLine.code + ((int[]) statusLine.protocol).length;
                        while (true) {
                            if (intValue >= length) {
                                intValue = statusLine.code + ((int[]) statusLine.protocol).length;
                            } else {
                                if (statusLine.assignedToLane(intValue, i5)) {
                                    break;
                                }
                                intValue++;
                            }
                        }
                        iArr[i5] = intValue;
                    }
                }
                return iArr;
            case 3:
                FocusStateImpl focusStateImpl3 = (FocusStateImpl) obj;
                FocusStateImpl focusStateImpl4 = (FocusStateImpl) obj2;
                FocusTargetInteropNode focusTargetInteropNode = (FocusTargetInteropNode) obj3;
                if (focusTargetInteropNode.isAttached && (isFocused2 = focusStateImpl4.isFocused()) != focusStateImpl3.isFocused()) {
                    if (isFocused2) {
                        Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                        HitTestResultKt.observeReads(focusTargetInteropNode, new KTypeImpl$arguments$2(9, ref$ObjectRef2, focusTargetInteropNode));
                        LazyLayoutPinnableItem lazyLayoutPinnableItem4 = (LazyLayoutPinnableItem) ref$ObjectRef2.element;
                        if (lazyLayoutPinnableItem4 != null) {
                            lazyLayoutPinnableItem4.pin();
                            lazyLayoutPinnableItem = lazyLayoutPinnableItem4;
                        }
                        focusTargetInteropNode.pinnedHandle = lazyLayoutPinnableItem;
                    } else {
                        LazyLayoutPinnableItem lazyLayoutPinnableItem5 = focusTargetInteropNode.pinnedHandle;
                        if (lazyLayoutPinnableItem5 != null) {
                            lazyLayoutPinnableItem5.release();
                        }
                        focusTargetInteropNode.pinnedHandle = null;
                    }
                }
                return unit;
            case 4:
                return DpKt.compatTransactionCoroutineExecute((RoomDatabase) obj3, (Continuation) obj2, (Function1) obj);
            default:
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
                int intValue3 = ((Number) obj2).intValue();
                serialDescriptor.getClass();
                JsonElementMarker jsonElementMarker = (JsonElementMarker) obj3;
                jsonElementMarker.getClass();
                if (!serialDescriptor.isElementOptional(intValue3) && serialDescriptor.getElementDescriptor(intValue3).isNullable()) {
                    z = true;
                }
                jsonElementMarker.isUnmarkedNull = z;
                return Boolean.valueOf(z);
        }
    }
}
