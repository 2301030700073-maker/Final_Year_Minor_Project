package androidx.paging;

import kotlin.text.StringsKt__IndentKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagingDataEvent$DropAppend extends FlowExtKt {
    public final int dropCount;
    public final int newPlaceholdersAfter;
    public final int oldPlaceholdersAfter;
    public final int startIndex;

    public PagingDataEvent$DropAppend(int i, int i2, int i3, int i4) {
        this.startIndex = i;
        this.dropCount = i2;
        this.newPlaceholdersAfter = i3;
        this.oldPlaceholdersAfter = i4;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PagingDataEvent$DropAppend)) {
            return false;
        }
        PagingDataEvent$DropAppend pagingDataEvent$DropAppend = (PagingDataEvent$DropAppend) obj;
        return this.startIndex == pagingDataEvent$DropAppend.startIndex && this.dropCount == pagingDataEvent$DropAppend.dropCount && this.newPlaceholdersAfter == pagingDataEvent$DropAppend.newPlaceholdersAfter && this.oldPlaceholdersAfter == pagingDataEvent$DropAppend.oldPlaceholdersAfter;
    }

    public final int hashCode() {
        return this.startIndex + this.dropCount + this.newPlaceholdersAfter + this.oldPlaceholdersAfter;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PagingDataEvent.DropAppend dropped ");
        int i = this.dropCount;
        sb.append(i);
        sb.append(" items (\n                    |   startIndex: ");
        sb.append(this.startIndex);
        sb.append("\n                    |   dropCount: ");
        sb.append(i);
        sb.append("\n                    |   newPlaceholdersBefore: ");
        sb.append(this.newPlaceholdersAfter);
        sb.append("\n                    |   oldPlaceholdersBefore: ");
        sb.append(this.oldPlaceholdersAfter);
        sb.append("\n                    |)\n                    |");
        return StringsKt__IndentKt.trimMargin$default(sb.toString());
    }
}
