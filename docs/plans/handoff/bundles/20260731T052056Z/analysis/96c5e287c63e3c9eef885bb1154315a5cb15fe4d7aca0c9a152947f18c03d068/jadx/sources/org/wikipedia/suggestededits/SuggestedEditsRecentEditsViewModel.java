package org.wikipedia.suggestededits;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.FlowExtKt;
import androidx.paging.PageFetcher;
import androidx.paging.Pager$pageFetcher$2;
import androidx.paging.PagingConfig;
import androidx.recyclerview.widget.RecyclerView;
import j$.time.Instant;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.Prefs$observeKeys$$inlined$filter$1;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFilterTypes;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsRecentEditsViewModel extends ViewModel {
    public static final Companion Companion = new Companion();
    public boolean actionModeActive;
    public String cachedContinueKey;
    public final ArrayList cachedRecentEdits;
    public final ArrayList cachedUserInfo;
    public String currentQuery;
    public String langCode;
    public final ReadonlySharedFlow recentEditsFlow;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Iterable, java.util.List] */
        /* JADX WARN: Type inference failed for: r8v2, types: [java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r8v3, types: [java.util.List] */
        public static List filterOresScores(List list, boolean z) {
            List list2;
            ArrayList arrayList;
            MwQueryResult.OresItem oresItem;
            MwQueryResult.OresItem oresItem2;
            List list3;
            if (z) {
                SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
                list3 = SuggestedEditsRecentEditsFilterTypes.DAMAGING_GROUP;
                arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list3, 10));
                Iterator it = list3.iterator();
                while (it.hasNext()) {
                    arrayList.add(((SuggestedEditsRecentEditsFilterTypes) it.next()).getId());
                }
            } else {
                SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
                list2 = SuggestedEditsRecentEditsFilterTypes.GOODFAITH_GROUP;
                arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((SuggestedEditsRecentEditsFilterTypes) it2.next()).getId());
                }
            }
            Prefs prefs = Prefs.INSTANCE;
            Collection recentEditsIncludedTypeCodes = Prefs.getRecentEditsIncludedTypeCodes();
            if (!(recentEditsIncludedTypeCodes instanceof Collection) || !recentEditsIncludedTypeCodes.isEmpty()) {
                Iterator it3 = recentEditsIncludedTypeCodes.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    if (arrayList.contains((String) it3.next())) {
                        Prefs prefs2 = Prefs.INSTANCE;
                        Collection recentEditsIncludedTypeCodes2 = Prefs.getRecentEditsIncludedTypeCodes();
                        ArrayList arrayList2 = new ArrayList();
                        for (Object obj : recentEditsIncludedTypeCodes2) {
                            if (arrayList.contains((String) obj)) {
                                arrayList2.add(obj);
                            }
                        }
                        ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
                        Iterator it4 = arrayList2.iterator();
                        while (it4.hasNext()) {
                            String str = (String) it4.next();
                            SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
                            arrayList3.add(SuggestedEditsRecentEditsFilterTypes.Companion.find(str));
                        }
                        ArrayList arrayList4 = new ArrayList();
                        for (Object obj2 : list) {
                            if (((MwQueryResult.RecentChange) obj2).getOres() != null) {
                                arrayList4.add(obj2);
                            }
                        }
                        list = new ArrayList();
                        Iterator it5 = arrayList4.iterator();
                        while (it5.hasNext()) {
                            Object next = it5.next();
                            MwQueryResult.RecentChange recentChange = (MwQueryResult.RecentChange) next;
                            ArrayList arrayList5 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList3, 10));
                            Iterator it6 = arrayList3.iterator();
                            while (it6.hasNext()) {
                                arrayList5.add(((SuggestedEditsRecentEditsFilterTypes) it6.next()).getValue());
                            }
                            float f = RecyclerView.DECELERATION_RATE;
                            MwQueryResult.OresResult ores = recentChange.getOres();
                            if (z) {
                                if (ores != null && (oresItem2 = ores.damaging) != null) {
                                    f = oresItem2.trueProb;
                                }
                            } else if (ores != null && (oresItem = ores.goodfaith) != null) {
                                f = oresItem.trueProb;
                            }
                            Iterator it7 = arrayList5.iterator();
                            while (true) {
                                if (it7.hasNext()) {
                                    List split$default = StringsKt.split$default((String) it7.next(), new String[]{"|"});
                                    if (f >= Float.parseFloat((String) CollectionsKt.first(split$default)) && f <= Float.parseFloat((String) CollectionsKt.last(split$default))) {
                                        list.add(next);
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return list;
        }

        public static int filtersCount() {
            Set set;
            Set set2;
            List list;
            List list2;
            List list3;
            List list4;
            Prefs prefs = Prefs.INSTANCE;
            Collection recentEditsIncludedTypeCodes = Prefs.getRecentEditsIncludedTypeCodes();
            ArrayList arrayList = new ArrayList();
            for (Object obj : recentEditsIncludedTypeCodes) {
                String str = (String) obj;
                SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
                list3 = SuggestedEditsRecentEditsFilterTypes.USER_REGISTRATION_GROUP;
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list3, 10));
                Iterator it = list3.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((SuggestedEditsRecentEditsFilterTypes) it.next()).getId());
                }
                if (!arrayList2.contains(str)) {
                    SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
                    list4 = SuggestedEditsRecentEditsFilterTypes.USER_EXPERIENCE_GROUP;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list4, 10));
                    Iterator it2 = list4.iterator();
                    while (it2.hasNext()) {
                        arrayList3.add(((SuggestedEditsRecentEditsFilterTypes) it2.next()).getId());
                    }
                    if (arrayList3.contains(str)) {
                    }
                }
                arrayList.add(obj);
            }
            SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
            set = SuggestedEditsRecentEditsFilterTypes.DEFAULT_FILTER_USER_STATUS;
            Set set3 = set;
            ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set3, 10));
            Iterator it3 = set3.iterator();
            while (it3.hasNext()) {
                arrayList4.add(((SuggestedEditsRecentEditsFilterTypes) it3.next()).getId());
            }
            Set set4 = CollectionsKt.toSet(arrayList4);
            Set union = CollectionsKt.union(CollectionsKt.subtract(arrayList, set4), CollectionsKt.subtract(set4, CollectionsKt.toSet(arrayList)));
            Prefs prefs2 = Prefs.INSTANCE;
            LinkedHashSet subtract = CollectionsKt.subtract(Prefs.getRecentEditsIncludedTypeCodes(), CollectionsKt.toSet(arrayList));
            ArrayList arrayList5 = new ArrayList();
            for (Object obj2 : subtract) {
                String str2 = (String) obj2;
                SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
                list = SuggestedEditsRecentEditsFilterTypes.GOODFAITH_GROUP;
                ArrayList arrayList6 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                Iterator it4 = list.iterator();
                while (it4.hasNext()) {
                    arrayList6.add(((SuggestedEditsRecentEditsFilterTypes) it4.next()).getId());
                }
                if (!arrayList6.contains(str2)) {
                    SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
                    list2 = SuggestedEditsRecentEditsFilterTypes.DAMAGING_GROUP;
                    ArrayList arrayList7 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                    Iterator it5 = list2.iterator();
                    while (it5.hasNext()) {
                        arrayList7.add(((SuggestedEditsRecentEditsFilterTypes) it5.next()).getId());
                    }
                    if (arrayList7.contains(str2)) {
                    }
                }
                arrayList5.add(obj2);
            }
            Prefs prefs3 = Prefs.INSTANCE;
            LinkedHashSet subtract2 = CollectionsKt.subtract(Prefs.getRecentEditsIncludedTypeCodes(), CollectionsKt.toSet(arrayList5));
            SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
            set2 = SuggestedEditsRecentEditsFilterTypes.DEFAULT_FILTER_OTHERS;
            Set set5 = set2;
            ArrayList arrayList8 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set5, 10));
            Iterator it6 = set5.iterator();
            while (it6.hasNext()) {
                arrayList8.add(((SuggestedEditsRecentEditsFilterTypes) it6.next()).getId());
            }
            LinkedHashSet subtract3 = CollectionsKt.subtract(CollectionsKt.toSet(arrayList8), subtract2);
            return arrayList5.size() + subtract3.size() + union.size();
        }

        public static /* synthetic */ Serializable getRecentEditsCall$default(WikiSite wikiSite, int i, Instant instant, String str, ArrayList arrayList, ContinuationImpl continuationImpl, int i2) {
            if ((i2 & 2) != 0) {
                i = 10;
            }
            int i3 = i;
            if ((i2 & 4) != 0) {
                instant = Instant.now();
                instant.getClass();
            }
            Instant instant2 = instant;
            String str2 = (i2 & 8) != 0 ? "older" : "newer";
            if ((i2 & 16) != 0) {
                str = null;
            }
            String str3 = str;
            if ((i2 & 32) != 0) {
                arrayList = new ArrayList();
            }
            return SuggestedEditsRecentEditsViewModel.Companion.getRecentEditsCall(wikiSite, i3, instant2, str2, str3, arrayList, continuationImpl);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:176:0x04d9 A[EDGE_INSN: B:176:0x04d9->B:26:0x04d9 BREAK  A[LOOP:6: B:85:0x0349->B:175:?], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:182:0x0223  */
        /* JADX WARN: Removed duplicated region for block: B:184:0x0229  */
        /* JADX WARN: Removed duplicated region for block: B:188:0x0241  */
        /* JADX WARN: Removed duplicated region for block: B:198:0x0264 A[LOOP:15: B:196:0x025e->B:198:0x0264, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:203:0x0287  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0320 A[LOOP:0: B:18:0x031a->B:20:0x0320, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:218:0x02ee  */
        /* JADX WARN: Removed duplicated region for block: B:219:0x0226  */
        /* JADX WARN: Removed duplicated region for block: B:220:0x0056  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x04fd A[LOOP:1: B:27:0x04f7->B:29:0x04fd, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0529 A[LOOP:2: B:32:0x0523->B:34:0x0529, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x053d  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x05ca  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x05cd  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x034f  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
        /* JADX WARN: Type inference failed for: r0v40, types: [java.util.List] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.io.Serializable getRecentEditsCall(org.wikipedia.dataclient.WikiSite r28, int r29, j$.time.Instant r30, java.lang.String r31, java.lang.String r32, java.util.List r33, kotlin.coroutines.jvm.internal.ContinuationImpl r34) {
            /*
                Method dump skipped, instructions count: 1490
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.SuggestedEditsRecentEditsViewModel.Companion.getRecentEditsCall(org.wikipedia.dataclient.WikiSite, int, j$.time.Instant, java.lang.String, java.lang.String, java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecentEditsItem extends RecentEditsItemModel {
        public final MwQueryResult.RecentChange item;

        public RecentEditsItem(MwQueryResult.RecentChange recentChange) {
            recentChange.getClass();
            this.item = recentChange;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class RecentEditsItemModel {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecentEditsSeparator extends RecentEditsItemModel {
        public final String date;

        public RecentEditsSeparator(String str) {
            this.date = str;
        }
    }

    public SuggestedEditsRecentEditsViewModel() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.langCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
        this.currentQuery = "";
        this.cachedUserInfo = new ArrayList();
        this.cachedRecentEdits = new ArrayList();
        this.recentEditsFlow = FlowExtKt.cachedIn(new Prefs$observeKeys$$inlined$filter$1(9, new PageFetcher(new Pager$pageFetcher$2(0, new WikiGames$$ExternalSyntheticLambda0(27, this), null), new PagingConfig(50, 54)).flow, this), ViewModelKt.getViewModelScope(this));
    }
}
