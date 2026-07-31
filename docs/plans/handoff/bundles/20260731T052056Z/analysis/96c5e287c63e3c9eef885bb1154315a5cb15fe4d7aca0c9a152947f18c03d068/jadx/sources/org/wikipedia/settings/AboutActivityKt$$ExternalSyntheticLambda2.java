package org.wikipedia.settings;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemScopeImpl;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda7;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.unit.DpKt;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import okio.Okio__JvmOkioKt;
import okio.Okio__OkioKt;
import org.wikipedia.compose.components.OnboardingItem;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.donate.donationreminder.OptionItem;
import org.wikipedia.donate.donationreminder.SelectableOption;
import org.wikipedia.feed.CommunityContentState;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda32;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda8;
import org.wikipedia.feed.didyouknow.DidYouKnowCard;
import org.wikipedia.feed.personalization.homepreference.HomeContentState;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.feed.personalization.interest.ArticlesState;
import org.wikipedia.feed.personalization.interest.InterestSelectionScreenKt;
import org.wikipedia.feed.topread.TopReadCard;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda5;
import org.wikipedia.search.HybridSearchOnboardingActivityKt;
import org.wikipedia.search.NoSearchResultsKt;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda0;
import org.wikipedia.talk.TalkTopicsActivity$onCreate$5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutActivityKt$$ExternalSyntheticLambda2 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda2(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        Object obj6 = this.f$0;
        switch (i) {
            case 0:
                String str = (String) obj6;
                List list = (List) obj5;
                SnackbarHostState snackbarHostState = (SnackbarHostState) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= gapComposer.changed(paddingValues) ? 4 : 2;
                }
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    PrefsIoUtil.AboutScreenContent(OffsetKt.padding(companion, paddingValues), str, list, snackbarHostState, gapComposer, 3072);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 1:
                String str2 = (String) obj6;
                Function1 function1 = (Function1) obj5;
                MutableState mutableState = (MutableState) obj4;
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                } else if (str2.length() > 0) {
                    gapComposer2.startReplaceGroup(-1744230979);
                    boolean changed = gapComposer2.changed(function1);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function1, mutableState, 2);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    CardKt.IconButton((Function0) rememberedValue, null, false, null, null, TabsBoxKt.f25lambda$1241504182, gapComposer2, 1572864, 62);
                    gapComposer2.end(false);
                } else {
                    gapComposer2.startReplaceGroup(-1743429505);
                    gapComposer2.end(false);
                }
                return unit;
            case 2:
                SelectableOption selectableOption = (SelectableOption) obj6;
                Function1 function12 = (Function1) obj5;
                MutableState mutableState2 = (MutableState) obj4;
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    for (OptionItem optionItem : selectableOption.options) {
                        ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1072340570, new HintHandler$$ExternalSyntheticLambda0(29, optionItem), gapComposer3);
                        boolean changed2 = gapComposer3.changed(function12) | gapComposer3.changed(optionItem);
                        Object rememberedValue2 = gapComposer3.rememberedValue();
                        if (changed2 || rememberedValue2 == neverEqualPolicy) {
                            rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda29(function12, optionItem, mutableState2, 13);
                            gapComposer3.updateRememberedValue(rememberedValue2);
                        }
                        AndroidMenu_androidKt.DropdownMenuItem(rememberComposableLambda, (Function0) rememberedValue2, null, null, null, false, null, null, gapComposer3, 6, 508);
                    }
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 3:
                TopReadCard topReadCard = (TopReadCard) obj6;
                PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState = (PageOverflowMenuViewModel.PageOverflowMenuState) obj5;
                Function1 function13 = (Function1) obj4;
                int intValue4 = ((Integer) obj).intValue();
                GapComposer gapComposer4 = (GapComposer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                if ((intValue5 & 6) == 0) {
                    intValue5 |= gapComposer4.changed(intValue4) ? 4 : 2;
                }
                if (gapComposer4.shouldExecute(1 & intValue5, (intValue5 & 19) != 18)) {
                    String m = Modifier.CC.m(topReadCard.age, intValue4, "top-read-", "-");
                    boolean changed3 = gapComposer4.changed(function13);
                    Object rememberedValue3 = gapComposer4.rememberedValue();
                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new HomeScreenKt$$ExternalSyntheticLambda4(function13, 8);
                        gapComposer4.updateRememberedValue(rememberedValue3);
                    }
                    Function0 function0 = (Function0) rememberedValue3;
                    List list2 = pageOverflowMenuState != null ? pageOverflowMenuState.items : null;
                    if (list2 == null) {
                        list2 = EmptyList.INSTANCE;
                    }
                    Okio__OkioKt.PageOverflowMenu(null, m, pageOverflowMenuState, function0, list2, gapComposer4, 0);
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 4:
                DidYouKnowCard didYouKnowCard = (DidYouKnowCard) obj6;
                PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState2 = (PageOverflowMenuViewModel.PageOverflowMenuState) obj5;
                Function1 function14 = (Function1) obj4;
                int intValue6 = ((Integer) obj).intValue();
                GapComposer gapComposer5 = (GapComposer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                if ((intValue7 & 6) == 0) {
                    intValue7 |= gapComposer5.changed(intValue6) ? 4 : 2;
                }
                if (gapComposer5.shouldExecute(1 & intValue7, (intValue7 & 19) != 18)) {
                    String str3 = "dyk-" + didYouKnowCard.date + "-" + intValue6;
                    boolean changed4 = gapComposer5.changed(function14);
                    Object rememberedValue4 = gapComposer5.rememberedValue();
                    if (changed4 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new HomeScreenKt$$ExternalSyntheticLambda4(function14, 7);
                        gapComposer5.updateRememberedValue(rememberedValue4);
                    }
                    Function0 function02 = (Function0) rememberedValue4;
                    List list3 = pageOverflowMenuState2 != null ? pageOverflowMenuState2.items : null;
                    if (list3 == null) {
                        list3 = EmptyList.INSTANCE;
                    }
                    Okio__OkioKt.PageOverflowMenu(null, str3, pageOverflowMenuState2, function02, list3, gapComposer5, 0);
                } else {
                    gapComposer5.skipToGroupEnd();
                }
                return unit;
            case 5:
                CommunityContentState communityContentState = (CommunityContentState) obj6;
                WikiSite wikiSite = (WikiSite) obj5;
                Function1 function15 = (Function1) obj4;
                GapComposer gapComposer6 = (GapComposer) obj2;
                int intValue8 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer6.shouldExecute(intValue8 & 1, (intValue8 & 17) != 16)) {
                    gapComposer6.skipToGroupEnd();
                } else if (communityContentState.isLoadingMore) {
                    gapComposer6.startReplaceGroup(-1150278717);
                    ForYouCardKt.LoadingIndicator(null, gapComposer6, 0, 1);
                    gapComposer6.end(false);
                } else if (!communityContentState.canLoadMore || communityContentState.cards.isEmpty()) {
                    gapComposer6.startReplaceGroup(-1149855443);
                    gapComposer6.end(false);
                } else {
                    gapComposer6.startReplaceGroup(-1150141821);
                    boolean changed5 = gapComposer6.changed(function15);
                    Object rememberedValue5 = gapComposer6.rememberedValue();
                    if (changed5 || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new HomeScreenKt$$ExternalSyntheticLambda4(function15, 5);
                        gapComposer6.updateRememberedValue(rememberedValue5);
                    }
                    ForYouCardKt.LoadMoreButton(wikiSite, (Function0) rememberedValue5, gapComposer6, 48);
                    gapComposer6.end(false);
                }
                return unit;
            case 6:
                Function0 function03 = (Function0) obj6;
                Function0 function04 = (Function0) obj5;
                MutableState mutableState3 = (MutableState) obj4;
                GapComposer gapComposer7 = (GapComposer) obj2;
                int intValue9 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (gapComposer7.shouldExecute(intValue9 & 1, (intValue9 & 17) != 16)) {
                    ComposableLambdaImpl composableLambdaImpl = ForYouCardKt.f38lambda$429809904;
                    boolean changed6 = gapComposer7.changed(function03);
                    Object rememberedValue6 = gapComposer7.rememberedValue();
                    if (changed6 || rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new HomeScreenKt$$ExternalSyntheticLambda32(function03, mutableState3, r13);
                        gapComposer7.updateRememberedValue(rememberedValue6);
                    }
                    AndroidMenu_androidKt.DropdownMenuItem(composableLambdaImpl, (Function0) rememberedValue6, null, ForYouCardKt.f37lambda$2108534547, null, false, null, null, gapComposer7, 3078, 500);
                    ComposableLambdaImpl composableLambdaImpl2 = ForYouCardKt.lambda$1540276921;
                    boolean changed7 = gapComposer7.changed(function04);
                    Object rememberedValue7 = gapComposer7.rememberedValue();
                    if (changed7 || rememberedValue7 == neverEqualPolicy) {
                        rememberedValue7 = new HomeScreenKt$$ExternalSyntheticLambda32(function04, mutableState3, 3);
                        gapComposer7.updateRememberedValue(rememberedValue7);
                    }
                    AndroidMenu_androidKt.DropdownMenuItem(composableLambdaImpl2, (Function0) rememberedValue7, null, ForYouCardKt.f33lambda$1101369002, null, false, null, null, gapComposer7, 3078, 500);
                } else {
                    gapComposer7.skipToGroupEnd();
                }
                return unit;
            case 7:
                HomeContentState homeContentState = (HomeContentState) obj6;
                Function1 function16 = (Function1) obj5;
                HomePreferenceType homePreferenceType = (HomePreferenceType) obj4;
                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj;
                GapComposer gapComposer8 = (GapComposer) obj2;
                int intValue10 = ((Integer) obj3).intValue();
                lazyItemScopeImpl.getClass();
                if ((intValue10 & 6) == 0) {
                    intValue10 |= gapComposer8.changed(lazyItemScopeImpl) ? 4 : 2;
                }
                if (gapComposer8.shouldExecute(intValue10 & 1, (intValue10 & 19) != 18)) {
                    Modifier fillParentMaxWidth$default = LazyItemScope$CC.fillParentMaxWidth$default(lazyItemScopeImpl);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                    long j = gapComposer8.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer8.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer8, fillParentMaxWidth$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer8.startReusableNode();
                    if (gapComposer8.inserting) {
                        gapComposer8.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer8.useNode();
                    }
                    Updater.m327setimpl(gapComposer8, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer8, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer8, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer8, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer8, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Throwable th = ((HomeContentState.Error) homeContentState).message;
                    boolean changed8 = gapComposer8.changed(function16) | gapComposer8.changed(homePreferenceType.ordinal());
                    Object rememberedValue8 = gapComposer8.rememberedValue();
                    if (changed8 || rememberedValue8 == neverEqualPolicy) {
                        rememberedValue8 = new HomePreferenceScreenKt$$ExternalSyntheticLambda2(function16, homePreferenceType, 0);
                        gapComposer8.updateRememberedValue(rememberedValue8);
                    }
                    Okio__JvmOkioKt.WikiErrorView(null, th, new WikiErrorClickEvents((Function0) rememberedValue8, null, null, 14), false, gapComposer8, 0, 21);
                    gapComposer8.end(true);
                } else {
                    gapComposer8.skipToGroupEnd();
                }
                return unit;
            case 8:
                ArrayList arrayList = (ArrayList) obj5;
                String str4 = (String) obj6;
                Function1 function17 = (Function1) obj4;
                GapComposer gapComposer9 = (GapComposer) obj2;
                int intValue11 = ((Integer) obj3).intValue();
                ((LazyStaggeredGridItemScopeImpl) obj).getClass();
                if (gapComposer9.shouldExecute(intValue11 & 1, (intValue11 & 17) != 16)) {
                    Object rememberedValue9 = gapComposer9.rememberedValue();
                    if (rememberedValue9 == neverEqualPolicy) {
                        rememberedValue9 = new AppBarKt$$ExternalSyntheticLambda7(29);
                        gapComposer9.updateRememberedValue(rememberedValue9);
                    }
                    Modifier layout = RulerKt.layout(companion, (Function3) rememberedValue9);
                    MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    long j2 = gapComposer9.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer9.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer9, layout);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer9.startReusableNode();
                    if (gapComposer9.inserting) {
                        gapComposer9.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer9.useNode();
                    }
                    Updater.m327setimpl(gapComposer9, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer9, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer9, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer9, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer9, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    boolean changed9 = gapComposer9.changed(function17);
                    Object rememberedValue10 = gapComposer9.rememberedValue();
                    if (changed9 || rememberedValue10 == neverEqualPolicy) {
                        rememberedValue10 = new HomeScreenKt$$ExternalSyntheticLambda8(function17, 24);
                        gapComposer9.updateRememberedValue(rememberedValue10);
                    }
                    InterestSelectionScreenKt.TopicFilterChipRow(arrayList, null, str4, (Function1) rememberedValue10, gapComposer9, 0);
                    gapComposer9.end(true);
                } else {
                    gapComposer9.skipToGroupEnd();
                }
                return unit;
            case 9:
                Modifier modifier = (Modifier) obj6;
                ArticlesState articlesState = (ArticlesState) obj5;
                Function0 function05 = (Function0) obj4;
                GapComposer gapComposer10 = (GapComposer) obj2;
                int intValue12 = ((Integer) obj3).intValue();
                ((LazyStaggeredGridItemScopeImpl) obj).getClass();
                if (gapComposer10.shouldExecute(intValue12 & 1, (intValue12 & 17) != 16)) {
                    Modifier then = modifier.then(SizeKt.FillWholeMaxSize);
                    MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                    long j3 = gapComposer10.compositeKeyHashCode;
                    int i4 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer10.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer10, then);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                    gapComposer10.startReusableNode();
                    if (gapComposer10.inserting) {
                        gapComposer10.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer10.useNode();
                    }
                    Updater.m327setimpl(gapComposer10, maybeCachedBoxMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer10, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer10, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer10, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer10, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                    Okio__JvmOkioKt.WikiErrorView(SizeKt.fillMaxWidth(companion, 1.0f), ((ArticlesState.Error) articlesState).message, new WikiErrorClickEvents(function05, null, null, 14), true, gapComposer10, 24582, 4);
                    gapComposer10.end(true);
                } else {
                    gapComposer10.skipToGroupEnd();
                }
                return unit;
            case 10:
                List list4 = (List) obj5;
                String str5 = (String) obj6;
                Function1 function18 = (Function1) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                GapComposer gapComposer11 = (GapComposer) obj2;
                int intValue13 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((intValue13 & 6) == 0) {
                    intValue13 |= gapComposer11.changed(paddingValues2) ? 4 : 2;
                }
                if (gapComposer11.shouldExecute(intValue13 & 1, (intValue13 & 19) != 18)) {
                    Modifier scroll$default = ImageKt.scroll$default(OffsetKt.m134paddingVpY3zN4$default(OffsetKt.padding(companion, paddingValues2), 24.0f, RecyclerView.DECELERATION_RATE, 2).then(SizeKt.FillWholeMaxSize), ImageKt.rememberScrollState(gapComposer11), true);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer11, 0);
                    long j4 = gapComposer11.compositeKeyHashCode;
                    int i5 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer11.currentCompositionLocalScope();
                    Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer11, scroll$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$14 = ComposeUiNode.Companion.Constructor;
                    gapComposer11.startReusableNode();
                    if (gapComposer11.inserting) {
                        gapComposer11.createNode(layoutNode$Companion$Constructor$14);
                    } else {
                        gapComposer11.useNode();
                    }
                    Updater.m327setimpl(gapComposer11, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer11, currentCompositionLocalScope4, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer11, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer11, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer11, materializeModifier4, ComposeUiNode.Companion.SetModifier);
                    gapComposer11.startReplaceGroup(-1402811711);
                    int i6 = 0;
                    for (Object obj7 : HybridSearchOnboardingActivityKt.onboardingItems) {
                        int i7 = i6 + 1;
                        if (i6 < 0) {
                            Room.throwIndexOverflow();
                            throw null;
                        }
                        TabsBoxKt.OnboardingListItem(OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 12.0f, 1), (OnboardingItem) obj7, gapComposer11, 6, 0);
                        i6 = i7;
                    }
                    gapComposer11.end(false);
                    Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer11.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, ColorKt.RectangleShape);
                    boolean changed10 = gapComposer11.changed(function18);
                    Object rememberedValue11 = gapComposer11.rememberedValue();
                    if (changed10 || rememberedValue11 == neverEqualPolicy) {
                        rememberedValue11 = new HomeScreenKt$$ExternalSyntheticLambda8(function18, 27);
                        gapComposer11.updateRememberedValue(rememberedValue11);
                    }
                    HybridSearchOnboardingActivityKt.SearchExamplesView(m46backgroundbw27NRU, list4, str5, (Function1) rememberedValue11, gapComposer11, 0);
                    gapComposer11.end(true);
                } else {
                    gapComposer11.skipToGroupEnd();
                }
                return unit;
            case 11:
                ArrayList arrayList2 = (ArrayList) obj6;
                Function0 function06 = (Function0) obj5;
                Function0 function07 = (Function0) obj4;
                GapComposer gapComposer12 = (GapComposer) obj2;
                int intValue14 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer12.shouldExecute(intValue14 & 1, (intValue14 & 17) != 16)) {
                    gapComposer12.skipToGroupEnd();
                } else if (arrayList2.isEmpty()) {
                    gapComposer12.startReplaceGroup(-223020260);
                    gapComposer12.end(false);
                } else {
                    gapComposer12.startReplaceGroup(-223294145);
                    NoSearchResultsKt.SemanticSearchResultHeader(OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 16.0f, 8.0f, 16.0f, RecyclerView.DECELERATION_RATE, 8), null, function06, function07, gapComposer12, 0, 2);
                    gapComposer12.end(false);
                }
                return unit;
            default:
                PagerState pagerState = (PagerState) obj6;
                List list5 = (List) obj5;
                Function2 function2 = (Function2) obj4;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                GapComposer gapComposer13 = (GapComposer) obj2;
                int intValue15 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((intValue15 & 6) == 0) {
                    intValue15 |= gapComposer13.changed(paddingValues3) ? 4 : 2;
                }
                if (gapComposer13.shouldExecute(1 & intValue15, (intValue15 & 19) != 18)) {
                    Integer valueOf = Integer.valueOf(pagerState.getCurrentPage());
                    boolean changedInstance = gapComposer13.changedInstance(list5) | gapComposer13.changed(pagerState);
                    Object rememberedValue12 = gapComposer13.rememberedValue();
                    if (changedInstance || rememberedValue12 == neverEqualPolicy) {
                        rememberedValue12 = new TalkTopicsActivity$onCreate$5.AnonymousClass1(list5, pagerState, (Continuation) null);
                        gapComposer13.updateRememberedValue(rememberedValue12);
                    }
                    Updater.LaunchedEffect(gapComposer13, valueOf, (Function2) rememberedValue12);
                    DpKt.m696HorizontalPager8jOkeI(pagerState, null, new PaddingValuesImpl(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE), null, 0, Alignment.Companion.Top, null, false, null, null, null, Expect_jvmKt.rememberComposableLambda(1077070309, new RandomScreenKt$$ExternalSyntheticLambda5(paddingValues3, list5, function2, r13), gapComposer13), gapComposer13, 1573248, 16314);
                } else {
                    gapComposer13.skipToGroupEnd();
                }
                return unit;
        }
    }

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda2(List list, String str, Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$1 = list;
        this.f$0 = str;
        this.f$2 = function1;
    }
}
