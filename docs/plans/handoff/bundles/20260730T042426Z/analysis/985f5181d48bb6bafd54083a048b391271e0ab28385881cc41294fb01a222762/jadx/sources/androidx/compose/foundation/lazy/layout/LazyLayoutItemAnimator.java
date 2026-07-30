package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import ch.qos.logback.core.CoreConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: LazyLayoutItemAnimator.kt */
/* loaded from: classes.dex */
public final class LazyLayoutItemAnimator {
    private DrawModifierNode displayingNode;
    private int firstVisibleIndex;
    private LazyLayoutKeyIndexMap keyIndexMap;
    private final MutableScatterMap keyToItemInfoMap = ScatterMapKt.mutableScatterMapOf();
    private final MutableScatterSet movingAwayKeys = ScatterSetKt.mutableScatterSetOf();
    private final List movingInFromStartBound = new ArrayList();
    private final List movingInFromEndBound = new ArrayList();
    private final List movingAwayToStartBound = new ArrayList();
    private final List movingAwayToEndBound = new ArrayList();
    private final List disappearingItems = new ArrayList();
    private final Modifier modifier = new DisplayingDisappearingItemsElement(this);

    /* JADX WARN: Code restructure failed: missing block: B:102:0x01fb, code lost:
    
        r9 = 1;
        startPlacementAnimationsIfNeeded$default(r35, r5, false, 2, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0107, code lost:
    
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0100, code lost:
    
        r14 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0203, code lost:
    
        r26 = r0;
        r27 = r13;
        r9 = 1;
        removeInfoForKey(r5.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x021b, code lost:
    
        r27 = r13;
        r0 = 0;
        r7 = new int[r11];
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0046, code lost:
    
        r35.firstVisibleIndex = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0222, code lost:
    
        if (r1 >= r11) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0224, code lost:
    
        r7[r1] = r0;
        r1 = r1 + 1;
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0229, code lost:
    
        if (r42 == false) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x022b, code lost:
    
        if (r27 == null) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0233, code lost:
    
        if (r35.movingInFromStartBound.isEmpty() != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0235, code lost:
    
        r0 = r35.movingInFromStartBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x023b, code lost:
    
        if (r0.size() <= 1) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x023d, code lost:
    
        r8 = r27;
        kotlin.collections.CollectionsKt.sortWith(r0, new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$1(r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0048, code lost:
    
        if (r42 == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x024a, code lost:
    
        r9 = r35.movingInFromStartBound;
        r10 = r9.size();
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0251, code lost:
    
        if (r12 >= r10) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0253, code lost:
    
        r13 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r9.get(r12);
        initializeAnimation$default(r35, r13, r46 - updateAndReturnOffsetFor(r7, r13), null, 4, null);
        startPlacementAnimationsIfNeeded$default(r35, r13, false, 2, null);
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0272, code lost:
    
        kotlin.collections.ArraysKt.fill$default(r7, 0, 0, 0, 6, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x028a, code lost:
    
        if (r35.movingInFromEndBound.isEmpty() != false) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x028c, code lost:
    
        r0 = r35.movingInFromEndBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0293, code lost:
    
        if (r0.size() <= 1) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0295, code lost:
    
        kotlin.collections.CollectionsKt.sortWith(r0, new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1(r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004a, code lost:
    
        r2 = androidx.compose.ui.unit.IntOffsetKt.IntOffset(0, r36);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x029d, code lost:
    
        r9 = r35.movingInFromEndBound;
        r10 = r9.size();
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x02a4, code lost:
    
        if (r12 >= r10) goto L251;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x02a6, code lost:
    
        r13 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r9.get(r12);
        initializeAnimation$default(r35, r13, (r47 + updateAndReturnOffsetFor(r7, r13)) - r13.getMainAxisSizeWithSpacings(), null, 4, null);
        startPlacementAnimationsIfNeeded$default(r35, r13, false, 2, null);
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x02cb, code lost:
    
        kotlin.collections.ArraysKt.fill$default(r7, 0, 0, 0, 6, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x02dd, code lost:
    
        r0 = r35.movingAwayKeys;
        r1 = r0.elements;
        r0 = r0.metadata;
        r2 = r0.length - 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x02e6, code lost:
    
        if (r2 < 0) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02e8, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x02e9, code lost:
    
        r4 = r0[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x02f3, code lost:
    
        if (((((~r4) << 7) & r4) & (-9187201950435737472L)) == (-9187201950435737472L)) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0053, code lost:
    
        if (r43 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x02f5, code lost:
    
        r14 = 8 - ((~(r3 - r2)) >>> 31);
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x02ff, code lost:
    
        if (r9 >= r14) goto L254;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0305, code lost:
    
        if ((r4 & 255) >= 128) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0307, code lost:
    
        r10 = r1[(r3 << 3) + r9];
        r12 = r35.keyToItemInfoMap.get(r10);
        kotlin.jvm.internal.Intrinsics.checkNotNull(r12);
        r12 = (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r12;
        r13 = r40.getIndex(r10);
        r33 = r0;
        r12.setSpan(java.lang.Math.min(r11, r12.getSpan()));
        r36 = r1;
        r12.setLane(java.lang.Math.min(r11 - r12.getSpan(), r12.getLane()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x033e, code lost:
    
        if (r13 != (-1)) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0340, code lost:
    
        r1 = r12.getAnimations();
        r13 = r1.length;
        r0 = 0;
        r26 = 0;
        r27 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x034a, code lost:
    
        if (r0 >= r13) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x034c, code lost:
    
        r11 = r1[r0];
        r28 = r26 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0352, code lost:
    
        if (r11 == null) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0055, code lost:
    
        if (r45 != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0358, code lost:
    
        if (r11.isDisappearanceAnimationInProgress() == false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x035a, code lost:
    
        r29 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x035c, code lost:
    
        r1 = 1;
        r27 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x03b3, code lost:
    
        r0 = r0 + r1;
        r26 = r28;
        r1 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0365, code lost:
    
        if (r11.isDisappearanceAnimationFinished() == false) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0367, code lost:
    
        r11.release();
        r12.getAnimations()[r26] = null;
        r29 = r1;
        r35.disappearingItems.remove(r11);
        r1 = r35.displayingNode;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x037b, code lost:
    
        if (r1 == null) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0058, code lost:
    
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x037d, code lost:
    
        androidx.compose.ui.node.DrawModifierNodeKt.invalidateDraw(r1);
        r1 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x03b2, code lost:
    
        r1 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0384, code lost:
    
        r29 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x038a, code lost:
    
        if (r11.getLayer() == null) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x038c, code lost:
    
        r11.animateDisappearance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0393, code lost:
    
        if (r11.isDisappearanceAnimationInProgress() == false) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0395, code lost:
    
        r35.disappearingItems.add(r11);
        r1 = r35.displayingNode;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005b, code lost:
    
        r0 = r35.keyToItemInfoMap;
        r4 = r0.keys;
        r0 = r0.metadata;
        r5 = r0.length - 2;
        r42 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x039c, code lost:
    
        if (r1 == null) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x039e, code lost:
    
        androidx.compose.ui.node.DrawModifierNodeKt.invalidateDraw(r1);
        r1 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x03a4, code lost:
    
        r11.release();
        r12.getAnimations()[r26] = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x03af, code lost:
    
        r29 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x03bc, code lost:
    
        if (r27 != false) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x03be, code lost:
    
        removeInfoForKey(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x043d, code lost:
    
        r34 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0071, code lost:
    
        if (r5 < 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0440, code lost:
    
        r4 = r4 >> 8;
        r9 = r9 + 1;
        r1 = r36;
        r11 = r44;
        r0 = r33;
        r7 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x03c3, code lost:
    
        r0 = r12.m347getConstraintsDWUhwKw();
        kotlin.jvm.internal.Intrinsics.checkNotNull(r0);
        r0 = r41.mo324getAndMeasurehBUhpc(r13, r12.getLane(), r12.getSpan(), r0.m2403unboximpl());
        r0.setNonScrollableItem(true);
        r11 = r12.getAnimations();
        r1 = r11.length;
        r34 = r7;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x03eb, code lost:
    
        if (r7 >= r1) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x03ed, code lost:
    
        r26 = r11[r7];
        r27 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x03f1, code lost:
    
        if (r26 == null) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x03f3, code lost:
    
        r1 = r26.isPlacementAnimationInProgress();
        r26 = r11;
        r11 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x03fa, code lost:
    
        if (r1 != true) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x0412, code lost:
    
        r12.updateAnimation(r0, r48, r49, r46, r47, r12.getCrossAxisOffset());
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0427, code lost:
    
        if (r13 >= r35.firstVisibleIndex) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0073, code lost:
    
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0429, code lost:
    
        r35.movingAwayToStartBound.add(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x042f, code lost:
    
        r35.movingAwayToEndBound.add(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0400, code lost:
    
        r7 = r7 + r11;
        r11 = r26;
        r1 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x03fd, code lost:
    
        r26 = r11;
        r11 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0406, code lost:
    
        if (r8 == null) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x040c, code lost:
    
        if (r13 != r8.getIndex(r10)) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0074, code lost:
    
        r14 = r0[r12];
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x040e, code lost:
    
        removeInfoForKey(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0437, code lost:
    
        r33 = r0;
        r36 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x044d, code lost:
    
        r15 = r40;
        r33 = r0;
        r36 = r1;
        r34 = r7;
        r1 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0458, code lost:
    
        if (r14 != 8) goto L252;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0466, code lost:
    
        if (r3 == r2) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0468, code lost:
    
        r3 = r3 + r1;
        r1 = r36;
        r11 = r44;
        r0 = r33;
        r7 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x047e, code lost:
    
        if (r35.movingAwayToStartBound.isEmpty() != false) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007e, code lost:
    
        if (((((~r14) << 7) & r14) & (-9187201950435737472L)) == (-9187201950435737472L)) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0480, code lost:
    
        r0 = r35.movingAwayToStartBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0486, code lost:
    
        if (r0.size() <= r1) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x0488, code lost:
    
        kotlin.collections.CollectionsKt.sortWith(r0, new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$2(r15));
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0490, code lost:
    
        r0 = r35.movingAwayToStartBound;
        r1 = r0.size();
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x0497, code lost:
    
        if (r7 >= r1) goto L262;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x0499, code lost:
    
        r2 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r0.get(r7);
        r3 = r35.keyToItemInfoMap.get(r2.getKey());
        kotlin.jvm.internal.Intrinsics.checkNotNull(r3);
        r3 = (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r3;
        r4 = r34;
        r5 = updateAndReturnOffsetFor(r4, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x04b4, code lost:
    
        if (r43 == false) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x04b6, code lost:
    
        r8 = getMainAxisOffset((androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) kotlin.collections.CollectionsKt.first(r39));
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x04c5, code lost:
    
        r2.position(r8 - r5, r3.getCrossAxisOffset(), r37, r38);
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x04d2, code lost:
    
        if (r42 == false) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0080, code lost:
    
        r7 = 8 - ((~(r12 - r5)) >>> 31);
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x04d4, code lost:
    
        startPlacementAnimationsIfNeeded(r2, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x04d7, code lost:
    
        r7 = r7 + 1;
        r34 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x04c1, code lost:
    
        r8 = r3.getLayoutMinOffset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x04db, code lost:
    
        r5 = r37;
        r9 = r38;
        r4 = r34;
        r1 = r15;
        kotlin.collections.ArraysKt.fill$default(r4, 0, 0, 0, 6, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x04fa, code lost:
    
        if (r35.movingAwayToEndBound.isEmpty() != false) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x04fc, code lost:
    
        r0 = r35.movingAwayToEndBound;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x008a, code lost:
    
        if (r8 >= r7) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0503, code lost:
    
        if (r0.size() <= 1) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x0505, code lost:
    
        kotlin.collections.CollectionsKt.sortWith(r0, new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$2(r1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x050d, code lost:
    
        r0 = r35.movingAwayToEndBound;
        r1 = r0.size();
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0514, code lost:
    
        if (r7 >= r1) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x0516, code lost:
    
        r2 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r0.get(r7);
        r3 = r35.keyToItemInfoMap.get(r2.getKey());
        kotlin.jvm.internal.Intrinsics.checkNotNull(r3);
        r3 = (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r3;
        r8 = updateAndReturnOffsetFor(r4, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x052f, code lost:
    
        if (r43 == false) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0531, code lost:
    
        r10 = getMainAxisOffset((androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) kotlin.collections.CollectionsKt.last(r39));
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x0545, code lost:
    
        r2.position(r10 + r8, r3.getCrossAxisOffset(), r5, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x054e, code lost:
    
        if (r42 == false) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x0550, code lost:
    
        startPlacementAnimationsIfNeeded(r2, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0553, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x053c, code lost:
    
        r10 = r3.getLayoutMaxOffset() - r2.getMainAxisSizeWithSpacings();
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x0555, code lost:
    
        r0 = r35.movingAwayToStartBound;
        kotlin.collections.CollectionsKt.reverse(r0);
        r1 = kotlin.Unit.INSTANCE;
        r39.addAll(0, r0);
        r39.addAll(r35.movingAwayToEndBound);
        r35.movingInFromStartBound.clear();
        r35.movingInFromEndBound.clear();
        r35.movingAwayToStartBound.clear();
        r35.movingAwayToEndBound.clear();
        r35.movingAwayKeys.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0580, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x04ed, code lost:
    
        r5 = r37;
        r9 = r38;
        r1 = r15;
        r4 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0090, code lost:
    
        if ((r14 & 255) >= 128) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x045b, code lost:
    
        r15 = r40;
        r33 = r0;
        r36 = r1;
        r34 = r7;
        r1 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x0473, code lost:
    
        r15 = r40;
        r34 = r7;
        r1 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x0248, code lost:
    
        r8 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0282, code lost:
    
        r8 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x02db, code lost:
    
        r8 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x005a, code lost:
    
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x004f, code lost:
    
        r2 = androidx.compose.ui.unit.IntOffsetKt.IntOffset(r36, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x0045, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0092, code lost:
    
        r25 = r0;
        r24 = r4;
        r35.movingAwayKeys.add(r4[(r12 << 3) + r8]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a9, code lost:
    
        r14 = r14 >> 8;
        r8 = r8 + 1;
        r4 = r24;
        r0 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a4, code lost:
    
        r25 = r0;
        r24 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b1, code lost:
    
        r25 = r0;
        r24 = r4;
        r4 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b8, code lost:
    
        if (r7 != 8) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c0, code lost:
    
        if (r12 == r5) goto L235;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c2, code lost:
    
        r12 = r12 + r4;
        r4 = r24;
        r0 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bb, code lost:
    
        r25 = r0;
        r24 = r4;
        r4 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00cc, code lost:
    
        r0 = r39.size();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d2, code lost:
    
        if (r4 >= r0) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d4, code lost:
    
        r5 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) r9.get(r4);
        r35.movingAwayKeys.remove(r5.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00e7, code lost:
    
        if (getHasAnimations(r5) == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00e9, code lost:
    
        r12 = (androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo) r35.keyToItemInfoMap.get(r5.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f5, code lost:
    
        if (r13 == null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f7, code lost:
    
        r14 = r13.getIndex(r5.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0101, code lost:
    
        if (r14 != (-1)) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0103, code lost:
    
        if (r13 == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0105, code lost:
    
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0108, code lost:
    
        if (r12 != null) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x010a, code lost:
    
        r8 = new androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo(r35);
        androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo.updateAnimation$default(r8, r5, r48, r49, r46, r47, 0, 32, null);
        r35.keyToItemInfoMap.set(r5.getKey(), r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0131, code lost:
    
        if (r5.getIndex() == r14) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0134, code lost:
    
        if (r14 == (-1)) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0136, code lost:
    
        if (r14 >= r1) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0138, code lost:
    
        r35.movingInFromStartBound.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x013d, code lost:
    
        r26 = r0;
        r27 = r13;
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0210, code lost:
    
        r4 = r4 + r9;
        r9 = r39;
        r0 = r26;
        r13 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0145, code lost:
    
        r35.movingInFromEndBound.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x014b, code lost:
    
        r24 = r5.mo322getOffsetBjo55l4(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0154, code lost:
    
        if (r5.isVertical() == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0156, code lost:
    
        r7 = androidx.compose.ui.unit.IntOffset.m2466getYimpl(r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x015f, code lost:
    
        initializeAnimation(r5, r7, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0162, code lost:
    
        if (r15 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0164, code lost:
    
        r5 = r8.getAnimations();
        r7 = r5.length;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x016a, code lost:
    
        if (r8 >= r7) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x016c, code lost:
    
        r12 = r5[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x016e, code lost:
    
        if (r12 == null) goto L244;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0170, code lost:
    
        r12.animateAppearance();
        r12 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0175, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x015b, code lost:
    
        r7 = androidx.compose.ui.unit.IntOffset.m2465getXimpl(r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0178, code lost:
    
        if (r42 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x017a, code lost:
    
        androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.ItemInfo.updateAnimation$default(r12, r5, r48, r49, r46, r47, 0, 32, null);
        r7 = r12.getAnimations();
        r14 = r7.length;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0195, code lost:
    
        if (r8 >= r14) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0197, code lost:
    
        r26 = r0;
        r0 = r7[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x019b, code lost:
    
        if (r0 == null) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x019d, code lost:
    
        r27 = r13;
        r28 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0036, code lost:
    
        r1 = r35.firstVisibleIndex;
        r2 = (androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem) kotlin.collections.CollectionsKt.firstOrNull(r39);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01af, code lost:
    
        if (androidx.compose.ui.unit.IntOffset.m2464equalsimpl0(r0.m341getRawOffsetnOccac(), androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation.Companion.m345getNotInitializednOccac()) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01b1, code lost:
    
        r0.m344setRawOffsetgyyYBs(androidx.compose.ui.unit.IntOffset.m2469plusqkQi6aY(r0.m341getRawOffsetnOccac(), r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01c3, code lost:
    
        r8 = r8 + 1;
        r0 = r26;
        r13 = r27;
        r14 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01be, code lost:
    
        r27 = r13;
        r28 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01cf, code lost:
    
        r26 = r0;
        r27 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01d3, code lost:
    
        if (r15 == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01d5, code lost:
    
        r0 = r12.getAnimations();
        r7 = r0.length;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01db, code lost:
    
        if (r8 >= r7) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003e, code lost:
    
        if (r2 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01dd, code lost:
    
        r9 = r0[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01df, code lost:
    
        if (r9 == null) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01e5, code lost:
    
        if (r9.isDisappearanceAnimationInProgress() == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01e7, code lost:
    
        r35.disappearingItems.remove(r9);
        r10 = r35.displayingNode;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01ee, code lost:
    
        if (r10 == null) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01f0, code lost:
    
        androidx.compose.ui.node.DrawModifierNodeKt.invalidateDraw(r10);
        r10 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01f5, code lost:
    
        r9.animateAppearance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01f8, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0040, code lost:
    
        r2 = r2.getIndex();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasured(int r36, int r37, int r38, java.util.List r39, androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap r40, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider r41, boolean r42, boolean r43, int r44, boolean r45, int r46, int r47, kotlinx.coroutines.CoroutineScope r48, androidx.compose.ui.graphics.GraphicsContext r49) {
        /*
            Method dump skipped, instructions count: 1409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator.onMeasured(int, int, int, java.util.List, androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider, boolean, boolean, int, boolean, int, int, kotlinx.coroutines.CoroutineScope, androidx.compose.ui.graphics.GraphicsContext):void");
    }

    private final void removeInfoForKey(Object obj) {
        LazyLayoutItemAnimation[] animations;
        ItemInfo itemInfo = (ItemInfo) this.keyToItemInfoMap.remove(obj);
        if (itemInfo == null || (animations = itemInfo.getAnimations()) == null) {
            return;
        }
        for (LazyLayoutItemAnimation lazyLayoutItemAnimation : animations) {
            if (lazyLayoutItemAnimation != null) {
                lazyLayoutItemAnimation.release();
            }
        }
    }

    public final void reset() {
        if (this.keyToItemInfoMap.isNotEmpty()) {
            MutableScatterMap mutableScatterMap = this.keyToItemInfoMap;
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
                                for (LazyLayoutItemAnimation lazyLayoutItemAnimation : ((ItemInfo) objArr[(i << 3) + i3]).getAnimations()) {
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
            this.keyToItemInfoMap.clear();
        }
        this.keyIndexMap = LazyLayoutKeyIndexMap.Empty;
        this.firstVisibleIndex = -1;
    }

    static /* synthetic */ void initializeAnimation$default(LazyLayoutItemAnimator lazyLayoutItemAnimator, LazyLayoutMeasuredItem lazyLayoutMeasuredItem, int i, ItemInfo itemInfo, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            Object obj2 = lazyLayoutItemAnimator.keyToItemInfoMap.get(lazyLayoutMeasuredItem.getKey());
            Intrinsics.checkNotNull(obj2);
            itemInfo = (ItemInfo) obj2;
        }
        lazyLayoutItemAnimator.initializeAnimation(lazyLayoutMeasuredItem, i, itemInfo);
    }

    private final void initializeAnimation(LazyLayoutMeasuredItem lazyLayoutMeasuredItem, int i, ItemInfo itemInfo) {
        long m2462copyiSbpLlY$default;
        int i2 = 0;
        long mo322getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo322getOffsetBjo55l4(0);
        if (lazyLayoutMeasuredItem.isVertical()) {
            m2462copyiSbpLlY$default = IntOffset.m2462copyiSbpLlY$default(mo322getOffsetBjo55l4, 0, i, 1, null);
        } else {
            m2462copyiSbpLlY$default = IntOffset.m2462copyiSbpLlY$default(mo322getOffsetBjo55l4, i, 0, 2, null);
        }
        LazyLayoutItemAnimation[] animations = itemInfo.getAnimations();
        int length = animations.length;
        int i3 = 0;
        while (i2 < length) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = animations[i2];
            int i4 = i3 + 1;
            if (lazyLayoutItemAnimation != null) {
                lazyLayoutItemAnimation.m344setRawOffsetgyyYBs(IntOffset.m2469plusqkQi6aY(m2462copyiSbpLlY$default, IntOffset.m2468minusqkQi6aY(lazyLayoutMeasuredItem.mo322getOffsetBjo55l4(i3), mo322getOffsetBjo55l4)));
            }
            i2++;
            i3 = i4;
        }
    }

    static /* synthetic */ void startPlacementAnimationsIfNeeded$default(LazyLayoutItemAnimator lazyLayoutItemAnimator, LazyLayoutMeasuredItem lazyLayoutMeasuredItem, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        lazyLayoutItemAnimator.startPlacementAnimationsIfNeeded(lazyLayoutMeasuredItem, z);
    }

    private final void startPlacementAnimationsIfNeeded(LazyLayoutMeasuredItem lazyLayoutMeasuredItem, boolean z) {
        Object obj = this.keyToItemInfoMap.get(lazyLayoutMeasuredItem.getKey());
        Intrinsics.checkNotNull(obj);
        LazyLayoutItemAnimation[] animations = ((ItemInfo) obj).getAnimations();
        int length = animations.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = animations[i];
            int i3 = i2 + 1;
            if (lazyLayoutItemAnimation != null) {
                long mo322getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo322getOffsetBjo55l4(i2);
                long m341getRawOffsetnOccac = lazyLayoutItemAnimation.m341getRawOffsetnOccac();
                if (!IntOffset.m2464equalsimpl0(m341getRawOffsetnOccac, LazyLayoutItemAnimation.Companion.m345getNotInitializednOccac()) && !IntOffset.m2464equalsimpl0(m341getRawOffsetnOccac, mo322getOffsetBjo55l4)) {
                    lazyLayoutItemAnimation.m337animatePlacementDeltaar5cAso(IntOffset.m2468minusqkQi6aY(mo322getOffsetBjo55l4, m341getRawOffsetnOccac), z);
                }
                lazyLayoutItemAnimation.m344setRawOffsetgyyYBs(mo322getOffsetBjo55l4);
            }
            i++;
            i2 = i3;
        }
    }

    public final LazyLayoutItemAnimation getAnimation(Object obj, int i) {
        LazyLayoutItemAnimation[] animations;
        ItemInfo itemInfo = (ItemInfo) this.keyToItemInfoMap.get(obj);
        if (itemInfo == null || (animations = itemInfo.getAnimations()) == null) {
            return null;
        }
        return animations[i];
    }

    private final int updateAndReturnOffsetFor(int[] iArr, LazyLayoutMeasuredItem lazyLayoutMeasuredItem) {
        int lane = lazyLayoutMeasuredItem.getLane();
        int span = lazyLayoutMeasuredItem.getSpan() + lane;
        int i = 0;
        while (lane < span) {
            int mainAxisSizeWithSpacings = iArr[lane] + lazyLayoutMeasuredItem.getMainAxisSizeWithSpacings();
            iArr[lane] = mainAxisSizeWithSpacings;
            i = Math.max(i, mainAxisSizeWithSpacings);
            lane++;
        }
        return i;
    }

    /* renamed from: getMinSizeToFitDisappearingItems-YbymL2g, reason: not valid java name */
    public final long m346getMinSizeToFitDisappearingItemsYbymL2g() {
        long m2488getZeroYbymL2g = IntSize.Companion.m2488getZeroYbymL2g();
        List list = this.disappearingItems;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = (LazyLayoutItemAnimation) list.get(i);
            GraphicsLayer layer = lazyLayoutItemAnimation.getLayer();
            if (layer != null) {
                m2488getZeroYbymL2g = IntSizeKt.IntSize(Math.max(IntSize.m2484getWidthimpl(m2488getZeroYbymL2g), IntOffset.m2465getXimpl(lazyLayoutItemAnimation.m341getRawOffsetnOccac()) + IntSize.m2484getWidthimpl(layer.m1532getSizeYbymL2g())), Math.max(IntSize.m2483getHeightimpl(m2488getZeroYbymL2g), IntOffset.m2466getYimpl(lazyLayoutItemAnimation.m341getRawOffsetnOccac()) + IntSize.m2483getHeightimpl(layer.m1532getSizeYbymL2g())));
            }
        }
        return m2488getZeroYbymL2g;
    }

    public final Modifier getModifier() {
        return this.modifier;
    }

    private final boolean getHasAnimations(LazyLayoutMeasuredItem lazyLayoutMeasuredItem) {
        LazyLayoutAnimationSpecsNode specs;
        int placeablesCount = lazyLayoutMeasuredItem.getPlaceablesCount();
        for (int i = 0; i < placeablesCount; i++) {
            specs = LazyLayoutItemAnimatorKt.getSpecs(lazyLayoutMeasuredItem.getParentData(i));
            if (specs != null) {
                return true;
            }
        }
        return false;
    }

    private final int getMainAxisOffset(LazyLayoutMeasuredItem lazyLayoutMeasuredItem) {
        long mo322getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo322getOffsetBjo55l4(0);
        return lazyLayoutMeasuredItem.isVertical() ? IntOffset.m2466getYimpl(mo322getOffsetBjo55l4) : IntOffset.m2465getXimpl(mo322getOffsetBjo55l4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getCrossAxisOffset(LazyLayoutMeasuredItem lazyLayoutMeasuredItem) {
        long mo322getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo322getOffsetBjo55l4(0);
        return !lazyLayoutMeasuredItem.isVertical() ? IntOffset.m2466getYimpl(mo322getOffsetBjo55l4) : IntOffset.m2465getXimpl(mo322getOffsetBjo55l4);
    }

    /* compiled from: LazyLayoutItemAnimator.kt */
    private final class ItemInfo {
        private LazyLayoutItemAnimation[] animations;
        private Constraints constraints;
        private int crossAxisOffset;
        private int lane;
        private int layoutMaxOffset;
        private int layoutMinOffset;
        private int span;

        public ItemInfo() {
            LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr;
            lazyLayoutItemAnimationArr = LazyLayoutItemAnimatorKt.EmptyArray;
            this.animations = lazyLayoutItemAnimationArr;
            this.span = 1;
        }

        public final LazyLayoutItemAnimation[] getAnimations() {
            return this.animations;
        }

        /* renamed from: getConstraints-DWUhwKw, reason: not valid java name */
        public final Constraints m347getConstraintsDWUhwKw() {
            return this.constraints;
        }

        public final int getCrossAxisOffset() {
            return this.crossAxisOffset;
        }

        public final int getLane() {
            return this.lane;
        }

        public final void setLane(int i) {
            this.lane = i;
        }

        public final int getSpan() {
            return this.span;
        }

        public final void setSpan(int i) {
            this.span = i;
        }

        private final boolean isRunningPlacement() {
            for (LazyLayoutItemAnimation lazyLayoutItemAnimation : this.animations) {
                if (lazyLayoutItemAnimation != null && lazyLayoutItemAnimation.isRunningMovingAwayAnimation()) {
                    return true;
                }
            }
            return false;
        }

        public final int getLayoutMinOffset() {
            return this.layoutMinOffset;
        }

        public final int getLayoutMaxOffset() {
            return this.layoutMaxOffset;
        }

        public static /* synthetic */ void updateAnimation$default(ItemInfo itemInfo, LazyLayoutMeasuredItem lazyLayoutMeasuredItem, CoroutineScope coroutineScope, GraphicsContext graphicsContext, int i, int i2, int i3, int i4, Object obj) {
            if ((i4 & 32) != 0) {
                i3 = LazyLayoutItemAnimator.this.getCrossAxisOffset(lazyLayoutMeasuredItem);
            }
            itemInfo.updateAnimation(lazyLayoutMeasuredItem, coroutineScope, graphicsContext, i, i2, i3);
        }

        public final void updateAnimation(LazyLayoutMeasuredItem lazyLayoutMeasuredItem, CoroutineScope coroutineScope, GraphicsContext graphicsContext, int i, int i2, int i3) {
            LazyLayoutAnimationSpecsNode specs;
            if (!isRunningPlacement()) {
                this.layoutMinOffset = i;
                this.layoutMaxOffset = i2;
            }
            int length = this.animations.length;
            for (int placeablesCount = lazyLayoutMeasuredItem.getPlaceablesCount(); placeablesCount < length; placeablesCount++) {
                LazyLayoutItemAnimation lazyLayoutItemAnimation = this.animations[placeablesCount];
                if (lazyLayoutItemAnimation != null) {
                    lazyLayoutItemAnimation.release();
                }
            }
            if (this.animations.length != lazyLayoutMeasuredItem.getPlaceablesCount()) {
                Object[] copyOf = Arrays.copyOf(this.animations, lazyLayoutMeasuredItem.getPlaceablesCount());
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                this.animations = (LazyLayoutItemAnimation[]) copyOf;
            }
            this.constraints = Constraints.m2386boximpl(lazyLayoutMeasuredItem.mo321getConstraintsmsEJaDk());
            this.crossAxisOffset = i3;
            this.lane = lazyLayoutMeasuredItem.getLane();
            this.span = lazyLayoutMeasuredItem.getSpan();
            int placeablesCount2 = lazyLayoutMeasuredItem.getPlaceablesCount();
            final LazyLayoutItemAnimator lazyLayoutItemAnimator = LazyLayoutItemAnimator.this;
            for (int i4 = 0; i4 < placeablesCount2; i4++) {
                specs = LazyLayoutItemAnimatorKt.getSpecs(lazyLayoutMeasuredItem.getParentData(i4));
                if (specs == null) {
                    LazyLayoutItemAnimation lazyLayoutItemAnimation2 = this.animations[i4];
                    if (lazyLayoutItemAnimation2 != null) {
                        lazyLayoutItemAnimation2.release();
                    }
                    this.animations[i4] = null;
                } else {
                    LazyLayoutItemAnimation lazyLayoutItemAnimation3 = this.animations[i4];
                    if (lazyLayoutItemAnimation3 == null) {
                        lazyLayoutItemAnimation3 = new LazyLayoutItemAnimation(coroutineScope, graphicsContext, new Function0() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$ItemInfo$updateAnimation$1$animation$1
                            {
                                super(0);
                            }

                            /* renamed from: invoke, reason: collision with other method in class */
                            public final void m348invoke() {
                                DrawModifierNode drawModifierNode;
                                drawModifierNode = LazyLayoutItemAnimator.this.displayingNode;
                                if (drawModifierNode != null) {
                                    DrawModifierNodeKt.invalidateDraw(drawModifierNode);
                                }
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Object invoke() {
                                m348invoke();
                                return Unit.INSTANCE;
                            }
                        });
                        this.animations[i4] = lazyLayoutItemAnimation3;
                    }
                    lazyLayoutItemAnimation3.setFadeInSpec(specs.getFadeInSpec());
                    lazyLayoutItemAnimation3.setPlacementSpec(specs.getPlacementSpec());
                    lazyLayoutItemAnimation3.setFadeOutSpec(specs.getFadeOutSpec());
                }
            }
        }
    }

    /* compiled from: LazyLayoutItemAnimator.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0018¨\u0006\u0019"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "animator", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V", "create", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;", "node", "", "update", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    private static final /* data */ class DisplayingDisappearingItemsElement extends ModifierNodeElement {
        private final LazyLayoutItemAnimator animator;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof DisplayingDisappearingItemsElement) && Intrinsics.areEqual(this.animator, ((DisplayingDisappearingItemsElement) other).animator);
        }

        public int hashCode() {
            return this.animator.hashCode();
        }

        public String toString() {
            return "DisplayingDisappearingItemsElement(animator=" + this.animator + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }

        public DisplayingDisappearingItemsElement(LazyLayoutItemAnimator lazyLayoutItemAnimator) {
            this.animator = lazyLayoutItemAnimator;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        /* renamed from: create */
        public DisplayingDisappearingItemsNode getNode() {
            return new DisplayingDisappearingItemsNode(this.animator);
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public void update(DisplayingDisappearingItemsNode node) {
            node.setAnimator(this.animator);
        }
    }

    /* compiled from: LazyLayoutItemAnimator.kt */
    private static final class DisplayingDisappearingItemsNode extends Modifier.Node implements DrawModifierNode {
        private LazyLayoutItemAnimator animator;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DisplayingDisappearingItemsNode) && Intrinsics.areEqual(this.animator, ((DisplayingDisappearingItemsNode) obj).animator);
        }

        public int hashCode() {
            return this.animator.hashCode();
        }

        @Override // androidx.compose.ui.node.DrawModifierNode
        public /* synthetic */ void onMeasureResultChanged() {
            DrawModifierNode.CC.$default$onMeasureResultChanged(this);
        }

        public String toString() {
            return "DisplayingDisappearingItemsNode(animator=" + this.animator + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }

        public DisplayingDisappearingItemsNode(LazyLayoutItemAnimator lazyLayoutItemAnimator) {
            this.animator = lazyLayoutItemAnimator;
        }

        @Override // androidx.compose.ui.node.DrawModifierNode
        public void draw(ContentDrawScope contentDrawScope) {
            List list = this.animator.disappearingItems;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                LazyLayoutItemAnimation lazyLayoutItemAnimation = (LazyLayoutItemAnimation) list.get(i);
                GraphicsLayer layer = lazyLayoutItemAnimation.getLayer();
                if (layer != null) {
                    float m2465getXimpl = IntOffset.m2465getXimpl(lazyLayoutItemAnimation.m338getFinalOffsetnOccac());
                    float m2465getXimpl2 = m2465getXimpl - IntOffset.m2465getXimpl(layer.m1533getTopLeftnOccac());
                    float m2466getYimpl = IntOffset.m2466getYimpl(lazyLayoutItemAnimation.m338getFinalOffsetnOccac()) - IntOffset.m2466getYimpl(layer.m1533getTopLeftnOccac());
                    contentDrawScope.getDrawContext().getTransform().translate(m2465getXimpl2, m2466getYimpl);
                    try {
                        GraphicsLayerKt.drawLayer(contentDrawScope, layer);
                    } finally {
                        contentDrawScope.getDrawContext().getTransform().translate(-m2465getXimpl2, -m2466getYimpl);
                    }
                }
            }
            contentDrawScope.drawContent();
        }

        @Override // androidx.compose.ui.Modifier.Node
        public void onAttach() {
            this.animator.displayingNode = this;
        }

        @Override // androidx.compose.ui.Modifier.Node
        public void onDetach() {
            this.animator.reset();
        }

        public final void setAnimator(LazyLayoutItemAnimator lazyLayoutItemAnimator) {
            if (Intrinsics.areEqual(this.animator, lazyLayoutItemAnimator) || !getNode().isAttached()) {
                return;
            }
            this.animator.reset();
            lazyLayoutItemAnimator.displayingNode = this;
            this.animator = lazyLayoutItemAnimator;
        }
    }
}
