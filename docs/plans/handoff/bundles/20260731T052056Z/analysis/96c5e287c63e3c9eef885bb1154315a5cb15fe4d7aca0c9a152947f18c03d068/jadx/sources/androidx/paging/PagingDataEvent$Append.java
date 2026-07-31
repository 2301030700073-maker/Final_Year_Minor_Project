package androidx.paging;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt__IndentKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagingDataEvent$Append extends FlowExtKt {
    public final ArrayList inserted;
    public final int newPlaceholdersAfter;
    public final int oldPlaceholdersAfter;
    public final int startIndex;

    public PagingDataEvent$Append(int i, ArrayList arrayList, int i2, int i3) {
        this.startIndex = i;
        this.inserted = arrayList;
        this.newPlaceholdersAfter = i2;
        this.oldPlaceholdersAfter = i3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PagingDataEvent$Append)) {
            return false;
        }
        PagingDataEvent$Append pagingDataEvent$Append = (PagingDataEvent$Append) obj;
        return this.startIndex == pagingDataEvent$Append.startIndex && this.inserted.equals(pagingDataEvent$Append.inserted) && this.newPlaceholdersAfter == pagingDataEvent$Append.newPlaceholdersAfter && this.oldPlaceholdersAfter == pagingDataEvent$Append.oldPlaceholdersAfter;
    }

    public final int hashCode() {
        return this.inserted.hashCode() + this.startIndex + this.newPlaceholdersAfter + this.oldPlaceholdersAfter;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PagingDataEvent.Append loaded ");
        ArrayList arrayList = this.inserted;
        sb.append(arrayList.size());
        sb.append(" items (\n                    |   startIndex: ");
        sb.append(this.startIndex);
        sb.append("\n                    |   first item: ");
        sb.append(CollectionsKt.firstOrNull((List) arrayList));
        sb.append("\n                    |   last item: ");
        sb.append(CollectionsKt.lastOrNull(arrayList));
        sb.append("\n                    |   newPlaceholdersBefore: ");
        sb.append(this.newPlaceholdersAfter);
        sb.append("\n                    |   oldPlaceholdersBefore: ");
        sb.append(this.oldPlaceholdersAfter);
        sb.append("\n                    |)\n                    |");
        return StringsKt__IndentKt.trimMargin$default(sb.toString());
    }
}
