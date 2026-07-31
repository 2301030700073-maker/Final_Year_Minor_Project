package androidx.paging;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt__IndentKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagingDataEvent$Prepend extends FlowExtKt {
    public final ArrayList inserted;
    public final int newPlaceholdersBefore;
    public final int oldPlaceholdersBefore;

    public PagingDataEvent$Prepend(ArrayList arrayList, int i, int i2) {
        this.inserted = arrayList;
        this.newPlaceholdersBefore = i;
        this.oldPlaceholdersBefore = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PagingDataEvent$Prepend)) {
            return false;
        }
        PagingDataEvent$Prepend pagingDataEvent$Prepend = (PagingDataEvent$Prepend) obj;
        return this.inserted.equals(pagingDataEvent$Prepend.inserted) && this.newPlaceholdersBefore == pagingDataEvent$Prepend.newPlaceholdersBefore && this.oldPlaceholdersBefore == pagingDataEvent$Prepend.oldPlaceholdersBefore;
    }

    public final int hashCode() {
        return this.inserted.hashCode() + this.newPlaceholdersBefore + this.oldPlaceholdersBefore;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PagingDataEvent.Prepend loaded ");
        ArrayList arrayList = this.inserted;
        sb.append(arrayList.size());
        sb.append(" items (\n                    |   first item: ");
        sb.append(CollectionsKt.firstOrNull((List) arrayList));
        sb.append("\n                    |   last item: ");
        sb.append(CollectionsKt.lastOrNull(arrayList));
        sb.append("\n                    |   newPlaceholdersBefore: ");
        sb.append(this.newPlaceholdersBefore);
        sb.append("\n                    |   oldPlaceholdersBefore: ");
        sb.append(this.oldPlaceholdersBefore);
        sb.append("\n                    |)\n                    |");
        return StringsKt__IndentKt.trimMargin$default(sb.toString());
    }
}
