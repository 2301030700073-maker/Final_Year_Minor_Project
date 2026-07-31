package androidx.compose.foundation.pager;

import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.IntIntMapKt;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.compose.foundation.lazy.layout.CacheWindowLogic$$ExternalSyntheticLambda0;
import androidx.compose.foundation.lazy.layout.CachedItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.Operation$State;
import com.caverock.androidsvg.SVG;
import java.util.List;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagerCacheWindowLogic {
    public final PopupMenu$1 cacheWindow;
    public final SVG cacheWindowScope;
    public final MutableIntSet indicesToRemove;
    public int itemsCount;
    public int prefetchWindowEndExtraSpace;
    public int prefetchWindowEndLine;
    public final MutableIntObjectMap prefetchWindowHandles;
    public int prefetchWindowStartExtraSpace;
    public int prefetchWindowStartLine;
    public float previousPassDelta;
    public int previousPassItemCount;
    public boolean shouldRefillWindow;
    public final LazyLayoutPrefetchState state;
    public final MutableIntIntMap windowCache;
    public final MutableIntObjectMap windowCacheWithItems;

    public PagerCacheWindowLogic(PopupMenu$1 popupMenu$1, LazyLayoutPrefetchState lazyLayoutPrefetchState, PagerState$$ExternalSyntheticLambda2 pagerState$$ExternalSyntheticLambda2) {
        this.cacheWindow = popupMenu$1;
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.EmptyIntObjectMap;
        this.prefetchWindowHandles = new MutableIntObjectMap();
        this.indicesToRemove = new MutableIntSet();
        int i = IntIntMapKt.$r8$clinit;
        this.windowCache = new MutableIntIntMap();
        this.windowCacheWithItems = new MutableIntObjectMap();
        this.previousPassItemCount = -1;
        this.prefetchWindowStartLine = Integer.MAX_VALUE;
        this.prefetchWindowEndLine = Integer.MIN_VALUE;
        this.state = lazyLayoutPrefetchState;
        this.cacheWindowScope = new SVG(pagerState$$ExternalSyntheticLambda2);
    }

    public final int getItemSizeOrPrefetch(SVG svg, int i, boolean z) {
        List list;
        List list2;
        MutableIntObjectMap mutableIntObjectMap = this.windowCacheWithItems;
        if (mutableIntObjectMap.containsKey(i)) {
            Object obj = mutableIntObjectMap.get(i);
            obj.getClass();
            return ((CachedItem) obj).mainAxisSize;
        }
        MutableIntObjectMap mutableIntObjectMap2 = this.prefetchWindowHandles;
        int i2 = 0;
        if (mutableIntObjectMap2.containsKey(i)) {
            if (!z || (list2 = (List) mutableIntObjectMap2.get(i)) == null) {
                return -1;
            }
            int size = list2.size();
            while (i2 < size) {
                ((LazyLayoutPrefetchState.PrefetchHandle) list2.get(i2)).markAsUrgent();
                i2++;
            }
            return -1;
        }
        CacheWindowLogic$$ExternalSyntheticLambda0 cacheWindowLogic$$ExternalSyntheticLambda0 = new CacheWindowLogic$$ExternalSyntheticLambda0(this, svg, i2);
        long j = svg.getLayoutInfo().childConstraints;
        LazyLayoutPrefetchState lazyLayoutPrefetchState = (LazyLayoutPrefetchState) svg.idToElementMap;
        if (lazyLayoutPrefetchState == null) {
            Intrinsics.throwUninitializedPropertyAccessException("state");
            throw null;
        }
        mutableIntObjectMap2.set(i, Room.listOf(lazyLayoutPrefetchState.m168schedulePrecompositionAndPremeasure_EkL_Y$foundation(i, j, true, new BackHandlerKt$$ExternalSyntheticLambda2(27, cacheWindowLogic$$ExternalSyntheticLambda0, svg))));
        if (!z || (list = (List) mutableIntObjectMap2.get(i)) == null) {
            return -1;
        }
        int size2 = list.size();
        while (i2 < size2) {
            ((LazyLayoutPrefetchState.PrefetchHandle) list.get(i2)).markAsUrgent();
            i2++;
        }
        return -1;
    }

    public final boolean hasValidBounds() {
        return (this.prefetchWindowStartLine == Integer.MAX_VALUE || this.prefetchWindowEndLine == Integer.MIN_VALUE) ? false : true;
    }

    public final void onItemPrefetched(SVG svg, int i, int i2) {
        int i3;
        int i4;
        MutableIntObjectMap mutableIntObjectMap = this.windowCacheWithItems;
        CachedItem cachedItem = (CachedItem) mutableIntObjectMap.get(i);
        CachedItem.NoKey noKey = CachedItem.NoKey;
        if (cachedItem != null) {
            cachedItem.mainAxisSize = i2;
            cachedItem.key = noKey;
        } else {
            cachedItem = new CachedItem();
            cachedItem.key = noKey;
            cachedItem.mainAxisSize = i2;
        }
        mutableIntObjectMap.set(i, cachedItem);
        if (i > this.prefetchWindowEndLine) {
            this.prefetchWindowEndLine = i;
            this.prefetchWindowEndExtraSpace -= i2;
        } else if (i < this.prefetchWindowStartLine) {
            this.prefetchWindowStartLine = i;
            this.prefetchWindowStartExtraSpace -= i2;
        }
        int i5 = 1;
        if (Math.signum(this.previousPassDelta) <= RecyclerView.DECELERATION_RATE) {
            if (this.prefetchWindowEndExtraSpace > 0) {
                i3 = this.prefetchWindowEndLine + 1;
                i4 = i3;
            }
            i4 = -1;
        } else {
            if (Math.signum(this.previousPassDelta) > RecyclerView.DECELERATION_RATE && this.prefetchWindowStartExtraSpace > 0) {
                i3 = this.prefetchWindowStartLine - 1;
                i4 = i3;
            }
            i4 = -1;
        }
        if (i4 > 0 && i4 != -1 && i4 < this.itemsCount) {
            CacheWindowLogic$$ExternalSyntheticLambda0 cacheWindowLogic$$ExternalSyntheticLambda0 = new CacheWindowLogic$$ExternalSyntheticLambda0(this, svg, i5);
            long j = svg.getLayoutInfo().childConstraints;
            LazyLayoutPrefetchState lazyLayoutPrefetchState = (LazyLayoutPrefetchState) svg.idToElementMap;
            if (lazyLayoutPrefetchState == null) {
                Intrinsics.throwUninitializedPropertyAccessException("state");
                throw null;
            }
            this.prefetchWindowHandles.set(i4, Room.listOf(lazyLayoutPrefetchState.m168schedulePrecompositionAndPremeasure_EkL_Y$foundation(i4, j, true, new BackHandlerKt$$ExternalSyntheticLambda2(27, cacheWindowLogic$$ExternalSyntheticLambda0, svg))));
        }
        traceWindowInfo();
    }

    public final void onPrefetchForward(SVG svg, int i, int i2, int i3, int i4, int i5, float f, boolean z) {
        int i6;
        int i7;
        boolean z2 = Math.signum(f) == Math.signum(this.previousPassDelta);
        if (!z) {
            if (!z2 || this.shouldRefillWindow) {
                this.prefetchWindowStartExtraSpace = i3 - i5;
                this.prefetchWindowStartLine = i;
            } else {
                int roundToInt = UnsignedKt.roundToInt(Math.abs(f)) + this.prefetchWindowStartExtraSpace;
                int i8 = i3 - i5;
                if (roundToInt > i8) {
                    roundToInt = i8;
                }
                this.prefetchWindowStartExtraSpace = roundToInt;
            }
            while (this.prefetchWindowStartExtraSpace > 0 && (i6 = this.prefetchWindowStartLine) > 0) {
                int itemSizeOrPrefetch = getItemSizeOrPrefetch(svg, this.prefetchWindowStartLine - 1, i6 + (-1) == i + (-1) && ((f > RecyclerView.DECELERATION_RATE ? 1 : (f == RecyclerView.DECELERATION_RATE ? 0 : -1)) != 0) && Math.abs(f) >= ((float) i5));
                if (itemSizeOrPrefetch == -1) {
                    return;
                }
                this.prefetchWindowStartLine--;
                this.prefetchWindowStartExtraSpace -= itemSizeOrPrefetch;
            }
            return;
        }
        if (!z2 || this.shouldRefillWindow) {
            this.prefetchWindowEndExtraSpace = i3 - i4;
            this.prefetchWindowEndLine = i2;
        } else {
            int roundToInt2 = UnsignedKt.roundToInt(Math.abs(f)) + this.prefetchWindowEndExtraSpace;
            int i9 = i3 - i4;
            if (roundToInt2 > i9) {
                roundToInt2 = i9;
            }
            this.prefetchWindowEndExtraSpace = roundToInt2;
        }
        while (this.prefetchWindowEndExtraSpace > 0 && (i7 = this.prefetchWindowEndLine) != -1 && i7 < this.itemsCount - 1) {
            int itemSizeOrPrefetch2 = getItemSizeOrPrefetch(svg, this.prefetchWindowEndLine + 1, i7 + 1 == i2 + 1 && ((f > RecyclerView.DECELERATION_RATE ? 1 : (f == RecyclerView.DECELERATION_RATE ? 0 : -1)) != 0) && Math.abs(f) >= ((float) i4));
            if (itemSizeOrPrefetch2 == -1) {
                return;
            }
            this.prefetchWindowEndLine++;
            this.prefetchWindowEndExtraSpace -= itemSizeOrPrefetch2;
        }
    }

    public final void onScroll(float f, PagerMeasureResult pagerMeasureResult) {
        PagerCacheWindowLogic pagerCacheWindowLogic;
        boolean z;
        int i;
        int i2;
        int i3;
        SVG svg = this.cacheWindowScope;
        svg.cssRules = pagerMeasureResult;
        svg.idToElementMap = this.state;
        float f2 = -f;
        traceWindowInfo();
        if (svg.getHasVisibleItems()) {
            Operation$State.getMainAxisViewportSize(svg.getLayoutInfo());
            svg.getLayoutInfo();
            this.itemsCount = svg.getTotalItemsCount();
            int firstVisibleLineIndex = svg.getFirstVisibleLineIndex();
            int lastVisibleLineIndex = svg.getLastVisibleLineIndex();
            int totalItemsCount = svg.getTotalItemsCount();
            int mainAxisExtraSpaceStart = svg.getMainAxisExtraSpaceStart();
            int mainAxisExtraSpaceEnd = svg.getMainAxisExtraSpaceEnd();
            MutableIntObjectMap mutableIntObjectMap = this.windowCacheWithItems;
            if (f2 <= RecyclerView.DECELERATION_RATE) {
                this.prefetchWindowStartExtraSpace = 0 - mainAxisExtraSpaceStart;
                this.prefetchWindowStartLine = firstVisibleLineIndex;
                while (this.prefetchWindowStartExtraSpace > 0 && (i3 = this.prefetchWindowStartLine) > 0 && mutableIntObjectMap.containsKey(i3 - 1)) {
                    Object obj = mutableIntObjectMap.get(this.prefetchWindowStartLine - 1);
                    obj.getClass();
                    this.prefetchWindowStartLine--;
                    this.prefetchWindowStartExtraSpace -= ((CachedItem) obj).mainAxisSize;
                }
                removeOutOfBoundsItems(0, this.prefetchWindowStartLine - 1);
            } else {
                this.prefetchWindowEndExtraSpace = 0 - mainAxisExtraSpaceEnd;
                this.prefetchWindowEndLine = lastVisibleLineIndex;
                while (this.prefetchWindowEndExtraSpace > 0 && (i2 = this.prefetchWindowEndLine) < totalItemsCount - 1 && mutableIntObjectMap.containsKey(i2 + 1)) {
                    Object obj2 = mutableIntObjectMap.get(this.prefetchWindowEndLine + 1);
                    obj2.getClass();
                    int i4 = ((CachedItem) obj2).mainAxisSize;
                    this.prefetchWindowEndLine++;
                    this.prefetchWindowEndExtraSpace -= i4;
                }
                removeOutOfBoundsItems(this.prefetchWindowEndLine + 1, totalItemsCount - 1);
            }
        }
        if (svg.getHasVisibleItems()) {
            Operation$State.getMainAxisViewportSize(svg.getLayoutInfo());
            if (svg.getLayoutInfo().density != null) {
                i = ((PagerState) this.cacheWindow.this$0).latestPageSizeWithSpacing;
                z = false;
            } else {
                z = false;
                i = 0;
            }
            pagerCacheWindowLogic = this;
            pagerCacheWindowLogic.onPrefetchForward(svg, svg.getFirstVisibleLineIndex(), svg.getLastVisibleLineIndex(), i, svg.getMainAxisExtraSpaceEnd(), svg.getMainAxisExtraSpaceStart(), f2, f2 <= RecyclerView.DECELERATION_RATE ? true : z);
        } else {
            pagerCacheWindowLogic = this;
        }
        pagerCacheWindowLogic.previousPassDelta = f2;
        pagerCacheWindowLogic.traceWindowInfo();
    }

    public final void removeOutOfBoundsItems(int i, int i2) {
        char c;
        long j;
        long j2;
        long j3;
        char c2;
        int[] iArr;
        long[] jArr;
        int[] iArr2;
        long[] jArr2;
        int i3;
        char c3;
        int i4;
        MutableIntSet mutableIntSet = this.indicesToRemove;
        mutableIntSet.clear();
        MutableIntObjectMap mutableIntObjectMap = this.prefetchWindowHandles;
        int[] iArr3 = mutableIntObjectMap.keys;
        long[] jArr3 = mutableIntObjectMap.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i5 = 0;
            j = 128;
            j2 = 255;
            while (true) {
                long j4 = jArr3[i5];
                c = 7;
                j3 = -9187201950435737472L;
                if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i6 = 8 - ((~(i5 - length)) >>> 31);
                    for (int i7 = 0; i7 < i6; i7++) {
                        if ((j4 & 255) < 128 && i <= (i4 = iArr3[(i5 << 3) + i7]) && i4 <= i2) {
                            mutableIntSet.add(i4);
                        }
                        j4 >>= 8;
                    }
                    if (i6 != 8) {
                        break;
                    }
                }
                if (i5 == length) {
                    break;
                } else {
                    i5++;
                }
            }
        } else {
            c = 7;
            j = 128;
            j2 = 255;
            j3 = -9187201950435737472L;
        }
        MutableIntIntMap mutableIntIntMap = this.windowCache;
        int[] iArr4 = mutableIntIntMap.keys;
        long[] jArr4 = mutableIntIntMap.metadata;
        int length2 = jArr4.length - 2;
        if (length2 >= 0) {
            int i8 = 0;
            while (true) {
                long j5 = jArr4[i8];
                if ((((~j5) << c) & j5 & j3) != j3) {
                    int i9 = 8 - ((~(i8 - length2)) >>> 31);
                    int i10 = 0;
                    while (i10 < i9) {
                        if ((j5 & j2) < j) {
                            c3 = c;
                            int i11 = iArr4[(i8 << 3) + i10];
                            if (i <= i11 && i11 <= i2) {
                                mutableIntSet.add(i11);
                            }
                        } else {
                            c3 = c;
                        }
                        j5 >>= 8;
                        i10++;
                        c = c3;
                    }
                    c2 = c;
                    if (i9 != 8) {
                        break;
                    }
                } else {
                    c2 = c;
                }
                if (i8 == length2) {
                    break;
                }
                i8++;
                c = c2;
            }
        } else {
            c2 = c;
        }
        MutableIntObjectMap mutableIntObjectMap2 = this.windowCacheWithItems;
        int[] iArr5 = mutableIntObjectMap2.keys;
        long[] jArr5 = mutableIntObjectMap2.metadata;
        int length3 = jArr5.length - 2;
        if (length3 >= 0) {
            int i12 = 0;
            while (true) {
                long j6 = jArr5[i12];
                if ((((~j6) << c2) & j6 & j3) != j3) {
                    int i13 = 8 - ((~(i12 - length3)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((j6 & j2) < j && i <= (i3 = iArr5[(i12 << 3) + i14]) && i3 <= i2) {
                            mutableIntSet.add(i3);
                        }
                        j6 >>= 8;
                    }
                    if (i13 != 8) {
                        break;
                    }
                }
                if (i12 == length3) {
                    break;
                } else {
                    i12++;
                }
            }
        }
        int[] iArr6 = mutableIntSet.elements;
        long[] jArr6 = mutableIntSet.metadata;
        int length4 = jArr6.length - 2;
        if (length4 < 0) {
            return;
        }
        int i15 = 0;
        while (true) {
            long j7 = jArr6[i15];
            if ((((~j7) << c2) & j7 & j3) != j3) {
                int i16 = 8 - ((~(i15 - length4)) >>> 31);
                int i17 = 0;
                while (i17 < i16) {
                    if ((j7 & j2) < j) {
                        int i18 = iArr6[(i15 << 3) + i17];
                        List list = (List) mutableIntObjectMap.remove(i18);
                        if (list != null) {
                            int size = list.size();
                            for (int i19 = 0; i19 < size; i19++) {
                                ((LazyLayoutPrefetchState.PrefetchHandle) list.get(i19)).cancel();
                            }
                        }
                        int findKeyIndex = mutableIntIntMap.findKeyIndex(i18);
                        if (findKeyIndex >= 0) {
                            mutableIntIntMap._size--;
                            long[] jArr7 = mutableIntIntMap.metadata;
                            int i20 = mutableIntIntMap._capacity;
                            int i21 = findKeyIndex >> 3;
                            int i22 = (findKeyIndex & 7) << 3;
                            iArr2 = iArr6;
                            jArr2 = jArr6;
                            long j8 = (jArr7[i21] & (~(j2 << i22))) | (254 << i22);
                            jArr7[i21] = j8;
                            jArr7[(((findKeyIndex - 7) & i20) + (i20 & 7)) >> 3] = j8;
                        } else {
                            iArr2 = iArr6;
                            jArr2 = jArr6;
                        }
                        mutableIntObjectMap2.remove(i18);
                    } else {
                        iArr2 = iArr6;
                        jArr2 = jArr6;
                    }
                    j7 >>= 8;
                    i17++;
                    iArr6 = iArr2;
                    jArr6 = jArr2;
                }
                iArr = iArr6;
                jArr = jArr6;
                if (i16 != 8) {
                    return;
                }
            } else {
                iArr = iArr6;
                jArr = jArr6;
            }
            if (i15 == length4) {
                return;
            }
            i15++;
            iArr6 = iArr;
            jArr6 = jArr;
        }
    }

    public final void resetStrategy() {
        this.prefetchWindowStartLine = Integer.MAX_VALUE;
        this.prefetchWindowEndLine = Integer.MIN_VALUE;
        this.prefetchWindowStartExtraSpace = 0;
        this.prefetchWindowEndExtraSpace = 0;
        this.shouldRefillWindow = false;
        this.windowCache.clear();
        this.windowCacheWithItems.clear();
        MutableIntObjectMap mutableIntObjectMap = this.prefetchWindowHandles;
        long[] jArr = mutableIntObjectMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        int i5 = mutableIntObjectMap.keys[i4];
                        List list = (List) mutableIntObjectMap.values[i4];
                        int size = list.size();
                        for (int i6 = 0; i6 < size; i6++) {
                            ((LazyLayoutPrefetchState.PrefetchHandle) list.get(i6)).cancel();
                        }
                        mutableIntObjectMap.removeValueAt(i4);
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void traceWindowInfo() {
        FileUtil.traceValue("prefetchWindowStartExtraSpace", this.prefetchWindowStartExtraSpace);
        FileUtil.traceValue("prefetchWindowEndExtraSpace", this.prefetchWindowEndExtraSpace);
        FileUtil.traceValue("prefetchWindowStartIndex", this.prefetchWindowStartLine);
        FileUtil.traceValue("prefetchWindowEndIndex", this.prefetchWindowEndLine);
    }
}
