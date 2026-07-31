package androidx.room;

import androidx.compose.foundation.FocusableNode;
import androidx.compose.foundation.FocusableNode$onFocusStateChange$1;
import androidx.compose.foundation.FocusedBoundsObserverNode;
import androidx.compose.foundation.NoIndicationInstance;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItem;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.NodeCoordinator;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import coil3.network.NetworkFetcher$fetch$2;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.JobKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.internal.JsonElementMarker;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class RoomDatabase$createConnectionManager$2 extends FunctionReferenceImpl implements Function2 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RoomDatabase$createConnectionManager$2(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, i2, cls, obj, str, str2);
        this.$r8$classId = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        boolean isFocused;
        switch (this.$r8$classId) {
            case 0:
                return AppKt.compatTransactionCoroutineExecute((RoomDatabase) this.receiver, (Function1) obj, (Continuation) obj2);
            case 1:
                FocusStateImpl focusStateImpl = (FocusStateImpl) obj;
                FocusStateImpl focusStateImpl2 = (FocusStateImpl) obj2;
                FocusableNode focusableNode = (FocusableNode) this.receiver;
                if (focusableNode.isAttached && (isFocused = focusStateImpl2.isFocused()) != focusStateImpl.isFocused()) {
                    NetworkFetcher$fetch$2 networkFetcher$fetch$2 = focusableNode.onFocusChange;
                    if (networkFetcher$fetch$2 != null) {
                        networkFetcher$fetch$2.invoke(Boolean.valueOf(isFocused));
                    }
                    NoIndicationInstance noIndicationInstance = FocusedBoundsObserverNode.TraverseKey;
                    if (isFocused) {
                        JobKt.launch$default(focusableNode.getCoroutineScope(), null, null, new FocusableNode$onFocusStateChange$1(focusableNode, null), 3);
                        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                        HitTestResultKt.observeReads(focusableNode, new ComponentRegistry$Builder$$ExternalSyntheticLambda0(ref$ObjectRef, focusableNode, 3));
                        LazyLayoutPinnableItem lazyLayoutPinnableItem = (LazyLayoutPinnableItem) ref$ObjectRef.element;
                        if (lazyLayoutPinnableItem != null) {
                            lazyLayoutPinnableItem.pin();
                        } else {
                            lazyLayoutPinnableItem = null;
                        }
                        focusableNode.pinnedHandle = lazyLayoutPinnableItem;
                        NodeCoordinator nodeCoordinator = focusableNode.globalLayoutCoordinates;
                        if (nodeCoordinator != null && nodeCoordinator.getTail().isAttached && focusableNode.isAttached) {
                            HitTestResultKt.findNearestAncestor(focusableNode, noIndicationInstance);
                        }
                    } else {
                        LazyLayoutPinnableItem lazyLayoutPinnableItem2 = focusableNode.pinnedHandle;
                        if (lazyLayoutPinnableItem2 != null) {
                            lazyLayoutPinnableItem2.release();
                        }
                        focusableNode.pinnedHandle = null;
                        if (focusableNode.isAttached) {
                            HitTestResultKt.findNearestAncestor(focusableNode, noIndicationInstance);
                        }
                    }
                    HitTestResultKt.invalidateSemantics(focusableNode);
                    MutableInteractionSource mutableInteractionSource = focusableNode.interactionSource;
                    if (mutableInteractionSource != null) {
                        FocusInteraction$Focus focusInteraction$Focus = focusableNode.focusedInteraction;
                        if (isFocused) {
                            if (focusInteraction$Focus != null) {
                                focusableNode.emitWithFallback(mutableInteractionSource, new FocusInteraction$Unfocus(focusInteraction$Focus));
                                focusableNode.focusedInteraction = null;
                            }
                            FocusInteraction$Focus focusInteraction$Focus2 = new FocusInteraction$Focus();
                            focusableNode.emitWithFallback(mutableInteractionSource, focusInteraction$Focus2);
                            focusableNode.focusedInteraction = focusInteraction$Focus2;
                        } else if (focusInteraction$Focus != null) {
                            focusableNode.emitWithFallback(mutableInteractionSource, new FocusInteraction$Unfocus(focusInteraction$Focus));
                            focusableNode.focusedInteraction = null;
                        }
                    }
                }
                return Unit.INSTANCE;
            case 2:
                return AppKt.compatTransactionCoroutineExecute((RoomDatabase) this.receiver, (Function1) obj, (Continuation) obj2);
            default:
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
                int intValue = ((Number) obj2).intValue();
                serialDescriptor.getClass();
                JsonElementMarker jsonElementMarker = (JsonElementMarker) this.receiver;
                jsonElementMarker.getClass();
                boolean z = !serialDescriptor.isElementOptional(intValue) && serialDescriptor.getElementDescriptor(intValue).isNullable();
                jsonElementMarker.isUnmarkedNull = z;
                return Boolean.valueOf(z);
        }
    }
}
