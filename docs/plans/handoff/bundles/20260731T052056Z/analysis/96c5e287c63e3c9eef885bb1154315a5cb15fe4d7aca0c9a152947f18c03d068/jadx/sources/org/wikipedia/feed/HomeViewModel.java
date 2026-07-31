package org.wikipedia.feed;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.CachedPagingDataKt$cachedIn$5;
import androidx.paging.ChannelFlowCollector;
import androidx.paging.PageFetcher$flow$1;
import androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1;
import coil3.util.BitmapsKt;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexingIterable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.ChannelFlowBuilder;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__MergeKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StartedWhileSubscribed;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activitytab.TimelineDisplayItem;
import org.wikipedia.activitytab.timeline.TimelineItem;
import org.wikipedia.compose.components.NotificationBellState;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.dataclient.mwapi.UserContribution;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.games.WikiGames;
import org.wikipedia.page.edithistory.EditHistoryListViewModel;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.Prefs$observeKeys$$inlined$filter$1;
import org.wikipedia.settings.SettingsRepository;
import org.wikipedia.settings.SettingsRepository$special$$inlined$map$1;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsViewModel;
import org.wikipedia.usercontrib.UserContribListViewModel;
import org.wikipedia.util.DateUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeViewModel extends ViewModel {
    public final StateFlowImpl _communityState;
    public final StateFlowImpl _forYouState;
    public final StateFlowImpl _selectedTab;
    public final StateFlowImpl _tabsState;
    public final StateFlowImpl _unreadCount;
    public final StateFlowImpl _wikiSite;
    public final HomeViewModel$special$$inlined$CoroutineExceptionHandler$1 communityHandler;
    public final ReadonlyStateFlow communityState;
    public int forYouBatchIndex;
    public final HomeViewModel$special$$inlined$CoroutineExceptionHandler$1 forYouHandler;
    public final ReadonlyStateFlow forYouState;
    public int nextCommunityAge;
    public final ReadonlyStateFlow placesModule;
    public final ReadonlyStateFlow selectedTab;
    public final ReadonlyStateFlow tabsState;
    public final ReadonlyStateFlow unreadCount;
    public final ReadonlyStateFlow wikiSite;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.feed.HomeViewModel$2, reason: invalid class name */
    public final class AnonymousClass2 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public int label;
        public final /* synthetic */ HomeViewModel this$0;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        /* renamed from: org.wikipedia.feed.HomeViewModel$2$1, reason: invalid class name */
        public final class AnonymousClass1 extends SuspendLambda implements Function3 {
            public final /* synthetic */ int $r8$classId;
            public /* synthetic */ Object L$0;
            public /* synthetic */ Object L$1;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public /* synthetic */ AnonymousClass1(int i, int i2, Continuation continuation) {
                super(i, continuation);
                this.$r8$classId = i2;
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int i = this.$r8$classId;
                Unit unit = Unit.INSTANCE;
                int i2 = 3;
                switch (i) {
                    case 0:
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(i2, 0, (Continuation) obj3);
                        anonymousClass1.L$0 = (HomeTab) obj;
                        anonymousClass1.L$1 = (WikiSite) obj2;
                        return anonymousClass1.invokeSuspend(unit);
                    case 1:
                        AnonymousClass1 anonymousClass12 = new AnonymousClass1(i2, 1, (Continuation) obj3);
                        anonymousClass12.L$0 = (TimelineItem) obj;
                        anonymousClass12.L$1 = (TimelineItem) obj2;
                        return anonymousClass12.invokeSuspend(unit);
                    case 2:
                        AnonymousClass1 anonymousClass13 = new AnonymousClass1(i2, 2, (Continuation) obj3);
                        anonymousClass13.L$0 = (MwQueryPage.Revision) obj;
                        anonymousClass13.L$1 = (MwQueryPage.Revision) obj2;
                        anonymousClass13.invokeSuspend(unit);
                        return null;
                    case 3:
                        AnonymousClass1 anonymousClass14 = new AnonymousClass1(i2, i2, (Continuation) obj3);
                        anonymousClass14.L$0 = (EditHistoryListViewModel.EditHistoryItem) obj;
                        anonymousClass14.L$1 = (EditHistoryListViewModel.EditHistoryItem) obj2;
                        return anonymousClass14.invokeSuspend(unit);
                    case 4:
                        AnonymousClass1 anonymousClass15 = new AnonymousClass1(i2, 4, (Continuation) obj3);
                        anonymousClass15.L$0 = (SuggestedEditsRecentEditsViewModel.RecentEditsItem) obj;
                        anonymousClass15.L$1 = (SuggestedEditsRecentEditsViewModel.RecentEditsItem) obj2;
                        return anonymousClass15.invokeSuspend(unit);
                    default:
                        AnonymousClass1 anonymousClass16 = new AnonymousClass1(i2, 5, (Continuation) obj3);
                        anonymousClass16.L$0 = (UserContribListViewModel.UserContribItem) obj;
                        anonymousClass16.L$1 = (UserContribListViewModel.UserContribItem) obj2;
                        return anonymousClass16.invokeSuspend(unit);
                }
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                MwQueryPage.Revision revision;
                LocalDateTime localDateTime;
                MwQueryPage.Revision revision2;
                LocalDateTime localDateTime2;
                MwQueryResult.RecentChange recentChange;
                MwQueryResult.RecentChange recentChange2;
                UserContribution userContribution;
                LocalDateTime localDateTime3;
                UserContribution userContribution2;
                LocalDateTime localDateTime4;
                switch (this.$r8$classId) {
                    case 0:
                        HomeTab homeTab = (HomeTab) this.L$0;
                        WikiSite wikiSite = (WikiSite) this.L$1;
                        ResultKt.throwOnFailure(obj);
                        return new Pair(homeTab, wikiSite);
                    case 1:
                        TimelineItem timelineItem = (TimelineItem) this.L$0;
                        TimelineItem timelineItem2 = (TimelineItem) this.L$1;
                        ResultKt.throwOnFailure(obj);
                        if (timelineItem == null && timelineItem2 != null) {
                            return new TimelineDisplayItem.DateSeparator(timelineItem2.timestamp);
                        }
                        if (timelineItem == null || timelineItem2 == null) {
                            return null;
                        }
                        Date date = timelineItem2.timestamp;
                        if (BitmapsKt.toLocalDate(timelineItem.timestamp).equals(BitmapsKt.toLocalDate(date))) {
                            return null;
                        }
                        return new TimelineDisplayItem.DateSeparator(date);
                    case 2:
                        MwQueryPage.Revision revision3 = (MwQueryPage.Revision) this.L$0;
                        MwQueryPage.Revision revision4 = (MwQueryPage.Revision) this.L$1;
                        ResultKt.throwOnFailure(obj);
                        if (revision3 != null && revision4 != null) {
                            revision3.diffSize = revision3.size - revision4.size;
                        } else if (revision3 != null) {
                            revision3.diffSize = revision3.size;
                        }
                        return null;
                    case 3:
                        EditHistoryListViewModel.EditHistoryItem editHistoryItem = (EditHistoryListViewModel.EditHistoryItem) this.L$0;
                        EditHistoryListViewModel.EditHistoryItem editHistoryItem2 = (EditHistoryListViewModel.EditHistoryItem) this.L$1;
                        ResultKt.throwOnFailure(obj);
                        LocalDate localDate = (editHistoryItem == null || (revision2 = editHistoryItem.item) == null || (localDateTime2 = (LocalDateTime) revision2.localDateTime$delegate.getValue()) == null) ? null : localDateTime2.toLocalDate();
                        LocalDate localDate2 = (editHistoryItem2 == null || (revision = editHistoryItem2.item) == null || (localDateTime = (LocalDateTime) revision.localDateTime$delegate.getValue()) == null) ? null : localDateTime.toLocalDate();
                        if (localDate2 == null || localDate2.equals(localDate)) {
                            return null;
                        }
                        ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                        return new EditHistoryListViewModel.EditHistorySeparator(DateUtil.getShortDateString(localDate2));
                    case 4:
                        SuggestedEditsRecentEditsViewModel.RecentEditsItem recentEditsItem = (SuggestedEditsRecentEditsViewModel.RecentEditsItem) this.L$0;
                        SuggestedEditsRecentEditsViewModel.RecentEditsItem recentEditsItem2 = (SuggestedEditsRecentEditsViewModel.RecentEditsItem) this.L$1;
                        ResultKt.throwOnFailure(obj);
                        LocalDate localDate3 = (recentEditsItem == null || (recentChange2 = recentEditsItem.item) == null) ? null : recentChange2.getParsedDateTime().toLocalDate();
                        LocalDate localDate4 = (recentEditsItem2 == null || (recentChange = recentEditsItem2.item) == null) ? null : recentChange.getParsedDateTime().toLocalDate();
                        if (localDate4 == null || localDate4.equals(localDate3)) {
                            return null;
                        }
                        ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                        return new SuggestedEditsRecentEditsViewModel.RecentEditsSeparator(DateUtil.getShortDateString(localDate4));
                    default:
                        UserContribListViewModel.UserContribItem userContribItem = (UserContribListViewModel.UserContribItem) this.L$0;
                        UserContribListViewModel.UserContribItem userContribItem2 = (UserContribListViewModel.UserContribItem) this.L$1;
                        ResultKt.throwOnFailure(obj);
                        LocalDate localDate5 = (userContribItem == null || (userContribution2 = userContribItem.item) == null || (localDateTime4 = (LocalDateTime) userContribution2.parsedDateTime$delegate.getValue()) == null) ? null : localDateTime4.toLocalDate();
                        LocalDate localDate6 = (userContribItem2 == null || (userContribution = userContribItem2.item) == null || (localDateTime3 = (LocalDateTime) userContribution.parsedDateTime$delegate.getValue()) == null) ? null : localDateTime3.toLocalDate();
                        if (localDate6 == null || localDate6.equals(localDate5)) {
                            return null;
                        }
                        ConcurrentHashMap concurrentHashMap3 = DateUtil.DATE_FORMATS;
                        return new UserContribListViewModel.UserContribSeparator(DateUtil.getShortDateString(localDate6));
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass2(HomeViewModel homeViewModel, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = homeViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            HomeViewModel homeViewModel = this.this$0;
            switch (i) {
                case 0:
                    return new AnonymousClass2(homeViewModel, continuation, 0);
                default:
                    return new AnonymousClass2(homeViewModel, continuation, 1);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            CoroutineScope coroutineScope = (CoroutineScope) obj;
            Continuation continuation = (Continuation) obj2;
            switch (i) {
            }
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(unit);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object fetchForYouModules;
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            HomeViewModel homeViewModel = this.this$0;
            int i2 = 1;
            Continuation continuation = null;
            switch (i) {
                case 0:
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = this.label;
                    if (i3 != 0) {
                        if (i3 == 1) {
                            ResultKt.throwOnFailure(obj);
                            return unit;
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                    Flow distinctUntilChanged = StateFlowKt.distinctUntilChanged(new FlowUtil$createFlow$$inlined$map$1(homeViewModel._selectedTab, homeViewModel._wikiSite, new AnonymousClass1(3, 0, continuation), i2));
                    ChannelFlowCollector channelFlowCollector = new ChannelFlowCollector(14, homeViewModel);
                    this.label = 1;
                    return distinctUntilChanged.collect(channelFlowCollector, this) == coroutineSingletons ? coroutineSingletons : unit;
                default:
                    StateFlowImpl stateFlowImpl = homeViewModel._forYouState;
                    CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i4 = this.label;
                    if (i4 == 0) {
                        ResultKt.throwOnFailure(obj);
                        boolean isEmpty = ((ForYouContentState) stateFlowImpl.getValue()).modules.isEmpty();
                        stateFlowImpl.updateState(null, ForYouContentState.copy$default((ForYouContentState) stateFlowImpl.getValue(), null, (WikiSite) homeViewModel.wikiSite.$$delegate_0.getValue(), isEmpty, !isEmpty, null, false, null, 225));
                        int i5 = homeViewModel.forYouBatchIndex;
                        this.label = 1;
                        fetchForYouModules = homeViewModel.fetchForYouModules(i5, this);
                        if (fetchForYouModules == coroutineSingletons2) {
                            return coroutineSingletons2;
                        }
                    } else {
                        if (i4 != 1) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.throwOnFailure(obj);
                        fetchForYouModules = obj;
                    }
                    homeViewModel.forYouBatchIndex++;
                    stateFlowImpl.updateState(null, ForYouContentState.copy$default((ForYouContentState) stateFlowImpl.getValue(), CollectionsKt.plus((Collection) ((ForYouContentState) stateFlowImpl.getValue()).modules, (Iterable) fetchForYouModules), null, false, false, null, false, null, 226));
                    return unit;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[HomeTab.values().length];
            try {
                iArr[HomeTab.COMMUNITY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HomeTab.FOR_YOU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[WikiGames.values().length];
            try {
                iArr2[WikiGames.WHICH_CAME_FIRST.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public HomeViewModel() {
        WikiSite.Companion companion = WikiSite.Companion;
        Prefs prefs = Prefs.INSTANCE;
        String homeLanguageCode = Prefs.getHomeLanguageCode();
        companion.getClass();
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(WikiSite.Companion.forLanguageCode(homeLanguageCode));
        this._wikiSite = MutableStateFlow;
        this.wikiSite = new ReadonlyStateFlow(MutableStateFlow);
        StateFlowImpl MutableStateFlow2 = StateFlowKt.MutableStateFlow(Prefs.getHomePreferenceSelection() == HomePreferenceType.PERSONALIZED ? HomeTab.FOR_YOU : HomeTab.COMMUNITY);
        this._selectedTab = MutableStateFlow2;
        this.selectedTab = new ReadonlyStateFlow(MutableStateFlow2);
        StateFlowImpl MutableStateFlow3 = StateFlowKt.MutableStateFlow(new CommunityContentState());
        this._communityState = MutableStateFlow3;
        int i = 4;
        int i2 = 0;
        Continuation continuation = null;
        int i3 = 3;
        int i4 = 1;
        int i5 = 2;
        this.communityState = StateFlowKt.stateIn(new Prefs$observeKeys$$inlined$filter$1(6, new Flow[]{MutableStateFlow3, SettingsRepository.hiddenModules, SettingsRepository.hiddenCards}, new HomeViewModel$communityState$1(i, i2, continuation)), ViewModelKt.getViewModelScope(this), new StartedWhileSubscribed(5000L, Long.MAX_VALUE), new CommunityContentState());
        int i6 = 5;
        this.placesModule = StateFlowKt.stateIn(new Prefs$observeKeys$$inlined$filter$1(2, FlowKt__MergeKt.transformLatest(new FlowUtil$createFlow$$inlined$map$1(Prefs.placesLastLocationFlow, MutableStateFlow, new CachedPagingDataKt$cachedIn$5(i3, i6, continuation), i4), new HomeViewModel$placesModule$2(this, continuation, i2)), new HomeViewModel$gameModule$2(i3, i5, continuation)), ViewModelKt.getViewModelScope(this), new StartedWhileSubscribed(5000L, Long.MAX_VALUE), null);
        int[] iArr = {R.string.preference_key_recommended_reading_list_enabled, R.string.preference_key_recommended_reading_list_articles_number, R.string.preference_key_recommended_reading_list_source, R.string.preference_key_recommended_reading_list_update_frequency};
        ArrayList arrayList = new ArrayList(4);
        for (int i7 = 0; i7 < 4; i7++) {
            int i8 = iArr[i7];
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            arrayList.add(Jsoup.getInstance().getString(i8));
        }
        Prefs$observeKeys$$inlined$filter$1 prefs$observeKeys$$inlined$filter$1 = new Prefs$observeKeys$$inlined$filter$1(6, new Flow[]{this.placesModule, StateFlowKt.stateIn(new Prefs$observeKeys$$inlined$filter$1(2, FlowKt__MergeKt.transformLatest(new ChannelFlowBuilder(new IndexingIterable(2, new Flow[]{new SafeFlow(9, new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new PageFetcher$flow$1.AnonymousClass1(i5, i5, continuation), new Prefs$observeKeys$$inlined$filter$1(0, Prefs.preferenceKeyChangeFlow, CollectionsKt.toSet(arrayList)))), new SafeFlow(8, new SettingsRepository$special$$inlined$map$1(FlowEventBus.events, i5))}), EmptyCoroutineContext.INSTANCE, -2, BufferOverflow.SUSPEND, 1), new HomeViewModel$placesModule$2(this, continuation, i4)), new HomeViewModel$gameModule$2(i3, i4, continuation)), ViewModelKt.getViewModelScope(this), SharingStarted.Companion.WhileSubscribed$default(), null), StateFlowKt.stateIn(new Prefs$observeKeys$$inlined$filter$1(2, FlowKt__MergeKt.transformLatest(this._wikiSite, new FlowKt__ZipKt$combine$1$1(7, this, continuation)), new HomeViewModel$gameModule$2(i3, i2, continuation)), ViewModelKt.getViewModelScope(this), SharingStarted.Companion.WhileSubscribed$default(), null)}, new HomeViewModel$communityState$1(i, i4, continuation));
        StateFlowImpl MutableStateFlow4 = StateFlowKt.MutableStateFlow(new ForYouContentState());
        this._forYouState = MutableStateFlow4;
        this.forYouState = StateFlowKt.stateIn(new Prefs$observeKeys$$inlined$filter$1(7, new Flow[]{MutableStateFlow4, SettingsRepository.hiddenModules, SettingsRepository.hiddenCards, prefs$observeKeys$$inlined$filter$1}, new HomeViewModel$forYouState$1(i6, i2, continuation)), ViewModelKt.getViewModelScope(this), SharingStarted.Companion.WhileSubscribed$default(), new ForYouContentState());
        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
        StateFlowImpl MutableStateFlow5 = StateFlowKt.MutableStateFlow(new TabsState(Jsoup.getInstance().getTabCount(), false));
        this._tabsState = MutableStateFlow5;
        this.tabsState = new ReadonlyStateFlow(MutableStateFlow5);
        this.communityHandler = new HomeViewModel$special$$inlined$CoroutineExceptionHandler$1(this, 0);
        this.forYouHandler = new HomeViewModel$special$$inlined$CoroutineExceptionHandler$1(this, 1);
        StateFlowImpl MutableStateFlow6 = StateFlowKt.MutableStateFlow(new NotificationBellState(0, false));
        this._unreadCount = MutableStateFlow6;
        this.unreadCount = new ReadonlyStateFlow(MutableStateFlow6);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(i5, i2, continuation), 3);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass2(this, continuation, i2), 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x005c, code lost:
    
        if (r15 == r1) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0090 A[LOOP:0: B:12:0x008a->B:14:0x0090, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object buildDiscoverModule(kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            r14 = this;
            boolean r0 = r15 instanceof org.wikipedia.feed.HomeViewModel$buildDiscoverModule$1
            if (r0 == 0) goto L13
            r0 = r15
            org.wikipedia.feed.HomeViewModel$buildDiscoverModule$1 r0 = (org.wikipedia.feed.HomeViewModel$buildDiscoverModule$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.feed.HomeViewModel$buildDiscoverModule$1 r0 = new org.wikipedia.feed.HomeViewModel$buildDiscoverModule$1
            r0.<init>(r14, r15)
        L18:
            java.lang.Object r15 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 4
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L3a
            if (r2 == r6) goto L36
            if (r2 != r5) goto L30
            java.util.List r14 = r0.L$1
            java.util.List r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r15)
            goto L7b
        L30:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r14)
            return r3
        L36:
            kotlin.ResultKt.throwOnFailure(r15)
            goto L5f
        L3a:
            kotlin.ResultKt.throwOnFailure(r15)
            org.wikipedia.settings.Prefs r15 = org.wikipedia.settings.Prefs.INSTANCE
            boolean r15 = org.wikipedia.settings.Prefs.isRecommendedReadingListEnabled()
            if (r15 != 0) goto L50
            org.wikipedia.feed.ForYouModule$Discover r14 = new org.wikipedia.feed.ForYouModule$Discover
            r15 = 0
            r0 = 48
            kotlin.collections.EmptyList r1 = kotlin.collections.EmptyList.INSTANCE
            r14.<init>(r1, r15, r3, r0)
            return r14
        L50:
            boolean r15 = org.wikipedia.settings.Prefs.getResetRecommendedReadingList()
            r0.label = r6
            org.wikipedia.readinglist.recommended.RecommendedReadingListHelper r2 = org.wikipedia.readinglist.recommended.RecommendedReadingListHelper.INSTANCE
            java.lang.Object r15 = r2.generateRecommendedReadingList(r15, r0)
            if (r15 != r1) goto L5f
            goto L78
        L5f:
            java.util.List r15 = (java.util.List) r15
            java.util.List r2 = kotlin.collections.CollectionsKt.take(r15, r4)
            boolean r7 = r2.isEmpty()
            if (r7 == 0) goto L6c
            return r3
        L6c:
            r0.L$0 = r15
            r0.L$1 = r2
            r0.label = r5
            java.lang.Object r14 = r14.updateMissingExtracts(r2, r0)
            if (r14 != r1) goto L79
        L78:
            return r1
        L79:
            r0 = r15
            r14 = r2
        L7b:
            java.util.ArrayList r15 = new java.util.ArrayList
            r1 = 10
            int r1 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r14, r1)
            r15.<init>(r1)
            java.util.Iterator r14 = r14.iterator()
        L8a:
            boolean r1 = r14.hasNext()
            if (r1 == 0) goto Lb0
            java.lang.Object r1 = r14.next()
            org.wikipedia.readinglist.database.RecommendedPage r1 = (org.wikipedia.readinglist.database.RecommendedPage) r1
            org.wikipedia.feed.model.DiscoverCard r2 = new org.wikipedia.feed.model.DiscoverCard
            org.wikipedia.page.PageTitle r7 = new org.wikipedia.page.PageTitle
            java.lang.String r8 = r1.apiTitle
            org.wikipedia.dataclient.WikiSite r9 = r1.wiki
            java.lang.String r10 = r1.thumbUrl
            java.lang.String r11 = r1.description
            java.lang.String r12 = r1.displayTitle
            java.lang.String r13 = r1.extract
            r7.<init>(r8, r9, r10, r11, r12, r13)
            r2.<init>(r7)
            r15.add(r2)
            goto L8a
        Lb0:
            int r14 = r0.size()
            if (r14 <= r4) goto Lbf
            org.wikipedia.feed.model.SeeAllRecommendationCard r14 = new org.wikipedia.feed.model.SeeAllRecommendationCard
            r14.<init>()
            java.util.ArrayList r15 = kotlin.collections.CollectionsKt.plus(r15, r14)
        Lbf:
            org.wikipedia.feed.ForYouModule$Discover r14 = new org.wikipedia.feed.ForYouModule$Discover
            org.wikipedia.settings.Prefs r0 = org.wikipedia.settings.Prefs.INSTANCE
            org.wikipedia.readinglist.recommended.RecommendedReadingListUpdateFrequency r0 = org.wikipedia.settings.Prefs.getRecommendedReadingListUpdateFrequency()
            r1 = 16
            r14.<init>(r15, r6, r0, r1)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.HomeViewModel.buildDiscoverModule(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0077 -> B:10:0x007a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object buildGameModule(java.util.ArrayList r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            r12 = this;
            boolean r0 = r14 instanceof org.wikipedia.feed.HomeViewModel$buildGameModule$1
            if (r0 == 0) goto L13
            r0 = r14
            org.wikipedia.feed.HomeViewModel$buildGameModule$1 r0 = (org.wikipedia.feed.HomeViewModel$buildGameModule$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.feed.HomeViewModel$buildGameModule$1 r0 = new org.wikipedia.feed.HomeViewModel$buildGameModule$1
            r0.<init>(r12, r14)
        L18:
            java.lang.Object r14 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            r4 = 0
            r5 = 0
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L37
            int r13 = r0.I$2
            int r2 = r0.I$1
            int r6 = r0.I$0
            java.util.Iterator r7 = r0.L$6
            java.util.Collection r8 = r0.L$4
            java.util.Collection r8 = (java.util.Collection) r8
            j$.time.LocalDate r9 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r14)
            goto L7a
        L37:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r12)
            return r4
        L3d:
            kotlin.ResultKt.throwOnFailure(r14)
            j$.time.LocalDate r14 = j$.time.LocalDate.now()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r13 = r13.iterator()
            r7 = r13
            r9 = r14
            r8 = r2
            r13 = r5
            r2 = r13
            r6 = r2
        L53:
            boolean r14 = r7.hasNext()
            if (r14 == 0) goto L92
            java.lang.Object r14 = r7.next()
            org.wikipedia.games.WikiGames r14 = (org.wikipedia.games.WikiGames) r14
            r9.getClass()
            r0.L$1 = r9
            r10 = r8
            java.util.Collection r10 = (java.util.Collection) r10
            r0.L$4 = r10
            r0.L$6 = r7
            r0.I$0 = r6
            r0.I$1 = r2
            r0.I$2 = r13
            r0.label = r3
            java.lang.Object r14 = r12.buildWikiGame(r14, r9, r0)
            if (r14 != r1) goto L7a
            return r1
        L7a:
            org.wikipedia.feed.wikigames.WikiGame$OnThisDayGame r14 = (org.wikipedia.feed.wikigames.WikiGame$OnThisDayGame) r14
            if (r14 == 0) goto L8b
            org.wikipedia.feed.model.WikiGameCard r10 = new org.wikipedia.feed.model.WikiGameCard
            java.lang.String r11 = r9.toString()
            r11.getClass()
            r10.<init>(r14, r11)
            goto L8c
        L8b:
            r10 = r4
        L8c:
            if (r10 == 0) goto L53
            r8.add(r10)
            goto L53
        L92:
            java.util.List r8 = (java.util.List) r8
            org.wikipedia.feed.model.GamesModulePromptCard r12 = new org.wikipedia.feed.model.GamesModulePromptCard
            r12.<init>()
            java.util.ArrayList r12 = kotlin.collections.CollectionsKt.plus(r8, r12)
            org.wikipedia.feed.ForYouModule$Games r13 = new org.wikipedia.feed.ForYouModule$Games
            r13.<init>(r5, r5, r12, r5)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.HomeViewModel.buildGameModule(java.util.ArrayList, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0075 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object buildPlacesModule(kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof org.wikipedia.feed.HomeViewModel$buildPlacesModule$1
            if (r0 == 0) goto L13
            r0 = r12
            org.wikipedia.feed.HomeViewModel$buildPlacesModule$1 r0 = (org.wikipedia.feed.HomeViewModel$buildPlacesModule$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.feed.HomeViewModel$buildPlacesModule$1 r0 = new org.wikipedia.feed.HomeViewModel$buildPlacesModule$1
            r0.<init>(r11, r12)
        L18:
            java.lang.Object r12 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 != r4) goto L28
            kotlin.ResultKt.throwOnFailure(r12)
            goto L6c
        L28:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r11)
            return r3
        L2e:
            kotlin.ResultKt.throwOnFailure(r12)
            org.wikipedia.WikipediaApp r12 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r12 = org.jsoup.Jsoup.getInstance()
            java.lang.String r2 = "android.permission.ACCESS_FINE_LOCATION"
            int r2 = org.wikipedia.util.FileUtil.checkSelfPermission(r12, r2)
            kotlin.collections.EmptyList r8 = kotlin.collections.EmptyList.INSTANCE
            if (r2 == 0) goto L54
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            int r12 = org.wikipedia.util.FileUtil.checkSelfPermission(r12, r2)
            if (r12 != 0) goto L4a
            goto L54
        L4a:
            org.wikipedia.feed.ForYouModule$PlacesOfInterest r5 = new org.wikipedia.feed.ForYouModule$PlacesOfInterest
            r7 = 0
            r10 = 0
            r6 = 0
            r9 = 0
            r5.<init>(r6, r7, r8, r9, r10)
            return r5
        L54:
            org.wikipedia.settings.Prefs r12 = org.wikipedia.settings.Prefs.INSTANCE
            kotlin.Pair r12 = org.wikipedia.settings.Prefs.getPlacesLastLocationAndZoomLevel()
            if (r12 == 0) goto L80
            java.lang.Object r12 = r12.first
            android.location.Location r12 = (android.location.Location) r12
            if (r12 != 0) goto L63
            goto L80
        L63:
            r0.label = r4
            java.io.Serializable r12 = r11.getPlacesCards(r12, r0)
            if (r12 != r1) goto L6c
            return r1
        L6c:
            r7 = r12
            java.util.List r7 = (java.util.List) r7
            boolean r11 = r7.isEmpty()
            if (r11 == 0) goto L76
            return r3
        L76:
            org.wikipedia.feed.ForYouModule$PlacesOfInterest r4 = new org.wikipedia.feed.ForYouModule$PlacesOfInterest
            r6 = 0
            r9 = 0
            r5 = 0
            r8 = 1
            r4.<init>(r5, r6, r7, r8, r9)
            return r4
        L80:
            org.wikipedia.feed.ForYouModule$PlacesOfInterest r5 = new org.wikipedia.feed.ForYouModule$PlacesOfInterest
            r7 = 0
            r10 = 0
            r6 = 0
            r9 = 0
            r5.<init>(r6, r7, r8, r9, r10)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.HomeViewModel.buildPlacesModule(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object buildWikiGame(org.wikipedia.games.WikiGames r6, j$.time.LocalDate r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof org.wikipedia.feed.HomeViewModel$buildWikiGame$1
            if (r0 == 0) goto L13
            r0 = r8
            org.wikipedia.feed.HomeViewModel$buildWikiGame$1 r0 = (org.wikipedia.feed.HomeViewModel$buildWikiGame$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.feed.HomeViewModel$buildWikiGame$1 r0 = new org.wikipedia.feed.HomeViewModel$buildWikiGame$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 != r4) goto L28
            kotlin.ResultKt.throwOnFailure(r8)
            goto L51
        L28:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L2e:
            kotlin.ResultKt.throwOnFailure(r8)
            int[] r8 = org.wikipedia.feed.HomeViewModel.WhenMappings.$EnumSwitchMapping$1
            int r6 = r6.ordinal()
            r6 = r8[r6]
            if (r6 != r4) goto L59
            kotlinx.coroutines.flow.ReadonlyStateFlow r5 = r5.wikiSite
            kotlinx.coroutines.flow.StateFlowImpl r5 = r5.$$delegate_0
            java.lang.Object r5 = r5.getValue()
            org.wikipedia.dataclient.WikiSite r5 = (org.wikipedia.dataclient.WikiSite) r5
            r0.label = r4
            r6 = 0
            org.wikipedia.games.onthisday.OnThisDayGameProvider r8 = org.wikipedia.games.onthisday.OnThisDayGameProvider.INSTANCE
            java.lang.Object r8 = r8.getGameState(r5, r7, r6, r0)
            if (r8 != r1) goto L51
            return r1
        L51:
            org.wikipedia.feed.wikigames.OnThisDayCardGameState r8 = (org.wikipedia.feed.wikigames.OnThisDayCardGameState) r8
            org.wikipedia.feed.wikigames.WikiGame$OnThisDayGame r5 = new org.wikipedia.feed.wikigames.WikiGame$OnThisDayGame
            r5.<init>(r8)
            return r5
        L59:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.HomeViewModel.buildWikiGame(org.wikipedia.games.WikiGames, j$.time.LocalDate, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:370:0x0204, code lost:
    
        if (kotlinx.coroutines.AwaitKt.withContext(r10, r11, r2) != r3) goto L319;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:120:0x087b  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x08d9  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x08ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x08b3  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0752  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x08bb  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0b53  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x067f  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0696 A[LOOP:11: B:198:0x0690->B:200:0x0696, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x06ba  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0b7f  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x06da  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0549  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x06f7  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0bb9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0b87  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0472  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0489 A[LOOP:15: B:270:0x0483->B:272:0x0489, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x04cd  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x04e8  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0a9f  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0afe  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0b35  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x09bc A[LOOP:2: B:60:0x09b6->B:62:0x09bc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0a0c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0a21 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0953  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x09a5  */
    /* JADX WARN: Type inference failed for: r12v33 */
    /* JADX WARN: Type inference failed for: r12v34, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r12v36, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v136 */
    /* JADX WARN: Type inference failed for: r1v156 */
    /* JADX WARN: Type inference failed for: r1v157 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r4v57 */
    /* JADX WARN: Type inference failed for: r4v72 */
    /* JADX WARN: Type inference failed for: r4v73 */
    /* JADX WARN: Type inference failed for: r5v100 */
    /* JADX WARN: Type inference failed for: r5v101 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r5v34 */
    /* JADX WARN: Type inference failed for: r5v35 */
    /* JADX WARN: Type inference failed for: r5v36, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r5v45 */
    /* JADX WARN: Type inference failed for: r5v47, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v79 */
    /* JADX WARN: Type inference failed for: r5v99 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:183:0x05ae -> B:135:0x0135). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:248:0x03a6 -> B:193:0x03ad). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object fetchForYouModules(int r36, kotlin.coroutines.jvm.internal.ContinuationImpl r37) {
        /*
            Method dump skipped, instructions count: 3034
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.HomeViewModel.fetchForYouModules(int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bd A[LOOP:1: B:28:0x00b7->B:30:0x00bd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.Serializable getPlacesCards(android.location.Location r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.HomeViewModel.getPlacesCards(android.location.Location, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    public final void loadCommunityContent() {
        StateFlowImpl stateFlowImpl = this._communityState;
        if (((CommunityContentState) stateFlowImpl.getValue()).isInitialLoading || ((CommunityContentState) stateFlowImpl.getValue()).isLoadingMore) {
            return;
        }
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), this.communityHandler, null, new HomeViewModel$loadCommunityContent$1(this, null), 2);
    }

    public final void loadForYouContent() {
        StateFlowImpl stateFlowImpl = this._forYouState;
        if (((ForYouContentState) stateFlowImpl.getValue()).isInitialLoading || ((ForYouContentState) stateFlowImpl.getValue()).isLoadingMore) {
            return;
        }
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), this.forYouHandler, null, new AnonymousClass2(this, null, 1), 2);
    }

    public final void refreshCommunityContent() {
        StateFlowImpl stateFlowImpl;
        Object value;
        this.nextCommunityAge = 0;
        do {
            stateFlowImpl = this._communityState;
            value = stateFlowImpl.getValue();
        } while (!stateFlowImpl.compareAndSet(value, new CommunityContentState()));
        loadCommunityContent();
    }

    public final void refreshForYouContent() {
        StateFlowImpl stateFlowImpl;
        Object value;
        this.forYouBatchIndex = 0;
        do {
            stateFlowImpl = this._forYouState;
            value = stateFlowImpl.getValue();
        } while (!stateFlowImpl.compareAndSet(value, new ForYouContentState()));
        loadForYouContent();
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0135 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0136 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateMissingExtracts(java.util.List r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.HomeViewModel.updateMissingExtracts(java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void updateTabCount(boolean z) {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        TabsState tabsState = new TabsState(Jsoup.getInstance().getTabCount(), z);
        StateFlowImpl stateFlowImpl = this._tabsState;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, tabsState);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.feed.HomeViewModel$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1() {
            super(2, null);
            this.$r8$classId = 12;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = 2;
            switch (this.$r8$classId) {
                case 0:
                    return new AnonymousClass1(i, 0, continuation);
                case 1:
                    return new AnonymousClass1(i, 1, continuation);
                case 2:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(i, i, continuation);
                    anonymousClass1.label = ((Number) obj).intValue();
                    return anonymousClass1;
                case 3:
                    return new AnonymousClass1(i, 3, continuation);
                case 4:
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(i, 4, continuation);
                    anonymousClass12.label = ((Number) obj).intValue();
                    return anonymousClass12;
                case 5:
                    return new AnonymousClass1(i, 5, continuation);
                case 6:
                    return new AnonymousClass1(i, 6, continuation);
                case 7:
                    return new AnonymousClass1(i, 7, continuation);
                case 8:
                    return new AnonymousClass1(i, 8, continuation);
                case 9:
                    return new AnonymousClass1(i, 9, continuation);
                case 10:
                    return new AnonymousClass1(i, 10, continuation);
                case 11:
                    return new AnonymousClass1(i, 11, continuation);
                default:
                    return new AnonymousClass1(i, 12, continuation);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            switch (i) {
                case 2:
                    break;
                case 4:
                    break;
            }
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
        }

        /* JADX WARN: Code restructure failed: missing block: B:159:0x0253, code lost:
        
            if (kotlinx.coroutines.AwaitKt.withContext(r15, r0, r14) == r14) goto L115;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                Method dump skipped, instructions count: 784
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.HomeViewModel.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(int i, int i2, Continuation continuation) {
            super(i, continuation);
            this.$r8$classId = i2;
        }
    }
}
