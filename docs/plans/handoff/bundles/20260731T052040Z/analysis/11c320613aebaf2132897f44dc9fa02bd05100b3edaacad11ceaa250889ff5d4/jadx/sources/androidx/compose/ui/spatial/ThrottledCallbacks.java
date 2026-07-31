package androidx.compose.ui.spatial;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.IntOffset;
import okio.Options;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ThrottledCallbacks {
    public Entry globalChangeEntries;
    public long minDebounceDeadline;
    public final MutableIntObjectMap rectChangedMap;
    public long screenOffset;
    public float[] viewToWindowMatrix;
    public long windowOffset;
    public long windowSize;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Entry {
        public long bottomRight;
        public final Recomposer$$ExternalSyntheticLambda4 callback;
        public final int id;
        public long lastInvokeMillis = Long.MIN_VALUE;
        public Entry next;
        public final AwaitFirstLayoutModifier.Node node;
        public long topLeft;

        public Entry(int i, AwaitFirstLayoutModifier.Node node, Recomposer$$ExternalSyntheticLambda4 recomposer$$ExternalSyntheticLambda4) {
            this.id = i;
            this.node = node;
            this.callback = recomposer$$ExternalSyntheticLambda4;
        }

        /* renamed from: fire-9b-9wPM, reason: not valid java name */
        public final void m404fire9b9wPM(long j, long j2, long j3, long j4, float[] fArr) {
            RelativeLayoutBounds relativeLayoutBounds;
            RelativeLayoutBounds relativeLayoutBounds2;
            long j5 = ThrottledCallbacks.this.windowSize;
            AwaitFirstLayoutModifier.Node node = this.node;
            NodeCoordinator m317requireCoordinator64DMado = HitTestResultKt.m317requireCoordinator64DMado(node, 2);
            LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(node);
            boolean isPlaced = requireLayoutNode.isPlaced();
            NodeChain nodeChain = requireLayoutNode.nodes;
            if (isPlaced) {
                if (nodeChain.outerCoordinator != m317requireCoordinator64DMado) {
                    long floatToRawIntBits = (Float.floatToRawIntBits((int) (j & 4294967295L)) & 4294967295L) | (Float.floatToRawIntBits((int) (j >> 32)) << 32);
                    long j6 = m317requireCoordinator64DMado.measuredSize;
                    NodeCoordinator nodeCoordinator = nodeChain.outerCoordinator;
                    nodeCoordinator.getClass();
                    relativeLayoutBounds = new RelativeLayoutBounds(Options.Companion.m728roundk4lQ0M(nodeCoordinator.mo298localPositionOfS_NoaFU(m317requireCoordinator64DMado, floatToRawIntBits)), (4294967295L & (((int) (r3 & 4294967295L)) + ((int) (j6 & 4294967295L)))) | ((((int) (r3 >> 32)) + ((int) (j6 >> 32))) << 32), j3, j4, j5, fArr, node);
                } else {
                    relativeLayoutBounds = new RelativeLayoutBounds(j, j2, j3, j4, j5, fArr, node);
                }
                relativeLayoutBounds2 = relativeLayoutBounds;
            } else {
                relativeLayoutBounds2 = null;
            }
            if (relativeLayoutBounds2 == null) {
                return;
            }
            this.callback.invoke(relativeLayoutBounds2);
        }

        public final void unregister() {
            ThrottledCallbacks throttledCallbacks = ThrottledCallbacks.this;
            MutableIntObjectMap mutableIntObjectMap = throttledCallbacks.rectChangedMap;
            int i = this.id;
            Entry entry = (Entry) mutableIntObjectMap.remove(i);
            if (entry != null) {
                if (entry == this) {
                    Entry entry2 = this.next;
                    this.next = null;
                    if (entry2 == null) {
                        LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(this.node.node);
                        if (requireLayoutNode.addedToRectList) {
                            ((AndroidComposeView) LayoutNodeKt.requireOwner(requireLayoutNode)).getRectManager().rects.updateHasCallbacks(requireLayoutNode.semanticsId, false);
                            return;
                        }
                        return;
                    }
                    int findAbsoluteInsertIndex = mutableIntObjectMap.findAbsoluteInsertIndex(i);
                    Object[] objArr = mutableIntObjectMap.values;
                    Object obj = objArr[findAbsoluteInsertIndex];
                    mutableIntObjectMap.keys[findAbsoluteInsertIndex] = i;
                    objArr[findAbsoluteInsertIndex] = entry2;
                    return;
                }
                int findAbsoluteInsertIndex2 = mutableIntObjectMap.findAbsoluteInsertIndex(i);
                Object[] objArr2 = mutableIntObjectMap.values;
                Object obj2 = objArr2[findAbsoluteInsertIndex2];
                mutableIntObjectMap.keys[findAbsoluteInsertIndex2] = i;
                objArr2[findAbsoluteInsertIndex2] = entry;
                while (true) {
                    Entry entry3 = entry.next;
                    if (entry3 == null) {
                        break;
                    }
                    if (entry3 == this) {
                        entry.next = this.next;
                        this.next = null;
                        return;
                    }
                    entry = entry3;
                }
            }
            Entry entry4 = throttledCallbacks.globalChangeEntries;
            if (entry4 == this) {
                throttledCallbacks.globalChangeEntries = entry4.next;
                this.next = null;
                return;
            }
            Entry entry5 = entry4 != null ? entry4.next : null;
            while (true) {
                Entry entry6 = entry4;
                entry4 = entry5;
                if (entry4 == null) {
                    return;
                }
                if (entry4 == this) {
                    if (entry6 != null) {
                        entry6.next = entry4.next;
                    }
                    this.next = null;
                    return;
                }
                entry5 = entry4.next;
            }
        }
    }

    public ThrottledCallbacks() {
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.EmptyIntObjectMap;
        this.rectChangedMap = new MutableIntObjectMap();
        this.minDebounceDeadline = -1L;
        this.windowOffset = 0L;
        this.screenOffset = 0L;
    }

    /* renamed from: fire-WY9HvpM, reason: not valid java name */
    public final void m402fireWY9HvpM(Entry entry, long j, long j2, float[] fArr, long j3) {
        long j4 = entry.lastInvokeMillis;
        if (j3 - j4 > 0 || j4 == Long.MIN_VALUE) {
            entry.lastInvokeMillis = j3;
            entry.m404fire9b9wPM(entry.topLeft, entry.bottomRight, j, j2, fArr);
        }
    }

    /* renamed from: updateOffsets-LDcG7Xg, reason: not valid java name */
    public final boolean m403updateOffsetsLDcG7Xg(long j, long j2, float[] fArr, int i, int i2) {
        boolean z;
        if (IntOffset.m445equalsimpl0(j2, this.windowOffset)) {
            z = false;
        } else {
            this.windowOffset = j2;
            z = true;
        }
        if (!IntOffset.m445equalsimpl0(j, this.screenOffset)) {
            this.screenOffset = j;
            z = true;
        }
        if (fArr != null) {
            this.viewToWindowMatrix = fArr;
            z = true;
        }
        long j3 = (i << 32) | (i2 & 4294967295L);
        if (j3 == this.windowSize) {
            return z;
        }
        this.windowSize = j3;
        return true;
    }
}
