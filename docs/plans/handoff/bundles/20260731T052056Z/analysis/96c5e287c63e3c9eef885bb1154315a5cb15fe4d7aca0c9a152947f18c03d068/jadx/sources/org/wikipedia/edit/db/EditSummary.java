package org.wikipedia.edit.db;

import java.util.Date;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditSummary {
    public final Date lastUsed;
    public final String summary;

    public EditSummary(String str, Date date) {
        str.getClass();
        this.summary = str;
        this.lastUsed = date;
    }

    public final String toString() {
        return this.summary;
    }
}
