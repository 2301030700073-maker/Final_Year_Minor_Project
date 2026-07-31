package org.wikipedia.search;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StandardSearchResults {
    public final Integer continuation;
    public final ArrayList results;
    public final String xSearchIdFullText;
    public final String xSearchIdPrefix;

    public StandardSearchResults(ArrayList arrayList, Integer num, String str, String str2) {
        this.results = arrayList;
        this.continuation = num;
        this.xSearchIdPrefix = str;
        this.xSearchIdFullText = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StandardSearchResults)) {
            return false;
        }
        StandardSearchResults standardSearchResults = (StandardSearchResults) obj;
        return this.results.equals(standardSearchResults.results) && Intrinsics.areEqual(this.continuation, standardSearchResults.continuation) && Intrinsics.areEqual(this.xSearchIdPrefix, standardSearchResults.xSearchIdPrefix) && Intrinsics.areEqual(this.xSearchIdFullText, standardSearchResults.xSearchIdFullText);
    }

    public final int hashCode() {
        int hashCode = this.results.hashCode() * 31;
        Integer num = this.continuation;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.xSearchIdPrefix;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.xSearchIdFullText;
        return hashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "StandardSearchResults(results=" + this.results + ", continuation=" + this.continuation + ", xSearchIdPrefix=" + this.xSearchIdPrefix + ", xSearchIdFullText=" + this.xSearchIdFullText + ")";
    }
}
