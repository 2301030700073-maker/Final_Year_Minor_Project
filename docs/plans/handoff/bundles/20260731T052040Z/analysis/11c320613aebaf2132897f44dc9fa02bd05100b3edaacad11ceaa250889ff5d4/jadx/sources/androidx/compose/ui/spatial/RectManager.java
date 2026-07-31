package androidx.compose.ui.spatial;

import android.os.Trace;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.MeasurePassDelegate;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidComposeView$$ExternalSyntheticLambda4;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.unit.IntOffset;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.grack.nanojson.JsonParser;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RectManager {
    public final MutableRect cachedRect;
    public final MutableObjectList callbacks;
    public final RectManager$dispatchLambda$1 dispatchLambda;
    public AndroidComposeView$$ExternalSyntheticLambda4 dispatchToken;
    public final AndroidComposeView executeDelayed;
    public boolean isDirty;
    public boolean isFragmented;
    public boolean isScreenOrWindowDirty;
    public final JsonParser rects;
    public long scheduledDispatchDeadline;
    public final ThrottledCallbacks throttledCallbacks;

    /* JADX WARN: Type inference failed for: r3v4, types: [androidx.compose.ui.spatial.RectManager$dispatchLambda$1] */
    public RectManager(AndroidComposeView androidComposeView) {
        this.executeDelayed = androidComposeView;
        JsonParser jsonParser = new JsonParser(6);
        jsonParser.value = new long[PsExtractor.AUDIO_STREAM];
        jsonParser.tokener = new long[PsExtractor.AUDIO_STREAM];
        this.rects = jsonParser;
        this.throttledCallbacks = new ThrottledCallbacks();
        this.callbacks = new MutableObjectList();
        this.scheduledDispatchDeadline = -1L;
        this.dispatchLambda = new Function0() { // from class: androidx.compose.ui.spatial.RectManager$dispatchLambda$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                RectManager rectManager = RectManager.this;
                rectManager.dispatchToken = null;
                Trace.beginSection("OnPositionedDispatch");
                try {
                    rectManager.dispatchCallbacks();
                    Trace.endSection();
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
        };
        this.cachedRect = new MutableRect();
    }

    public static boolean hasPositionalLayerTransformations(NodeCoordinator nodeCoordinator) {
        OwnedLayer ownedLayer = nodeCoordinator.layer;
        return (ownedLayer == null || Brush.m229isIdentity58bKbWc(((GraphicsLayerOwnerLayer) ownedLayer).m390getMatrixsQKQjiQ())) ? false : true;
    }

    /* renamed from: outerToInnerOffset-Bjo55l4, reason: not valid java name */
    public static long m400outerToInnerOffsetBjo55l4(LayoutNode layoutNode) {
        NodeChain nodeChain = layoutNode.nodes;
        NodeCoordinator nodeCoordinator = nodeChain.outerCoordinator;
        long j = 0;
        for (NodeCoordinator nodeCoordinator2 = nodeChain.innerCoordinator; nodeCoordinator2 != null && nodeCoordinator2 != nodeCoordinator; nodeCoordinator2 = nodeCoordinator2.wrappedBy) {
            if (hasPositionalLayerTransformations(nodeCoordinator2)) {
                return 9223372034707292159L;
            }
            j = IntOffset.m447plusqkQi6aY(j, nodeCoordinator2.position);
        }
        return j;
    }

    public static void resetHasPositionalLayerTransformationsForSubtreeIfNeeded(LayoutNode layoutNode) {
        if (!layoutNode.hasPositionalLayerTransformationsInOffsetFromRoot || hasPositionalLayerTransformations(layoutNode.nodes.outerCoordinator)) {
            return;
        }
        layoutNode.hasPositionalLayerTransformationsInOffsetFromRoot = false;
        if (layoutNode.outerToInnerOffsetDirty) {
            layoutNode.outerToInnerOffset = m400outerToInnerOffsetBjo55l4(layoutNode);
            layoutNode.outerToInnerOffsetDirty = false;
        }
        if (IntOffset.m445equalsimpl0(layoutNode.outerToInnerOffset, 9223372034707292159L)) {
            return;
        }
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            resetHasPositionalLayerTransformationsForSubtreeIfNeeded((LayoutNode) objArr[i2]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x027f  */
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
            Method dump skipped, instructions count: 643
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.spatial.RectManager.dispatchCallbacks():void");
    }

    /* renamed from: getOffsetFromRectListFor-Bjo55l4, reason: not valid java name */
    public final long m401getOffsetFromRectListForBjo55l4(LayoutNode layoutNode) {
        long j;
        int i = layoutNode.semanticsId & 33554431;
        JsonParser jsonParser = this.rects;
        long[] jArr = (long[]) jsonParser.value;
        int i2 = jsonParser.token;
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
        NodeCoordinator nodeCoordinator = nodeChain.outerCoordinator;
        MeasurePassDelegate measurePassDelegate = layoutNode.layoutDelegate.measurePassDelegate;
        int measuredWidth = measurePassDelegate.getMeasuredWidth();
        float measuredHeight = measurePassDelegate.getMeasuredHeight();
        MutableRect mutableRect = this.cachedRect;
        mutableRect.left = 0.0f;
        mutableRect.top = 0.0f;
        mutableRect.right = measuredWidth;
        mutableRect.bottom = measuredHeight;
        while (true) {
            if (nodeCoordinator == null) {
                break;
            }
            LayoutNode layoutNode2 = nodeCoordinator.layoutNode;
            if (nodeCoordinator == layoutNode2.nodes.outerCoordinator && !layoutNode2.hasPositionalLayerTransformationsInOffsetFromRoot) {
                if (!IntOffset.m445equalsimpl0(m401getOffsetFromRectListForBjo55l4(layoutNode2), 9223372034707292159L)) {
                    mutableRect.m194translatek4lQ0M((Float.floatToRawIntBits((int) (r9 >> 32)) << 32) | (Float.floatToRawIntBits((int) (r9 & 4294967295L)) & 4294967295L));
                    break;
                }
            }
            OwnedLayer ownedLayer = nodeCoordinator.layer;
            if (ownedLayer != null) {
                float[] m390getMatrixsQKQjiQ = ((GraphicsLayerOwnerLayer) ownedLayer).m390getMatrixsQKQjiQ();
                if (!Brush.m229isIdentity58bKbWc(m390getMatrixsQKQjiQ)) {
                    Brush.m231mapimpl(m390getMatrixsQKQjiQ, mutableRect);
                }
            }
            long j = nodeCoordinator.position;
            mutableRect.m194translatek4lQ0M((4294967295L & Float.floatToRawIntBits((int) (j & 4294967295L))) | (Float.floatToRawIntBits((int) (j >> 32)) << 32));
            nodeCoordinator = nodeCoordinator.wrappedBy;
        }
        int i = (int) mutableRect.left;
        int i2 = (int) mutableRect.top;
        int i3 = (int) mutableRect.right;
        int i4 = (int) mutableRect.bottom;
        int i5 = layoutNode.semanticsId;
        boolean z3 = layoutNode.addedToRectList;
        layoutNode.addedToRectList = true;
        JsonParser jsonParser = this.rects;
        if (z3) {
            int i6 = i5 & 33554431;
            long[] jArr = (long[]) jsonParser.value;
            int i7 = jsonParser.token;
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
        jsonParser.insert(i5, i, i2, i3, i4, (r22 & 32) != 0 ? -1 : parent$ui != null ? parent$ui.semanticsId : -1, nodeChain.m339hasH91voCI$ui(1024), nodeChain.m339hasH91voCI$ui(16), this.throttledCallbacks.rectChangedMap.containsKey(i5), -1);
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
                    parent$ui.outerToInnerOffset = m400outerToInnerOffsetBjo55l4(parent$ui);
                }
                j = parent$ui.outerToInnerOffset;
            }
            NodeCoordinator nodeCoordinator = nodeChain.outerCoordinator;
            if (IntOffset.m445equalsimpl0(j, 9223372034707292159L) || hasPositionalLayerTransformations(nodeCoordinator)) {
                insertOrUpdateTransformedNodeSubhierarchy(layoutNode);
            } else if (layoutNode.hasPositionalLayerTransformationsInOffsetFromRoot) {
                insertOrUpdateTransformedNodeSubhierarchy(layoutNode);
                resetHasPositionalLayerTransformationsForSubtreeIfNeeded(layoutNode);
            } else {
                long m447plusqkQi6aY = IntOffset.m447plusqkQi6aY(j, nodeCoordinator.position);
                MeasurePassDelegate measurePassDelegate = layoutNode.layoutDelegate.measurePassDelegate;
                int measuredWidth = measurePassDelegate.getMeasuredWidth();
                int measuredHeight = measurePassDelegate.getMeasuredHeight();
                int i = layoutNode.semanticsId;
                boolean z = layoutNode.addedToRectList;
                JsonParser jsonParser = this.rects;
                long j2 = 4294967295L;
                if (!z) {
                    layoutNode.addedToRectList = true;
                    boolean m339hasH91voCI$ui = nodeChain.m339hasH91voCI$ui(1024);
                    boolean m339hasH91voCI$ui2 = nodeChain.m339hasH91voCI$ui(16);
                    boolean containsKey = this.throttledCallbacks.rectChangedMap.containsKey(i);
                    if (parent$ui != null) {
                        int i2 = parent$ui.semanticsId;
                        int i3 = (int) (m447plusqkQi6aY >> 32);
                        int i4 = (int) (m447plusqkQi6aY & 4294967295L);
                        int i5 = i & 33554431;
                        long[] jArr = (long[]) jsonParser.value;
                        int i6 = jsonParser.token - 3;
                        while (true) {
                            if (i6 < 0) {
                                break;
                            }
                            if ((((int) jArr[i6 + 2]) & 33554431) == i2) {
                                long j3 = jArr[i6];
                                int i7 = ((int) (j3 >> 32)) + i3;
                                int i8 = ((int) j3) + i4;
                                jsonParser.insert(i5, i7, i8, i7 + measuredWidth, i8 + measuredHeight, i2, m339hasH91voCI$ui, m339hasH91voCI$ui2, containsKey, i6);
                                break;
                            }
                            i6 -= 3;
                        }
                    } else {
                        int i9 = (int) (m447plusqkQi6aY >> 32);
                        int i10 = (int) (m447plusqkQi6aY & 4294967295L);
                        jsonParser.insert(i, i9, i10, i9 + measuredWidth, i10 + measuredHeight, (r22 & 32) != 0 ? -1 : 0, m339hasH91voCI$ui, m339hasH91voCI$ui2, containsKey, -1);
                    }
                } else if (parent$ui == null) {
                    int i11 = (int) (m447plusqkQi6aY >> 32);
                    int i12 = (int) (m447plusqkQi6aY & 4294967295L);
                    int i13 = measuredWidth + i11;
                    int i14 = i12 + measuredHeight;
                    int i15 = i & 33554431;
                    long[] jArr2 = (long[]) jsonParser.value;
                    int i16 = jsonParser.token;
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
                                jsonParser.updateSubhierarchy(i20, (j4 & (-1125899873288193L)) | (((i19 + 3) & 33554431) << 25), i21);
                            }
                        } else {
                            i17 += 3;
                        }
                    }
                } else {
                    int i23 = parent$ui.semanticsId;
                    int i24 = (int) (m447plusqkQi6aY >> 32);
                    int i25 = (int) (m447plusqkQi6aY & 4294967295L);
                    int i26 = i & 33554431;
                    long[] jArr3 = (long[]) jsonParser.value;
                    int i27 = jsonParser.token;
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
                                        jsonParser.updateSubhierarchy(i37, (j8 & (-1125899873288193L)) | (((i28 + 3) & 33554431) << 25), i38);
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
            JsonParser jsonParser = this.rects;
            long[] jArr = (long[]) jsonParser.value;
            int i2 = jsonParser.token;
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
        AndroidComposeView$$ExternalSyntheticLambda4 androidComposeView$$ExternalSyntheticLambda4 = this.dispatchToken;
        boolean z = androidComposeView$$ExternalSyntheticLambda4 != null;
        long j = this.throttledCallbacks.minDebounceDeadline;
        if (j >= 0 || !z) {
            if (this.scheduledDispatchDeadline == j && z) {
                return;
            }
            AndroidComposeView androidComposeView = this.executeDelayed;
            if (androidComposeView$$ExternalSyntheticLambda4 != null) {
                if (!Modifier.CC.m182m((Object) androidComposeView$$ExternalSyntheticLambda4)) {
                    androidComposeView$$ExternalSyntheticLambda4 = null;
                }
                if (androidComposeView$$ExternalSyntheticLambda4 != null) {
                    androidComposeView.removeCallbacks(androidComposeView$$ExternalSyntheticLambda4);
                }
            }
            long currentTimeMillis = System.currentTimeMillis();
            long max = Math.max(j, 16 + currentTimeMillis);
            this.scheduledDispatchDeadline = max;
            AndroidComposeView$$ExternalSyntheticLambda4 androidComposeView$$ExternalSyntheticLambda42 = new AndroidComposeView$$ExternalSyntheticLambda4(0, this.dispatchLambda);
            androidComposeView.postDelayed(androidComposeView$$ExternalSyntheticLambda42, max - currentTimeMillis);
            this.dispatchToken = androidComposeView$$ExternalSyntheticLambda42;
        }
    }
}
