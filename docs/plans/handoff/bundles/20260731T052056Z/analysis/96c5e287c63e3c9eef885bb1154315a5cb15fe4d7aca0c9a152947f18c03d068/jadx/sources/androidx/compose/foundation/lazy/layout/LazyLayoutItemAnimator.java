package androidx.compose.foundation.lazy.layout;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.http.StatusLine;
import org.wikipedia.talk.TalkTopicsViewModel$undoSave$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyLayoutItemAnimator {
    public final ArrayList disappearingItems;
    public DisplayingDisappearingItemsNode displayingNode;
    public int firstVisibleIndex;
    public StatusLine keyIndexMap;
    public final MutableScatterMap keyToItemInfoMap;
    public final Modifier modifier;
    public final MutableScatterSet movingAwayKeys;
    public final ArrayList movingAwayToEndBound;
    public final ArrayList movingAwayToStartBound;
    public final ArrayList movingInFromEndBound;
    public final ArrayList movingInFromStartBound;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    final /* data */ class DisplayingDisappearingItemsElement extends ModifierNodeElement {
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
            long mo158getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo158getOffsetBjo55l4(0);
            itemInfo.updateAnimation(lazyLayoutMeasuredItem, coroutineScope, graphicsContext, i, i2, (int) (!lazyLayoutMeasuredItem.isVertical() ? mo158getOffsetBjo55l4 & 4294967295L : mo158getOffsetBjo55l4 >> 32));
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
            this.constraints = new Constraints(lazyLayoutMeasuredItem.mo156getConstraintsmsEJaDk());
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
                        lazyLayoutItemAnimation4 = new LazyLayoutItemAnimation(coroutineScope, graphicsContext, new NavBackStackEntry$$ExternalSyntheticLambda0(6, LazyLayoutItemAnimator.this));
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
        long mo158getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo158getOffsetBjo55l4(0);
        long m714copyiSbpLlY$default = lazyLayoutMeasuredItem.isVertical() ? IntOffset.m714copyiSbpLlY$default(0, i, 1, mo158getOffsetBjo55l4) : IntOffset.m714copyiSbpLlY$default(i, 0, 2, mo158getOffsetBjo55l4);
        LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr = itemInfo.animations;
        int length = lazyLayoutItemAnimationArr.length;
        int i3 = 0;
        while (i2 < length) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = lazyLayoutItemAnimationArr[i2];
            int i4 = i3 + 1;
            if (lazyLayoutItemAnimation != null) {
                lazyLayoutItemAnimation.rawOffset = IntOffset.m717plusqkQi6aY(m714copyiSbpLlY$default, IntOffset.m716minusqkQi6aY(lazyLayoutMeasuredItem.mo158getOffsetBjo55l4(i3), mo158getOffsetBjo55l4));
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
    public final long m164getMinSizeToFitDisappearingItemsYbymL2g() {
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

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01c1, code lost:
    
        r30 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01c5, code lost:
    
        if (r2 == false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01c7, code lost:
    
        r1 = r28.animations;
        r2 = r1.length;
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01cb, code lost:
    
        if (r5 >= r2) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01cd, code lost:
    
        r6 = r1[r5];
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01cf, code lost:
    
        if (r6 == null) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01d5, code lost:
    
        if (r6.isDisappearanceAnimationInProgress() == false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01d7, code lost:
    
        r3.remove(r6);
        r8 = r48.displayingNode;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01dc, code lost:
    
        if (r8 == null) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01de, code lost:
    
        androidx.compose.ui.node.HitTestResultKt.invalidateDraw(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01e1, code lost:
    
        r6.animateAppearance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01e4, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01e7, code lost:
    
        startPlacementAnimationsIfNeeded(r14, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x011c, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0114, code lost:
    
        r1 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x00f8, code lost:
    
        r2 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01f4, code lost:
    
        r35 = r2;
        r30 = r8;
        removeInfoForKey(r14.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0207, code lost:
    
        r1 = r57;
        r2 = new int[r1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x020b, code lost:
    
        if (r10 == false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x020d, code lost:
    
        if (r7 == null) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0046, code lost:
    
        r8 = r48.firstVisibleIndex;
        r9 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) kotlin.collections.CollectionsKt.firstOrNull((java.util.List) r52);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0213, code lost:
    
        if (r9.isEmpty() != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x021a, code lost:
    
        if (r9.size() <= 1) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x021c, code lost:
    
        r12 = 2;
        kotlin.collections.CollectionsKt__MutableCollectionsJVMKt.sortWith(r9, new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1(r7, r12));
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0225, code lost:
    
        r8 = r9.size();
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x022a, code lost:
    
        if (r12 >= r8) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x022c, code lost:
    
        r13 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r9.get(r12);
        r14 = r59 - updateAndReturnOffsetFor(r2, r13);
        r5 = r11.get(r13.getKey());
        r5.getClass();
        initializeAnimation(r13, r14, (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r5);
        startPlacementAnimationsIfNeeded(r13, false);
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x024f, code lost:
    
        r5 = 0;
        kotlin.collections.ArraysKt___ArraysKt.fill$default(r2, 0, 0, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004e, code lost:
    
        if (r9 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x025a, code lost:
    
        if (r6.isEmpty() != false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0261, code lost:
    
        if (r6.size() <= 1) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0263, code lost:
    
        kotlin.collections.CollectionsKt__MutableCollectionsJVMKt.sortWith(r6, new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1(r7, r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x026b, code lost:
    
        r5 = r6.size();
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0270, code lost:
    
        if (r8 >= r5) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0272, code lost:
    
        r12 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r6.get(r8);
        r13 = (updateAndReturnOffsetFor(r2, r12) + r60) - r12.getMainAxisSizeWithSpacings();
        r14 = r11.get(r12.getKey());
        r14.getClass();
        initializeAnimation(r12, r13, (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r14);
        startPlacementAnimationsIfNeeded(r12, false);
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x029a, code lost:
    
        kotlin.collections.ArraysKt___ArraysKt.fill$default(r2, 0, 0, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0255, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
    
        r9 = r9.getIndex();
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x029f, code lost:
    
        r5 = r15.elements;
        r8 = r15.metadata;
        r12 = r8.length - 2;
        r14 = r48.movingAwayToEndBound;
        r29 = r15;
        r15 = r48.movingAwayToStartBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x02ac, code lost:
    
        if (r12 < 0) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02ae, code lost:
    
        r31 = r14;
        r30 = r15;
        r15 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x02b3, code lost:
    
        r13 = r8[r15];
        r33 = r5;
        r32 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02c1, code lost:
    
        if (((((~r13) << 7) & r13) & (-9187201950435737472L)) == (-9187201950435737472L)) goto L213;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x02c3, code lost:
    
        r5 = 8 - ((~(r15 - r12)) >>> 31);
        r34 = r13;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02cf, code lost:
    
        if (r6 >= r5) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02d5, code lost:
    
        if ((r34 & 255) >= 128) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02d7, code lost:
    
        r13 = r33[(r15 << 3) + r6];
        r14 = (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r11.get(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0056, code lost:
    
        r48.firstVisibleIndex = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02e2, code lost:
    
        if (r14 != null) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x02e6, code lost:
    
        r43 = r6;
        r36 = r15;
        r6 = r53.getIndex(r13);
        r44 = r8;
        r8 = java.lang.Math.min(r1, r14.span);
        r14.span = r8;
        r14.lane = java.lang.Math.min(r1 - r8, r14.lane);
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0305, code lost:
    
        if (r6 != (-1)) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0307, code lost:
    
        r6 = r14.animations;
        r8 = r6.length;
        r1 = 0;
        r37 = false;
        r38 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x030f, code lost:
    
        if (r1 >= r8) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0311, code lost:
    
        r39 = r12;
        r12 = r6[r1];
        r40 = r38 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0317, code lost:
    
        if (r12 == null) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x031d, code lost:
    
        if (r12.isDisappearanceAnimationInProgress() == false) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x031f, code lost:
    
        r41 = r1;
        r45 = r2;
        r46 = r6;
        r58 = r10;
        r2 = r11;
        r6 = r13;
        r15 = r16;
        r4 = r30;
        r10 = r31;
        r37 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005f, code lost:
    
        if (r55 == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x03e7, code lost:
    
        r30 = r9;
        r31 = r29;
        r29 = r8;
        r8 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x03ef, code lost:
    
        r1 = r41 + 1;
        r11 = r2;
        r13 = r6;
        r14 = r8;
        r16 = r15;
        r8 = r29;
        r9 = r30;
        r29 = r31;
        r12 = r39;
        r38 = r40;
        r2 = r45;
        r6 = r46;
        r30 = r4;
        r31 = r10;
        r10 = r58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0333, code lost:
    
        r41 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0341, code lost:
    
        if (((java.lang.Boolean) r12.isDisappearanceAnimationFinished$delegate.getValue()).booleanValue() == false) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0343, code lost:
    
        r12.release();
        r14.animations[r38] = r16;
        r3.remove(r12);
        r1 = r48.displayingNode;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x034f, code lost:
    
        if (r1 == null) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0351, code lost:
    
        androidx.compose.ui.node.HitTestResultKt.invalidateDraw(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x03d9, code lost:
    
        r45 = r2;
        r46 = r6;
        r58 = r10;
        r2 = r11;
        r6 = r13;
        r15 = r16;
        r4 = r30;
        r10 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0356, code lost:
    
        r1 = r14;
        r14 = r12.layer;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
    
        r12 = r49 & 4294967295L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0359, code lost:
    
        if (r14 == null) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x035b, code lost:
    
        r42 = r13;
        r13 = r12.fadeOutSpec;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0363, code lost:
    
        if (r12.isDisappearanceAnimationInProgress() != false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0365, code lost:
    
        if (r13 != null) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0377, code lost:
    
        r46 = r6;
        r12.isDisappearanceAnimationInProgress$delegate.setValue(java.lang.Boolean.TRUE);
        r15 = r16;
        r58 = r10;
        r4 = r30;
        r10 = r31;
        r30 = r9;
        r31 = r29;
        r29 = r8;
        r8 = r1;
        r45 = r2;
        r2 = r11;
        r6 = r42;
        kotlinx.coroutines.AwaitKt.launch$default(r12.coroutineScope, r15, r15, new androidx.paging.SingleRunner$runInIsolation$2(r12, r13, r14, r15, 11), 3);
        r15 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x03c0, code lost:
    
        if (r12.isDisappearanceAnimationInProgress() == false) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x03c2, code lost:
    
        r3.add(r12);
        r1 = r48.displayingNode;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x03c7, code lost:
    
        if (r1 == null) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x03c9, code lost:
    
        androidx.compose.ui.node.HitTestResultKt.invalidateDraw(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0067, code lost:
    
        if (r56 != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x03cc, code lost:
    
        r37 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x03cf, code lost:
    
        r12.release();
        r8.animations[r38] = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0367, code lost:
    
        r45 = r2;
        r46 = r6;
        r58 = r10;
        r2 = r11;
        r15 = r16;
        r4 = r30;
        r10 = r31;
        r6 = r42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x03b4, code lost:
    
        r30 = r9;
        r31 = r29;
        r29 = r8;
        r8 = r1;
        r15 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x03a6, code lost:
    
        r45 = r2;
        r46 = r6;
        r58 = r10;
        r2 = r11;
        r6 = r13;
        r15 = r16;
        r4 = r30;
        r10 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x03d7, code lost:
    
        r41 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0410, code lost:
    
        r45 = r2;
        r58 = r10;
        r2 = r11;
        r39 = r12;
        r6 = r13;
        r4 = r30;
        r10 = r31;
        r30 = r9;
        r31 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0069, code lost:
    
        if (r58 != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x0423, code lost:
    
        if (r37 != false) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0425, code lost:
    
        removeInfoForKey(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0428, code lost:
    
        r47 = r3;
        r11 = r36;
        r12 = r39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x04d9, code lost:
    
        r34 = r34 >> 8;
        r6 = r43 + 1;
        r1 = r57;
        r15 = r11;
        r9 = r30;
        r29 = r31;
        r8 = r44;
        r3 = r47;
        r16 = null;
        r11 = r2;
        r30 = r4;
        r31 = r10;
        r2 = r45;
        r10 = r58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0432, code lost:
    
        r45 = r2;
        r58 = r10;
        r2 = r11;
        r4 = r30;
        r10 = r31;
        r11 = r36;
        r30 = r9;
        r31 = r29;
        r14 = r14.constraints;
        r14.getClass();
        r6 = r54.mo153getAndMeasurehBUhpc(r6, r14.lane, r14.span, r14.value);
        r6.setNonScrollableItem();
        r10 = r14.animations;
        r14 = r10.length;
        r15 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x046a, code lost:
    
        if (r15 >= r14) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x046c, code lost:
    
        r47 = r3;
        r3 = r10[r15];
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0470, code lost:
    
        if (r3 == null) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0472, code lost:
    
        r37 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0481, code lost:
    
        if (((java.lang.Boolean) r3.isPlacementAnimationInProgress$delegate.getValue()).booleanValue() != true) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x049d, code lost:
    
        r14.updateAnimation(r37, r61, r62, r59, r60, r14.crossAxisOffset);
        r3 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x04b2, code lost:
    
        if (r6 >= r48.firstVisibleIndex) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x04b4, code lost:
    
        r4.add(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x04b7, code lost:
    
        r10 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x04ba, code lost:
    
        r10 = r10;
        r10.add(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x0486, code lost:
    
        r15 = r15 + 1;
        r6 = r37;
        r3 = r47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x0484, code lost:
    
        r37 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006f, code lost:
    
        r14 = r11.keys;
        r15 = r11.metadata;
        r9 = r15.length - 2;
        r15 = r48.movingAwayKeys;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x048d, code lost:
    
        r47 = r3;
        r37 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0491, code lost:
    
        if (r7 == null) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x0497, code lost:
    
        if (r6 != r7.getIndex(r13)) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x0499, code lost:
    
        removeInfoForKey(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x04c2, code lost:
    
        r45 = r2;
        r47 = r3;
        r43 = r6;
        r44 = r8;
        r58 = r10;
        r2 = r11;
        r11 = r15;
        r4 = r30;
        r10 = r31;
        r30 = r9;
        r31 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x04f7, code lost:
    
        r1 = r53;
        r45 = r2;
        r47 = r3;
        r44 = r8;
        r58 = r10;
        r2 = r11;
        r11 = r15;
        r4 = r30;
        r10 = r31;
        r30 = r9;
        r31 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0087, code lost:
    
        if (r9 < 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x050d, code lost:
    
        if (r5 != 8) goto L277;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x0526, code lost:
    
        if (r11 == r12) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x0528, code lost:
    
        r15 = r11 + 1;
        r1 = r57;
        r11 = r2;
        r9 = r30;
        r29 = r31;
        r6 = r32;
        r5 = r33;
        r8 = r44;
        r2 = r45;
        r3 = r47;
        r16 = null;
        r30 = r4;
        r31 = r10;
        r10 = r58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x055a, code lost:
    
        if (r4.isEmpty() != false) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x0561, code lost:
    
        if (r4.size() <= 1) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0563, code lost:
    
        r9 = 3;
        kotlin.collections.CollectionsKt__MutableCollectionsJVMKt.sortWith(r4, new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1(r1, r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x056c, code lost:
    
        r3 = r4.size();
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0089, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0571, code lost:
    
        if (r5 >= r3) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0573, code lost:
    
        r6 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r4.get(r5);
        r7 = r2.get(r6.getKey());
        r7.getClass();
        r7 = (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r7;
        r8 = r45;
        r9 = updateAndReturnOffsetFor(r8, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x058c, code lost:
    
        if (r56 == false) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x058e, code lost:
    
        r11 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) kotlin.collections.CollectionsKt.first((java.util.List) r52);
        r14 = r11.mo158getOffsetBjo55l4(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x059d, code lost:
    
        if (r11.isVertical() == false) goto L230;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x059f, code lost:
    
        r11 = r14 & 4294967295L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x05a1, code lost:
    
        r11 = (int) r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x05a8, code lost:
    
        r6.position(r11 - r9, r7.crossAxisOffset, r50, r51);
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x05b2, code lost:
    
        if (r58 == false) goto L290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x05b4, code lost:
    
        startPlacementAnimationsIfNeeded(r6, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008a, code lost:
    
        r2 = r15[r1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x05b8, code lost:
    
        r5 = r5 + 1;
        r45 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x05a3, code lost:
    
        r11 = r14 >> 32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x05a6, code lost:
    
        r11 = r7.layoutMinOffset;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x05bd, code lost:
    
        r9 = r50;
        r12 = r51;
        r8 = r45;
        kotlin.collections.ArraysKt___ArraysKt.fill$default(r8, 0, 0, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x05d3, code lost:
    
        if (r10.isEmpty() != false) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x05d5, code lost:
    
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0096, code lost:
    
        if (((((~r2) << 7) & r2) & (-9187201950435737472L)) == (-9187201950435737472L)) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x05da, code lost:
    
        if (r10.size() <= 1) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x05dc, code lost:
    
        kotlin.collections.CollectionsKt__MutableCollectionsJVMKt.sortWith(r10, new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1(r1, r6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x05e4, code lost:
    
        r1 = r10.size();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x05e9, code lost:
    
        if (r3 >= r1) goto L291;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x05eb, code lost:
    
        r5 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r10.get(r3);
        r6 = r2.get(r5.getKey());
        r6.getClass();
        r6 = (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r6;
        r5.position((r6.layoutMaxOffset - r5.getMainAxisSizeWithSpacings()) + updateAndReturnOffsetFor(r8, r5), r6.crossAxisOffset, r9, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x0610, code lost:
    
        if (r58 == false) goto L293;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0612, code lost:
    
        startPlacementAnimationsIfNeeded(r5, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x0615, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0098, code lost:
    
        r5 = 8 - ((~(r1 - r9)) >>> 31);
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x0618, code lost:
    
        java.util.Collections.reverse(r4);
        r52.addAll(0, r4);
        r52.addAll(r10);
        r30.clear();
        r32.clear();
        r4.clear();
        r10.clear();
        r31.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x0633, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x05c9, code lost:
    
        r9 = r50;
        r12 = r51;
        r8 = r45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x0510, code lost:
    
        r1 = r53;
        r45 = r2;
        r47 = r3;
        r44 = r8;
        r58 = r10;
        r2 = r11;
        r11 = r15;
        r4 = r30;
        r10 = r31;
        r30 = r9;
        r31 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0547, code lost:
    
        r1 = r53;
        r45 = r2;
        r32 = r6;
        r30 = r9;
        r58 = r10;
        r2 = r11;
        r10 = r14;
        r4 = r15;
        r31 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x006e, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x0065, code lost:
    
        r12 = r49 << 32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a0, code lost:
    
        if (r6 >= r5) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0055, code lost:
    
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a6, code lost:
    
        if ((r2 & 255) >= 128) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a8, code lost:
    
        r29 = r2;
        r15.add(r14[(r1 << 3) + r6]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b6, code lost:
    
        r2 = r29 >> 8;
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b4, code lost:
    
        r29 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00bd, code lost:
    
        if (r5 != 8) goto L254;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bf, code lost:
    
        if (r1 == r9) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c1, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c6, code lost:
    
        r1 = r52.size();
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00cb, code lost:
    
        r3 = r48.disappearingItems;
        r6 = r48.movingInFromEndBound;
        r9 = r48.movingInFromStartBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d1, code lost:
    
        if (r2 >= r1) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d3, code lost:
    
        r14 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r52.get(r2);
        r15.remove(r14.getKey());
        r5 = r14.getPlaceablesCount();
        r34 = r1;
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e7, code lost:
    
        if (r1 >= r5) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e9, code lost:
    
        r35 = r2;
        r2 = r14.getParentData(r1);
        r28 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f3, code lost:
    
        if ((r2 instanceof androidx.compose.foundation.lazy.layout.LazyLayoutAnimationSpecsNode) == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00f5, code lost:
    
        r2 = (androidx.compose.foundation.lazy.layout.LazyLayoutAnimationSpecsNode) r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00fa, code lost:
    
        if (r2 == null) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01ec, code lost:
    
        r1 = r28 + 1;
        r2 = r35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00fc, code lost:
    
        r28 = (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r11.get(r14.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0108, code lost:
    
        if (r7 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x010a, code lost:
    
        r1 = r7.getIndex(r14.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0116, code lost:
    
        if (r1 != (-1)) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0118, code lost:
    
        if (r7 == null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x011a, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x011d, code lost:
    
        if (r28 != null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x011f, code lost:
    
        r3 = new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo(r48);
        androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo.updateAnimation$default(r3, r14, r61, r62, r59, r60);
        r11.set(r14.getKey(), r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x013e, code lost:
    
        if (r14.getIndex() == r1) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0141, code lost:
    
        if (r1 == (-1)) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0143, code lost:
    
        if (r1 >= r8) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0145, code lost:
    
        r9.add(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x014c, code lost:
    
        r30 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01ff, code lost:
    
        r2 = r35 + 1;
        r8 = r30;
        r1 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0149, code lost:
    
        r6.add(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0150, code lost:
    
        r5 = r14.mo158getOffsetBjo55l4(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0159, code lost:
    
        if (r14.isVertical() == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x015b, code lost:
    
        r5 = r5 & 4294967295L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0162, code lost:
    
        initializeAnimation(r14, (int) r5, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0165, code lost:
    
        if (r2 == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0167, code lost:
    
        r1 = r3.animations;
        r2 = r1.length;
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x016b, code lost:
    
        if (r3 >= r2) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x016d, code lost:
    
        r5 = r1[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x016f, code lost:
    
        if (r5 == null) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0171, code lost:
    
        r5.animateAppearance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0174, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x015f, code lost:
    
        r5 = r5 >> 32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0177, code lost:
    
        if (r10 == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0179, code lost:
    
        androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo.updateAnimation$default(r28, r14, r61, r62, r59, r60);
        r5 = r28.animations;
        r6 = r5.length;
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x018c, code lost:
    
        if (r9 >= r6) goto L268;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x018e, code lost:
    
        r55 = r2;
        r2 = r5[r9];
        r28 = r5;
        r29 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0196, code lost:
    
        if (r2 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0198, code lost:
    
        r30 = r8;
        r31 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01a7, code lost:
    
        if (androidx.compose.ui.unit.IntOffset.m715equalsimpl0(r2.rawOffset, 9223372034707292159L) != false) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01a9, code lost:
    
        r2.rawOffset = androidx.compose.ui.unit.IntOffset.m717plusqkQi6aY(r2.rawOffset, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01b6, code lost:
    
        r9 = r31 + 1;
        r2 = r55;
        r5 = r28;
        r6 = r29;
        r8 = r30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01b2, code lost:
    
        r30 = r8;
        r31 = r9;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v23, types: [kotlin.coroutines.Continuation, kotlin.coroutines.CoroutineContext, kotlinx.coroutines.CoroutineStart] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasured(int r49, int r50, int r51, java.util.ArrayList r52, okhttp3.internal.http.StatusLine r53, org.wikipedia.settings.BasePreferenceLoader r54, boolean r55, boolean r56, int r57, boolean r58, int r59, int r60, kotlinx.coroutines.CoroutineScope r61, androidx.compose.ui.graphics.GraphicsContext r62) {
        /*
            Method dump skipped, instructions count: 1588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.onMeasured(int, int, int, java.util.ArrayList, okhttp3.internal.http.StatusLine, org.wikipedia.settings.BasePreferenceLoader, boolean, boolean, int, boolean, int, int, kotlinx.coroutines.CoroutineScope, androidx.compose.ui.graphics.GraphicsContext):void");
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
                long mo158getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo158getOffsetBjo55l4(i2);
                long j = lazyLayoutItemAnimation.rawOffset;
                if (!IntOffset.m715equalsimpl0(j, 9223372034707292159L) && !IntOffset.m715equalsimpl0(j, mo158getOffsetBjo55l4)) {
                    long m716minusqkQi6aY = IntOffset.m716minusqkQi6aY(mo158getOffsetBjo55l4, j);
                    FiniteAnimationSpec finiteAnimationSpec = lazyLayoutItemAnimation.placementSpec;
                    if (finiteAnimationSpec != null) {
                        long m716minusqkQi6aY2 = IntOffset.m716minusqkQi6aY(((IntOffset) lazyLayoutItemAnimation.placementDelta$delegate.getValue()).packedValue, m716minusqkQi6aY);
                        lazyLayoutItemAnimation.m163setPlacementDeltagyyYBs(m716minusqkQi6aY2);
                        lazyLayoutItemAnimation.isPlacementAnimationInProgress$delegate.setValue(Boolean.TRUE);
                        lazyLayoutItemAnimation.isRunningMovingAwayAnimation = z;
                        AwaitKt.launch$default(lazyLayoutItemAnimation.coroutineScope, null, null, new TalkTopicsViewModel$undoSave$1(lazyLayoutItemAnimation, finiteAnimationSpec, m716minusqkQi6aY2, (Continuation) null, 3), 3);
                    }
                }
                lazyLayoutItemAnimation.rawOffset = mo158getOffsetBjo55l4;
            }
            i++;
            i2 = i3;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                    ((PopupMenu$1) canvasDrawScope.drawContext.rootElement).translate(f, f2);
                    try {
                        graphicsLayer.draw$ui_graphics(layoutNodeDrawScope.getDrawContext().getCanvas(), (GraphicsLayer) layoutNodeDrawScope.getDrawContext().cssRules);
                    } finally {
                        ((PopupMenu$1) canvasDrawScope.drawContext.rootElement).translate(-f, -f2);
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
        public final void onMeasureResultChanged() {
        }
    }
}
