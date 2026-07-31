package androidx.paging;

import androidx.compose.ui.Modifier;
import androidx.paging.LoadState;
import androidx.paging.PageEvent;
import androidx.paging.ViewportHint;
import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageStore {
    public static final PageStore INITIAL;
    public int dataCount;
    public final ArrayList pages;
    public int placeholdersAfter;
    public int placeholdersBefore;

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

    static {
        List listOf = Room.listOf(new TransformablePage(EmptyList.INSTANCE, 0));
        LoadState.NotLoading notLoading = LoadState.NotLoading.Incomplete;
        LoadState.NotLoading notLoading2 = LoadState.NotLoading.Complete;
        INITIAL = new PageStore(new PageEvent.Insert(LoadType.REFRESH, listOf, 0, 0, new LoadStates(notLoading, notLoading2, notLoading2), null));
    }

    public PageStore(int i, int i2, List list) {
        list.getClass();
        this.pages = new ArrayList(list);
        Iterator it = list.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            i3 += ((TransformablePage) it.next()).data.size();
        }
        this.dataCount = i3;
        this.placeholdersBefore = i;
        this.placeholdersAfter = i2;
    }

    public final ViewportHint.Access createAccessHintForIndex(int i) {
        ArrayList arrayList;
        int i2 = i - this.placeholdersBefore;
        int i3 = 0;
        while (true) {
            arrayList = this.pages;
            if (i2 < ((TransformablePage) arrayList.get(i3)).data.size() || i3 >= Room.getLastIndex(arrayList)) {
                break;
            }
            i2 -= ((TransformablePage) arrayList.get(i3)).data.size();
            i3++;
        }
        TransformablePage transformablePage = (TransformablePage) arrayList.get(i3);
        int i4 = i - this.placeholdersBefore;
        int size = ((getSize() - i) - this.placeholdersAfter) - 1;
        int originalPageOffsetFirst = getOriginalPageOffsetFirst();
        int originalPageOffsetLast = getOriginalPageOffsetLast();
        int i5 = transformablePage.hintOriginalPageOffset;
        List list = transformablePage.hintOriginalIndices;
        if (list != null) {
            IntRange indices = Room.getIndices(list);
            if (i2 >= 0 && i2 <= indices.last) {
                i2 = ((Number) list.get(i2)).intValue();
            }
        }
        return new ViewportHint.Access(i5, i2, i4, size, originalPageOffsetFirst, originalPageOffsetLast);
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof PageStore)) {
            return false;
        }
        PageStore pageStore = (PageStore) obj;
        return getOriginalPageOffsetFirst() == pageStore.getOriginalPageOffsetFirst() && getOriginalPageOffsetLast() == pageStore.getOriginalPageOffsetLast() && this.placeholdersBefore == pageStore.placeholdersBefore && this.placeholdersAfter == pageStore.placeholdersAfter && Intrinsics.areEqual(this.pages, pageStore.pages);
    }

    public final Object getItem(int i) {
        ArrayList arrayList = this.pages;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            int size2 = ((TransformablePage) arrayList.get(i2)).data.size();
            if (size2 > i) {
                break;
            }
            i -= size2;
            i2++;
        }
        return ((TransformablePage) arrayList.get(i2)).data.get(i);
    }

    public final int getOriginalPageOffsetFirst() {
        Integer minOrNull = ArraysKt___ArraysKt.minOrNull(((TransformablePage) CollectionsKt.first((List) this.pages)).originalPageOffsets);
        minOrNull.getClass();
        return minOrNull.intValue();
    }

    public final int getOriginalPageOffsetLast() {
        Integer valueOf;
        int[] iArr = ((TransformablePage) CollectionsKt.last((List) this.pages)).originalPageOffsets;
        iArr.getClass();
        if (iArr.length == 0) {
            valueOf = null;
        } else {
            int i = iArr[0];
            int i2 = 1;
            int length = iArr.length - 1;
            if (1 <= length) {
                while (true) {
                    int i3 = iArr[i2];
                    if (i < i3) {
                        i = i3;
                    }
                    if (i2 == length) {
                        break;
                    }
                    i2++;
                }
            }
            valueOf = Integer.valueOf(i);
        }
        valueOf.getClass();
        return valueOf.intValue();
    }

    public final int getSize() {
        return this.placeholdersBefore + this.dataCount + this.placeholdersAfter;
    }

    public final int hashCode() {
        return (this.pages.hashCode() * 31) + (this.placeholdersAfter * 31) + (this.placeholdersBefore * 31) + (getOriginalPageOffsetLast() * 31) + (getOriginalPageOffsetFirst() * 31);
    }

    public final FlowExtKt processEvent(PageEvent pageEvent) {
        pageEvent.getClass();
        boolean z = pageEvent instanceof PageEvent.Insert;
        ArrayList arrayList = this.pages;
        if (!z) {
            if (!(pageEvent instanceof PageEvent.Drop)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Paging received an event to process StaticList or LoadStateUpdate while\nprocessing Inserts and Drops. If you see this exception, it is most\nlikely a bug in the library. Please file a bug so we can fix it at:\nhttps://issuetracker.google.com/issues/new?component=413106");
                return null;
            }
            IntRange intRange = new IntRange(0, 0, 1);
            Iterator it = arrayList.iterator();
            int i = 0;
            while (it.hasNext()) {
                TransformablePage transformablePage = (TransformablePage) it.next();
                int[] iArr = transformablePage.originalPageOffsets;
                int length = iArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        int i3 = iArr[i2];
                        if (intRange.first <= i3 && i3 <= intRange.last) {
                            i += transformablePage.data.size();
                            it.remove();
                            break;
                        }
                        i2++;
                    } else {
                        break;
                    }
                }
            }
            int i4 = this.dataCount - i;
            this.dataCount = i4;
            if (LoadType.PREPEND == null) {
                int i5 = this.placeholdersBefore;
                this.placeholdersBefore = 0;
                return new PagingDataEvent$DropPrepend(i, 0, i5);
            }
            int i6 = this.placeholdersAfter;
            this.placeholdersAfter = 0;
            return new PagingDataEvent$DropAppend(this.placeholdersBefore + i4, i, 0, i6);
        }
        PageEvent.Insert insert = (PageEvent.Insert) pageEvent;
        List list = insert.pages;
        Iterator it2 = list.iterator();
        int i7 = 0;
        while (it2.hasNext()) {
            i7 += ((TransformablePage) it2.next()).data.size();
        }
        int i8 = WhenMappings.$EnumSwitchMapping$0[insert.loadType.ordinal()];
        if (i8 == 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Paging received a refresh event in the middle of an actively loading generation\nof PagingData. If you see this exception, it is most likely a bug in the library.\nPlease file a bug so we can fix it at:\nhttps://issuetracker.google.com/issues/new?component=413106");
            return null;
        }
        if (i8 == 2) {
            int i9 = this.placeholdersBefore;
            arrayList.addAll(0, list);
            this.dataCount += i7;
            this.placeholdersBefore = insert.placeholdersBefore;
            ArrayList arrayList2 = new ArrayList();
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                CollectionsKt.addAll(arrayList2, ((TransformablePage) it3.next()).data);
            }
            return new PagingDataEvent$Prepend(arrayList2, this.placeholdersBefore, i9);
        }
        if (i8 != 3) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        int i10 = this.placeholdersAfter;
        int i11 = this.dataCount;
        arrayList.addAll(arrayList.size(), list);
        this.dataCount += i7;
        this.placeholdersAfter = insert.placeholdersAfter;
        int i12 = this.placeholdersBefore + i11;
        ArrayList arrayList3 = new ArrayList();
        Iterator it4 = list.iterator();
        while (it4.hasNext()) {
            CollectionsKt.addAll(arrayList3, ((TransformablePage) it4.next()).data);
        }
        return new PagingDataEvent$Append(i12, arrayList3, this.placeholdersAfter, i10);
    }

    public final String toString() {
        int i = this.dataCount;
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(getItem(i2));
        }
        String joinToString$default = CollectionsKt.joinToString$default(arrayList, null, null, null, null, 63);
        StringBuilder sb = new StringBuilder("[(");
        sb.append(this.placeholdersBefore);
        sb.append(" placeholders), ");
        sb.append(joinToString$default);
        sb.append(", (");
        return Modifier.CC.m(sb, this.placeholdersAfter, " placeholders)]");
    }

    public PageStore(PageEvent.Insert insert) {
        this(insert.placeholdersBefore, insert.placeholdersAfter, insert.pages);
    }
}
