package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.collection.MutableLongObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1;
import androidx.compose.ui.layout.LayoutCoordinates;
import com.fsck.k9.mailstore.LocalFolder;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HitPathTracker {
    public boolean clearNodeCacheAfterDispatchedEvent;
    public boolean dispatchCancelAfterDispatchedEvent;
    public boolean dispatchingEvent;
    public boolean removeSpecificNodesAfterDispatchedEvent;
    public final LayoutCoordinates rootCoordinates;
    public final MutableObjectList nodesToRemove = new MutableObjectList();
    public final NodeParent root = new NodeParent();
    public final MutableLongObjectMap hitPointerIdsAndNodesForPruningNonMatches = new MutableLongObjectMap(10);

    public HitPathTracker(LayoutCoordinates layoutCoordinates) {
        this.rootCoordinates = layoutCoordinates;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* renamed from: addHitPath-QJqDSyo, reason: not valid java name */
    public final void m561addHitPathQJqDSyo(long j, List list, boolean z) {
        MutableLongObjectMap mutableLongObjectMap;
        long[] jArr;
        long[] jArr2;
        int i;
        Node node;
        Node node2;
        int size = list.size();
        NodeParent nodeParent = this.root;
        NodeParent nodeParent2 = nodeParent;
        boolean z2 = true;
        int i2 = 0;
        while (true) {
            int i3 = 2;
            mutableLongObjectMap = this.hitPointerIdsAndNodesForPruningNonMatches;
            if (i2 >= size) {
                break;
            }
            Modifier.Node node3 = (Modifier.Node) list.get(i2);
            if (node3.isAttached) {
                node3.detachedListener = new FocusTargetNode$invalidateFocus$1(i3, this, node3);
                if (z2) {
                    MutableVector mutableVector = nodeParent2.children;
                    ?? r14 = mutableVector.content;
                    int i4 = mutableVector.size;
                    int i5 = 0;
                    while (true) {
                        if (i5 >= i4) {
                            node2 = 0;
                            break;
                        }
                        node2 = r14[i5];
                        if (Intrinsics.areEqual(((Node) node2).modifierNode, node3)) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                    node = node2;
                    if (node != null) {
                        node.isIn = true;
                        node.pointerIds.add(j);
                        if (z) {
                            Object obj = mutableLongObjectMap.get(j);
                            if (obj == null) {
                                obj = new MutableObjectList();
                                mutableLongObjectMap.set(j, obj);
                            }
                            ((MutableObjectList) obj).add(node);
                        }
                        nodeParent2 = node;
                    } else {
                        z2 = false;
                    }
                }
                node = new Node(node3);
                node.pointerIds.add(j);
                if (z) {
                    Object obj2 = mutableLongObjectMap.get(j);
                    if (obj2 == null) {
                        obj2 = new MutableObjectList();
                        mutableLongObjectMap.set(j, obj2);
                    }
                    ((MutableObjectList) obj2).add(node);
                }
                nodeParent2.children.add(node);
                nodeParent2 = node;
            }
            i2++;
        }
        if (z) {
            long[] jArr3 = mutableLongObjectMap.keys;
            Object[] objArr = mutableLongObjectMap.values;
            long[] jArr4 = mutableLongObjectMap.metadata;
            int length = jArr4.length - 2;
            if (length >= 0) {
                int i6 = 0;
                while (true) {
                    long j2 = jArr4[i6];
                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i7 = 8;
                        int i8 = 8 - ((~(i6 - length)) >>> 31);
                        int i9 = 0;
                        while (i9 < i8) {
                            if ((255 & j2) < 128) {
                                int i10 = (i6 << 3) + i9;
                                long j3 = jArr3[i10];
                                MutableObjectList mutableObjectList = (MutableObjectList) objArr[i10];
                                MutableVector mutableVector2 = nodeParent.children;
                                i = i7;
                                Object[] objArr2 = mutableVector2.content;
                                int i11 = mutableVector2.size;
                                jArr2 = jArr3;
                                for (int i12 = 0; i12 < i11; i12++) {
                                    ((Node) objArr2[i12]).removeInvalidPointerIdsAndChanges(j3, mutableObjectList);
                                }
                            } else {
                                jArr2 = jArr3;
                                i = i7;
                            }
                            j2 >>= i;
                            i9++;
                            i7 = i;
                            jArr3 = jArr2;
                        }
                        jArr = jArr3;
                        if (i8 != i7) {
                            break;
                        }
                    } else {
                        jArr = jArr3;
                    }
                    if (i6 == length) {
                        break;
                    }
                    i6++;
                    jArr3 = jArr;
                }
            }
        }
        mutableLongObjectMap.clear();
    }

    public final boolean dispatchChanges(LocalFolder.AnonymousClass12 anonymousClass12, boolean z) {
        LongSparseArray longSparseArray = (LongSparseArray) anonymousClass12.val$messages;
        LayoutCoordinates layoutCoordinates = this.rootCoordinates;
        NodeParent nodeParent = this.root;
        boolean buildCache = nodeParent.buildCache(longSparseArray, layoutCoordinates, anonymousClass12, z);
        MutableVector mutableVector = nodeParent.children;
        if (!buildCache) {
            return false;
        }
        boolean z2 = true;
        this.dispatchingEvent = true;
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        boolean z3 = false;
        for (int i2 = 0; i2 < i; i2++) {
            z3 = ((Node) objArr[i2]).dispatchMainEventPass(anonymousClass12, z) || z3;
        }
        Object[] objArr2 = mutableVector.content;
        int i3 = mutableVector.size;
        boolean z4 = false;
        for (int i4 = 0; i4 < i3; i4++) {
            z4 = ((Node) objArr2[i4]).dispatchFinalEventPass(anonymousClass12) || z4;
        }
        nodeParent.cleanUpHits(anonymousClass12);
        if (!z4 && !z3) {
            z2 = false;
        }
        this.dispatchingEvent = false;
        if (this.removeSpecificNodesAfterDispatchedEvent) {
            this.removeSpecificNodesAfterDispatchedEvent = false;
            MutableObjectList mutableObjectList = this.nodesToRemove;
            int i5 = mutableObjectList._size;
            for (int i6 = 0; i6 < i5; i6++) {
                removePointerInputModifierNode((Modifier.Node) mutableObjectList.get(i6));
            }
            mutableObjectList.clear();
        }
        if (this.dispatchCancelAfterDispatchedEvent) {
            this.dispatchCancelAfterDispatchedEvent = false;
            processCancel();
        }
        if (this.clearNodeCacheAfterDispatchedEvent) {
            this.clearNodeCacheAfterDispatchedEvent = false;
            nodeParent.children.clear();
        }
        return z2;
    }

    public final void processCancel() {
        if (this.dispatchingEvent) {
            this.dispatchCancelAfterDispatchedEvent = true;
            return;
        }
        NodeParent nodeParent = this.root;
        MutableVector mutableVector = nodeParent.children;
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            ((Node) objArr[i2]).dispatchCancel();
        }
        if (this.clearNodeCacheAfterDispatchedEvent) {
            this.clearNodeCacheAfterDispatchedEvent = true;
        } else {
            nodeParent.children.clear();
        }
    }

    public final void removePointerInputModifierNode(Modifier.Node node) {
        if (this.dispatchingEvent) {
            this.removeSpecificNodesAfterDispatchedEvent = true;
            this.nodesToRemove.add(node);
            return;
        }
        NodeParent nodeParent = this.root;
        MutableObjectList mutableObjectList = nodeParent.removeMatchingPointerInputModifierNodeList;
        mutableObjectList.clear();
        mutableObjectList.add(nodeParent);
        while (mutableObjectList.isNotEmpty()) {
            NodeParent nodeParent2 = (NodeParent) mutableObjectList.removeAt(mutableObjectList._size - 1);
            int i = 0;
            while (true) {
                MutableVector mutableVector = nodeParent2.children;
                if (i < mutableVector.size) {
                    Node node2 = (Node) mutableVector.content[i];
                    if (Intrinsics.areEqual(node2.modifierNode, node)) {
                        nodeParent2.children.remove(node2);
                        node2.dispatchCancel();
                    } else {
                        mutableObjectList.add(node2);
                        i++;
                    }
                }
            }
        }
    }
}
