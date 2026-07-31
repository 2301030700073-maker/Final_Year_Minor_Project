package org.wikipedia.activitytab;

import android.text.format.DateUtils;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.FlowExtKt;
import androidx.paging.PageFetcher;
import androidx.paging.Pager$pageFetcher$2;
import androidx.paging.PagingConfig;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.Headers;
import org.wikipedia.activitytab.timeline.TimelinePagingSource;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.growthtasks.GrowthUserImpact;
import org.wikipedia.donate.DonationResult;
import org.wikipedia.feed.HomeViewModel$forYouState$1;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.Prefs$observeKeys$$inlined$filter$1;
import org.wikipedia.talk.TalkTopicsViewModel$undoSave$1;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActivityTabViewModel extends ViewModel {
    public final StateFlowImpl _donationUiState;
    public final StateFlowImpl _impactUiState;
    public final StateFlowImpl _readingHistoryState;
    public final StateFlowImpl _scrollToGames;
    public final StateFlowImpl _wikiGamesUiState;
    public final ReadonlyStateFlow allDataLoaded;
    public TimelinePagingSource currentTimelinePagingSource;
    public final ReadonlyStateFlow donationUiState;
    public final ReadonlyStateFlow impactUiState;
    public final ReadonlyStateFlow readingHistoryState;
    public final ReadonlyStateFlow scrollToGames;
    public boolean shouldRefreshTimelineSilently;
    public final SafeFlow timelineFlow;
    public final ReadonlyStateFlow wikiGamesUiState;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ReadingHistory {
        public final List articlesReadByWeek;
        public final int articlesReadThisMonth;
        public final List articlesSaved;
        public final int articlesSavedThisMonth;
        public final LocalDateTime lastArticleReadTime;
        public final LocalDateTime lastArticleSavedTime;
        public final long timeSpentThisWeek;
        public final List topCategories;

        public ReadingHistory(long j, int i, LocalDateTime localDateTime, List list, int i2, LocalDateTime localDateTime2, List list2, List list3) {
            list.getClass();
            list2.getClass();
            this.timeSpentThisWeek = j;
            this.articlesReadThisMonth = i;
            this.lastArticleReadTime = localDateTime;
            this.articlesReadByWeek = list;
            this.articlesSavedThisMonth = i2;
            this.lastArticleSavedTime = localDateTime2;
            this.articlesSaved = list2;
            this.topCategories = list3;
        }
    }

    public ActivityTabViewModel() {
        UiState.Loading loading = UiState.Loading.INSTANCE;
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(loading);
        this._readingHistoryState = MutableStateFlow;
        ReadonlyStateFlow readonlyStateFlow = new ReadonlyStateFlow(MutableStateFlow);
        this.readingHistoryState = readonlyStateFlow;
        StateFlowImpl MutableStateFlow2 = StateFlowKt.MutableStateFlow(loading);
        this._donationUiState = MutableStateFlow2;
        ReadonlyStateFlow readonlyStateFlow2 = new ReadonlyStateFlow(MutableStateFlow2);
        this.donationUiState = readonlyStateFlow2;
        StateFlowImpl MutableStateFlow3 = StateFlowKt.MutableStateFlow(loading);
        this._wikiGamesUiState = MutableStateFlow3;
        ReadonlyStateFlow readonlyStateFlow3 = new ReadonlyStateFlow(MutableStateFlow3);
        this.wikiGamesUiState = readonlyStateFlow3;
        int i = 1;
        Continuation continuation = null;
        this.timelineFlow = new SafeFlow(7, FlowExtKt.cachedIn(new PageFetcher(new Pager$pageFetcher$2(0, new WikiGames$$ExternalSyntheticLambda0(i, this), continuation), new PagingConfig(150, 60)).flow, ViewModelKt.getViewModelScope(this)));
        StateFlowImpl MutableStateFlow4 = StateFlowKt.MutableStateFlow(loading);
        this._impactUiState = MutableStateFlow4;
        ReadonlyStateFlow readonlyStateFlow4 = new ReadonlyStateFlow(MutableStateFlow4);
        this.impactUiState = readonlyStateFlow4;
        Boolean bool = Boolean.FALSE;
        StateFlowImpl MutableStateFlow5 = StateFlowKt.MutableStateFlow(bool);
        this._scrollToGames = MutableStateFlow5;
        this.scrollToGames = new ReadonlyStateFlow(MutableStateFlow5);
        this.allDataLoaded = StateFlowKt.stateIn(new Prefs$observeKeys$$inlined$filter$1(7, new Flow[]{readonlyStateFlow, readonlyStateFlow2, readonlyStateFlow3, readonlyStateFlow4}, new HomeViewModel$forYouState$1(5, i, continuation)), ViewModelKt.getViewModelScope(this), SharingStarted.Companion.Lazily, bool);
    }

    public static WikiSite getWikiSiteForTimeline() {
        Prefs prefs = Prefs.INSTANCE;
        String userContribFilterLangCode = Prefs.getUserContribFilterLangCode();
        if (userContribFilterLangCode.equals("commons")) {
            return new WikiSite("https://commons.wikimedia.org/");
        }
        if (userContribFilterLangCode.equals("wikidata")) {
            return new WikiSite("https://www.wikidata.org/");
        }
        WikiSite.Companion.getClass();
        return WikiSite.Companion.forLanguageCode(userContribFilterLangCode);
    }

    public final int getTotalEditsCount() {
        UiState uiState = (UiState) this._impactUiState.getValue();
        if (uiState instanceof UiState.Success) {
            return ((GrowthUserImpact) ((Pair) ((UiState.Success) uiState).data).first).totalEditsCount;
        }
        return 0;
    }

    public final void loadAll() {
        String str;
        Continuation continuation = null;
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1(this, 1), null, new ActivityTabViewModel$loadReadingHistory$2(this, null), 2);
        if (Headers.Companion.isLoggedIn()) {
            Prefs prefs = Prefs.INSTANCE;
            DonationResult donationResult = (DonationResult) CollectionsKt.lastOrNull(Prefs.getDonationResults());
            UiState.Success success = new UiState.Success((donationResult == null || (str = donationResult.dateTime) == null) ? null : DateUtils.getRelativeTimeSpanString(LocalDateTime.parse(str).p(ZoneId.systemDefault()).toInstant().getEpochSecond() * 1000, System.currentTimeMillis(), 0L).toString());
            StateFlowImpl stateFlowImpl = this._donationUiState;
            stateFlowImpl.getClass();
            stateFlowImpl.updateState(null, success);
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1(this, 2), null, new ThumbNode$onAttach$1(23, this, continuation), 2);
            loadImpact();
            TimelinePagingSource timelinePagingSource = this.currentTimelinePagingSource;
            if (timelinePagingSource != null) {
                timelinePagingSource.invalidate();
            }
        }
    }

    public final void loadImpact() {
        if (Headers.Companion.isLoggedIn()) {
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1(this, 0), null, new TalkTopicsViewModel$undoSave$1(this, null), 2);
        }
    }
}
