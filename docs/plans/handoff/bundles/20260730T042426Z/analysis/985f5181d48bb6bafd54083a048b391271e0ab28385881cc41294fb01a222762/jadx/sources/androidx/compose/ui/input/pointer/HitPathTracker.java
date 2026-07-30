package androidx.compose.ui.input.pointer;

import androidx.collection.MutableLongObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HitPathTracker.kt */
/* loaded from: classes.dex */
public final class HitPathTracker {
    private final LayoutCoordinates rootCoordinates;
    private final NodeParent root = new NodeParent();
    private final MutableLongObjectMap hitPointerIdsAndNodes = new MutableLongObjectMap(10);

    public HitPathTracker(LayoutCoordinates layoutCoordinates) {
        this.rootCoordinates = layoutCoordinates;
    }

    /* renamed from: addHitPath-QJqDSyo, reason: not valid java name */
    public final void m1656addHitPathQJqDSyo(long j, List list, boolean z) {
        Object obj;
        NodeParent nodeParent = this.root;
        this.hitPointerIdsAndNodes.clear();
        int size = list.size();
        boolean z2 = true;
        for (int i = 0; i < size; i++) {
            Modifier.Node node = (Modifier.Node) list.get(i);
            if (z2) {
                MutableVector children = nodeParent.getChildren();
                int size2 = children.getSize();
                if (size2 > 0) {
                    Object[] content = children.getContent();
                    int i2 = 0;
                    do {
                        obj = content[i2];
                        if (Intrinsics.areEqual(((Node) obj).getModifierNode(), node)) {
                            break;
                        } else {
                            i2++;
                        }
                    } while (i2 < size2);
                }
                obj = null;
                Node node2 = (Node) obj;
                if (node2 != null) {
                    node2.markIsIn();
                    node2.getPointerIds().m1725add0FcD4WY(j);
                    MutableLongObjectMap mutableLongObjectMap = this.hitPointerIdsAndNodes;
                    Object obj2 = mutableLongObjectMap.get(j);
                    if (obj2 == null) {
                        obj2 = new MutableObjectList(0, 1, null);
                        mutableLongObjectMap.set(j, obj2);
                    }
                    ((MutableObjectList) obj2).add(node2);
                    nodeParent = node2;
                } else {
                    z2 = false;
                }
            }
            Node node3 = new Node(node);
            node3.getPointerIds().m1725add0FcD4WY(j);
            MutableLongObjectMap mutableLongObjectMap2 = this.hitPointerIdsAndNodes;
            Object obj3 = mutableLongObjectMap2.get(j);
            if (obj3 == null) {
                obj3 = new MutableObjectList(0, 1, null);
                mutableLongObjectMap2.set(j, obj3);
            }
            ((MutableObjectList) obj3).add(node3);
            nodeParent.getChildren().add(node3);
            nodeParent = node3;
        }
        if (!z) {
            return;
        }
        MutableLongObjectMap mutableLongObjectMap3 = this.hitPointerIdsAndNodes;
        long[] jArr = mutableLongObjectMap3.keys;
        Object[] objArr = mutableLongObjectMap3.values;
        long[] jArr2 = mutableLongObjectMap3.metadata;
        int length = jArr2.length - 2;
        if (length < 0) {
            return;
        }
        int i3 = 0;
        while (true) {
            long j2 = jArr2[i3];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i4 = 8 - ((~(i3 - length)) >>> 31);
                for (int i5 = 0; i5 < i4; i5++) {
                    if ((255 & j2) < 128) {
                        int i6 = (i3 << 3) + i5;
                        removeInvalidPointerIdsAndChanges(jArr[i6], (MutableObjectList) objArr[i6]);
                    }
                    j2 >>= 8;
                }
                if (i4 != 8) {
                    return;
                }
            }
            if (i3 == length) {
                return;
            } else {
                i3++;
            }
        }
    }

    private final void removeInvalidPointerIdsAndChanges(long j, MutableObjectList mutableObjectList) {
        this.root.removeInvalidPointerIdsAndChanges(j, mutableObjectList);
    }

    public final boolean dispatchChanges(InternalPointerEvent internalPointerEvent, boolean z) {
        if (this.root.buildCache(internalPointerEvent.getChanges(), this.rootCoordinates, internalPointerEvent, z)) {
            return this.root.dispatchFinalEventPass(internalPointerEvent) || this.root.dispatchMainEventPass(internalPointerEvent.getChanges(), this.rootCoordinates, internalPointerEvent, z);
        }
        return false;
    }

    public final void clearPreviouslyHitModifierNodeCache() {
        this.root.clear();
    }

    public final void processCancel() {
        this.root.dispatchCancel();
        clearPreviouslyHitModifierNodeCache();
    }

    public final void removeDetachedPointerInputNodes() {
        this.root.removeDetachedPointerInputModifierNodes();
    }
}
