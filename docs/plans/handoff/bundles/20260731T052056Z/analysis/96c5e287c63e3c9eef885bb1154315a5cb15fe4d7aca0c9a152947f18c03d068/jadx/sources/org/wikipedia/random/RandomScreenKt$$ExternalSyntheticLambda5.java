package org.wikipedia.random;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.pager.PagerScopeImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.paging.ItemSnapshotList;
import androidx.paging.compose.LazyPagingItems;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import j$.time.LocalDate;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import okio.Okio__OkioKt;
import okio.Options;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.feed.onthisday.OnThisDayCard;
import org.wikipedia.feed.wikigames.OnThisDayCardGameState;
import org.wikipedia.feed.wikigames.OnThisDayGameAction;
import org.wikipedia.feed.wikigames.WikiGame$OnThisDayGame;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.search.HybridSearchViewsKt$$ExternalSyntheticLambda7;
import org.wikipedia.search.NoSearchResultsKt;
import org.wikipedia.search.SearchResult;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.yearinreview.YearInReviewDialog;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RandomScreenKt$$ExternalSyntheticLambda5 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda5(OnThisDayCard onThisDayCard, PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState, Function1 function1) {
        this.$r8$classId = 1;
        this.f$0 = onThisDayCard;
        this.f$2 = pageOverflowMenuState;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        Resource error;
        boolean changedInstance;
        Object rememberedValue;
        Resource resource;
        int i;
        int i2 = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Unit unit = Unit.INSTANCE;
        Object obj5 = this.f$2;
        Object obj6 = this.f$1;
        Object obj7 = this.f$0;
        boolean z = false;
        switch (i2) {
            case 0:
                RandomViewModel randomViewModel = (RandomViewModel) obj7;
                Function1 function1 = (Function1) obj6;
                Function0 function0 = (Function0) obj5;
                Integer num = (Integer) obj2;
                int intValue = num.intValue();
                GapComposer gapComposer = (GapComposer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                ((PagerScopeImpl) obj).getClass();
                boolean changedInstance2 = gapComposer.changedInstance(randomViewModel);
                if ((((intValue2 & 112) ^ 48) <= 32 || !gapComposer.changed(intValue)) && (intValue2 & 48) != 32) {
                    r12 = false;
                }
                boolean z2 = changedInstance2 | r12;
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (z2 || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new SyntaxHighlighter.AnonymousClass2(randomViewModel, intValue, (Continuation) null);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Updater.LaunchedEffect(gapComposer, num, (Function2) rememberedValue2);
                SnapshotStateList snapshotStateList = randomViewModel.items;
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = randomViewModel.loadError$delegate;
                if (intValue < snapshotStateList.size()) {
                    resource = new Resource.Success(snapshotStateList.get(intValue));
                } else if (((Throwable) parcelableSnapshotMutableState.getValue()) != null) {
                    Throwable th = (Throwable) parcelableSnapshotMutableState.getValue();
                    th.getClass();
                    error = new Resource.Error(th);
                    changedInstance = gapComposer.changedInstance(randomViewModel);
                    rememberedValue = gapComposer.rememberedValue();
                    if (!changedInstance || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new WikiGames$$ExternalSyntheticLambda0(19, randomViewModel);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    RandomScreenKt.RandomItemPage(error, function1, (Function0) rememberedValue, function0, gapComposer, 0);
                    break;
                } else {
                    resource = new Resource.Loading();
                }
                error = resource;
                changedInstance = gapComposer.changedInstance(randomViewModel);
                rememberedValue = gapComposer.rememberedValue();
                if (!changedInstance) {
                }
                rememberedValue = new WikiGames$$ExternalSyntheticLambda0(19, randomViewModel);
                gapComposer.updateRememberedValue(rememberedValue);
                RandomScreenKt.RandomItemPage(error, function1, (Function0) rememberedValue, function0, gapComposer, 0);
                break;
            case 1:
                OnThisDayCard onThisDayCard = (OnThisDayCard) obj7;
                PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState = (PageOverflowMenuViewModel.PageOverflowMenuState) obj5;
                Function1 function12 = (Function1) obj6;
                int intValue3 = ((Integer) obj).intValue();
                int intValue4 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) obj3;
                int intValue5 = ((Integer) obj4).intValue();
                if ((intValue5 & 6) == 0) {
                    i = (gapComposer2.changed(intValue3) ? 4 : 2) | intValue5;
                } else {
                    i = intValue5;
                }
                if ((intValue5 & 48) == 0) {
                    i |= gapComposer2.changed(intValue4) ? 32 : 16;
                }
                if (!gapComposer2.shouldExecute(i & 1, (i & 147) != 146)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    StringBuilder m = Animation.CC.m(onThisDayCard.age, intValue3, "on-this-day-", "-", "-");
                    m.append(intValue4);
                    String sb = m.toString();
                    boolean changed = gapComposer2.changed(function12);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changed || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new HomeScreenKt$$ExternalSyntheticLambda4(function12, 9);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    Function0 function02 = (Function0) rememberedValue3;
                    List list = pageOverflowMenuState != null ? pageOverflowMenuState.items : null;
                    if (list == null) {
                        list = EmptyList.INSTANCE;
                    }
                    Okio__OkioKt.PageOverflowMenu(null, sb, pageOverflowMenuState, function02, list, gapComposer2, 0);
                    break;
                }
            case 2:
                List list2 = (List) obj7;
                final Function2 function2 = (Function2) obj6;
                final String str = (String) obj5;
                final int intValue6 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) obj3;
                int intValue7 = ((Integer) obj4).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if ((intValue7 & 48) == 0) {
                    intValue7 |= gapComposer3.changed(intValue6) ? 32 : 16;
                }
                if (!gapComposer3.shouldExecute(intValue7 & 1, (intValue7 & 145) != 144)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    final LocalDate minusDays = LocalDate.now().minusDays(intValue6);
                    ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                    minusDays.getClass();
                    Locale locale = Locale.getDefault();
                    locale.getClass();
                    String format = DateUtil.getCachedDateTimeFormatter("MMMM d", locale, true).format(minusDays);
                    format.getClass();
                    if (intValue6 >= 0 && intValue6 < 4) {
                        gapComposer3.startReplaceGroup(339186425);
                        OnThisDayCardGameState onThisDayCardGameState = (OnThisDayCardGameState) CollectionsKt.getOrNull(list2, intValue6);
                        if (onThisDayCardGameState != null) {
                            boolean z3 = intValue6 != 0;
                            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.m140height3ABfNKs(SizeKt.m149width3ABfNKs(companion, z3 ? 170.0f : 320.0f), 350.0f), RecyclerView.DECELERATION_RATE, 8.0f, 1);
                            WikiGame$OnThisDayGame wikiGame$OnThisDayGame = new WikiGame$OnThisDayGame(onThisDayCardGameState);
                            boolean changed2 = gapComposer3.changed(function2) | gapComposer3.changedInstance(minusDays);
                            Object rememberedValue4 = gapComposer3.rememberedValue();
                            Object obj8 = rememberedValue4;
                            if (changed2 || rememberedValue4 == neverEqualPolicy) {
                                GamesHubScreenKt$$ExternalSyntheticLambda8 gamesHubScreenKt$$ExternalSyntheticLambda8 = new GamesHubScreenKt$$ExternalSyntheticLambda8(z ? 1 : 0, function2, minusDays);
                                gapComposer3.updateRememberedValue(gamesHubScreenKt$$ExternalSyntheticLambda8);
                                obj8 = gamesHubScreenKt$$ExternalSyntheticLambda8;
                            }
                            Jsoup.OnThisDayGameCardContent(m134paddingVpY3zN4$default, wikiGame$OnThisDayGame, format, z3, (Function1) obj8, str, intValue6, gapComposer3, (intValue7 << 15) & 3670016);
                            gapComposer3.end(false);
                            break;
                        } else {
                            gapComposer3.end(false);
                            break;
                        }
                    } else {
                        gapComposer3.startReplaceGroup(340133041);
                        Modifier m134paddingVpY3zN4$default2 = OffsetKt.m134paddingVpY3zN4$default(SizeKt.m140height3ABfNKs(SizeKt.m149width3ABfNKs(companion, 170.0f), 350.0f), RecyclerView.DECELERATION_RATE, 8.0f, 1);
                        long j = ((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor;
                        String stringResource = UtilsKt.stringResource(R.string.on_this_day_game_card_archive_label, gapComposer3);
                        boolean changed3 = gapComposer3.changed(str) | ((intValue7 & 112) == 32) | gapComposer3.changed(function2) | gapComposer3.changedInstance(minusDays);
                        Object rememberedValue5 = gapComposer3.rememberedValue();
                        Object obj9 = rememberedValue5;
                        if (changed3 || rememberedValue5 == neverEqualPolicy) {
                            Function0 function03 = new Function0() { // from class: org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda9
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    WikiGamesEvent.submit$default(572, null, Integer.valueOf(intValue6 + 1), "archive_click", "games_hub", null, str, "archive");
                                    function2.invoke(OnThisDayGameAction.PlayArchive.INSTANCE, minusDays);
                                    return Unit.INSTANCE;
                                }
                            };
                            gapComposer3.updateRememberedValue(function03);
                            obj9 = function03;
                        }
                        Options.Companion.m884OnThisDayGameCardSimpleT042LqI(m134paddingVpY3zN4$default2, R.drawable.event_repeat_24dp, j, stringResource, (Function0) obj9, gapComposer3, 6);
                        gapComposer3.end(false);
                        break;
                    }
                }
            case 3:
                LazyPagingItems lazyPagingItems = (LazyPagingItems) obj7;
                Function1 function13 = (Function1) obj6;
                String str2 = (String) obj5;
                int intValue8 = ((Integer) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) obj3;
                int intValue9 = ((Integer) obj4).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if ((intValue9 & 48) == 0) {
                    intValue9 |= gapComposer4.changed(intValue8) ? 32 : 16;
                }
                int i3 = intValue9;
                if (!gapComposer4.shouldExecute(i3 & 1, (i3 & 145) != 144)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    lazyPagingItems.pagingDataPresenter.get(intValue8);
                    SearchResult searchResult = (SearchResult) ((ItemSnapshotList) lazyPagingItems.itemSnapshotList$delegate.getValue()).get(intValue8);
                    if (searchResult != null) {
                        gapComposer4.startReplaceGroup(943325169);
                        Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                        boolean changed4 = gapComposer4.changed(function13) | gapComposer4.changedInstance(searchResult);
                        Object rememberedValue6 = gapComposer4.rememberedValue();
                        Object obj10 = rememberedValue6;
                        if (changed4 || rememberedValue6 == neverEqualPolicy) {
                            HybridSearchViewsKt$$ExternalSyntheticLambda7 hybridSearchViewsKt$$ExternalSyntheticLambda7 = new HybridSearchViewsKt$$ExternalSyntheticLambda7(function13, searchResult, 0);
                            gapComposer4.updateRememberedValue(hybridSearchViewsKt$$ExternalSyntheticLambda7);
                            obj10 = hybridSearchViewsKt$$ExternalSyntheticLambda7;
                        }
                        NoSearchResultsKt.SearchResultTitleOnly(searchResult, str2, OffsetKt.m133paddingVpY3zN4(ImageKt.m51clickableoSLSa3U$default(15, fillMaxWidth, null, (Function0) obj10, false), 16.0f, 8.0f), gapComposer4, 0);
                        gapComposer4.end(false);
                        break;
                    } else {
                        gapComposer4.startReplaceGroup(943325168);
                        gapComposer4.end(false);
                        break;
                    }
                }
            default:
                int intValue10 = ((Integer) obj2).intValue();
                GapComposer gapComposer5 = (GapComposer) obj3;
                ((Integer) obj4).getClass();
                ((PagerScopeImpl) obj).getClass();
                YearInReviewDialog.YearInReviewScreenContent(ImageKt.scroll$default(OffsetKt.padding(SizeKt.FillWholeMaxSize, (PaddingValues) obj7), ImageKt.rememberScrollState(gapComposer5), true), (YearInReviewScreenData) ((List) obj6).get(intValue10), (Function2) obj5, false, null, gapComposer5, 0, 56);
                break;
        }
        return unit;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda5(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }
}
