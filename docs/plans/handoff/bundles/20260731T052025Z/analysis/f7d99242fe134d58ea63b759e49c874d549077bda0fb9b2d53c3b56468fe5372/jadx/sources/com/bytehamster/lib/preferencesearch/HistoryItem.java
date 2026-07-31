package com.bytehamster.lib.preferencesearch;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HistoryItem extends ListItem {
    public final String term;

    public HistoryItem(String str) {
        this.term = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof HistoryItem) {
            return ((HistoryItem) obj).term.equals(this.term);
        }
        return false;
    }

    @Override // com.bytehamster.lib.preferencesearch.ListItem
    public final int getType() {
        return 1;
    }
}
