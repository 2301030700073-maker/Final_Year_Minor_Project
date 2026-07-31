package org.schabi.newpipe.database.history.model;

import j$.time.OffsetDateTime;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SearchHistoryEntry {
    public static final Companion Companion = new Companion();
    public OffsetDateTime creationDate;
    public final long id;
    public final String search;
    public final int serviceId;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public SearchHistoryEntry(OffsetDateTime offsetDateTime, int i, String str, long j) {
        this.creationDate = offsetDateTime;
        this.serviceId = i;
        this.search = str;
        this.id = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchHistoryEntry)) {
            return false;
        }
        SearchHistoryEntry searchHistoryEntry = (SearchHistoryEntry) obj;
        return Intrinsics.areEqual(this.creationDate, searchHistoryEntry.creationDate) && this.serviceId == searchHistoryEntry.serviceId && Intrinsics.areEqual(this.search, searchHistoryEntry.search) && this.id == searchHistoryEntry.id;
    }

    public final int hashCode() {
        OffsetDateTime offsetDateTime = this.creationDate;
        int hashCode = (((offsetDateTime == null ? 0 : offsetDateTime.hashCode()) * 31) + this.serviceId) * 31;
        String str = this.search;
        int hashCode2 = str != null ? str.hashCode() : 0;
        long j = this.id;
        return ((hashCode + hashCode2) * 31) + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "SearchHistoryEntry(creationDate=" + this.creationDate + ", serviceId=" + this.serviceId + ", search=" + this.search + ", id=" + this.id + ")";
    }
}
