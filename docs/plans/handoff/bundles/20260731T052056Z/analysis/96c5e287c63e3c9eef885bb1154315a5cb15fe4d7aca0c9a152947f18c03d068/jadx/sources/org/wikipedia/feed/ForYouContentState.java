package org.wikipedia.feed;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ForYouContentState {
    public final FeedEmptyState emptyState;
    public final Throwable error;
    public final boolean isInitialLoading;
    public final boolean isInterestModuleHidden;
    public final boolean isLoadingMore;
    public final List modules;
    public final WikiSite wikiSite;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ ForYouContentState() {
        /*
            r10 = this;
            org.wikipedia.dataclient.WikiSite$Companion r0 = org.wikipedia.dataclient.WikiSite.Companion
            org.wikipedia.settings.Prefs r1 = org.wikipedia.settings.Prefs.INSTANCE
            java.lang.String r1 = org.wikipedia.settings.Prefs.getHomeLanguageCode()
            r0.getClass()
            org.wikipedia.dataclient.WikiSite r4 = org.wikipedia.dataclient.WikiSite.Companion.forLanguageCode(r1)
            r6 = 0
            r8 = 0
            kotlin.collections.EmptyList r3 = kotlin.collections.EmptyList.INSTANCE
            r5 = 0
            r7 = 0
            r9 = 0
            r2 = r10
            r2.<init>(r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.ForYouContentState.<init>():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v8, types: [java.util.List] */
    public static ForYouContentState copy$default(ForYouContentState forYouContentState, ArrayList arrayList, WikiSite wikiSite, boolean z, boolean z2, Throwable th, boolean z3, FeedEmptyState feedEmptyState, int i) {
        ArrayList arrayList2 = arrayList;
        if ((i & 1) != 0) {
            arrayList2 = forYouContentState.modules;
        }
        ArrayList arrayList3 = arrayList2;
        if ((i & 2) != 0) {
            wikiSite = forYouContentState.wikiSite;
        }
        WikiSite wikiSite2 = wikiSite;
        if ((i & 4) != 0) {
            z = forYouContentState.isInitialLoading;
        }
        boolean z4 = z;
        if ((i & 8) != 0) {
            z2 = forYouContentState.isLoadingMore;
        }
        boolean z5 = z2;
        if ((i & 16) != 0) {
            th = forYouContentState.error;
        }
        Throwable th2 = th;
        forYouContentState.getClass();
        if ((i & 64) != 0) {
            z3 = forYouContentState.isInterestModuleHidden;
        }
        boolean z6 = z3;
        if ((i & 128) != 0) {
            feedEmptyState = forYouContentState.emptyState;
        }
        forYouContentState.getClass();
        arrayList3.getClass();
        wikiSite2.getClass();
        return new ForYouContentState(arrayList3, wikiSite2, z4, z5, th2, z6, feedEmptyState);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ForYouContentState)) {
            return false;
        }
        ForYouContentState forYouContentState = (ForYouContentState) obj;
        return Intrinsics.areEqual(this.modules, forYouContentState.modules) && Intrinsics.areEqual(this.wikiSite, forYouContentState.wikiSite) && this.isInitialLoading == forYouContentState.isInitialLoading && this.isLoadingMore == forYouContentState.isLoadingMore && Intrinsics.areEqual(this.error, forYouContentState.error) && this.isInterestModuleHidden == forYouContentState.isInterestModuleHidden && this.emptyState == forYouContentState.emptyState;
    }

    public final int hashCode() {
        int hashCode = (((((this.wikiSite.hashCode() + (this.modules.hashCode() * 31)) * 31) + (this.isInitialLoading ? 1231 : 1237)) * 31) + (this.isLoadingMore ? 1231 : 1237)) * 31;
        Throwable th = this.error;
        int hashCode2 = (((((hashCode + (th == null ? 0 : th.hashCode())) * 31) + 1237) * 31) + (this.isInterestModuleHidden ? 1231 : 1237)) * 31;
        FeedEmptyState feedEmptyState = this.emptyState;
        return hashCode2 + (feedEmptyState != null ? feedEmptyState.hashCode() : 0);
    }

    public final String toString() {
        return "ForYouContentState(modules=" + this.modules + ", wikiSite=" + this.wikiSite + ", isInitialLoading=" + this.isInitialLoading + ", isLoadingMore=" + this.isLoadingMore + ", error=" + this.error + ", canLoadMore=false, isInterestModuleHidden=" + this.isInterestModuleHidden + ", emptyState=" + this.emptyState + ")";
    }

    public ForYouContentState(List list, WikiSite wikiSite, boolean z, boolean z2, Throwable th, boolean z3, FeedEmptyState feedEmptyState) {
        this.modules = list;
        this.wikiSite = wikiSite;
        this.isInitialLoading = z;
        this.isLoadingMore = z2;
        this.error = th;
        this.isInterestModuleHidden = z3;
        this.emptyState = feedEmptyState;
    }
}
