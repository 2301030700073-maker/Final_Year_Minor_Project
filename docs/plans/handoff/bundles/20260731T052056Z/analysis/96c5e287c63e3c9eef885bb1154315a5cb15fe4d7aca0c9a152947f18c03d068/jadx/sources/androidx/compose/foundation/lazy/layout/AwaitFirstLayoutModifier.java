package androidx.compose.foundation.lazy.layout;

import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.spatial.ThrottledCallbacks;
import androidx.compose.ui.spatial.ThrottledCallbacks.Entry;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CompletableDeferredImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;", "Node", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AwaitFirstLayoutModifier extends ModifierNodeElement {
    public Node attachedNode;
    public CompletableDeferredImpl lock;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Node extends Modifier.Node {
        public ThrottledCallbacks.Entry handle;

        public Node() {
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void onAttach() {
            AwaitFirstLayoutModifier awaitFirstLayoutModifier = AwaitFirstLayoutModifier.this;
            awaitFirstLayoutModifier.attachedNode = this;
            if (awaitFirstLayoutModifier.lock != null) {
                requestOnAfterLayoutCallback();
            }
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void onDetach() {
            AwaitFirstLayoutModifier awaitFirstLayoutModifier = AwaitFirstLayoutModifier.this;
            if (awaitFirstLayoutModifier.attachedNode == this) {
                awaitFirstLayoutModifier.attachedNode = null;
            }
            ThrottledCallbacks.Entry entry = this.handle;
            if (entry != null) {
                entry.unregister();
            }
            this.handle = null;
        }

        public final void requestOnAfterLayoutCallback() {
            BackHandlerKt$$ExternalSyntheticLambda2 backHandlerKt$$ExternalSyntheticLambda2 = new BackHandlerKt$$ExternalSyntheticLambda2(24, this, AwaitFirstLayoutModifier.this);
            LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(this);
            int i = requireLayoutNode.semanticsId;
            RectManager rectManager = ((AndroidComposeView) LayoutNodeKt.requireOwner(requireLayoutNode)).getRectManager();
            ThrottledCallbacks throttledCallbacks = rectManager.throttledCallbacks;
            throttledCallbacks.getClass();
            MutableIntObjectMap mutableIntObjectMap = throttledCallbacks.rectChangedMap;
            ThrottledCallbacks.Entry entry = throttledCallbacks.new Entry(i, this, backHandlerKt$$ExternalSyntheticLambda2);
            Object obj = mutableIntObjectMap.get(i);
            if (obj == null) {
                mutableIntObjectMap.set(i, entry);
                obj = entry;
            }
            ThrottledCallbacks.Entry entry2 = (ThrottledCallbacks.Entry) obj;
            if (entry2 != entry) {
                while (true) {
                    ThrottledCallbacks.Entry entry3 = entry2.next;
                    if (entry3 == null) {
                        break;
                    } else {
                        entry2 = entry3;
                    }
                }
                entry2.next = entry;
            }
            if (HitTestResultKt.requireLayoutNode(this.node).addedToRectList) {
                rectManager.rects.updateHasCallbacks(i, true);
            }
            rectManager.isDirty = true;
            rectManager.scheduleDebounceCallback();
            this.handle = entry;
        }
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new Node();
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 234;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
    }

    public final Object waitForFirstLayout(ContinuationImpl continuationImpl) {
        CompletableDeferredImpl completableDeferredImpl = this.lock;
        if (completableDeferredImpl == null) {
            completableDeferredImpl = AwaitKt.CompletableDeferred$default();
            this.lock = completableDeferredImpl;
            Node node = this.attachedNode;
            if (node != null && node.isAttached) {
                node.requestOnAfterLayoutCallback();
            }
        }
        Object awaitInternal = completableDeferredImpl.awaitInternal(continuationImpl);
        return awaitInternal == CoroutineSingletons.COROUTINE_SUSPENDED ? awaitInternal : Unit.INSTANCE;
    }
}
