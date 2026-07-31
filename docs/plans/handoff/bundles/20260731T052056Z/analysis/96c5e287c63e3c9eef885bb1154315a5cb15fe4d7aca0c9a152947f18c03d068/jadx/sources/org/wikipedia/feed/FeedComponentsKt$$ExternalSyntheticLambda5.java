package org.wikipedia.feed;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.paging.compose.LazyPagingItems;
import androidx.recyclerview.widget.RecyclerView;
import coil3.compose.AsyncImageKt;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.size.ViewSizeResolver$CC;
import j$.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.donate.donationreminder.DonationReminderUiState;
import org.wikipedia.donate.donationreminder.DonationReminderViewModel;
import org.wikipedia.feed.topread.TopReadModuleKt$$ExternalSyntheticLambda5;
import org.wikipedia.feed.wikigames.OnThisDayGameAction;
import org.wikipedia.games.GamesHubFragment;
import org.wikipedia.games.GamesHubViewModel;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper;
import org.wikipedia.language.LangLinksScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.onboarding.InitialOnboardingScreenKt;
import org.wikipedia.onboarding.InitialOnboardingScreenKt$$ExternalSyntheticLambda3;
import org.wikipedia.onboarding.OnboardingScreen;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;
import org.wikipedia.search.NoSearchResultsKt;
import org.wikipedia.search.SearchResult;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.settings.LicenseActivity;
import org.wikipedia.util.TabUtil;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedComponentsKt$$ExternalSyntheticLambda5 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda5(Context context, ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState, List list, Function0 function0, Function0 function02) {
        this.$r8$classId = 11;
        this.f$0 = list;
        this.f$1 = parcelableSnapshotMutableIntState;
        this.f$2 = context;
        this.f$4 = function0;
        this.f$3 = function02;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        boolean z;
        Modifier.Companion companion;
        List list;
        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState;
        boolean z2;
        int i = this.$r8$classId;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$4;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        Object obj6 = this.f$0;
        Object obj7 = this.f$3;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ForYouCardKt.FeedEmptyStateView((Modifier) obj6, (String) obj5, (String) obj4, (String) obj7, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 1:
                Modifier modifier = (Modifier) obj6;
                MutableState mutableState = (MutableState) obj5;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                BasicTextContextMenuProvider basicTextContextMenuProvider = (BasicTextContextMenuProvider) obj7;
                Function0 function0 = (Function0) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    Object rememberedValue = gapComposer.rememberedValue();
                    int i2 = 6;
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState, i2);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Modifier onGloballyPositioned = RulerKt.onGloballyPositioned(modifier, (Function1) rememberedValue);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
                    long j = gapComposer.compositeKeyHashCode;
                    int i3 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, onGloballyPositioned);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    composableLambdaImpl.invoke((Object) gapComposer, (Object) 0);
                    basicTextContextMenuProvider.ContextMenu(function0, gapComposer, 6);
                    gapComposer.end(true);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 2:
                ((Integer) obj2).getClass();
                CardKt.ListItemLayout((Function2) obj6, (Function2) obj5, (ComposableLambdaImpl) obj4, (Function2) obj7, (Function2) obj3, (GapComposer) obj, Updater.updateChangedFlags(385));
                return unit;
            case 3:
                ((Integer) obj2).getClass();
                TabsBoxKt.WikiTopAppBarWithSearch((String) obj5, (String) obj4, (String) obj7, (Function1) obj6, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 4:
                ((Integer) obj2).getClass();
                Okio__OkioKt.PageOverflowMenu((Modifier) obj6, (String) obj5, (PageOverflowMenuViewModel.PageOverflowMenuState) obj4, (Function0) obj3, (List) obj7, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 5:
                ((Integer) obj2).getClass();
                DonationReminderScreenKt.DonationReminderContent((Modifier) obj6, (DonationReminderViewModel) obj5, (DonationReminderUiState) obj4, (Function1) obj7, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 6:
                ((Integer) obj2).getClass();
                TabUtil.DidYouKnowListItem((WikiSite) obj6, (String) obj5, (Function1) obj4, (ComposableLambdaImpl) obj7, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(3073));
                return unit;
            case 7:
                PageSummary pageSummary = (PageSummary) obj6;
                Function1 function1 = (Function1) obj5;
                ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) obj4;
                Context context = (Context) obj7;
                WikiSite wikiSite = (WikiSite) obj3;
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
                    Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion2, 16.0f, 16.0f, RecyclerView.DECELERATION_RATE, 16.0f, 4);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer2, 48);
                    long j2 = gapComposer2.compositeKeyHashCode;
                    int i4 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m136paddingqDBjuR0$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i4);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    LayoutWeightElement m = ViewSizeResolver$CC.m(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14, 1.0f, true);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                    long j3 = gapComposer2.compositeKeyHashCode;
                    int i5 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, m);
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                    String displayTitle = pageSummary.getDisplayTitle();
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    long j4 = ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
                    TabsBoxKt.m897HtmlTextKiACRJU(displayTitle, null, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).titleSmall, 0L, 0L, FontWeight.W600, null, 0L, 0L, null, 16777211), j4, 1, 0, 0L, null, null, 0, gapComposer2, 196608, 4038);
                    String str = pageSummary.description;
                    if (str == null || str.length() == 0) {
                        z = false;
                        gapComposer2.startReplaceGroup(-1981662924);
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(-1981994066);
                        String str2 = pageSummary.description;
                        if (str2 == null) {
                            str2 = "";
                        }
                        TextKt.m308TextNvy7gAk(str2, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 2, false, 2, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).bodySmall, gapComposer2, 0, 24960, 110586);
                        z = false;
                        gapComposer2.end(false);
                    }
                    gapComposer2.end(true);
                    if (pageSummary.getThumbnailUrl() == null) {
                        gapComposer2.startReplaceGroup(2050403065);
                        gapComposer2.end(z);
                        companion = companion2;
                    } else {
                        gapComposer2.startReplaceGroup(2050403066);
                        companion = companion2;
                        AsyncImageKt.m772AsyncImage10Xjiaw(pageSummary.getThumbnailUrl(), ClipKt.clip(SizeKt.m145size3ABfNKs(OffsetKt.m136paddingqDBjuR0$default(companion2, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14), 56.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f)), gapComposer2);
                        z = false;
                        gapComposer2.end(false);
                    }
                    OffsetKt.Spacer(gapComposer2, SizeKt.m149width3ABfNKs(companion, 4.0f));
                    MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, z);
                    long j5 = gapComposer2.compositeKeyHashCode;
                    int i6 = (int) (j5 ^ (j5 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer2, companion);
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i6, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer2, materializeModifier4, composeUiNode$Companion$SetModifier$14);
                    boolean changed = gapComposer2.changed(function1) | gapComposer2.changedInstance(pageSummary);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changed || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new TopReadModuleKt$$ExternalSyntheticLambda5(function1, pageSummary, 4);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    CardKt.IconButton((Function0) rememberedValue2, null, false, null, null, Expect_jvmKt.rememberComposableLambda(-369152388, new ForYouCardKt$$ExternalSyntheticLambda3(context, wikiSite, 11), gapComposer2), gapComposer2, 1572864, 62);
                    composableLambdaImpl2.invoke((Object) gapComposer2, (Object) 0);
                    gapComposer2.end(true);
                    gapComposer2.end(true);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 8:
                GamesHubFragment gamesHubFragment = (GamesHubFragment) obj6;
                AppCompatActivity appCompatActivity = (AppCompatActivity) obj5;
                ComposeView composeView = (ComposeView) obj4;
                List list2 = (List) obj7;
                InfiniteTransition infiniteTransition = (InfiniteTransition) obj3;
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    GamesHubViewModel viewModel = gamesHubFragment.getViewModel();
                    UiState uiState = (UiState) Updater.collectAsState(gamesHubFragment.getViewModel().onThisDayGameUiState, gapComposer3).getValue();
                    OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper = gamesHubFragment.onThisDayGameArchiveCalendarHelper;
                    if (onThisDayGameArchiveCalendarHelper == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("onThisDayGameArchiveCalendarHelper");
                        throw null;
                    }
                    boolean changedInstance = gapComposer3.changedInstance(gamesHubFragment) | gapComposer3.changedInstance(appCompatActivity);
                    Object rememberedValue3 = gapComposer3.rememberedValue();
                    if (changedInstance || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new RandomActivity$$ExternalSyntheticLambda1(5, gamesHubFragment, appCompatActivity);
                        gapComposer3.updateRememberedValue(rememberedValue3);
                    }
                    Function2 function2 = (Function2) rememberedValue3;
                    boolean changedInstance2 = gapComposer3.changedInstance(gamesHubFragment);
                    Object rememberedValue4 = gapComposer3.rememberedValue();
                    if (changedInstance2 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new WikiGames$$ExternalSyntheticLambda0(13, gamesHubFragment);
                        gapComposer3.updateRememberedValue(rememberedValue4);
                    }
                    Function0 function02 = (Function0) rememberedValue4;
                    boolean changedInstance3 = gapComposer3.changedInstance(composeView) | gapComposer3.changedInstance(appCompatActivity) | gapComposer3.changedInstance(gamesHubFragment);
                    Object rememberedValue5 = gapComposer3.rememberedValue();
                    if (changedInstance3 || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new UtilsKt$$ExternalSyntheticLambda1(composeView, appCompatActivity, gamesHubFragment, 23);
                        gapComposer3.updateRememberedValue(rememberedValue5);
                    }
                    Jsoup.GamesHubScreen(viewModel, uiState, onThisDayGameArchiveCalendarHelper, function2, function02, (Function1) rememberedValue5, list2, infiniteTransition, gapComposer3, 16777216);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 9:
                Function0 function03 = (Function0) obj3;
                GamesHubViewModel gamesHubViewModel = (GamesHubViewModel) obj6;
                Function2 function22 = (Function2) obj5;
                MutableState mutableState2 = (MutableState) obj4;
                MutableState mutableState3 = (MutableState) obj7;
                OnThisDayGameAction onThisDayGameAction = (OnThisDayGameAction) obj;
                LocalDate localDate = (LocalDate) obj2;
                onThisDayGameAction.getClass();
                localDate.getClass();
                if (onThisDayGameAction.equals(OnThisDayGameAction.PlayArchive.INSTANCE)) {
                    function03.invoke();
                } else if (onThisDayGameAction.equals(OnThisDayGameAction.CountdownFinished.INSTANCE)) {
                    mutableState2.setValue(Boolean.TRUE);
                    gamesHubViewModel.loadOnThisDayGamesPreviews((String) mutableState3.getValue());
                } else {
                    function22.invoke(localDate, onThisDayGameAction);
                }
                return unit;
            case 10:
                String str3 = (String) obj5;
                String str4 = (String) obj4;
                Function1 function12 = (Function1) obj6;
                Function0 function04 = (Function0) obj3;
                MutableState mutableState4 = (MutableState) obj7;
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    String str5 = (String) mutableState4.getValue();
                    boolean changed2 = gapComposer4.changed(function12);
                    Object rememberedValue6 = gapComposer4.rememberedValue();
                    if (changed2 || rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new LangLinksScreenKt$$ExternalSyntheticLambda4(function12, mutableState4, 0);
                        gapComposer4.updateRememberedValue(rememberedValue6);
                    }
                    TabsBoxKt.WikiTopAppBarWithSearch(str3, str4, str5, (Function1) rememberedValue6, function04, gapComposer4, 0);
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 11:
                List list3 = (List) obj6;
                ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState2 = (ParcelableSnapshotMutableIntState) obj5;
                Context context2 = (Context) obj4;
                Function0 function05 = (Function0) obj3;
                Function0 function06 = (Function0) obj7;
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    return unit;
                }
                Modifier.Companion companion3 = Modifier.Companion.$$INSTANCE;
                Modifier navigationBarsPadding = OffsetKt.navigationBarsPadding(SizeKt.fillMaxWidth(companion3, 1.0f));
                ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer5, 0);
                long j6 = gapComposer5.compositeKeyHashCode;
                int i7 = (int) (j6 ^ (j6 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer5.currentCompositionLocalScope();
                Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer5, navigationBarsPadding);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                gapComposer5.startReusableNode();
                if (gapComposer5.inserting) {
                    gapComposer5.createNode(layoutNode$Companion$Constructor$13);
                } else {
                    gapComposer5.useNode();
                }
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetMeasurePolicy;
                Updater.m327setimpl(gapComposer5, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$15);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                Updater.m327setimpl(gapComposer5, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$16);
                Integer valueOf2 = Integer.valueOf(i7);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = ComposeUiNode.Companion.SetCompositeKeyHash;
                Updater.m327setimpl(gapComposer5, valueOf2, composeUiNode$Companion$SetModifier$17);
                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                Updater.m326reconcileimpl(gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$12);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$18 = ComposeUiNode.Companion.SetModifier;
                Updater.m327setimpl(gapComposer5, materializeModifier5, composeUiNode$Companion$SetModifier$18);
                if (list3.get(parcelableSnapshotMutableIntState2.getIntValue()) != OnboardingScreen.INTRO) {
                    gapComposer5.startReplaceGroup(155166643);
                    list = list3;
                    parcelableSnapshotMutableIntState = parcelableSnapshotMutableIntState2;
                    OffsetKt.Spacer(gapComposer5, ImageKt.m46backgroundbw27NRU(SizeKt.fillMaxWidth(SizeKt.m140height3ABfNKs(companion3, 1.0f), 1.0f), ((WikipediaColor) gapComposer5.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor, ColorKt.RectangleShape));
                    z2 = false;
                    gapComposer5.end(false);
                } else {
                    list = list3;
                    parcelableSnapshotMutableIntState = parcelableSnapshotMutableIntState2;
                    z2 = false;
                    gapComposer5.startReplaceGroup(155402088);
                    gapComposer5.end(false);
                }
                Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion3, 1.0f);
                MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.CenterEnd, z2);
                long j7 = gapComposer5.compositeKeyHashCode;
                int i8 = (int) (j7 ^ (j7 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope6 = gapComposer5.currentCompositionLocalScope();
                Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(gapComposer5, fillMaxWidth);
                gapComposer5.startReusableNode();
                if (gapComposer5.inserting) {
                    gapComposer5.createNode(layoutNode$Companion$Constructor$13);
                } else {
                    gapComposer5.useNode();
                }
                Updater.m327setimpl(gapComposer5, maybeCachedBoxMeasurePolicy3, composeUiNode$Companion$SetModifier$15);
                Updater.m327setimpl(gapComposer5, currentCompositionLocalScope6, composeUiNode$Companion$SetModifier$16);
                Animation.CC.m(i8, gapComposer5, composeUiNode$Companion$SetModifier$17, gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$12);
                Updater.m327setimpl(gapComposer5, materializeModifier6, composeUiNode$Companion$SetModifier$18);
                List list4 = list;
                boolean changedInstance4 = gapComposer5.changedInstance(context2) | gapComposer5.changedInstance(list4) | gapComposer5.changed(function05) | gapComposer5.changed(function06);
                Object rememberedValue7 = gapComposer5.rememberedValue();
                if (changedInstance4 || rememberedValue7 == neverEqualPolicy) {
                    InitialOnboardingScreenKt$$ExternalSyntheticLambda3 initialOnboardingScreenKt$$ExternalSyntheticLambda3 = new InitialOnboardingScreenKt$$ExternalSyntheticLambda3(context2, parcelableSnapshotMutableIntState, list4, function05, function06);
                    gapComposer5.updateRememberedValue(initialOnboardingScreenKt$$ExternalSyntheticLambda3);
                    rememberedValue7 = initialOnboardingScreenKt$$ExternalSyntheticLambda3;
                }
                CardKt.IconButton((Function0) rememberedValue7, null, false, null, null, InitialOnboardingScreenKt.f47lambda$1510619266, gapComposer5, 1572864, 62);
                gapComposer5.end(true);
                gapComposer5.end(true);
                return unit;
            case 12:
                ((Integer) obj2).getClass();
                RecommendedReadingListSourceScreenKt.RadioListDialog((Modifier) obj6, (ArrayList) obj4, (String) obj5, (Function0) obj3, (Function1) obj7, (GapComposer) obj, Updater.updateChangedFlags(3073));
                return unit;
            case IMAGE_VALUE:
                ((Integer) obj2).getClass();
                NoSearchResultsKt.SemanticSearchResultPageItem((SearchResult) obj6, (Function0) obj3, (Function1) obj5, (Function1) obj4, (Function1) obj7, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ((Integer) obj2).getClass();
                NoSearchResultsKt.HybridSearchSuggestionListView((Modifier) obj6, (LazyPagingItems) obj4, (String) obj5, (Function1) obj7, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(71));
                return unit;
            case 15:
                ((Integer) obj2).getClass();
                NoSearchResultsKt.SearchResultsList((LazyPagingItems) obj4, (String) obj5, (Function4) obj7, (Function3) obj3, (Modifier) obj6, (GapComposer) obj, Updater.updateChangedFlags(9));
                return unit;
            default:
                ((Integer) obj2).getClass();
                int i9 = LicenseActivity.$r8$clinit;
                ((LicenseActivity) obj7).LicenseScreen((Modifier) obj6, (String) obj5, (String) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(7));
                return unit;
        }
    }

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda5(Modifier modifier, LazyPagingItems lazyPagingItems, String str, Function1 function1, Function1 function12, int i) {
        this.$r8$classId = 14;
        this.f$0 = modifier;
        this.f$2 = lazyPagingItems;
        this.f$1 = str;
        this.f$3 = function1;
        this.f$4 = function12;
    }

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda5(Modifier modifier, String str, PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState, Function0 function0, List list, int i) {
        this.$r8$classId = 4;
        this.f$0 = modifier;
        this.f$1 = str;
        this.f$2 = pageOverflowMenuState;
        this.f$4 = function0;
        this.f$3 = list;
    }

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda5(Modifier modifier, ArrayList arrayList, String str, Function0 function0, Function1 function1, int i) {
        this.$r8$classId = 12;
        this.f$0 = modifier;
        this.f$2 = arrayList;
        this.f$1 = str;
        this.f$4 = function0;
        this.f$3 = function1;
    }

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda5(LazyPagingItems lazyPagingItems, String str, Function4 function4, Function3 function3, Modifier modifier, int i) {
        this.$r8$classId = 15;
        this.f$2 = lazyPagingItems;
        this.f$1 = str;
        this.f$3 = function4;
        this.f$4 = function3;
        this.f$0 = modifier;
    }

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda5(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
    }

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda5(Object obj, Object obj2, Object obj3, Object obj4, Function function, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = function;
    }

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda5(String str, String str2, String str3, Function1 function1, Function0 function0, int i) {
        this.$r8$classId = 3;
        this.f$1 = str;
        this.f$2 = str2;
        this.f$3 = str3;
        this.f$0 = function1;
        this.f$4 = function0;
    }

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda5(String str, String str2, Function1 function1, Function0 function0, MutableState mutableState) {
        this.$r8$classId = 10;
        this.f$1 = str;
        this.f$2 = str2;
        this.f$0 = function1;
        this.f$4 = function0;
        this.f$3 = mutableState;
    }

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda5(Function0 function0, GamesHubViewModel gamesHubViewModel, Function2 function2, MutableState mutableState, MutableState mutableState2) {
        this.$r8$classId = 9;
        this.f$4 = function0;
        this.f$0 = gamesHubViewModel;
        this.f$1 = function2;
        this.f$2 = mutableState;
        this.f$3 = mutableState2;
    }

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda5(SearchResult searchResult, Function0 function0, Function1 function1, Function1 function12, Function1 function13, int i) {
        this.$r8$classId = 13;
        this.f$0 = searchResult;
        this.f$4 = function0;
        this.f$1 = function1;
        this.f$2 = function12;
        this.f$3 = function13;
    }

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda5(LicenseActivity licenseActivity, Modifier modifier, String str, String str2, Function0 function0, int i) {
        this.$r8$classId = 16;
        this.f$3 = licenseActivity;
        this.f$0 = modifier;
        this.f$1 = str;
        this.f$2 = str2;
        this.f$4 = function0;
    }
}
