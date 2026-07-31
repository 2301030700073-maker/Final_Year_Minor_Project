package org.schabi.newpipe.fragments.list.search;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SuggestionItem {
    public final boolean fromHistory;
    public final String query;

    public SuggestionItem(boolean z, String str) {
        str.getClass();
        this.fromHistory = z;
        this.query = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SuggestionItem)) {
            return false;
        }
        return Intrinsics.areEqual(this.query, ((SuggestionItem) obj).query);
    }

    public final int hashCode() {
        return this.query.hashCode();
    }

    public final String toString() {
        return "[" + this.fromHistory + "→" + this.query + "]";
    }
}
