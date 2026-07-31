package org.wikipedia.watchlist;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import okio.Path;
import org.wikipedia.WikipediaApp;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.settings.Prefs;
import org.wikipedia.talk.TalkTopicsViewModel$subscribeTopic$1;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WatchlistViewModel extends ViewModel {
    public static final Path.Companion Companion = new Path.Companion(21);
    public final StateFlowImpl _uiState;
    public String currentSearchQuery;
    public ArrayList displayLanguages;
    public final ReadonlyStateFlow uiState;
    public final ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1 handler = new ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(this);
    public ArrayList watchlistItems = new ArrayList();
    public ArrayList finalList = new ArrayList();

    public WatchlistViewModel() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        List m785m = ViewSizeResolver$CC.m785m();
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) m785m).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            Prefs prefs = Prefs.INSTANCE;
            if (!Prefs.getWatchlistExcludedWikiCodes().contains((String) next)) {
                arrayList.add(next);
            }
        }
        this.displayLanguages = arrayList;
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
        fetchWatchlist(true);
    }

    public static int filtersCount() {
        Set set;
        Set set2;
        List list;
        Prefs prefs = Prefs.INSTANCE;
        Set watchlistExcludedWikiCodes = Prefs.getWatchlistExcludedWikiCodes();
        Collection watchlistIncludedTypeCodes = Prefs.getWatchlistIncludedTypeCodes();
        ArrayList arrayList = new ArrayList();
        for (Object obj : watchlistIncludedTypeCodes) {
            String str = (String) obj;
            WatchlistFilterTypes.Companion.getClass();
            list = WatchlistFilterTypes.TYPE_OF_CHANGES_GROUP;
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(((WatchlistFilterTypes) it.next()).getId());
            }
            if (arrayList2.contains(str)) {
                arrayList.add(obj);
            }
        }
        WatchlistFilterTypes.Companion.getClass();
        set = WatchlistFilterTypes.DEFAULT_FILTER_TYPE_OF_CHANGES;
        Set set3 = set;
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set3, 10));
        Iterator it2 = set3.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((WatchlistFilterTypes) it2.next()).getId());
        }
        Set set4 = CollectionsKt.toSet(arrayList3);
        Set union = CollectionsKt.union(CollectionsKt.subtract(arrayList, set4), CollectionsKt.subtract(set4, CollectionsKt.toSet(arrayList)));
        Prefs prefs2 = Prefs.INSTANCE;
        LinkedHashSet subtract = CollectionsKt.subtract(Prefs.getWatchlistIncludedTypeCodes(), CollectionsKt.toSet(arrayList));
        WatchlistFilterTypes.Companion.getClass();
        set2 = WatchlistFilterTypes.DEFAULT_FILTER_OTHERS;
        Set set5 = set2;
        ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set5, 10));
        Iterator it3 = set5.iterator();
        while (it3.hasNext()) {
            arrayList4.add(((WatchlistFilterTypes) it3.next()).getId());
        }
        LinkedHashSet subtract2 = CollectionsKt.subtract(CollectionsKt.toSet(arrayList4), subtract);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        List m785m = ViewSizeResolver$CC.m785m();
        int i = 0;
        if (!((ArrayList) m785m).isEmpty()) {
            Iterator it4 = ((ArrayList) m785m).iterator();
            while (it4.hasNext()) {
                if (watchlistExcludedWikiCodes.contains((String) it4.next()) && (i = i + 1) < 0) {
                    Room.throwCountOverflow();
                    throw null;
                }
            }
        }
        return subtract2.size() + union.size() + i;
    }

    public final void fetchWatchlist(boolean z) {
        Resource.Loading loading = new Resource.Loading();
        StateFlowImpl stateFlowImpl = this._uiState;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, loading);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), this.handler, null, new TalkTopicsViewModel$subscribeTopic$1(this, z, (Continuation) null, 10), 2);
    }

    public final void updateList(boolean z) {
        String str;
        ArrayList arrayList = new ArrayList();
        this.finalList = arrayList;
        if (z) {
            arrayList.add("");
        }
        Calendar calendar = Calendar.getInstance();
        Prefs prefs = Prefs.INSTANCE;
        Set watchlistExcludedWikiCodes = Prefs.getWatchlistExcludedWikiCodes();
        Iterator it = this.watchlistItems.iterator();
        int i = -1;
        while (true) {
            if (!it.hasNext()) {
                Resource.Success success = new Resource.Success(Unit.INSTANCE);
                StateFlowImpl stateFlowImpl = this._uiState;
                stateFlowImpl.getClass();
                stateFlowImpl.updateState(null, success);
                return;
            }
            MwQueryResult.WatchlistItem watchlistItem = (MwQueryResult.WatchlistItem) it.next();
            Set set = watchlistExcludedWikiCodes;
            WikiSite wikiSite = watchlistItem.wiki;
            if (!CollectionsKt.contains(set, wikiSite != null ? wikiSite.languageCode : null) && ((str = this.currentSearchQuery) == null || str.length() == 0 || StringsKt.contains(watchlistItem.title, str, true) || StringsKt.contains(watchlistItem.user, str, true) || StringsKt.contains(watchlistItem.parsedComment, str, true))) {
                calendar.setTime(watchlistItem.getDate());
                if (calendar.get(6) != i) {
                    i = calendar.get(6);
                    this.finalList.add(watchlistItem.getDate());
                }
                this.finalList.add(watchlistItem);
            }
        }
    }
}
