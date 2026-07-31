package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.recyclerview.widget.RecyclerView;
import com.caverock.androidsvg.CSSParser;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;
import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Node extends NodeParent {
    public NodeCoordinator coordinates;
    public boolean hasExited;
    public boolean isIn;
    public final Modifier.Node modifierNode;
    public PointerEvent pointerEvent;
    public final PriorityQueue pointerIds;
    public final LongSparseArray relevantChanges;
    public boolean wasIn;

    public Node(Modifier.Node node) {
        this.modifierNode = node;
        PriorityQueue priorityQueue = new PriorityQueue((char) 0, 5);
        priorityQueue.array = new long[2];
        this.pointerIds = priorityQueue;
        this.relevantChanges = new LongSparseArray(2);
        this.isIn = true;
        this.hasExited = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v40, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v41, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v42 */
    /* JADX WARN: Type inference failed for: r5v43 */
    /* JADX WARN: Type inference failed for: r5v44 */
    /* JADX WARN: Type inference failed for: r5v45 */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v47 */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [int] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v20, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    public final boolean buildCache(LongSparseArray longSparseArray, LayoutCoordinates layoutCoordinates, CSSParser cSSParser, boolean z) {
        PriorityQueue priorityQueue;
        LongSparseArray longSparseArray2;
        Object obj;
        boolean z2;
        boolean z3;
        PointerEvent pointerEvent;
        boolean z4;
        int i;
        int i2;
        boolean z5;
        int i3;
        boolean z6;
        int i4;
        int i5;
        PointerInputChange pointerInputChange;
        LayoutCoordinates layoutCoordinates2 = layoutCoordinates;
        boolean buildCache = super.buildCache(longSparseArray, layoutCoordinates, cSSParser, z);
        DelegatingNode delegatingNode = this.modifierNode;
        boolean z7 = true;
        if (delegatingNode.isAttached) {
            ?? r8 = 0;
            while (delegatingNode != 0) {
                if (delegatingNode instanceof PointerInputModifierNode) {
                    this.coordinates = HitTestResultKt.m547requireCoordinator64DMado((PointerInputModifierNode) delegatingNode, 16);
                } else if ((delegatingNode.kindSet & 16) != 0 && (delegatingNode instanceof DelegatingNode)) {
                    Modifier.Node node = delegatingNode.delegate;
                    int i6 = 0;
                    delegatingNode = delegatingNode;
                    r8 = r8;
                    while (node != null) {
                        if ((node.kindSet & 16) != 0) {
                            i6++;
                            r8 = r8;
                            if (i6 == 1) {
                                delegatingNode = node;
                            } else {
                                if (r8 == 0) {
                                    r8 = new MutableVector(new Modifier.Node[16]);
                                }
                                if (delegatingNode != 0) {
                                    r8.add(delegatingNode);
                                    delegatingNode = 0;
                                }
                                r8.add(node);
                            }
                        }
                        node = node.child;
                        delegatingNode = delegatingNode;
                        r8 = r8;
                    }
                    if (i6 == 1) {
                    }
                }
                delegatingNode = HitTestResultKt.pop(r8);
            }
            if (this.coordinates != null) {
                int size = longSparseArray.size();
                int i7 = 0;
                while (true) {
                    priorityQueue = this.pointerIds;
                    longSparseArray2 = this.relevantChanges;
                    if (i7 >= size) {
                        break;
                    }
                    long keyAt = longSparseArray.keyAt(i7);
                    PointerInputChange pointerInputChange2 = (PointerInputChange) longSparseArray.valueAt(i7);
                    if (priorityQueue.contains(keyAt)) {
                        boolean z8 = z7;
                        long j = pointerInputChange2.previousPosition;
                        List list = pointerInputChange2._historical;
                        long j2 = pointerInputChange2.position;
                        if ((((j & 9223372034707292159L) + 36028792732385279L) & (-9223372034707292160L)) == 0 && (((j2 & 9223372034707292159L) + 36028792732385279L) & (-9223372034707292160L)) == 0) {
                            z6 = z8;
                            List list2 = EmptyList.INSTANCE;
                            z5 = buildCache;
                            ArrayList arrayList = new ArrayList((list == null ? list2 : list).size());
                            List list3 = list == null ? list2 : list;
                            i3 = size;
                            int size2 = list3.size();
                            i4 = i7;
                            int i8 = 0;
                            while (i8 < size2) {
                                List list4 = list3;
                                HistoricalChange historicalChange = (HistoricalChange) list3.get(i8);
                                LongSparseArray longSparseArray3 = longSparseArray2;
                                long j3 = keyAt;
                                long j4 = historicalChange.position;
                                if ((((j4 & 9223372034707292159L) + 36028792732385279L) & (-9223372034707292160L)) == 0) {
                                    pointerInputChange = pointerInputChange2;
                                    long j5 = historicalChange.uptimeMillis;
                                    i5 = size2;
                                    NodeCoordinator nodeCoordinator = this.coordinates;
                                    nodeCoordinator.getClass();
                                    arrayList.add(new HistoricalChange(j5, nodeCoordinator.mo519localPositionOfS_NoaFU(layoutCoordinates2, j4), historicalChange.scaleFactor, historicalChange.panOffset, historicalChange.originalEventPosition));
                                } else {
                                    i5 = size2;
                                    pointerInputChange = pointerInputChange2;
                                }
                                i8++;
                                size2 = i5;
                                list3 = list4;
                                longSparseArray2 = longSparseArray3;
                                keyAt = j3;
                                pointerInputChange2 = pointerInputChange;
                            }
                            LongSparseArray longSparseArray4 = longSparseArray2;
                            long j6 = keyAt;
                            NodeCoordinator nodeCoordinator2 = this.coordinates;
                            nodeCoordinator2.getClass();
                            long mo519localPositionOfS_NoaFU = nodeCoordinator2.mo519localPositionOfS_NoaFU(layoutCoordinates2, j);
                            NodeCoordinator nodeCoordinator3 = this.coordinates;
                            nodeCoordinator3.getClass();
                            PointerInputChange pointerInputChange3 = new PointerInputChange(pointerInputChange2.id, pointerInputChange2.uptimeMillis, nodeCoordinator3.mo519localPositionOfS_NoaFU(layoutCoordinates2, j2), pointerInputChange2.pressed, pointerInputChange2.pressure, pointerInputChange2.previousUptimeMillis, mo519localPositionOfS_NoaFU, pointerInputChange2.previousPressed, pointerInputChange2.type, arrayList, pointerInputChange2.scrollDelta, pointerInputChange2.scaleFactor, pointerInputChange2.panOffset, pointerInputChange2.originalEventPosition);
                            PointerInputChange pointerInputChange4 = pointerInputChange2.consumedDelegate;
                            if (pointerInputChange4 == null) {
                                pointerInputChange4 = pointerInputChange2;
                            }
                            pointerInputChange3.consumedDelegate = pointerInputChange4;
                            PointerInputChange pointerInputChange5 = pointerInputChange2.consumedDelegate;
                            if (pointerInputChange5 != null) {
                                pointerInputChange2 = pointerInputChange5;
                            }
                            pointerInputChange3.consumedDelegate = pointerInputChange2;
                            longSparseArray4.put(j6, pointerInputChange3);
                        } else {
                            z5 = buildCache;
                            i3 = size;
                            i4 = i7;
                            z6 = z8;
                        }
                    } else {
                        z5 = buildCache;
                        i3 = size;
                        z6 = z7;
                        i4 = i7;
                    }
                    i7 = i4 + 1;
                    layoutCoordinates2 = layoutCoordinates;
                    size = i3;
                    z7 = z6;
                    buildCache = z5;
                }
                boolean z9 = buildCache;
                boolean z10 = z7;
                if (longSparseArray2.isEmpty()) {
                    priorityQueue.size = 0;
                    this.children.clear();
                    return z10;
                }
                int i9 = priorityQueue.size;
                while (true) {
                    i9--;
                    if (-1 >= i9) {
                        break;
                    }
                    if (longSparseArray.indexOfKey(((long[]) priorityQueue.array)[i9]) < 0 && i9 < (i2 = priorityQueue.size)) {
                        int i10 = i2 - 1;
                        int i11 = i9;
                        while (i11 < i10) {
                            long[] jArr = (long[]) priorityQueue.array;
                            int i12 = i11 + 1;
                            jArr[i11] = jArr[i12];
                            i11 = i12;
                        }
                        priorityQueue.size--;
                    }
                }
                ArrayList arrayList2 = new ArrayList(longSparseArray2.size());
                int size3 = longSparseArray2.size();
                for (int i13 = 0; i13 < size3; i13++) {
                    arrayList2.add(longSparseArray2.valueAt(i13));
                }
                PointerEvent pointerEvent2 = new PointerEvent(arrayList2, cSSParser);
                int size4 = arrayList2.size();
                int i14 = 0;
                while (true) {
                    if (i14 >= size4) {
                        obj = null;
                        break;
                    }
                    obj = arrayList2.get(i14);
                    if (cSSParser.m795activeHoverEvent0FcD4WY(((PointerInputChange) obj).id)) {
                        break;
                    }
                    i14++;
                }
                PointerInputChange pointerInputChange6 = (PointerInputChange) obj;
                if (pointerInputChange6 != null) {
                    boolean z11 = pointerInputChange6.pressed;
                    if (z) {
                        z2 = false;
                        z4 = this.isIn;
                        if (!z4 && (z11 || pointerInputChange6.previousPressed)) {
                            NodeCoordinator nodeCoordinator4 = this.coordinates;
                            nodeCoordinator4.getClass();
                            long j7 = nodeCoordinator4.measuredSize;
                            long j8 = pointerInputChange6.position;
                            float intBitsToFloat = Float.intBitsToFloat((int) (j8 >> 32));
                            float intBitsToFloat2 = Float.intBitsToFloat((int) (j8 & 4294967295L));
                            int i15 = (int) (j7 >> 32);
                            z4 = !((intBitsToFloat2 > ((float) ((int) (j7 & 4294967295L))) ? z10 : false) | (intBitsToFloat > ((float) i15) ? z10 : false) | (intBitsToFloat < RecyclerView.DECELERATION_RATE ? z10 : false) | (intBitsToFloat2 < RecyclerView.DECELERATION_RATE ? z10 : false));
                            this.isIn = z4;
                        }
                    } else {
                        z2 = false;
                        this.isIn = false;
                        z4 = false;
                    }
                    boolean z12 = this.wasIn;
                    if (z4 == z12 || !((i = pointerEvent2.type) == 3 || i == 4 || i == 5)) {
                        int i16 = pointerEvent2.type;
                        if (i16 == 4 && z12 && !this.hasExited) {
                            pointerEvent2.type = 3;
                        } else if (i16 == 5 && z4 && z11) {
                            pointerEvent2.type = 3;
                        }
                    } else {
                        pointerEvent2.type = z4 ? 4 : 5;
                    }
                } else {
                    z2 = false;
                }
                if (!z9 && pointerEvent2.type == 3 && (pointerEvent = this.pointerEvent) != null) {
                    ?? r1 = pointerEvent.changes;
                    int size5 = r1.size();
                    ?? r5 = pointerEvent2.changes;
                    if (size5 == r5.size()) {
                        int size6 = r5.size();
                        for (?? r6 = z2; r6 < size6; r6++) {
                            if (Offset.m383equalsimpl0(((PointerInputChange) r1.get(r6)).position, ((PointerInputChange) r5.get(r6)).position)) {
                            }
                        }
                        z3 = z2;
                        this.pointerEvent = pointerEvent2;
                        return z3;
                    }
                }
                z3 = z10;
                this.pointerEvent = pointerEvent2;
                return z3;
            }
        }
        return true;
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public final void cleanUpHits(CSSParser cSSParser) {
        super.cleanUpHits(cSSParser);
        PointerEvent pointerEvent = this.pointerEvent;
        if (pointerEvent == null) {
            return;
        }
        this.wasIn = this.isIn;
        List list = pointerEvent.changes;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            PointerInputChange pointerInputChange = (PointerInputChange) list.get(i);
            boolean z = pointerInputChange.pressed;
            long j = pointerInputChange.id;
            boolean m795activeHoverEvent0FcD4WY = cSSParser.m795activeHoverEvent0FcD4WY(j);
            boolean z2 = this.isIn;
            if ((!z && !m795activeHoverEvent0FcD4WY) || (!z && !z2)) {
                this.pointerIds.remove(j);
            }
        }
        this.isIn = false;
        this.hasExited = pointerEvent.type == 5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public final void dispatchCancel() {
        MutableVector mutableVector = this.children;
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            ((Node) objArr[i2]).dispatchCancel();
        }
        DelegatingNode delegatingNode = this.modifierNode;
        ?? r1 = 0;
        while (delegatingNode != 0) {
            if (delegatingNode instanceof PointerInputModifierNode) {
                ((PointerInputModifierNode) delegatingNode).onCancelPointerInput();
            } else if ((delegatingNode.kindSet & 16) != 0 && (delegatingNode instanceof DelegatingNode)) {
                Modifier.Node node = delegatingNode.delegate;
                int i3 = 0;
                r1 = r1;
                delegatingNode = delegatingNode;
                while (node != null) {
                    if ((node.kindSet & 16) != 0) {
                        i3++;
                        r1 = r1;
                        if (i3 == 1) {
                            delegatingNode = node;
                        } else {
                            if (r1 == 0) {
                                r1 = new MutableVector(new Modifier.Node[16]);
                            }
                            if (delegatingNode != 0) {
                                r1.add(delegatingNode);
                                delegatingNode = 0;
                            }
                            r1.add(node);
                        }
                    }
                    node = node.child;
                    r1 = r1;
                    delegatingNode = delegatingNode;
                }
                if (i3 == 1) {
                }
            }
            delegatingNode = HitTestResultKt.pop(r1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public final boolean dispatchFinalEventPass(CSSParser cSSParser) {
        LayoutNode layoutNode;
        LongSparseArray longSparseArray = this.relevantChanges;
        boolean z = false;
        z = false;
        z = false;
        if (!longSparseArray.isEmpty()) {
            Modifier.Node node = this.modifierNode;
            if (node.isAttached) {
                NodeCoordinator nodeCoordinator = node.coordinator;
                if ((nodeCoordinator == null || (layoutNode = nodeCoordinator.layoutNode) == null) ? false : layoutNode.isPlaced()) {
                    PointerEvent pointerEvent = this.pointerEvent;
                    pointerEvent.getClass();
                    NodeCoordinator nodeCoordinator2 = this.coordinates;
                    nodeCoordinator2.getClass();
                    long j = nodeCoordinator2.measuredSize;
                    DelegatingNode delegatingNode = node;
                    ?? r8 = 0;
                    while (delegatingNode != 0) {
                        if (delegatingNode instanceof PointerInputModifierNode) {
                            ((PointerInputModifierNode) delegatingNode).mo34onPointerEventH0pRuoY(pointerEvent, PointerEventPass.Final, j);
                        } else if ((delegatingNode.kindSet & 16) != 0 && (delegatingNode instanceof DelegatingNode)) {
                            Modifier.Node node2 = delegatingNode.delegate;
                            int i = 0;
                            delegatingNode = delegatingNode;
                            r8 = r8;
                            while (node2 != null) {
                                if ((node2.kindSet & 16) != 0) {
                                    i++;
                                    r8 = r8;
                                    if (i == 1) {
                                        delegatingNode = node2;
                                    } else {
                                        if (r8 == 0) {
                                            r8 = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (delegatingNode != 0) {
                                            r8.add(delegatingNode);
                                            delegatingNode = 0;
                                        }
                                        r8.add(node2);
                                    }
                                }
                                node2 = node2.child;
                                delegatingNode = delegatingNode;
                                r8 = r8;
                            }
                            if (i == 1) {
                            }
                        }
                        delegatingNode = HitTestResultKt.pop(r8);
                    }
                    if (node.isAttached) {
                        MutableVector mutableVector = this.children;
                        Object[] objArr = mutableVector.content;
                        int i2 = mutableVector.size;
                        for (int i3 = 0; i3 < i2; i3++) {
                            ((Node) objArr[i3]).dispatchFinalEventPass(cSSParser);
                        }
                    }
                    z = true;
                }
            }
        }
        cleanUpHits(cSSParser);
        longSparseArray.clear();
        this.coordinates = null;
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v9 */
    public final boolean dispatchMainEventPass(CSSParser cSSParser, boolean z) {
        LayoutNode layoutNode;
        if (!this.relevantChanges.isEmpty()) {
            DelegatingNode delegatingNode = this.modifierNode;
            if (delegatingNode.isAttached) {
                NodeCoordinator nodeCoordinator = delegatingNode.coordinator;
                if ((nodeCoordinator == null || (layoutNode = nodeCoordinator.layoutNode) == null) ? false : layoutNode.isPlaced()) {
                    PointerEvent pointerEvent = this.pointerEvent;
                    pointerEvent.getClass();
                    NodeCoordinator nodeCoordinator2 = this.coordinates;
                    nodeCoordinator2.getClass();
                    long j = nodeCoordinator2.measuredSize;
                    DelegatingNode delegatingNode2 = delegatingNode;
                    ?? r7 = 0;
                    while (delegatingNode2 != 0) {
                        if (delegatingNode2 instanceof PointerInputModifierNode) {
                            ((PointerInputModifierNode) delegatingNode2).mo34onPointerEventH0pRuoY(pointerEvent, PointerEventPass.Initial, j);
                        } else if ((delegatingNode2.kindSet & 16) != 0 && (delegatingNode2 instanceof DelegatingNode)) {
                            Modifier.Node node = delegatingNode2.delegate;
                            int i = 0;
                            delegatingNode2 = delegatingNode2;
                            r7 = r7;
                            while (node != null) {
                                if ((node.kindSet & 16) != 0) {
                                    i++;
                                    r7 = r7;
                                    if (i == 1) {
                                        delegatingNode2 = node;
                                    } else {
                                        if (r7 == 0) {
                                            r7 = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (delegatingNode2 != 0) {
                                            r7.add(delegatingNode2);
                                            delegatingNode2 = 0;
                                        }
                                        r7.add(node);
                                    }
                                }
                                node = node.child;
                                delegatingNode2 = delegatingNode2;
                                r7 = r7;
                            }
                            if (i == 1) {
                            }
                        }
                        delegatingNode2 = HitTestResultKt.pop(r7);
                    }
                    if (delegatingNode.isAttached) {
                        MutableVector mutableVector = this.children;
                        Object[] objArr = mutableVector.content;
                        int i2 = mutableVector.size;
                        for (int i3 = 0; i3 < i2; i3++) {
                            Node node2 = (Node) objArr[i3];
                            this.coordinates.getClass();
                            node2.dispatchMainEventPass(cSSParser, z);
                        }
                    }
                    if (delegatingNode.isAttached) {
                        ?? r13 = 0;
                        while (delegatingNode != 0) {
                            if (delegatingNode instanceof PointerInputModifierNode) {
                                ((PointerInputModifierNode) delegatingNode).mo34onPointerEventH0pRuoY(pointerEvent, PointerEventPass.Main, j);
                            } else if ((delegatingNode.kindSet & 16) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                Modifier.Node node3 = delegatingNode.delegate;
                                int i4 = 0;
                                delegatingNode = delegatingNode;
                                r13 = r13;
                                while (node3 != null) {
                                    if ((node3.kindSet & 16) != 0) {
                                        i4++;
                                        r13 = r13;
                                        if (i4 == 1) {
                                            delegatingNode = node3;
                                        } else {
                                            if (r13 == 0) {
                                                r13 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (delegatingNode != 0) {
                                                r13.add(delegatingNode);
                                                delegatingNode = 0;
                                            }
                                            r13.add(node3);
                                        }
                                    }
                                    node3 = node3.child;
                                    delegatingNode = delegatingNode;
                                    r13 = r13;
                                }
                                if (i4 == 1) {
                                }
                            }
                            delegatingNode = HitTestResultKt.pop(r13);
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final void removeInvalidPointerIdsAndChanges(long j, MutableObjectList mutableObjectList) {
        PriorityQueue priorityQueue = this.pointerIds;
        if (priorityQueue.contains(j) && mutableObjectList.indexOf(this) < 0) {
            priorityQueue.remove(j);
            this.relevantChanges.remove(j);
        }
        MutableVector mutableVector = this.children;
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            ((Node) objArr[i2]).removeInvalidPointerIdsAndChanges(j, mutableObjectList);
        }
    }

    public final String toString() {
        return "Node(modifierNode=" + this.modifierNode + ", children=" + this.children + ", pointerIds=" + this.pointerIds + ')';
    }
}
