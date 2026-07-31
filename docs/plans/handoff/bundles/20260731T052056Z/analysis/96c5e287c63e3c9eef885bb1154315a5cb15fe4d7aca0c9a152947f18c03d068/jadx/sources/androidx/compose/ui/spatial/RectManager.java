package androidx.compose.ui.spatial;

import androidx.collection.MutableObjectList;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.MeasurePassDelegate;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.unit.IntOffset;
import androidx.recyclerview.widget.RecyclerView;
import com.caverock.androidsvg.SVG;
import okhttp3.internal.http.StatusLine;
import org.wikipedia.views.ViewAnimations$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RectManager {
    public final SVG.Box cachedRect;
    public final MutableObjectList callbacks;
    public final LayoutNode$_foldedChildren$1 dispatchLambda;
    public ViewAnimations$$ExternalSyntheticLambda0 dispatchToken;
    public final AndroidComposeView executeDelayed;
    public boolean isDirty;
    public boolean isFragmented;
    public boolean isScreenOrWindowDirty;
    public final StatusLine rects;
    public long scheduledDispatchDeadline;
    public final ThrottledCallbacks throttledCallbacks;

    public RectManager(AndroidComposeView androidComposeView) {
        this.executeDelayed = androidComposeView;
        StatusLine statusLine = new StatusLine(8, false);
        statusLine.protocol = new long[192];
        statusLine.message = new long[192];
        this.rects = statusLine;
        this.throttledCallbacks = new ThrottledCallbacks();
        this.callbacks = new MutableObjectList();
        this.scheduledDispatchDeadline = -1L;
        this.dispatchLambda = new LayoutNode$_foldedChildren$1(12, this);
        this.cachedRect = new SVG.Box();
    }

    public static boolean hasPositionalLayerTransformations(NodeCoordinator nodeCoordinator) {
        OwnedLayer ownedLayer = nodeCoordinator.layer;
        return (ownedLayer == null || ColorKt.m440isIdentity58bKbWc(((GraphicsLayerOwnerLayer) ownedLayer).m605getMatrixsQKQjiQ())) ? false : true;
    }

    /* renamed from: outerToInnerOffset-Bjo55l4, reason: not valid java name */
    public static long m617outerToInnerOffsetBjo55l4(LayoutNode layoutNode) {
        NodeChain nodeChain = layoutNode.nodes;
        NodeCoordinator nodeCoordinator = (NodeCoordinator) nodeChain.outerCoordinator;
        long j = 0;
        for (NodeCoordinator nodeCoordinator2 = (InnerNodeCoordinator) nodeChain.innerCoordinator; nodeCoordinator2 != null && nodeCoordinator2 != nodeCoordinator; nodeCoordinator2 = nodeCoordinator2.wrappedBy) {
            if (hasPositionalLayerTransformations(nodeCoordinator2)) {
                return 9223372034707292159L;
            }
            j = IntOffset.m717plusqkQi6aY(j, nodeCoordinator2.position);
        }
        return j;
    }

    public static void resetHasPositionalLayerTransformationsForSubtreeIfNeeded(LayoutNode layoutNode) {
        if (!layoutNode.hasPositionalLayerTransformationsInOffsetFromRoot || hasPositionalLayerTransformations((NodeCoordinator) layoutNode.nodes.outerCoordinator)) {
            return;
        }
        layoutNode.hasPositionalLayerTransformationsInOffsetFromRoot = false;
        if (layoutNode.outerToInnerOffsetDirty) {
            layoutNode.outerToInnerOffset = m617outerToInnerOffsetBjo55l4(layoutNode);
            layoutNode.outerToInnerOffsetDirty = false;
        }
        if (IntOffset.m715equalsimpl0(layoutNode.outerToInnerOffset, 9223372034707292159L)) {
            return;
        }
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            resetHasPositionalLayerTransformationsForSubtreeIfNeeded((LayoutNode) objArr[i2]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:131:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x022c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void dispatchCallbacks() {
        /*
            Method dump skipped, instructions count: 641
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.spatial.RectManager.dispatchCallbacks():void");
    }

    /* renamed from: getOffsetFromRectListFor-Bjo55l4, reason: not valid java name */
    public final long m618getOffsetFromRectListForBjo55l4(LayoutNode layoutNode) {
        long j;
        int i = layoutNode.semanticsId & 33554431;
        StatusLine statusLine = this.rects;
        long[] jArr = (long[]) statusLine.protocol;
        int i2 = statusLine.code;
        for (int i3 = 0; i3 < jArr.length - 2 && i3 < i2; i3 += 3) {
            if ((((int) jArr[i3 + 2]) & 33554431) == i) {
                j = jArr[i3];
                break;
            }
        }
        j = Long.MAX_VALUE;
        if (j == Long.MAX_VALUE) {
            return 9223372034707292159L;
        }
        return (((int) j) & 4294967295L) | (((int) (j >> 32)) << 32);
    }

    public final void insertOrUpdateTransformedNodeSubhierarchy(LayoutNode layoutNode) {
        boolean z;
        boolean z2 = true;
        layoutNode.hasPositionalLayerTransformationsInOffsetFromRoot = true;
        NodeChain nodeChain = layoutNode.nodes;
        NodeCoordinator nodeCoordinator = (NodeCoordinator) nodeChain.outerCoordinator;
        MeasurePassDelegate measurePassDelegate = layoutNode.layoutDelegate.measurePassDelegate;
        int measuredWidth = measurePassDelegate.getMeasuredWidth();
        float measuredHeight = measurePassDelegate.getMeasuredHeight();
        SVG.Box box = this.cachedRect;
        box.minX = RecyclerView.DECELERATION_RATE;
        box.minY = RecyclerView.DECELERATION_RATE;
        box.width = measuredWidth;
        box.height = measuredHeight;
        while (true) {
            if (nodeCoordinator == null) {
                break;
            }
            LayoutNode layoutNode2 = nodeCoordinator.layoutNode;
            if (nodeCoordinator == ((NodeCoordinator) layoutNode2.nodes.outerCoordinator) && !layoutNode2.hasPositionalLayerTransformationsInOffsetFromRoot) {
                if (!IntOffset.m715equalsimpl0(m618getOffsetFromRectListForBjo55l4(layoutNode2), 9223372034707292159L)) {
                    box.m798translatek4lQ0M((Float.floatToRawIntBits((int) (r9 >> 32)) << 32) | (Float.floatToRawIntBits((int) (r9 & 4294967295L)) & 4294967295L));
                    break;
                }
            }
            OwnedLayer ownedLayer = nodeCoordinator.layer;
            if (ownedLayer != null) {
                float[] m605getMatrixsQKQjiQ = ((GraphicsLayerOwnerLayer) ownedLayer).m605getMatrixsQKQjiQ();
                if (!ColorKt.m440isIdentity58bKbWc(m605getMatrixsQKQjiQ)) {
                    Matrix.m448mapimpl(m605getMatrixsQKQjiQ, box);
                }
            }
            long j = nodeCoordinator.position;
            box.m798translatek4lQ0M((4294967295L & Float.floatToRawIntBits((int) (j & 4294967295L))) | (Float.floatToRawIntBits((int) (j >> 32)) << 32));
            nodeCoordinator = nodeCoordinator.wrappedBy;
        }
        int i = (int) box.minX;
        int i2 = (int) box.minY;
        int i3 = (int) box.width;
        int i4 = (int) box.height;
        int i5 = layoutNode.semanticsId;
        boolean z3 = layoutNode.addedToRectList;
        layoutNode.addedToRectList = true;
        StatusLine statusLine = this.rects;
        if (z3) {
            int i6 = i5 & 33554431;
            long[] jArr = (long[]) statusLine.protocol;
            int i7 = statusLine.code;
            int i8 = 0;
            while (i8 < jArr.length - 2 && i8 < i7) {
                int i9 = i8 + 2;
                long j2 = jArr[i9];
                z = z2;
                if ((((int) j2) & 33554431) == i6) {
                    jArr[i8] = (i << 32) | (i2 & 4294967295L);
                    jArr[i8 + 1] = (i3 << 32) | (i4 & 4294967295L);
                    jArr[i9] = (((j2 >> 63) & 1) << 60) | j2;
                    break;
                }
                i8 += 3;
                z2 = z;
            }
        }
        z = z2;
        LayoutNode parent$ui = layoutNode.getParent$ui();
        statusLine.insert(i5, i, i2, i3, i4, (r22 & 32) != 0 ? -1 : parent$ui != null ? parent$ui.semanticsId : -1, nodeChain.m563hasH91voCI$ui(1024), nodeChain.m563hasH91voCI$ui(16), this.throttledCallbacks.rectChangedMap.containsKey(i5), -1);
        layoutNode.rectInParentDirty = false;
        this.isDirty = z;
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i10 = mutableVector.size;
        for (int i11 = 0; i11 < i10; i11++) {
            LayoutNode layoutNode3 = (LayoutNode) objArr[i11];
            if (layoutNode3.isPlaced()) {
                insertOrUpdateTransformedNodeSubhierarchy(layoutNode3);
            }
        }
    }

    public final void recalculateRectIfDirty(LayoutNode layoutNode) {
        long j;
        boolean isPlaced = layoutNode.isPlaced();
        NodeChain nodeChain = layoutNode.nodes;
        if (isPlaced && layoutNode.rectInParentDirty) {
            LayoutNode parent$ui = layoutNode.getParent$ui();
            if (parent$ui == null || parent$ui.hasPositionalLayerTransformationsInOffsetFromRoot) {
                j = parent$ui == null ? 0L : 9223372034707292159L;
            } else {
                if (parent$ui.outerToInnerOffsetDirty) {
                    parent$ui.outerToInnerOffsetDirty = false;
                    parent$ui.outerToInnerOffset = m617outerToInnerOffsetBjo55l4(parent$ui);
                }
                j = parent$ui.outerToInnerOffset;
            }
            NodeCoordinator nodeCoordinator = (NodeCoordinator) nodeChain.outerCoordinator;
            if (IntOffset.m715equalsimpl0(j, 9223372034707292159L) || hasPositionalLayerTransformations(nodeCoordinator)) {
                insertOrUpdateTransformedNodeSubhierarchy(layoutNode);
            } else if (layoutNode.hasPositionalLayerTransformationsInOffsetFromRoot) {
                insertOrUpdateTransformedNodeSubhierarchy(layoutNode);
                resetHasPositionalLayerTransformationsForSubtreeIfNeeded(layoutNode);
            } else {
                long m717plusqkQi6aY = IntOffset.m717plusqkQi6aY(j, nodeCoordinator.position);
                MeasurePassDelegate measurePassDelegate = layoutNode.layoutDelegate.measurePassDelegate;
                int measuredWidth = measurePassDelegate.getMeasuredWidth();
                int measuredHeight = measurePassDelegate.getMeasuredHeight();
                int i = layoutNode.semanticsId;
                boolean z = layoutNode.addedToRectList;
                StatusLine statusLine = this.rects;
                long j2 = 4294967295L;
                if (!z) {
                    layoutNode.addedToRectList = true;
                    boolean m563hasH91voCI$ui = nodeChain.m563hasH91voCI$ui(1024);
                    boolean m563hasH91voCI$ui2 = nodeChain.m563hasH91voCI$ui(16);
                    boolean containsKey = this.throttledCallbacks.rectChangedMap.containsKey(i);
                    if (parent$ui != null) {
                        int i2 = parent$ui.semanticsId;
                        int i3 = (int) (m717plusqkQi6aY >> 32);
                        int i4 = (int) (m717plusqkQi6aY & 4294967295L);
                        int i5 = i & 33554431;
                        long[] jArr = (long[]) statusLine.protocol;
                        int i6 = statusLine.code - 3;
                        while (true) {
                            if (i6 < 0) {
                                break;
                            }
                            if ((((int) jArr[i6 + 2]) & 33554431) == i2) {
                                long j3 = jArr[i6];
                                int i7 = ((int) (j3 >> 32)) + i3;
                                int i8 = ((int) j3) + i4;
                                statusLine.insert(i5, i7, i8, i7 + measuredWidth, i8 + measuredHeight, i2, m563hasH91voCI$ui, m563hasH91voCI$ui2, containsKey, i6);
                                break;
                            }
                            i6 -= 3;
                        }
                    } else {
                        int i9 = (int) (m717plusqkQi6aY >> 32);
                        int i10 = (int) (m717plusqkQi6aY & 4294967295L);
                        statusLine.insert(i, i9, i10, i9 + measuredWidth, i10 + measuredHeight, (r22 & 32) != 0 ? -1 : 0, m563hasH91voCI$ui, m563hasH91voCI$ui2, containsKey, -1);
                    }
                } else if (parent$ui == null) {
                    int i11 = (int) (m717plusqkQi6aY >> 32);
                    int i12 = (int) (m717plusqkQi6aY & 4294967295L);
                    int i13 = measuredWidth + i11;
                    int i14 = i12 + measuredHeight;
                    int i15 = i & 33554431;
                    long[] jArr2 = (long[]) statusLine.protocol;
                    int i16 = statusLine.code;
                    int i17 = 0;
                    while (true) {
                        if (i17 >= jArr2.length - 2 || i17 >= i16) {
                            break;
                        }
                        int i18 = i17 + 2;
                        long j4 = jArr2[i18];
                        if ((((int) j4) & 33554431) == i15) {
                            long j5 = jArr2[i17];
                            int i19 = i17;
                            jArr2[i19] = (i11 << 32) | (i12 & 4294967295L);
                            jArr2[i19 + 1] = (i13 << 32) | (i14 & 4294967295L);
                            jArr2[i18] = (((j4 >> 63) & 1) << 60) | j4;
                            int i20 = i11 - ((int) (j5 >> 32));
                            int i21 = i12 - ((int) j5);
                            if ((i20 != 0) | (i21 != 0)) {
                                int i22 = RectListKt.$r8$clinit;
                                statusLine.updateSubhierarchy(i20, i21, (j4 & (-1125899873288193L)) | (((i19 + 3) & 33554431) << 25));
                            }
                        } else {
                            i17 += 3;
                        }
                    }
                } else {
                    int i23 = parent$ui.semanticsId;
                    int i24 = (int) (m717plusqkQi6aY >> 32);
                    int i25 = (int) (m717plusqkQi6aY & 4294967295L);
                    int i26 = i & 33554431;
                    long[] jArr3 = (long[]) statusLine.protocol;
                    int i27 = statusLine.code;
                    int i28 = 0;
                    while (true) {
                        if (i28 >= jArr3.length - 2 || i28 >= i27) {
                            break;
                        }
                        long j6 = j2;
                        if ((((int) jArr3[i28 + 2]) & 33554431) == i23) {
                            long j7 = jArr3[i28];
                            int i29 = ((int) (j7 >> 32)) + i24;
                            int i30 = ((int) j7) + i25;
                            int i31 = i29 + measuredWidth;
                            int i32 = i30 + measuredHeight;
                            i28 += 3;
                            while (i28 < jArr3.length - 2 && i28 < i27) {
                                int i33 = i28 + 2;
                                int i34 = i23;
                                int i35 = i24;
                                long j8 = jArr3[i33];
                                int i36 = i25;
                                if ((((int) j8) & 33554431) == i26) {
                                    long j9 = jArr3[i28];
                                    long[] jArr4 = jArr3;
                                    int i37 = i29 - ((int) (j9 >> 32));
                                    int i38 = i30 - ((int) j9);
                                    jArr4[i28] = (i30 & j6) | (i29 << 32);
                                    jArr4[i28 + 1] = (i31 << 32) | (i32 & j6);
                                    jArr4[i33] = j8 | (((j8 >> 63) & 1) << 60);
                                    if (i37 != 0 || i38 != 0) {
                                        int i39 = RectListKt.$r8$clinit;
                                        statusLine.updateSubhierarchy(i37, i38, (j8 & (-1125899873288193L)) | (((i28 + 3) & 33554431) << 25));
                                    }
                                } else {
                                    i28 += 3;
                                    i23 = i34;
                                    i24 = i35;
                                    i25 = i36;
                                }
                            }
                        }
                        i28 += 3;
                        jArr3 = jArr3;
                        j2 = j6;
                        i23 = i23;
                        i24 = i24;
                        i25 = i25;
                    }
                }
            }
            layoutNode.rectInParentDirty = false;
            this.isDirty = true;
            scheduleDebounceCallback();
        }
    }

    public final void remove(LayoutNode layoutNode) {
        if (layoutNode.addedToRectList) {
            int i = layoutNode.semanticsId & 33554431;
            StatusLine statusLine = this.rects;
            long[] jArr = (long[]) statusLine.protocol;
            int i2 = statusLine.code;
            int i3 = 0;
            while (true) {
                if (i3 >= jArr.length - 2 || i3 >= i2) {
                    break;
                }
                int i4 = i3 + 2;
                if ((((int) jArr[i4]) & 33554431) == i) {
                    jArr[i3] = -1;
                    jArr[i3 + 1] = -1;
                    jArr[i4] = RectListKt.TombStone;
                    break;
                }
                i3 += 3;
            }
            layoutNode.addedToRectList = false;
            layoutNode.rectInParentDirty = true;
            this.isDirty = true;
            this.isFragmented = true;
        }
    }

    public final void scheduleDebounceCallback() {
        ViewAnimations$$ExternalSyntheticLambda0 viewAnimations$$ExternalSyntheticLambda0 = this.dispatchToken;
        boolean z = viewAnimations$$ExternalSyntheticLambda0 != null;
        long j = this.throttledCallbacks.minDebounceDeadline;
        if (j >= 0 || !z) {
            if (this.scheduledDispatchDeadline == j && z) {
                return;
            }
            AndroidComposeView androidComposeView = this.executeDelayed;
            if (viewAnimations$$ExternalSyntheticLambda0 != null) {
                if (!Animation.CC.m23m((Object) viewAnimations$$ExternalSyntheticLambda0)) {
                    viewAnimations$$ExternalSyntheticLambda0 = null;
                }
                if (viewAnimations$$ExternalSyntheticLambda0 != null) {
                    androidComposeView.removeCallbacks(viewAnimations$$ExternalSyntheticLambda0);
                }
            }
            long currentTimeMillis = System.currentTimeMillis();
            long max = Math.max(j, 16 + currentTimeMillis);
            this.scheduledDispatchDeadline = max;
            ViewAnimations$$ExternalSyntheticLambda0 viewAnimations$$ExternalSyntheticLambda02 = new ViewAnimations$$ExternalSyntheticLambda0(2, this.dispatchLambda);
            androidComposeView.postDelayed(viewAnimations$$ExternalSyntheticLambda02, max - currentTimeMillis);
            this.dispatchToken = viewAnimations$$ExternalSyntheticLambda02;
        }
    }
}
