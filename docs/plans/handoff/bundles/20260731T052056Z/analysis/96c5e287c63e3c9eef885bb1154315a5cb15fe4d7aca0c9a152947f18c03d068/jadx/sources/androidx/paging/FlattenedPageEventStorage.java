package androidx.paging;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.PrefetchHandleProvider$HandleAndRequestImpl;
import androidx.paging.LoadState;
import androidx.paging.PageEvent;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.ranges.IntProgressionIterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlattenedPageEventStorage {
    public Object mediatorStates;
    public final List pages;
    public int placeholdersAfter;
    public int placeholdersBefore;
    public boolean receivedFirstEvent;
    public final Object sourceStates;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.PREPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.REFRESH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FlattenedPageEventStorage(PrefetchHandleProvider$HandleAndRequestImpl prefetchHandleProvider$HandleAndRequestImpl, List list) {
        this.mediatorStates = prefetchHandleProvider$HandleAndRequestImpl;
        this.pages = list;
        this.sourceStates = new List[list.size()];
        if (list.isEmpty()) {
            InlineClassHelperKt.throwIllegalArgumentException("NestedPrefetchController shouldn't be created with no states");
        }
    }

    public void add(PageEvent pageEvent) {
        ArrayDeque arrayDeque = (ArrayDeque) this.pages;
        SVG svg = (SVG) this.sourceStates;
        pageEvent.getClass();
        this.receivedFirstEvent = true;
        if (!(pageEvent instanceof PageEvent.Insert)) {
            if (pageEvent instanceof PageEvent.Drop) {
                svg.set((LoadType) null, LoadState.NotLoading.Incomplete);
                int[] iArr = WhenMappings.$EnumSwitchMapping$0;
                throw null;
            }
            if (pageEvent instanceof PageEvent.LoadStateUpdate) {
                PageEvent.LoadStateUpdate loadStateUpdate = (PageEvent.LoadStateUpdate) pageEvent;
                svg.set(loadStateUpdate.source);
                this.mediatorStates = loadStateUpdate.mediator;
                return;
            } else {
                if (pageEvent instanceof PageEvent.StaticList) {
                    throw null;
                }
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return;
            }
        }
        PageEvent.Insert insert = (PageEvent.Insert) pageEvent;
        LoadStates loadStates = insert.sourceLoadStates;
        int i = insert.placeholdersBefore;
        int i2 = insert.placeholdersAfter;
        List list = insert.pages;
        svg.set(loadStates);
        this.mediatorStates = insert.mediatorLoadStates;
        int i3 = WhenMappings.$EnumSwitchMapping$0[insert.loadType.ordinal()];
        if (i3 == 1) {
            this.placeholdersBefore = i;
            int size = list.size() - 1;
            IntProgressionIterator intProgressionIterator = new IntProgressionIterator(size, ContextsKt.getProgressionLastElement(size, 0, -1), -1);
            while (intProgressionIterator.hasNext) {
                arrayDeque.addFirst(list.get(intProgressionIterator.nextInt()));
            }
            return;
        }
        if (i3 == 2) {
            this.placeholdersAfter = i2;
            arrayDeque.addAll(list);
        } else {
            if (i3 != 3) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return;
            }
            arrayDeque.clear();
            this.placeholdersAfter = i2;
            this.placeholdersBefore = i;
            arrayDeque.addAll(list);
        }
    }

    public List getAsEvents() {
        ArrayDeque arrayDeque = (ArrayDeque) this.pages;
        if (!this.receivedFirstEvent) {
            return EmptyList.INSTANCE;
        }
        ArrayList arrayList = new ArrayList();
        LoadStates snapshot = ((SVG) this.sourceStates).snapshot();
        if (arrayDeque.isEmpty()) {
            arrayList.add(new PageEvent.LoadStateUpdate(snapshot, (LoadStates) this.mediatorStates));
            return arrayList;
        }
        arrayList.add(new PageEvent.Insert(LoadType.REFRESH, CollectionsKt.toList(arrayDeque), this.placeholdersBefore, this.placeholdersAfter, snapshot, (LoadStates) this.mediatorStates));
        return arrayList;
    }

    public FlattenedPageEventStorage() {
        this.pages = new ArrayDeque();
        this.sourceStates = new SVG(23);
    }
}
