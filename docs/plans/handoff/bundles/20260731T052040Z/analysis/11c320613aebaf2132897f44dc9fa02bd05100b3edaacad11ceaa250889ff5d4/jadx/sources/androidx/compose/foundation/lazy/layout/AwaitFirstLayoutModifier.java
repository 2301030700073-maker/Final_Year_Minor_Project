package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.spatial.ThrottledCallbacks;
import androidx.compose.ui.spatial.ThrottledCallbacks.Entry;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CompletableDeferredImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AwaitFirstLayoutModifier extends ModifierNodeElement {
    public Node attachedNode;
    public CompletableDeferredImpl lock;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            Recomposer$$ExternalSyntheticLambda4 recomposer$$ExternalSyntheticLambda4 = new Recomposer$$ExternalSyntheticLambda4(this, AwaitFirstLayoutModifier.this, 16);
            LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(this);
            int i = requireLayoutNode.semanticsId;
            RectManager rectManager = ((AndroidComposeView) LayoutNodeKt.requireOwner(requireLayoutNode)).getRectManager();
            ThrottledCallbacks throttledCallbacks = rectManager.throttledCallbacks;
            throttledCallbacks.getClass();
            MutableIntObjectMap mutableIntObjectMap = throttledCallbacks.rectChangedMap;
            ThrottledCallbacks.Entry entry = throttledCallbacks.new Entry(i, this, recomposer$$ExternalSyntheticLambda4);
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
    public final /* bridge */ /* synthetic */ void update(Modifier.Node node) {
    }

    public final Object waitForFirstLayout(ContinuationImpl continuationImpl) {
        CompletableDeferredImpl completableDeferredImpl = this.lock;
        if (completableDeferredImpl == null) {
            completableDeferredImpl = new CompletableDeferredImpl(true);
            completableDeferredImpl.initParentJob(null);
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
