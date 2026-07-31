package androidx.paging;

import androidx.compose.ui.unit.DpKt;
import androidx.paging.LoadState;
import androidx.paging.PageEvent;
import androidx.paging.PagingSource;
import androidx.paging.ViewportHint;
import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.sync.MutexImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageFetcherSnapshotState {
    public final ArrayList _pages;
    public int _placeholdersAfter;
    public int _placeholdersBefore;
    public final BufferedChannel appendGenerationIdCh;
    public final PagingConfig config;
    public final LinkedHashMap failedHintsByLoadType;
    public int initialPageIndex;
    public final LinkedHashMap pageKeys;
    public final ArrayList pages;
    public final BufferedChannel prependGenerationIdCh;
    public final SVG sourceLoadStates;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Holder {
        public final MutexImpl lock = new MutexImpl();
        public final PageFetcherSnapshotState state;

        public Holder(PagingConfig pagingConfig) {
            this.state = new PageFetcherSnapshotState(pagingConfig);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.PREPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public PageFetcherSnapshotState(PagingConfig pagingConfig) {
        this.config = pagingConfig;
        ArrayList arrayList = new ArrayList();
        this._pages = arrayList;
        this.pages = arrayList;
        this.pageKeys = new LinkedHashMap();
        this.prependGenerationIdCh = DpKt.Channel$default(-1, 6, null);
        this.appendGenerationIdCh = DpKt.Channel$default(-1, 6, null);
        this.failedHintsByLoadType = new LinkedHashMap();
        SVG svg = new SVG(23);
        svg.set(LoadType.REFRESH, LoadState.Loading.INSTANCE);
        this.sourceLoadStates = svg;
    }

    public final PagingState currentPagingState$paging_common(ViewportHint.Access access) {
        Integer num;
        PagingConfig pagingConfig = this.config;
        int i = pagingConfig.pageSize;
        ArrayList arrayList = this.pages;
        List list = CollectionsKt.toList(arrayList);
        if (access != null) {
            int i2 = access.pageOffset;
            int i3 = this._placeholdersBefore;
            int i4 = -this.initialPageIndex;
            int size = (arrayList.size() - 1) - this.initialPageIndex;
            int i5 = i4;
            while (i5 < i2) {
                i3 += i5 > size ? i : ((PagingSource.LoadResult.Page) arrayList.get(this.initialPageIndex + i5)).data.size();
                i5++;
            }
            int i6 = i3 + access.indexInPage;
            if (i2 < i4) {
                i6 -= i;
            }
            num = Integer.valueOf(i6);
        } else {
            num = null;
        }
        return new PagingState(list, num, pagingConfig, this._placeholdersBefore);
    }

    public final int getStorageCount$paging_common() {
        Iterator it = this.pages.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((PagingSource.LoadResult.Page) it.next()).data.size();
        }
        return i;
    }

    public final boolean insert(int i, LoadType loadType, PagingSource.LoadResult.Page page, Object obj) {
        loadType.getClass();
        page.getClass();
        int i2 = page.itemsBefore;
        List list = page.data;
        int i3 = page.itemsAfter;
        int i4 = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        LinkedHashMap linkedHashMap = this.pageKeys;
        ArrayList arrayList = this._pages;
        ArrayList arrayList2 = this.pages;
        if (i4 == 1) {
            if (!arrayList2.isEmpty()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("cannot receive multiple init calls");
                return false;
            }
            if (i != 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("init loadId must be the initial value, 0");
                return false;
            }
            arrayList.add(page);
            linkedHashMap.put(Integer.valueOf(page.hashCode()), obj);
            this.initialPageIndex = 0;
            if (i3 == Integer.MIN_VALUE) {
                i3 = 0;
            }
            this._placeholdersAfter = i3;
            if (i2 == Integer.MIN_VALUE) {
                i2 = 0;
            }
            this._placeholdersBefore = i2;
            return true;
        }
        LinkedHashMap linkedHashMap2 = this.failedHintsByLoadType;
        if (i4 != 2) {
            if (i4 != 3) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return false;
            }
            if (arrayList2.isEmpty()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("should've received an init before append");
                return false;
            }
            if (i == 0) {
                arrayList.add(page);
                linkedHashMap.put(Integer.valueOf(page.hashCode()), obj);
                if (i3 == Integer.MIN_VALUE) {
                    int size = this._placeholdersAfter - list.size();
                    i3 = size < 0 ? 0 : size;
                }
                this._placeholdersAfter = i3 != Integer.MIN_VALUE ? i3 : 0;
                linkedHashMap2.remove(LoadType.APPEND);
                return true;
            }
        } else {
            if (arrayList2.isEmpty()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("should've received an init before prepend");
                return false;
            }
            if (i == 0) {
                arrayList.add(0, page);
                linkedHashMap.put(Integer.valueOf(page.hashCode()), obj);
                this.initialPageIndex++;
                if (i2 == Integer.MIN_VALUE) {
                    int size2 = this._placeholdersBefore - list.size();
                    i2 = size2 < 0 ? 0 : size2;
                }
                this._placeholdersBefore = i2 != Integer.MIN_VALUE ? i2 : 0;
                linkedHashMap2.remove(LoadType.PREPEND);
                return true;
            }
        }
        return false;
    }

    public final PageEvent.Insert toPageEvent$paging_common(PagingSource.LoadResult.Page page, LoadType loadType) {
        page.getClass();
        loadType.getClass();
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        int i = iArr[loadType.ordinal()];
        int i2 = 0;
        if (i != 1) {
            if (i == 2) {
                i2 = 0 - this.initialPageIndex;
            } else {
                if (i != 3) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                i2 = (this.pages.size() - this.initialPageIndex) - 1;
            }
        }
        List listOf = Room.listOf(new TransformablePage(page.data, i2));
        int i3 = iArr[loadType.ordinal()];
        SVG svg = this.sourceLoadStates;
        if (i3 == 1) {
            return new PageEvent.Insert(LoadType.REFRESH, listOf, this._placeholdersBefore, this._placeholdersAfter, svg.snapshot(), null);
        }
        if (i3 == 2) {
            return new PageEvent.Insert(LoadType.PREPEND, listOf, this._placeholdersBefore, -1, svg.snapshot(), null);
        }
        if (i3 != 3) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        return new PageEvent.Insert(LoadType.APPEND, listOf, -1, this._placeholdersAfter, svg.snapshot(), null);
    }
}
