package androidx.compose.foundation.lazy.layout;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.view.PreviewView;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$2;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.room.util.RelationUtil;
import de.cketti.changelog.XmlParser;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyLayoutItemAnimator {
    public final ArrayList disappearingItems;
    public DisplayingDisappearingItemsNode displayingNode;
    public int firstVisibleIndex;
    public XmlParser keyIndexMap;
    public final MutableScatterMap keyToItemInfoMap;
    public final Modifier modifier;
    public final MutableScatterSet movingAwayKeys;
    public final ArrayList movingAwayToEndBound;
    public final ArrayList movingAwayToStartBound;
    public final ArrayList movingInFromEndBound;
    public final ArrayList movingInFromStartBound;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    final class DisplayingDisappearingItemsElement extends ModifierNodeElement {
        public final LazyLayoutItemAnimator animator;

        public DisplayingDisappearingItemsElement(LazyLayoutItemAnimator lazyLayoutItemAnimator) {
            this.animator = lazyLayoutItemAnimator;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final Modifier.Node create() {
            DisplayingDisappearingItemsNode displayingDisappearingItemsNode = new DisplayingDisappearingItemsNode();
            displayingDisappearingItemsNode.animator = this.animator;
            return displayingDisappearingItemsNode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DisplayingDisappearingItemsElement) && this.animator == ((DisplayingDisappearingItemsElement) obj).animator;
        }

        public final int hashCode() {
            return this.animator.hashCode();
        }

        public final String toString() {
            return "DisplayingDisappearingItemsElement(animator=" + this.animator + ')';
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final void update(Modifier.Node node) {
            DisplayingDisappearingItemsNode displayingDisappearingItemsNode = (DisplayingDisappearingItemsNode) node;
            LazyLayoutItemAnimator lazyLayoutItemAnimator = displayingDisappearingItemsNode.animator;
            LazyLayoutItemAnimator lazyLayoutItemAnimator2 = this.animator;
            if (Intrinsics.areEqual(lazyLayoutItemAnimator, lazyLayoutItemAnimator2) || !displayingDisappearingItemsNode.node.isAttached) {
                return;
            }
            LazyLayoutItemAnimator lazyLayoutItemAnimator3 = displayingDisappearingItemsNode.animator;
            lazyLayoutItemAnimator3.releaseAnimations();
            lazyLayoutItemAnimator3.keyIndexMap = null;
            lazyLayoutItemAnimator3.firstVisibleIndex = -1;
            lazyLayoutItemAnimator2.displayingNode = displayingDisappearingItemsNode;
            displayingDisappearingItemsNode.animator = lazyLayoutItemAnimator2;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ItemInfo {
        public Constraints constraints;
        public int crossAxisOffset;
        public int lane;
        public int layoutMaxOffset;
        public int layoutMinOffset;
        public LazyLayoutItemAnimation[] animations = LazyLayoutKt.EmptyArray;
        public int span = 1;

        public ItemInfo() {
        }

        public static void updateAnimation$default(ItemInfo itemInfo, LazyLayoutMeasuredItem lazyLayoutMeasuredItem, CoroutineScope coroutineScope, GraphicsContext graphicsContext, int i, int i2) {
            LazyLayoutItemAnimator.this.getClass();
            long mo248getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo248getOffsetBjo55l4(0);
            itemInfo.updateAnimation(lazyLayoutMeasuredItem, coroutineScope, graphicsContext, i, i2, (int) (!lazyLayoutMeasuredItem.isVertical() ? mo248getOffsetBjo55l4 & 4294967295L : mo248getOffsetBjo55l4 >> 32));
        }

        public final void updateAnimation(LazyLayoutMeasuredItem lazyLayoutMeasuredItem, CoroutineScope coroutineScope, GraphicsContext graphicsContext, int i, int i2, int i3) {
            LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr;
            LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr2 = this.animations;
            int length = lazyLayoutItemAnimationArr2.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    this.layoutMinOffset = i;
                    this.layoutMaxOffset = i2;
                    break;
                } else {
                    LazyLayoutItemAnimation lazyLayoutItemAnimation = lazyLayoutItemAnimationArr2[i4];
                    if (lazyLayoutItemAnimation != null && lazyLayoutItemAnimation.isRunningMovingAwayAnimation) {
                        break;
                    } else {
                        i4++;
                    }
                }
            }
            int placeablesCount = lazyLayoutMeasuredItem.getPlaceablesCount();
            int length2 = this.animations.length;
            while (true) {
                lazyLayoutItemAnimationArr = this.animations;
                if (placeablesCount >= length2) {
                    break;
                }
                LazyLayoutItemAnimation lazyLayoutItemAnimation2 = lazyLayoutItemAnimationArr[placeablesCount];
                if (lazyLayoutItemAnimation2 != null) {
                    lazyLayoutItemAnimation2.release();
                }
                placeablesCount++;
            }
            if (lazyLayoutItemAnimationArr.length != lazyLayoutMeasuredItem.getPlaceablesCount()) {
                this.animations = (LazyLayoutItemAnimation[]) Arrays.copyOf(this.animations, lazyLayoutMeasuredItem.getPlaceablesCount());
            }
            this.constraints = new Constraints(lazyLayoutMeasuredItem.mo247getConstraintsmsEJaDk());
            this.crossAxisOffset = i3;
            this.lane = lazyLayoutMeasuredItem.getLane();
            this.span = lazyLayoutMeasuredItem.getSpan();
            int placeablesCount2 = lazyLayoutMeasuredItem.getPlaceablesCount();
            for (int i5 = 0; i5 < placeablesCount2; i5++) {
                Object parentData = lazyLayoutMeasuredItem.getParentData(i5);
                LazyLayoutAnimationSpecsNode lazyLayoutAnimationSpecsNode = parentData instanceof LazyLayoutAnimationSpecsNode ? (LazyLayoutAnimationSpecsNode) parentData : null;
                LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr3 = this.animations;
                if (lazyLayoutAnimationSpecsNode == null) {
                    LazyLayoutItemAnimation lazyLayoutItemAnimation3 = lazyLayoutItemAnimationArr3[i5];
                    if (lazyLayoutItemAnimation3 != null) {
                        lazyLayoutItemAnimation3.release();
                    }
                    this.animations[i5] = null;
                } else {
                    LazyLayoutItemAnimation lazyLayoutItemAnimation4 = lazyLayoutItemAnimationArr3[i5];
                    if (lazyLayoutItemAnimation4 == null) {
                        lazyLayoutItemAnimation4 = new LazyLayoutItemAnimation(coroutineScope, graphicsContext, new OnBackPressedDispatcher$$ExternalSyntheticLambda0(14, LazyLayoutItemAnimator.this));
                        this.animations[i5] = lazyLayoutItemAnimation4;
                    }
                    lazyLayoutItemAnimation4.fadeInSpec = lazyLayoutAnimationSpecsNode.fadeInSpec;
                    lazyLayoutItemAnimation4.placementSpec = lazyLayoutAnimationSpecsNode.placementSpec;
                    lazyLayoutItemAnimation4.fadeOutSpec = lazyLayoutAnimationSpecsNode.fadeOutSpec;
                }
            }
        }
    }

    public LazyLayoutItemAnimator() {
        long[] jArr = ScatterMapKt.EmptyGroup;
        this.keyToItemInfoMap = new MutableScatterMap();
        MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
        this.movingAwayKeys = new MutableScatterSet();
        this.movingInFromStartBound = new ArrayList();
        this.movingInFromEndBound = new ArrayList();
        this.movingAwayToStartBound = new ArrayList();
        this.movingAwayToEndBound = new ArrayList();
        this.disappearingItems = new ArrayList();
        this.modifier = new DisplayingDisappearingItemsElement(this);
    }

    public static void initializeAnimation(LazyLayoutMeasuredItem lazyLayoutMeasuredItem, int i, ItemInfo itemInfo) {
        int i2 = 0;
        long mo248getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo248getOffsetBjo55l4(0);
        long m751copyiSbpLlY$default = lazyLayoutMeasuredItem.isVertical() ? IntOffset.m751copyiSbpLlY$default(0, i, 1, mo248getOffsetBjo55l4) : IntOffset.m751copyiSbpLlY$default(i, 0, 2, mo248getOffsetBjo55l4);
        LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr = itemInfo.animations;
        int length = lazyLayoutItemAnimationArr.length;
        int i3 = 0;
        while (i2 < length) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = lazyLayoutItemAnimationArr[i2];
            int i4 = i3 + 1;
            if (lazyLayoutItemAnimation != null) {
                lazyLayoutItemAnimation.rawOffset = IntOffset.m754plusqkQi6aY(m751copyiSbpLlY$default, IntOffset.m753minusqkQi6aY(lazyLayoutMeasuredItem.mo248getOffsetBjo55l4(i3), mo248getOffsetBjo55l4));
            }
            i2++;
            i3 = i4;
        }
    }

    public static int updateAndReturnOffsetFor(int[] iArr, LazyLayoutMeasuredItem lazyLayoutMeasuredItem) {
        int lane = lazyLayoutMeasuredItem.getLane();
        int span = lazyLayoutMeasuredItem.getSpan() + lane;
        int i = 0;
        while (lane < span) {
            int mainAxisSizeWithSpacings = lazyLayoutMeasuredItem.getMainAxisSizeWithSpacings() + iArr[lane];
            iArr[lane] = mainAxisSizeWithSpacings;
            i = Math.max(i, mainAxisSizeWithSpacings);
            lane++;
        }
        return i;
    }

    public final LazyLayoutItemAnimation getAnimation(int i, Object obj) {
        ItemInfo itemInfo = (ItemInfo) this.keyToItemInfoMap.get(obj);
        if (itemInfo != null) {
            return itemInfo.animations[i];
        }
        return null;
    }

    /* renamed from: getMinSizeToFitDisappearingItems-YbymL2g, reason: not valid java name */
    public final long m254getMinSizeToFitDisappearingItemsYbymL2g() {
        ArrayList arrayList = this.disappearingItems;
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = (LazyLayoutItemAnimation) arrayList.get(i);
            GraphicsLayer graphicsLayer = lazyLayoutItemAnimation.layer;
            if (graphicsLayer != null) {
                j = (Math.max((int) (j & 4294967295L), ((int) (lazyLayoutItemAnimation.rawOffset & 4294967295L)) + ((int) (graphicsLayer.size & 4294967295L))) & 4294967295L) | (Math.max((int) (j >> 32), ((int) (lazyLayoutItemAnimation.rawOffset >> 32)) + ((int) (graphicsLayer.size >> 32))) << 32);
            }
        }
        return j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01c3, code lost:
    
        r32 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01c5, code lost:
    
        if (r28 == false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01c7, code lost:
    
        r1 = r31.animations;
        r3 = r1.length;
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01cb, code lost:
    
        if (r4 >= r3) goto L268;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01cd, code lost:
    
        r10 = r1[r4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01cf, code lost:
    
        if (r10 == null) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01d5, code lost:
    
        if (r10.isDisappearanceAnimationInProgress() == false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01d7, code lost:
    
        r8.remove(r10);
        r13 = r52.displayingNode;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01dc, code lost:
    
        if (r13 == null) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01de, code lost:
    
        androidx.compose.ui.node.HitTestResultKt.invalidateDraw(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01e1, code lost:
    
        r10.animateAppearance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01e4, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01e7, code lost:
    
        startPlacementAnimationsIfNeeded(r9, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x011d, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0115, code lost:
    
        r1 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x00f7, code lost:
    
        r2 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01fa, code lost:
    
        r38 = r2;
        r32 = r14;
        r2 = r28;
        removeInfoForKey(r9.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0216, code lost:
    
        r32 = r14;
        r2 = r28;
        r1 = new int[r5];
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x021e, code lost:
    
        if (r19 == false) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0220, code lost:
    
        if (r6 == null) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0226, code lost:
    
        if (r15.isEmpty() != false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0046, code lost:
    
        r7 = r52.firstVisibleIndex;
        r9 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) kotlin.collections.CollectionsKt.firstOrNull((java.util.List) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x022d, code lost:
    
        if (r15.size() <= 1) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x022f, code lost:
    
        r4 = 2;
        kotlin.collections.CollectionsKt__MutableCollectionsJVMKt.sortWith(r15, new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1(r6, r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0238, code lost:
    
        r3 = r15.size();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x023d, code lost:
    
        if (r4 >= r3) goto L271;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x023f, code lost:
    
        r7 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r15.get(r4);
        r9 = r62 - updateAndReturnOffsetFor(r1, r7);
        r10 = r2.get(r7.getKey());
        r10.getClass();
        initializeAnimation(r7, r9, (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r10);
        startPlacementAnimationsIfNeeded(r7, false);
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0262, code lost:
    
        r9 = 0;
        java.util.Arrays.fill(r1, 0, r5, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x026c, code lost:
    
        if (r13.isEmpty() != false) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004e, code lost:
    
        if (r9 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0273, code lost:
    
        if (r13.size() <= 1) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0275, code lost:
    
        kotlin.collections.CollectionsKt__MutableCollectionsJVMKt.sortWith(r13, new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1(r6, r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x027d, code lost:
    
        r3 = r13.size();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0282, code lost:
    
        if (r4 >= r3) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0284, code lost:
    
        r7 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r13.get(r4);
        r9 = (updateAndReturnOffsetFor(r1, r7) + r63) - r7.getMainAxisSizeWithSpacings();
        r10 = r2.get(r7.getKey());
        r10.getClass();
        initializeAnimation(r7, r9, (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r10);
        startPlacementAnimationsIfNeeded(r7, false);
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x02ac, code lost:
    
        java.util.Arrays.fill(r1, 0, r5, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0267, code lost:
    
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x02b0, code lost:
    
        r3 = r32;
        r4 = r3.elements;
        r7 = r3.metadata;
        r9 = r7.length - 2;
        r11 = r52.movingAwayToEndBound;
        r12 = r52.movingAwayToStartBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
    
        r9 = r9.getIndex();
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02bf, code lost:
    
        if (r9 < 0) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x02c1, code lost:
    
        r28 = r11;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02c4, code lost:
    
        r10 = r7[r14];
        r32 = r3;
        r31 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x02d2, code lost:
    
        if (((((~r10) << 7) & r10) & (-9187201950435737472L)) == (-9187201950435737472L)) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02d4, code lost:
    
        r3 = 8 - ((~(r14 - r9)) >>> 31);
        r33 = r10;
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x02e0, code lost:
    
        if (r4 >= r3) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02e6, code lost:
    
        if ((r33 & 255) >= 128) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02e8, code lost:
    
        r10 = r31[(r14 << 3) + r4];
        r11 = (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r2.get(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02f3, code lost:
    
        if (r11 != null) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0056, code lost:
    
        r52.firstVisibleIndex = r9;
        r11 = r53 & 4294967295L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02f7, code lost:
    
        r36 = r2;
        r35 = r14;
        r2 = r57.getIndex(r10);
        r46 = r4;
        r4 = java.lang.Math.min(r5, r11.span);
        r11.span = r4;
        r47 = r7;
        r11.lane = java.lang.Math.min(r5 - r4, r11.lane);
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0318, code lost:
    
        if (r2 != (-1)) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x031a, code lost:
    
        r2 = r11.animations;
        r7 = r2.length;
        r4 = 0;
        r30 = false;
        r38 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0322, code lost:
    
        if (r4 >= r7) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0324, code lost:
    
        r39 = r2;
        r2 = r39[r4];
        r40 = r38 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x032a, code lost:
    
        if (r2 == null) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0330, code lost:
    
        if (r2.isDisappearanceAnimationInProgress() == false) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0332, code lost:
    
        r49 = r1;
        r41 = r4;
        r50 = r9;
        r2 = r10;
        r9 = r12;
        r48 = r15;
        r14 = r16;
        r1 = r28;
        r51 = r36;
        r30 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0403, code lost:
    
        r16 = r7;
        r7 = r11;
        r28 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0062, code lost:
    
        if (r59 != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0408, code lost:
    
        r4 = r41 + 1;
        r10 = r2;
        r11 = r7;
        r12 = r9;
        r7 = r16;
        r13 = r28;
        r2 = r39;
        r38 = r40;
        r15 = r48;
        r9 = r50;
        r36 = r51;
        r28 = r1;
        r16 = r14;
        r1 = r49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0349, code lost:
    
        r41 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0357, code lost:
    
        if (((java.lang.Boolean) r2.isDisappearanceAnimationFinished$delegate.getValue()).booleanValue() == false) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0359, code lost:
    
        r2.release();
        r11.animations[r38] = r16;
        r8.remove(r2);
        r2 = r52.displayingNode;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0365, code lost:
    
        if (r2 == null) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0367, code lost:
    
        androidx.compose.ui.node.HitTestResultKt.invalidateDraw(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x036a, code lost:
    
        r49 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x03f4, code lost:
    
        r50 = r9;
        r2 = r10;
        r9 = r12;
        r48 = r15;
        r14 = r16;
        r1 = r28;
        r51 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x036e, code lost:
    
        r4 = r13;
        r13 = r2.layer;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0064, code lost:
    
        if (r61 != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0371, code lost:
    
        if (r13 == null) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0373, code lost:
    
        r42 = r12;
        r12 = r2.fadeOutSpec;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x037b, code lost:
    
        if (r2.isDisappearanceAnimationInProgress() != false) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x037d, code lost:
    
        if (r12 != null) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x038e, code lost:
    
        r2.setDisappearanceAnimationInProgress(true);
        r4 = r2.coroutineScope;
        r49 = r1;
        r50 = r9;
        r14 = r16;
        r1 = r28;
        r51 = r36;
        r9 = r42;
        r28 = r4;
        r48 = r15;
        r16 = r7;
        r7 = r11;
        r11 = r2;
        r2 = r10;
        kotlinx.coroutines.JobKt.launch$default(r4, r14, r14, new androidx.compose.foundation.gestures.DraggableNode$drag$2(r11, r12, r13, (kotlin.coroutines.Continuation) r14, 20), 3);
        r14 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x03d9, code lost:
    
        if (r11.isDisappearanceAnimationInProgress() == false) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x03db, code lost:
    
        r8.add(r11);
        r4 = r52.displayingNode;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x03e0, code lost:
    
        if (r4 == null) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x03e2, code lost:
    
        androidx.compose.ui.node.HitTestResultKt.invalidateDraw(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0067, code lost:
    
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x03e5, code lost:
    
        r30 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x03e8, code lost:
    
        r11.release();
        r7.animations[r38] = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x037f, code lost:
    
        r49 = r1;
        r50 = r9;
        r48 = r15;
        r14 = r16;
        r1 = r28;
        r51 = r36;
        r9 = r42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x03cb, code lost:
    
        r28 = r4;
        r16 = r7;
        r7 = r11;
        r11 = r2;
        r2 = r10;
        r14 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x03be, code lost:
    
        r49 = r1;
        r50 = r9;
        r9 = r12;
        r48 = r15;
        r14 = r16;
        r1 = r28;
        r51 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x03f0, code lost:
    
        r49 = r1;
        r41 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0427, code lost:
    
        r49 = r1;
        r50 = r9;
        r2 = r10;
        r9 = r12;
        r48 = r15;
        r1 = r28;
        r51 = r36;
        r28 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006c, code lost:
    
        r13 = r10.keys;
        r14 = r10.metadata;
        r15 = r14.length - 2;
        r14 = r52.movingAwayKeys;
        r28 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x043a, code lost:
    
        if (r30 != false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x043c, code lost:
    
        removeInfoForKey(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x043f, code lost:
    
        r10 = r35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x04da, code lost:
    
        r33 = r33 >> 8;
        r4 = r46 + 1;
        r12 = r9;
        r14 = r10;
        r13 = r28;
        r7 = r47;
        r15 = r48;
        r9 = r50;
        r2 = r51;
        r16 = null;
        r5 = r60;
        r28 = r1;
        r1 = r49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0445, code lost:
    
        r49 = r1;
        r50 = r9;
        r9 = r12;
        r48 = r15;
        r1 = r28;
        r51 = r36;
        r28 = r13;
        r10 = r35;
        r12 = r11.constraints;
        r12.getClass();
        r40 = r58.mo244getAndMeasurehBUhpc(r2, r11.lane, r11.span, r12.value);
        r40.setNonScrollableItem();
        r12 = r11.animations;
        r13 = r12.length;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x047c, code lost:
    
        if (r14 >= r13) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x047e, code lost:
    
        r15 = r12[r14];
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0480, code lost:
    
        if (r15 == null) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0084, code lost:
    
        if (r15 < 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x048f, code lost:
    
        if (((java.lang.Boolean) r15.isPlacementAnimationInProgress$delegate.getValue()).booleanValue() != true) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x04a2, code lost:
    
        r11.updateAnimation(r40, r64, r65, r62, r63, r11.crossAxisOffset);
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x04b7, code lost:
    
        if (r2 >= r52.firstVisibleIndex) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x04b9, code lost:
    
        r9.add(r40);
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x04bd, code lost:
    
        r1.add(r40);
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x0492, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0086, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0496, code lost:
    
        if (r6 == null) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x049c, code lost:
    
        if (r2 != r6.getIndex(r10)) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x049e, code lost:
    
        removeInfoForKey(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x04c3, code lost:
    
        r49 = r1;
        r51 = r2;
        r46 = r4;
        r47 = r7;
        r50 = r9;
        r9 = r12;
        r10 = r14;
        r48 = r15;
        r1 = r28;
        r28 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x04f5, code lost:
    
        r4 = r57;
        r49 = r1;
        r51 = r2;
        r47 = r7;
        r50 = r9;
        r9 = r12;
        r10 = r14;
        r48 = r15;
        r1 = r28;
        r28 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x050b, code lost:
    
        if (r3 != 8) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x050d, code lost:
    
        r3 = r50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0527, code lost:
    
        if (r10 == r3) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0087, code lost:
    
        r9 = r14[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0529, code lost:
    
        r14 = r10 + 1;
        r5 = r60;
        r12 = r9;
        r13 = r28;
        r4 = r31;
        r7 = r47;
        r15 = r48;
        r2 = r51;
        r16 = null;
        r28 = r1;
        r9 = r3;
        r3 = r32;
        r1 = r49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0555, code lost:
    
        if (r9.isEmpty() != false) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x055c, code lost:
    
        if (r9.size() <= 1) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x055e, code lost:
    
        r5 = 3;
        kotlin.collections.CollectionsKt__MutableCollectionsJVMKt.sortWith(r9, new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1(r4, r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x0567, code lost:
    
        r2 = r9.size();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x056c, code lost:
    
        if (r3 >= r2) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x056e, code lost:
    
        r5 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r9.get(r3);
        r7 = r51;
        r6 = r7.get(r5.getKey());
        r6.getClass();
        r6 = (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r6;
        r8 = r49;
        r10 = updateAndReturnOffsetFor(r8, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0093, code lost:
    
        if (((((~r9) << 7) & r9) & (-9187201950435737472L)) == (-9187201950435737472L)) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0589, code lost:
    
        if (r59 == false) goto L227;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x058b, code lost:
    
        r11 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) kotlin.collections.CollectionsKt.first((java.util.List) r56);
        r13 = r11.mo248getOffsetBjo55l4(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x059a, code lost:
    
        if (r11.isVertical() == false) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x059c, code lost:
    
        r11 = r13 & 4294967295L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x059e, code lost:
    
        r11 = (int) r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x05a5, code lost:
    
        r5.position(r11 - r10, r6.crossAxisOffset, r54, r55);
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x05af, code lost:
    
        if (r19 == false) goto L286;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x05b1, code lost:
    
        startPlacementAnimationsIfNeeded(r5, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x05b5, code lost:
    
        r3 = r3 + 1;
        r51 = r7;
        r49 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0095, code lost:
    
        r1 = 8 - ((~(r8 - r15)) >>> 31);
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x05a0, code lost:
    
        r11 = r13 >> 32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x05a3, code lost:
    
        r11 = r6.layoutMinOffset;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x05bc, code lost:
    
        r10 = r54;
        r12 = r55;
        r8 = r49;
        r7 = r51;
        java.util.Arrays.fill(r8, 0, r60, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x05d7, code lost:
    
        if (r1.isEmpty() != false) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x05d9, code lost:
    
        r5 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x05de, code lost:
    
        if (r1.size() <= 1) goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x05e0, code lost:
    
        kotlin.collections.CollectionsKt__MutableCollectionsJVMKt.sortWith(r1, new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1(r4, r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x009d, code lost:
    
        if (r2 >= r1) goto L252;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x05e8, code lost:
    
        r2 = r1.size();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x05ed, code lost:
    
        if (r3 >= r2) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x05ef, code lost:
    
        r4 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r1.get(r3);
        r5 = r7.get(r4.getKey());
        r5.getClass();
        r5 = (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r5;
        r4.position((r5.layoutMaxOffset - r4.getMainAxisSizeWithSpacings()) + updateAndReturnOffsetFor(r8, r4), r5.crossAxisOffset, r10, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x0614, code lost:
    
        if (r19 == false) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x0616, code lost:
    
        startPlacementAnimationsIfNeeded(r4, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0619, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x061c, code lost:
    
        java.util.Collections.reverse(r9);
        r56.addAll(0, r9);
        r56.addAll(r1);
        r48.clear();
        r28.clear();
        r9.clear();
        r1.clear();
        r32.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x0637, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x05cb, code lost:
    
        r10 = r54;
        r12 = r55;
        r8 = r49;
        r7 = r51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x0510, code lost:
    
        r4 = r57;
        r49 = r1;
        r51 = r2;
        r47 = r7;
        r50 = r9;
        r9 = r12;
        r10 = r14;
        r48 = r15;
        r1 = r28;
        r28 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0543, code lost:
    
        r4 = r57;
        r49 = r1;
        r51 = r2;
        r32 = r3;
        r1 = r11;
        r9 = r12;
        r28 = r13;
        r48 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x006a, code lost:
    
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0055, code lost:
    
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a3, code lost:
    
        if ((r9 & 255) >= 128) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a5, code lost:
    
        r31 = r2;
        r14.add(r13[(r8 << 3) + r2]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b3, code lost:
    
        r9 = r9 >> 8;
        r2 = r31 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b1, code lost:
    
        r31 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ba, code lost:
    
        if (r1 != 8) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00bc, code lost:
    
        if (r8 == r15) goto L251;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00be, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c1, code lost:
    
        r1 = r3.size();
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c6, code lost:
    
        r8 = r52.disappearingItems;
        r13 = r52.movingInFromEndBound;
        r15 = r52.movingInFromStartBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00cc, code lost:
    
        if (r2 >= r1) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ce, code lost:
    
        r9 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r3.get(r2);
        r14.remove(r9.getKey());
        r10 = r9.getPlaceablesCount();
        r37 = r1;
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e6, code lost:
    
        if (r1 >= r10) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e8, code lost:
    
        r38 = r2;
        r2 = r9.getParentData(r1);
        r31 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f2, code lost:
    
        if ((r2 instanceof androidx.compose.foundation.lazy.layout.LazyLayoutAnimationSpecsNode) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f4, code lost:
    
        r2 = (androidx.compose.foundation.lazy.layout.LazyLayoutAnimationSpecsNode) r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f9, code lost:
    
        if (r2 == null) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01ec, code lost:
    
        r1 = r31 + 1;
        r2 = r38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00fb, code lost:
    
        r2 = r28;
        r31 = (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r2.get(r9.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0109, code lost:
    
        if (r6 == null) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x010b, code lost:
    
        r1 = r6.getIndex(r9.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0117, code lost:
    
        if (r1 != (-1)) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0119, code lost:
    
        if (r6 == null) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x011b, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x011e, code lost:
    
        if (r31 != null) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0120, code lost:
    
        r8 = new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo(r52);
        androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo.updateAnimation$default(r8, r9, r64, r65, r62, r63);
        r28 = r10;
        r2.set(r9.getKey(), r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0141, code lost:
    
        if (r9.getIndex() == r1) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0144, code lost:
    
        if (r1 == (-1)) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0146, code lost:
    
        if (r1 >= r7) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0148, code lost:
    
        r15.add(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x014f, code lost:
    
        r32 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0207, code lost:
    
        r3 = r56;
        r28 = r2;
        r14 = r32;
        r2 = r38 + 1;
        r1 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x014c, code lost:
    
        r13.add(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0153, code lost:
    
        r30 = r9.mo248getOffsetBjo55l4(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x015c, code lost:
    
        if (r9.isVertical() == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x015e, code lost:
    
        r3 = r30 & 4294967295L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0165, code lost:
    
        initializeAnimation(r9, (int) r3, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0168, code lost:
    
        if (r28 == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x016a, code lost:
    
        r1 = r8.animations;
        r3 = r1.length;
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x016e, code lost:
    
        if (r4 >= r3) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0170, code lost:
    
        r8 = r1[r4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0172, code lost:
    
        if (r8 == null) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0174, code lost:
    
        r8.animateAppearance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0177, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0162, code lost:
    
        r3 = r30 >> 32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x017a, code lost:
    
        r28 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x017c, code lost:
    
        if (r19 == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x017e, code lost:
    
        androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo.updateAnimation$default(r31, r9, r64, r65, r62, r63);
        r3 = r31.animations;
        r4 = r3.length;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0191, code lost:
    
        if (r10 >= r4) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0193, code lost:
    
        r13 = r3[r10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0195, code lost:
    
        if (r13 == null) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0197, code lost:
    
        r30 = r4;
        r32 = r14;
        r61 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01a9, code lost:
    
        if (androidx.compose.ui.unit.IntOffset.m752equalsimpl0(r13.rawOffset, 9223372034707292159L) != false) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01ab, code lost:
    
        r13.rawOffset = androidx.compose.ui.unit.IntOffset.m754plusqkQi6aY(r13.rawOffset, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01ba, code lost:
    
        r10 = r10 + 1;
        r3 = r61;
        r4 = r30;
        r14 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01b4, code lost:
    
        r61 = r3;
        r30 = r4;
        r32 = r14;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v23, types: [kotlin.coroutines.Continuation, kotlin.coroutines.CoroutineContext, kotlinx.coroutines.CoroutineStart] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasured(int r53, int r54, int r55, java.util.ArrayList r56, de.cketti.changelog.XmlParser r57, org.minidns.dnsqueryresult.DnsQueryResult r58, boolean r59, int r60, boolean r61, int r62, int r63, kotlinx.coroutines.CoroutineScope r64, androidx.compose.ui.graphics.GraphicsContext r65) {
        /*
            Method dump skipped, instructions count: 1592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.onMeasured(int, int, int, java.util.ArrayList, de.cketti.changelog.XmlParser, org.minidns.dnsqueryresult.DnsQueryResult, boolean, int, boolean, int, int, kotlinx.coroutines.CoroutineScope, androidx.compose.ui.graphics.GraphicsContext):void");
    }

    public final void releaseAnimations() {
        MutableScatterMap mutableScatterMap = this.keyToItemInfoMap;
        if (mutableScatterMap.isNotEmpty()) {
            Object[] objArr = mutableScatterMap.values;
            long[] jArr = mutableScatterMap.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                for (LazyLayoutItemAnimation lazyLayoutItemAnimation : ((ItemInfo) objArr[(i << 3) + i3]).animations) {
                                    if (lazyLayoutItemAnimation != null) {
                                        lazyLayoutItemAnimation.release();
                                    }
                                }
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        }
                    }
                    if (i == length) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
            mutableScatterMap.clear();
        }
    }

    public final void removeInfoForKey(Object obj) {
        ItemInfo itemInfo = (ItemInfo) this.keyToItemInfoMap.remove(obj);
        if (itemInfo != null) {
            for (LazyLayoutItemAnimation lazyLayoutItemAnimation : itemInfo.animations) {
                if (lazyLayoutItemAnimation != null) {
                    lazyLayoutItemAnimation.release();
                }
            }
        }
    }

    public final void startPlacementAnimationsIfNeeded(LazyLayoutMeasuredItem lazyLayoutMeasuredItem, boolean z) {
        Object obj = this.keyToItemInfoMap.get(lazyLayoutMeasuredItem.getKey());
        obj.getClass();
        LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr = ((ItemInfo) obj).animations;
        int length = lazyLayoutItemAnimationArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = lazyLayoutItemAnimationArr[i];
            int i3 = i2 + 1;
            if (lazyLayoutItemAnimation != null) {
                long mo248getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo248getOffsetBjo55l4(i2);
                long j = lazyLayoutItemAnimation.rawOffset;
                if (!IntOffset.m752equalsimpl0(j, 9223372034707292159L) && !IntOffset.m752equalsimpl0(j, mo248getOffsetBjo55l4)) {
                    long m753minusqkQi6aY = IntOffset.m753minusqkQi6aY(mo248getOffsetBjo55l4, j);
                    FiniteAnimationSpec finiteAnimationSpec = lazyLayoutItemAnimation.placementSpec;
                    if (finiteAnimationSpec != null) {
                        long m753minusqkQi6aY2 = IntOffset.m753minusqkQi6aY(((IntOffset) lazyLayoutItemAnimation.placementDelta$delegate.getValue()).packedValue, m753minusqkQi6aY);
                        lazyLayoutItemAnimation.m253setPlacementDeltagyyYBs(m753minusqkQi6aY2);
                        lazyLayoutItemAnimation.setPlacementAnimationInProgress(true);
                        lazyLayoutItemAnimation.isRunningMovingAwayAnimation = z;
                        JobKt.launch$default(lazyLayoutItemAnimation.coroutineScope, null, null, new ScrollableKt$semanticsScrollBy$2(lazyLayoutItemAnimation, finiteAnimationSpec, m753minusqkQi6aY2, null), 3);
                    }
                }
                lazyLayoutItemAnimation.rawOffset = mo248getOffsetBjo55l4;
            }
            i++;
            i2 = i3;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DisplayingDisappearingItemsNode extends Modifier.Node implements DrawModifierNode {
        public LazyLayoutItemAnimator animator;

        @Override // androidx.compose.ui.node.DrawModifierNode
        public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
            CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
            ArrayList arrayList = this.animator.disappearingItems;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                LazyLayoutItemAnimation lazyLayoutItemAnimation = (LazyLayoutItemAnimation) arrayList.get(i);
                GraphicsLayer graphicsLayer = lazyLayoutItemAnimation.layer;
                if (graphicsLayer != null) {
                    long j = lazyLayoutItemAnimation.finalOffset;
                    long j2 = graphicsLayer.topLeft;
                    float f = ((int) (j >> 32)) - ((int) (j2 >> 32));
                    float f2 = ((int) (j & 4294967295L)) - ((int) (4294967295L & j2));
                    ((PreviewView.AnonymousClass1) canvasDrawScope.drawContext.mOnInvalidateMenuCallback).translate(f, f2);
                    try {
                        RelationUtil.drawLayer(layoutNodeDrawScope, graphicsLayer);
                    } finally {
                        ((PreviewView.AnonymousClass1) canvasDrawScope.drawContext.mOnInvalidateMenuCallback).translate(-f, -f2);
                    }
                }
            }
            layoutNodeDrawScope.drawContent();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DisplayingDisappearingItemsNode) && Intrinsics.areEqual(this.animator, ((DisplayingDisappearingItemsNode) obj).animator);
        }

        public final int hashCode() {
            return this.animator.hashCode();
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void onAttach() {
            this.animator.displayingNode = this;
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void onDetach() {
            LazyLayoutItemAnimator lazyLayoutItemAnimator = this.animator;
            lazyLayoutItemAnimator.releaseAnimations();
            lazyLayoutItemAnimator.keyIndexMap = null;
            lazyLayoutItemAnimator.firstVisibleIndex = -1;
        }

        public final String toString() {
            return "DisplayingDisappearingItemsNode(animator=" + this.animator + ')';
        }

        @Override // androidx.compose.ui.node.DrawModifierNode
        public final /* synthetic */ void onMeasureResultChanged() {
        }
    }
}
