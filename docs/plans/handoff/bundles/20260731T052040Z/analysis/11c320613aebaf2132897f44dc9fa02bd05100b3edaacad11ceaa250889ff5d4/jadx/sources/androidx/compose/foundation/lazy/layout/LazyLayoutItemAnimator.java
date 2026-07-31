package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
import androidx.compose.foundation.lazy.LazyListMeasuredItem;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ModifierNodeElement;
import com.grack.nanojson.JsonParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LazyLayoutItemAnimator {
    public final ArrayList disappearingItems;
    public JsonParser keyIndexMap;
    public final MutableScatterMap keyToItemInfoMap;
    public final Modifier modifier;
    public final MutableScatterSet movingAwayKeys;
    public final ArrayList movingAwayToEndBound;
    public final ArrayList movingAwayToStartBound;
    public final ArrayList movingInFromEndBound;
    public final ArrayList movingInFromStartBound;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            displayingDisappearingItemsNode.animator = lazyLayoutItemAnimator2;
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

    public static int updateAndReturnOffsetFor(int[] iArr, LazyListMeasuredItem lazyListMeasuredItem) {
        lazyListMeasuredItem.getClass();
        int i = iArr[0] + lazyListMeasuredItem.mainAxisSizeWithSpacings;
        iArr[0] = i;
        return Math.max(0, i);
    }

    /* renamed from: getMinSizeToFitDisappearingItems-YbymL2g, reason: not valid java name */
    public final long m108getMinSizeToFitDisappearingItemsYbymL2g() {
        ArrayList arrayList = this.disappearingItems;
        if (arrayList.size() <= 0) {
            return 0L;
        }
        Modifier.CC.m(arrayList.get(0));
        throw null;
    }

    public final void onMeasured(int i, int i2, ArrayList arrayList, final JsonParser jsonParser, LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1, boolean z, boolean z2, int i3, int i4) {
        int i5;
        int i6;
        final int i7;
        int i8;
        int i9;
        final int i10;
        MutableScatterSet mutableScatterSet;
        final JsonParser jsonParser2 = this.keyIndexMap;
        this.keyIndexMap = jsonParser;
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            LazyListMeasuredItem lazyListMeasuredItem = (LazyListMeasuredItem) arrayList.get(i11);
            int size2 = lazyListMeasuredItem.placeables.size();
            for (int i12 = 0; i12 < size2; i12++) {
                ((Placeable) lazyListMeasuredItem.placeables.get(i12)).getParentData();
            }
        }
        MutableScatterMap mutableScatterMap = this.keyToItemInfoMap;
        if (mutableScatterMap.isEmpty()) {
            releaseAnimations();
            return;
        }
        boolean z3 = z || !z2;
        Object[] objArr = mutableScatterMap.keys;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        MutableScatterSet mutableScatterSet2 = this.movingAwayKeys;
        int i13 = 8;
        boolean z4 = z3;
        if (length >= 0) {
            int i14 = 0;
            while (true) {
                long j = jArr[i14];
                MutableScatterSet mutableScatterSet3 = mutableScatterSet2;
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i15 = 8 - ((~(i14 - length)) >>> 31);
                    long j2 = j;
                    int i16 = 0;
                    while (i16 < i15) {
                        if ((j2 & 255) < 128) {
                            mutableScatterSet = mutableScatterSet3;
                            mutableScatterSet.add(objArr[(i14 << 3) + i16]);
                        } else {
                            mutableScatterSet = mutableScatterSet3;
                        }
                        j2 >>= 8;
                        i16++;
                        mutableScatterSet3 = mutableScatterSet;
                    }
                    mutableScatterSet2 = mutableScatterSet3;
                    if (i15 != 8) {
                        break;
                    }
                } else {
                    mutableScatterSet2 = mutableScatterSet3;
                }
                if (i14 == length) {
                    break;
                } else {
                    i14++;
                }
            }
        }
        int size3 = arrayList.size();
        for (int i17 = 0; i17 < size3; i17++) {
            LazyListMeasuredItem lazyListMeasuredItem2 = (LazyListMeasuredItem) arrayList.get(i17);
            Object obj = lazyListMeasuredItem2.key;
            List list = lazyListMeasuredItem2.placeables;
            mutableScatterSet2.remove(obj);
            int size4 = list.size();
            for (int i18 = 0; i18 < size4; i18++) {
                ((Placeable) list.get(i18)).getParentData();
            }
            Modifier.CC.m(mutableScatterMap.remove(lazyListMeasuredItem2.key));
        }
        int[] iArr = new int[1];
        ArrayList arrayList2 = this.movingInFromEndBound;
        ArrayList arrayList3 = this.movingInFromStartBound;
        if (z4 && jsonParser2 != null) {
            if (arrayList3.isEmpty()) {
                i10 = 0;
            } else {
                if (arrayList3.size() > 1) {
                    final int i19 = 2;
                    CollectionsKt__MutableCollectionsJVMKt.sortWith(new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1
                        @Override // java.util.Comparator
                        public final int compare(Object obj2, Object obj3) {
                            int i20 = i19;
                            JsonParser jsonParser3 = jsonParser2;
                            switch (i20) {
                            }
                            return Integer.valueOf(jsonParser3.getIndex(((LazyListMeasuredItem) obj3).key)).compareTo(Integer.valueOf(jsonParser3.getIndex(((LazyListMeasuredItem) obj2).key)));
                        }
                    }, arrayList3);
                }
                if (arrayList3.size() > 0) {
                    LazyListMeasuredItem lazyListMeasuredItem3 = (LazyListMeasuredItem) arrayList3.get(0);
                    updateAndReturnOffsetFor(iArr, lazyListMeasuredItem3);
                    Object obj2 = mutableScatterMap.get(lazyListMeasuredItem3.key);
                    obj2.getClass();
                    Modifier.CC.m(obj2);
                    lazyListMeasuredItem3.m105getOffsetBjo55l4(0);
                    throw null;
                }
                i10 = 0;
                Arrays.fill(iArr, 0, 1, 0);
            }
            if (!arrayList2.isEmpty()) {
                if (arrayList2.size() > 1) {
                    CollectionsKt__MutableCollectionsJVMKt.sortWith(new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1
                        @Override // java.util.Comparator
                        public final int compare(Object obj22, Object obj3) {
                            int i20 = i10;
                            JsonParser jsonParser3 = jsonParser2;
                            switch (i20) {
                            }
                            return Integer.valueOf(jsonParser3.getIndex(((LazyListMeasuredItem) obj3).key)).compareTo(Integer.valueOf(jsonParser3.getIndex(((LazyListMeasuredItem) obj22).key)));
                        }
                    }, arrayList2);
                }
                if (arrayList2.size() > 0) {
                    LazyListMeasuredItem lazyListMeasuredItem4 = (LazyListMeasuredItem) arrayList2.get(i10);
                    updateAndReturnOffsetFor(iArr, lazyListMeasuredItem4);
                    Object obj3 = mutableScatterMap.get(lazyListMeasuredItem4.key);
                    obj3.getClass();
                    Modifier.CC.m(obj3);
                    lazyListMeasuredItem4.m105getOffsetBjo55l4(i10);
                    throw null;
                }
                Arrays.fill(iArr, i10, 1, i10);
            }
        }
        Object[] objArr2 = mutableScatterSet2.elements;
        long[] jArr2 = mutableScatterSet2.metadata;
        int length2 = jArr2.length - 2;
        if (length2 >= 0) {
            int i20 = 0;
            while (true) {
                long j3 = jArr2[i20];
                if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i21 = 8 - ((~(i20 - length2)) >>> 31);
                    int i22 = 0;
                    while (i22 < i21) {
                        if ((j3 & 255) < 128) {
                            i9 = i13;
                            Modifier.CC.m(mutableScatterMap.get(objArr2[(i20 << 3) + i22]));
                        } else {
                            i9 = i13;
                        }
                        j3 >>= i9;
                        i22++;
                        i13 = i9;
                    }
                    i8 = i13;
                    if (i21 != i8) {
                        break;
                    }
                } else {
                    i8 = i13;
                }
                if (i20 == length2) {
                    break;
                }
                i20++;
                i13 = i8;
            }
        }
        ArrayList arrayList4 = this.movingAwayToStartBound;
        if (arrayList4.isEmpty()) {
            i5 = i;
            i6 = i2;
            i7 = 1;
        } else {
            if (arrayList4.size() > 1) {
                final int i23 = 3;
                CollectionsKt__MutableCollectionsJVMKt.sortWith(new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1
                    @Override // java.util.Comparator
                    public final int compare(Object obj22, Object obj32) {
                        int i202 = i23;
                        JsonParser jsonParser3 = jsonParser;
                        switch (i202) {
                        }
                        return Integer.valueOf(jsonParser3.getIndex(((LazyListMeasuredItem) obj32).key)).compareTo(Integer.valueOf(jsonParser3.getIndex(((LazyListMeasuredItem) obj22).key)));
                    }
                }, arrayList4);
            }
            int size5 = arrayList4.size();
            for (int i24 = 0; i24 < size5; i24++) {
                LazyListMeasuredItem lazyListMeasuredItem5 = (LazyListMeasuredItem) arrayList4.get(i24);
                Object obj4 = mutableScatterMap.get(lazyListMeasuredItem5.key);
                obj4.getClass();
                Modifier.CC.m(obj4);
                lazyListMeasuredItem5.position((z ? (int) (4294967295L & ((LazyListMeasuredItem) CollectionsKt.first((List) arrayList)).m105getOffsetBjo55l4(0)) : 0) - updateAndReturnOffsetFor(iArr, lazyListMeasuredItem5), i, i2);
                if (z4) {
                    startPlacementAnimationsIfNeeded(lazyListMeasuredItem5, true);
                    throw null;
                }
            }
            i5 = i;
            i6 = i2;
            i7 = 1;
            Arrays.fill(iArr, 0, 1, 0);
        }
        ArrayList arrayList5 = this.movingAwayToEndBound;
        if (!arrayList5.isEmpty()) {
            if (arrayList5.size() > i7) {
                CollectionsKt__MutableCollectionsJVMKt.sortWith(new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1
                    @Override // java.util.Comparator
                    public final int compare(Object obj22, Object obj32) {
                        int i202 = i7;
                        JsonParser jsonParser3 = jsonParser;
                        switch (i202) {
                        }
                        return Integer.valueOf(jsonParser3.getIndex(((LazyListMeasuredItem) obj32).key)).compareTo(Integer.valueOf(jsonParser3.getIndex(((LazyListMeasuredItem) obj22).key)));
                    }
                }, arrayList5);
            }
            int size6 = arrayList5.size();
            for (int i25 = 0; i25 < size6; i25++) {
                LazyListMeasuredItem lazyListMeasuredItem6 = (LazyListMeasuredItem) arrayList5.get(i25);
                Object obj5 = mutableScatterMap.get(lazyListMeasuredItem6.key);
                obj5.getClass();
                Modifier.CC.m(obj5);
                lazyListMeasuredItem6.position((0 - lazyListMeasuredItem6.mainAxisSizeWithSpacings) + updateAndReturnOffsetFor(iArr, lazyListMeasuredItem6), i5, i6);
                if (z4) {
                    startPlacementAnimationsIfNeeded(lazyListMeasuredItem6, true);
                    throw null;
                }
            }
        }
        Collections.reverse(arrayList4);
        arrayList.addAll(0, arrayList4);
        arrayList.addAll(arrayList5);
        arrayList3.clear();
        arrayList2.clear();
        arrayList4.clear();
        arrayList5.clear();
        mutableScatterSet2.clear();
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
                                Modifier.CC.m(objArr[(i << 3) + i3]);
                                throw null;
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

    public final void startPlacementAnimationsIfNeeded(LazyListMeasuredItem lazyListMeasuredItem, boolean z) {
        Object obj = this.keyToItemInfoMap.get(lazyListMeasuredItem.key);
        obj.getClass();
        Modifier.CC.m(obj);
        throw null;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DisplayingDisappearingItemsNode extends Modifier.Node implements DrawModifierNode {
        public LazyLayoutItemAnimator animator;

        @Override // androidx.compose.ui.node.DrawModifierNode
        public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
            ArrayList arrayList = this.animator.disappearingItems;
            if (arrayList.size() <= 0) {
                layoutNodeDrawScope.drawContent();
            } else {
                Modifier.CC.m(arrayList.get(0));
                throw null;
            }
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
            this.animator.getClass();
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void onDetach() {
            LazyLayoutItemAnimator lazyLayoutItemAnimator = this.animator;
            lazyLayoutItemAnimator.releaseAnimations();
            lazyLayoutItemAnimator.keyIndexMap = null;
        }

        public final String toString() {
            return "DisplayingDisappearingItemsNode(animator=" + this.animator + ')';
        }

        @Override // androidx.compose.ui.node.DrawModifierNode
        public final /* synthetic */ void onMeasureResultChanged() {
        }
    }
}
