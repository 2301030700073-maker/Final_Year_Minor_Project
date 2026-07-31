package androidx.paging;

import kotlin.text.StringsKt__IndentKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagingDataEvent$DropPrepend extends FlowExtKt {
    public final int dropCount;
    public final int newPlaceholdersBefore;
    public final int oldPlaceholdersBefore;

    public PagingDataEvent$DropPrepend(int i, int i2, int i3) {
        this.dropCount = i;
        this.newPlaceholdersBefore = i2;
        this.oldPlaceholdersBefore = i3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PagingDataEvent$DropPrepend)) {
            return false;
        }
        PagingDataEvent$DropPrepend pagingDataEvent$DropPrepend = (PagingDataEvent$DropPrepend) obj;
        return this.dropCount == pagingDataEvent$DropPrepend.dropCount && this.newPlaceholdersBefore == pagingDataEvent$DropPrepend.newPlaceholdersBefore && this.oldPlaceholdersBefore == pagingDataEvent$DropPrepend.oldPlaceholdersBefore;
    }

    public final int hashCode() {
        return this.dropCount + this.newPlaceholdersBefore + this.oldPlaceholdersBefore;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PagingDataEvent.DropPrepend dropped ");
        int i = this.dropCount;
        sb.append(i);
        sb.append(" items (\n                    |   dropCount: ");
        sb.append(i);
        sb.append("\n                    |   newPlaceholdersBefore: ");
        sb.append(this.newPlaceholdersBefore);
        sb.append("\n                    |   oldPlaceholdersBefore: ");
        sb.append(this.oldPlaceholdersBefore);
        sb.append("\n                    |)\n                    |");
        return StringsKt__IndentKt.trimMargin$default(sb.toString());
    }
}
