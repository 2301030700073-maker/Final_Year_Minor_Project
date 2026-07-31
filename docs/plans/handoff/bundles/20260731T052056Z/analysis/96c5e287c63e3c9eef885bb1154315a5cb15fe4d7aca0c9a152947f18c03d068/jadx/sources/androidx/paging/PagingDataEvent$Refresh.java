package androidx.paging;

import kotlin.text.StringsKt__IndentKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagingDataEvent$Refresh extends FlowExtKt {
    public final PageStore newList;
    public final PageStore previousList;

    public PagingDataEvent$Refresh(PageStore pageStore, PageStore pageStore2) {
        pageStore2.getClass();
        this.newList = pageStore;
        this.previousList = pageStore2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PagingDataEvent$Refresh)) {
            return false;
        }
        PageStore pageStore = this.newList;
        int i = pageStore.placeholdersBefore;
        PagingDataEvent$Refresh pagingDataEvent$Refresh = (PagingDataEvent$Refresh) obj;
        PageStore pageStore2 = pagingDataEvent$Refresh.previousList;
        PageStore pageStore3 = pagingDataEvent$Refresh.newList;
        if (i != pageStore3.placeholdersBefore || pageStore.placeholdersAfter != pageStore3.placeholdersAfter || pageStore.getSize() != pageStore3.getSize() || pageStore.dataCount != pageStore3.dataCount) {
            return false;
        }
        PageStore pageStore4 = this.previousList;
        return pageStore4.placeholdersBefore == pageStore2.placeholdersBefore && pageStore4.placeholdersAfter == pageStore2.placeholdersAfter && pageStore4.getSize() == pageStore2.getSize() && pageStore4.dataCount == pageStore2.dataCount;
    }

    public final int hashCode() {
        return this.previousList.hashCode() + this.newList.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PagingDataEvent.Refresh loaded newList\n                    |   newList (\n                    |       placeholdersBefore: ");
        PageStore pageStore = this.newList;
        sb.append(pageStore.placeholdersBefore);
        sb.append("\n                    |       placeholdersAfter: ");
        sb.append(pageStore.placeholdersAfter);
        sb.append("\n                    |       size: ");
        sb.append(pageStore.getSize());
        sb.append("\n                    |       dataCount: ");
        sb.append(pageStore.dataCount);
        sb.append("\n                    |   )\n                    |   previousList (\n                    |       placeholdersBefore: ");
        PageStore pageStore2 = this.previousList;
        sb.append(pageStore2.placeholdersBefore);
        sb.append("\n                    |       placeholdersAfter: ");
        sb.append(pageStore2.placeholdersAfter);
        sb.append("\n                    |       size: ");
        sb.append(pageStore2.getSize());
        sb.append("\n                    |       dataCount: ");
        sb.append(pageStore2.dataCount);
        sb.append("\n                    |   )\n                    |");
        return StringsKt__IndentKt.trimMargin$default(sb.toString());
    }
}
