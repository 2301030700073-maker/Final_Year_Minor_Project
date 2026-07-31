package org.wikipedia.activitytab;

import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import androidx.paging.ItemSnapshotList;
import androidx.paging.compose.LazyPagingItems;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.CoroutineScope;
import okio.Okio__JvmOkioKt;
import org.wikipedia.activitytab.TimelineDisplayItem;
import org.wikipedia.activitytab.timeline.TimelineItem;
import org.wikipedia.activitytab.timeline.TimelineModuleKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.onboarding.InitialOnboardingScreenKt;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;
import org.wikipedia.settings.homefeed.HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13;
import org.wikipedia.util.UiState;
import org.wikipedia.wiktionary.WiktionaryDialog$$ExternalSyntheticLambda2;
import org.wikipedia.yearinreview.YearInReviewActivity;
import org.wikipedia.yearinreview.YearInReviewActivity$$ExternalSyntheticLambda0;
import org.wikipedia.yearinreview.YearInReviewActivity$$ExternalSyntheticLambda2;
import org.wikipedia.yearinreview.YearInReviewDialog;
import org.wikipedia.yearinreview.YearInReviewViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ActivityTabFragment$$ExternalSyntheticLambda34 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ ActivityTabFragment$$ExternalSyntheticLambda34(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Unit unit = Unit.INSTANCE;
        char c = 1;
        char c2 = 1;
        int i2 = 2;
        Object obj5 = this.f$1;
        Object obj6 = this.f$0;
        switch (i) {
            case 0:
                LazyPagingItems lazyPagingItems = (LazyPagingItems) obj6;
                ActivityTabFragment activityTabFragment = (ActivityTabFragment) obj5;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if ((intValue2 & 48) == 0) {
                    intValue2 |= gapComposer.changed(intValue) ? 32 : 16;
                }
                if (gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 145) != 144)) {
                    lazyPagingItems.pagingDataPresenter.get(intValue);
                    TimelineDisplayItem timelineDisplayItem = (TimelineDisplayItem) ((ItemSnapshotList) lazyPagingItems.itemSnapshotList$delegate.getValue()).get(intValue);
                    if (timelineDisplayItem instanceof TimelineDisplayItem.DateSeparator) {
                        gapComposer.startReplaceGroup(1296342366);
                        TimelineModuleKt.TimelineDateSeparator(((TimelineDisplayItem.DateSeparator) timelineDisplayItem).date, OffsetKt.m136paddingqDBjuR0$default(OffsetKt.m134paddingVpY3zN4$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, 22.0f, RecyclerView.DECELERATION_RATE, 8.0f, 5), gapComposer, 48, 0);
                        gapComposer.end(false);
                    } else if (timelineDisplayItem instanceof TimelineDisplayItem.TimelineEntry) {
                        gapComposer.startReplaceGroup(1296823548);
                        TimelineItem timelineItem = ((TimelineDisplayItem.TimelineEntry) timelineDisplayItem).item;
                        boolean changedInstance = gapComposer.changedInstance(activityTabFragment);
                        Object rememberedValue = gapComposer.rememberedValue();
                        if (changedInstance || rememberedValue == neverEqualPolicy) {
                            rememberedValue = new ActivityTabFragment$$ExternalSyntheticLambda4(activityTabFragment, i2);
                            gapComposer.updateRememberedValue(rememberedValue);
                        }
                        TimelineModuleKt.TimelineModule(timelineItem, (Function1) rememberedValue, gapComposer, 0);
                        OffsetKt.Spacer(gapComposer, SizeKt.m140height3ABfNKs(companion, 6.0f));
                        gapComposer.end(false);
                    } else {
                        if (timelineDisplayItem != null) {
                            throw Modifier.CC.m(gapComposer, 457456363, false);
                        }
                        gapComposer.startReplaceGroup(1297291927);
                        gapComposer.end(false);
                    }
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 1:
                AppLanguageState appLanguageState = (AppLanguageState) obj6;
                List list = (List) obj5;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) obj3;
                int intValue4 = ((Integer) obj4).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if ((intValue4 & 48) == 0) {
                    intValue4 |= gapComposer2.changed(intValue3) ? 32 : 16;
                }
                if (gapComposer2.shouldExecute(intValue4 & 1, (intValue4 & 145) != 144)) {
                    boolean z = intValue3 == 0;
                    if (z) {
                        gapComposer2.startReplaceGroup(-2048542031);
                        OffsetKt.Spacer(gapComposer2, ImageKt.m46backgroundbw27NRU(SizeKt.fillMaxWidth(SizeKt.m140height3ABfNKs(companion, 0.5f), 1.0f), ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor, ColorKt.RectangleShape));
                        OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 16.0f));
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(-2048245082);
                        gapComposer2.end(false);
                    }
                    InitialOnboardingScreenKt.InitialOnboardingLanguageItem(appLanguageState, (String) list.get(intValue3), z, gapComposer2, 0);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 2:
                NavHostController navHostController = (NavHostController) obj6;
                Function0 function0 = (Function0) obj5;
                GapComposer gapComposer3 = (GapComposer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                boolean changedInstance2 = gapComposer3.changedInstance(navHostController) | gapComposer3.changed(function0);
                Object rememberedValue2 = gapComposer3.rememberedValue();
                if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13(navHostController, function0, 3);
                    gapComposer3.updateRememberedValue(rememberedValue2);
                }
                Okio__JvmOkioKt.CommunityModulesScreen(null, (Function0) rememberedValue2, gapComposer3, 0);
                return unit;
            default:
                YearInReviewActivity yearInReviewActivity = (YearInReviewActivity) obj6;
                CoroutineScope coroutineScope = (CoroutineScope) obj5;
                GapComposer gapComposer4 = (GapComposer) obj3;
                ((Integer) obj4).getClass();
                int i3 = YearInReviewActivity.$r8$clinit;
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                UiState uiState = (UiState) Updater.collectAsState(((YearInReviewViewModel) yearInReviewActivity.viewModel$delegate.getValue()).uiScreenListState, gapComposer4).getValue();
                boolean changedInstance3 = gapComposer4.changedInstance(yearInReviewActivity);
                Object rememberedValue3 = gapComposer4.rememberedValue();
                if (changedInstance3 || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new YearInReviewActivity$$ExternalSyntheticLambda0(yearInReviewActivity, i2);
                    gapComposer4.updateRememberedValue(rememberedValue3);
                }
                Function2 function2 = (Function2) rememberedValue3;
                boolean changedInstance4 = gapComposer4.changedInstance(yearInReviewActivity);
                Object rememberedValue4 = gapComposer4.rememberedValue();
                if (changedInstance4 || rememberedValue4 == neverEqualPolicy) {
                    rememberedValue4 = new WiktionaryDialog$$ExternalSyntheticLambda2(c == true ? 1 : 0, yearInReviewActivity);
                    gapComposer4.updateRememberedValue(rememberedValue4);
                }
                Function1 function1 = (Function1) rememberedValue4;
                boolean changedInstance5 = gapComposer4.changedInstance(coroutineScope) | gapComposer4.changedInstance(yearInReviewActivity);
                Object rememberedValue5 = gapComposer4.rememberedValue();
                if (changedInstance5 || rememberedValue5 == neverEqualPolicy) {
                    rememberedValue5 = new RandomActivity$$ExternalSyntheticLambda1(19, coroutineScope, yearInReviewActivity);
                    gapComposer4.updateRememberedValue(rememberedValue5);
                }
                Function2 function22 = (Function2) rememberedValue5;
                boolean changedInstance6 = gapComposer4.changedInstance(yearInReviewActivity);
                Object rememberedValue6 = gapComposer4.rememberedValue();
                if (changedInstance6 || rememberedValue6 == neverEqualPolicy) {
                    rememberedValue6 = new YearInReviewActivity$$ExternalSyntheticLambda2(yearInReviewActivity, c2 == true ? 1 : 0);
                    gapComposer4.updateRememberedValue(rememberedValue6);
                }
                Function0 function02 = (Function0) rememberedValue6;
                boolean changedInstance7 = gapComposer4.changedInstance(yearInReviewActivity);
                Object rememberedValue7 = gapComposer4.rememberedValue();
                if (changedInstance7 || rememberedValue7 == neverEqualPolicy) {
                    rememberedValue7 = new YearInReviewActivity$$ExternalSyntheticLambda2(yearInReviewActivity, i2);
                    gapComposer4.updateRememberedValue(rememberedValue7);
                }
                YearInReviewDialog.YearInReviewScreenDeck(null, uiState, function2, function1, function22, function02, (Function0) rememberedValue7, gapComposer4, 0, 1);
                return unit;
        }
    }
}
