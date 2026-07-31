package org.wikipedia.feed;

import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import okhttp3.Cookie;
import okhttp3.HttpUrl;
import okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda2;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.feed.HomeAction;
import org.wikipedia.feed.featured.FeaturedArticleCard;
import org.wikipedia.feed.image.FeaturedImageCard;
import org.wikipedia.feed.model.WikiSiteCard;
import org.wikipedia.feed.news.NewsCard;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;
import org.wikipedia.readinglist.recommended.RecommendedReadingListUpdateFrequency;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CommunityContentTabKt$$ExternalSyntheticLambda49 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Function1 f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ CommunityContentTabKt$$ExternalSyntheticLambda49(int i, Function1 function1, WikiSite wikiSite, FeaturedArticleCard featuredArticleCard) {
        this.$r8$classId = 0;
        this.f$0 = wikiSite;
        this.f$1 = featuredArticleCard;
        this.f$2 = function1;
        this.f$3 = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        int i2 = this.f$3;
        final Function1 function1 = this.f$2;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$1;
        Object obj5 = this.f$0;
        int i3 = 16;
        final int i4 = 1;
        Object[] objArr = 0;
        switch (i) {
            case 0:
                final WikiSite wikiSite = (WikiSite) obj5;
                final FeaturedArticleCard featuredArticleCard = (FeaturedArticleCard) obj4;
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    PageSummary pageSummary = featuredArticleCard.page;
                    boolean changed = gapComposer.changed(function1) | gapComposer.changed(featuredArticleCard) | gapComposer.changedInstance(wikiSite);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        final Object[] objArr2 = objArr == true ? 1 : 0;
                        rememberedValue = new Function1() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj6) {
                                int i5 = objArr2;
                                Unit unit2 = Unit.INSTANCE;
                                WikiSite wikiSite2 = wikiSite;
                                FeaturedArticleCard featuredArticleCard2 = featuredArticleCard;
                                Function1 function12 = function1;
                                PageSummary pageSummary2 = (PageSummary) obj6;
                                switch (i5) {
                                    case 0:
                                        pageSummary2.getClass();
                                        function12.invoke(new HomeAction.PageClick(featuredArticleCard2, pageSummary2.getHistoryEntry(wikiSite2, 15)));
                                        break;
                                    case 1:
                                        pageSummary2.getClass();
                                        function12.invoke(new HomeAction.PageShareClick(featuredArticleCard2, pageSummary2.getHistoryEntry(wikiSite2, 15)));
                                        break;
                                    default:
                                        pageSummary2.getClass();
                                        function12.invoke(new HomeAction.PageBookmarkClick(featuredArticleCard2, pageSummary2.getHistoryEntry(wikiSite2, 15)));
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function1 function12 = (Function1) rememberedValue;
                    boolean changed2 = gapComposer.changed(function1) | gapComposer.changed(featuredArticleCard);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new Regex$$ExternalSyntheticLambda0(13, function1, featuredArticleCard);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    Function0 function0 = (Function0) rememberedValue2;
                    boolean changed3 = gapComposer.changed(function1) | gapComposer.changed(featuredArticleCard);
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new HomeScreenKt$$ExternalSyntheticLambda4(function1, featuredArticleCard, 4);
                        gapComposer.updateRememberedValue(rememberedValue3);
                    }
                    Function0 function02 = (Function0) rememberedValue3;
                    boolean changed4 = gapComposer.changed(function1) | gapComposer.changed(featuredArticleCard) | gapComposer.changedInstance(wikiSite);
                    Object rememberedValue4 = gapComposer.rememberedValue();
                    if (changed4 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new Function1() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj6) {
                                int i5 = i4;
                                Unit unit2 = Unit.INSTANCE;
                                WikiSite wikiSite2 = wikiSite;
                                FeaturedArticleCard featuredArticleCard2 = featuredArticleCard;
                                Function1 function122 = function1;
                                PageSummary pageSummary2 = (PageSummary) obj6;
                                switch (i5) {
                                    case 0:
                                        pageSummary2.getClass();
                                        function122.invoke(new HomeAction.PageClick(featuredArticleCard2, pageSummary2.getHistoryEntry(wikiSite2, 15)));
                                        break;
                                    case 1:
                                        pageSummary2.getClass();
                                        function122.invoke(new HomeAction.PageShareClick(featuredArticleCard2, pageSummary2.getHistoryEntry(wikiSite2, 15)));
                                        break;
                                    default:
                                        pageSummary2.getClass();
                                        function122.invoke(new HomeAction.PageBookmarkClick(featuredArticleCard2, pageSummary2.getHistoryEntry(wikiSite2, 15)));
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue4);
                    }
                    Function1 function13 = (Function1) rememberedValue4;
                    boolean changed5 = gapComposer.changed(function1) | gapComposer.changed(featuredArticleCard) | gapComposer.changedInstance(wikiSite);
                    Object rememberedValue5 = gapComposer.rememberedValue();
                    if (changed5 || rememberedValue5 == neverEqualPolicy) {
                        final int i5 = 2;
                        rememberedValue5 = new Function1() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj6) {
                                int i52 = i5;
                                Unit unit2 = Unit.INSTANCE;
                                WikiSite wikiSite2 = wikiSite;
                                FeaturedArticleCard featuredArticleCard2 = featuredArticleCard;
                                Function1 function122 = function1;
                                PageSummary pageSummary2 = (PageSummary) obj6;
                                switch (i52) {
                                    case 0:
                                        pageSummary2.getClass();
                                        function122.invoke(new HomeAction.PageClick(featuredArticleCard2, pageSummary2.getHistoryEntry(wikiSite2, 15)));
                                        break;
                                    case 1:
                                        pageSummary2.getClass();
                                        function122.invoke(new HomeAction.PageShareClick(featuredArticleCard2, pageSummary2.getHistoryEntry(wikiSite2, 15)));
                                        break;
                                    default:
                                        pageSummary2.getClass();
                                        function122.invoke(new HomeAction.PageBookmarkClick(featuredArticleCard2, pageSummary2.getHistoryEntry(wikiSite2, 15)));
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue5);
                    }
                    Function1 function14 = (Function1) rememberedValue5;
                    boolean changed6 = gapComposer.changed(function1) | gapComposer.changed(featuredArticleCard) | gapComposer.changed(i2);
                    Object rememberedValue6 = gapComposer.rememberedValue();
                    if (changed6 || rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new Http2Connection$$ExternalSyntheticLambda2(i2, 6, featuredArticleCard, function1);
                        gapComposer.updateRememberedValue(rememberedValue6);
                    }
                    Cookie.Companion.FeaturedArticleModule(wikiSite, pageSummary, function12, function0, function02, function13, function14, (Function0) rememberedValue6, gapComposer, 0);
                    break;
                }
            case 1:
                NewsCard newsCard = (NewsCard) obj4;
                WikiSite wikiSite2 = (WikiSite) obj5;
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    List list = newsCard.news;
                    boolean changed7 = gapComposer2.changed(function1) | gapComposer2.changed(newsCard);
                    Object rememberedValue7 = gapComposer2.rememberedValue();
                    if (changed7 || rememberedValue7 == neverEqualPolicy) {
                        rememberedValue7 = new GamesHubScreenKt$$ExternalSyntheticLambda8(i3, function1, newsCard);
                        gapComposer2.updateRememberedValue(rememberedValue7);
                    }
                    Function1 function15 = (Function1) rememberedValue7;
                    boolean changed8 = gapComposer2.changed(function1) | gapComposer2.changed(newsCard);
                    Object rememberedValue8 = gapComposer2.rememberedValue();
                    if (changed8 || rememberedValue8 == neverEqualPolicy) {
                        rememberedValue8 = new Regex$$ExternalSyntheticLambda0(14, function1, newsCard);
                        gapComposer2.updateRememberedValue(rememberedValue8);
                    }
                    Function0 function03 = (Function0) rememberedValue8;
                    boolean changed9 = gapComposer2.changed(function1) | gapComposer2.changed(newsCard);
                    Object rememberedValue9 = gapComposer2.rememberedValue();
                    if (changed9 || rememberedValue9 == neverEqualPolicy) {
                        rememberedValue9 = new HomeScreenKt$$ExternalSyntheticLambda4(function1, newsCard, 12);
                        gapComposer2.updateRememberedValue(rememberedValue9);
                    }
                    Function0 function04 = (Function0) rememberedValue9;
                    boolean changed10 = gapComposer2.changed(function1) | gapComposer2.changed(newsCard) | gapComposer2.changed(i2);
                    Object rememberedValue10 = gapComposer2.rememberedValue();
                    if (changed10 || rememberedValue10 == neverEqualPolicy) {
                        rememberedValue10 = new Http2Connection$$ExternalSyntheticLambda2(i2, 7, newsCard, function1);
                        gapComposer2.updateRememberedValue(rememberedValue10);
                    }
                    HttpUrl.Companion.NewsModule(wikiSite2, list, function15, function03, function04, (Function0) rememberedValue10, gapComposer2, 0);
                    break;
                }
            case 2:
                FeaturedImageCard featuredImageCard = (FeaturedImageCard) obj4;
                WikiSite wikiSite3 = (WikiSite) obj5;
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    boolean changed11 = gapComposer3.changed(function1);
                    Object rememberedValue11 = gapComposer3.rememberedValue();
                    if (changed11 || rememberedValue11 == neverEqualPolicy) {
                        rememberedValue11 = new HomeScreenKt$$ExternalSyntheticLambda8(function1, 10);
                        gapComposer3.updateRememberedValue(rememberedValue11);
                    }
                    Function1 function16 = (Function1) rememberedValue11;
                    boolean changed12 = gapComposer3.changed(function1) | gapComposer3.changed(featuredImageCard);
                    Object rememberedValue12 = gapComposer3.rememberedValue();
                    if (changed12 || rememberedValue12 == neverEqualPolicy) {
                        rememberedValue12 = new CommunityContentTabKt$$ExternalSyntheticLambda26(function1, featuredImageCard, 0);
                        gapComposer3.updateRememberedValue(rememberedValue12);
                    }
                    Function0 function05 = (Function0) rememberedValue12;
                    boolean changed13 = gapComposer3.changed(function1) | gapComposer3.changed(featuredImageCard);
                    Object rememberedValue13 = gapComposer3.rememberedValue();
                    if (changed13 || rememberedValue13 == neverEqualPolicy) {
                        rememberedValue13 = new HomeScreenKt$$ExternalSyntheticLambda8(function1, featuredImageCard);
                        gapComposer3.updateRememberedValue(rememberedValue13);
                    }
                    Function1 function17 = (Function1) rememberedValue13;
                    boolean changed14 = gapComposer3.changed(function1);
                    Object rememberedValue14 = gapComposer3.rememberedValue();
                    if (changed14 || rememberedValue14 == neverEqualPolicy) {
                        rememberedValue14 = new HomeScreenKt$$ExternalSyntheticLambda8(function1, 12);
                        gapComposer3.updateRememberedValue(rememberedValue14);
                    }
                    Function1 function18 = (Function1) rememberedValue14;
                    boolean changed15 = gapComposer3.changed(function1);
                    Object rememberedValue15 = gapComposer3.rememberedValue();
                    if (changed15 || rememberedValue15 == neverEqualPolicy) {
                        rememberedValue15 = new HomeScreenKt$$ExternalSyntheticLambda8(function1, 13);
                        gapComposer3.updateRememberedValue(rememberedValue15);
                    }
                    Function1 function19 = (Function1) rememberedValue15;
                    boolean changed16 = gapComposer3.changed(function1) | gapComposer3.changed(featuredImageCard) | gapComposer3.changed(i2);
                    Object rememberedValue16 = gapComposer3.rememberedValue();
                    if (changed16 || rememberedValue16 == neverEqualPolicy) {
                        rememberedValue16 = new Http2Connection$$ExternalSyntheticLambda2(i2, 4, featuredImageCard, function1);
                        gapComposer3.updateRememberedValue(rememberedValue16);
                    }
                    UriUtil.FeaturedImageModule(wikiSite3, featuredImageCard, function16, function05, function17, function18, function19, (Function0) rememberedValue16, gapComposer3, 0);
                    break;
                }
            default:
                RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency = (RecommendedReadingListUpdateFrequency) obj5;
                Function1 function110 = (Function1) obj4;
                GapComposer gapComposer4 = (GapComposer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    RecommendedReadingListSourceScreenKt.ArticlesNumberView(this.f$3, this.f$2, null, 0, 0, gapComposer4, 0);
                    RecommendedReadingListSourceScreenKt.UpdatesFrequencyView(recommendedReadingListUpdateFrequency, function110, null, gapComposer4, 0);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ CommunityContentTabKt$$ExternalSyntheticLambda49(int i, Function1 function1, RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency, Function1 function12) {
        this.$r8$classId = 3;
        this.f$3 = i;
        this.f$2 = function1;
        this.f$0 = recommendedReadingListUpdateFrequency;
        this.f$1 = function12;
    }

    public /* synthetic */ CommunityContentTabKt$$ExternalSyntheticLambda49(WikiSiteCard wikiSiteCard, WikiSite wikiSite, Function1 function1, int i, int i2) {
        this.$r8$classId = i2;
        this.f$1 = wikiSiteCard;
        this.f$0 = wikiSite;
        this.f$2 = function1;
        this.f$3 = i;
    }
}
