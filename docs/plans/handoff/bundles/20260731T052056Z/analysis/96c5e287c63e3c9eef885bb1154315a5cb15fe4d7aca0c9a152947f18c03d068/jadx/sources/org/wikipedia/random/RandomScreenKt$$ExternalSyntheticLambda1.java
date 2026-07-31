package org.wikipedia.random;

import android.content.Context;
import android.net.Uri;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.recyclerview.widget.RecyclerView;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import j$.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okio.Options;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.activitytab.ActivityTabOnboardingActivityKt;
import org.wikipedia.activitytab.ActivityTabViewModel;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.compose.components.InlinePosition;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.news.NewsModuleKt$$ExternalSyntheticLambda1;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.feed.personalization.interest.InterestSelectionScreenKt;
import org.wikipedia.feed.wikigames.OnThisDayCardGameState;
import org.wikipedia.language.addlanguages.AddLanguagesListScreenKt$$ExternalSyntheticLambda3;
import org.wikipedia.page.PageTitle;
import org.wikipedia.search.NoSearchResultsKt;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda7;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt;
import org.wikipedia.util.TabUtil;
import org.wikipedia.util.UiState;
import org.wikipedia.watchlist.WatchlistExpiry;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeState;
import org.wikipedia.yearinreview.YearInReviewDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RandomScreenKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda1(Modifier modifier, HomePreferenceType homePreferenceType, Function0 function0, Function1 function1, int i) {
        this.$r8$classId = 16;
        this.f$0 = modifier;
        this.f$3 = homePreferenceType;
        this.f$1 = function0;
        this.f$2 = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        int i2 = 7;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        Object obj5 = this.f$3;
        Object obj6 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                RandomScreenKt.RandomScreen((RandomViewModel) obj6, (Function0) obj4, (Function1) obj3, (Function1) obj5, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 1:
                Modifier modifier = (Modifier) obj6;
                MutableState mutableState = (MutableState) obj4;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj3;
                BasicTextContextMenuProvider basicTextContextMenuProvider = (BasicTextContextMenuProvider) obj5;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Object rememberedValue = gapComposer.rememberedValue();
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
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new ForYouCardKt$$ExternalSyntheticLambda2(mutableState, 9);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    basicTextContextMenuProvider.ContextMenu((Function0) rememberedValue2, gapComposer, 6);
                    gapComposer.end(true);
                    break;
                }
            case 2:
                ((Integer) obj2).getClass();
                ActivityTabOnboardingActivityKt.OnboardingScreen((Modifier) obj6, (List) obj3, (Function0) obj4, (Function0) obj5, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                ImpactModuleKt.ImpactModule((Modifier) obj6, (UiState) obj3, (Function0) obj4, (WikiErrorClickEvents) obj5, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                ImpactModuleKt.ArticleSavedThisMonthCard((Modifier) obj6, (ActivityTabViewModel.ReadingHistory) obj3, (LocalDate) obj5, (Function0) obj4, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                TabsBoxKt.TextWithInlineElement((String) obj6, (InlinePosition) obj4, (Placeholder) obj3, (TextStyle) obj5, (GapComposer) obj, Updater.updateChangedFlags(24625));
                break;
            case 6:
                Density density = (Density) obj6;
                String str = (String) obj;
                IntOffset intOffset = (IntOffset) obj2;
                str.getClass();
                ((MutableState) obj5).setValue(new DpOffset((Float.floatToRawIntBits(density.mo84toDpu2uoSUM((int) (intOffset.packedValue >> 32))) << 32) | (Float.floatToRawIntBits(density.mo84toDpu2uoSUM((int) (intOffset.packedValue & 4294967295L))) & 4294967295L)));
                PageTitle.Companion companion2 = PageTitle.Companion;
                Uri parse = Uri.parse(str);
                parse.getClass();
                companion2.getClass();
                PageTitle titleForUri = PageTitle.Companion.titleForUri(parse, (WikiSite) obj4);
                ((Function1) obj3).invoke(new PageSummary(titleForUri.getDisplayText(), titleForUri.getPrefixedText(), titleForUri.description, titleForUri.extract, titleForUri.thumbUrl, titleForUri.wikiSite.languageCode));
                break;
            case 7:
                ((Integer) obj2).getClass();
                InterestSelectionScreenKt.TopicFilterChipRow((ArrayList) obj6, (Modifier) obj4, (String) obj5, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 8:
                OnThisDayCardGameState.Preview preview = (OnThisDayCardGameState.Preview) obj6;
                String str2 = (String) obj3;
                Function0 function0 = (Function0) obj4;
                Context context = (Context) obj5;
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Modifier then = OffsetKt.m134paddingVpY3zN4$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, 1).then(SizeKt.FillWholeMaxSize);
                    Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 0);
                    long j2 = gapComposer2.compositeKeyHashCode;
                    int i4 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, then);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i4);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    Modifier weight$default = Animation.CC.weight$default(companion, 1.0f);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 0);
                    long j3 = gapComposer2.compositeKeyHashCode;
                    int i5 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, weight$default);
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, 2);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(12.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer2, 54);
                    long j4 = gapComposer2.compositeKeyHashCode;
                    int i6 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default);
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i6, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer2, materializeModifier4, composeUiNode$Companion$SetModifier$14);
                    Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(companion, 24.0f);
                    Painter painterResource = UnsignedKt.painterResource(R.drawable.ic_events_24dp, 0, gapComposer2);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    IconKt.m286Iconww6aTOc(painterResource, null, m145size3ABfNKs, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, gapComposer2, 440, 0);
                    TextKt.m308TextNvy7gAk(str2, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).titleMedium, 0L, 0L, FontWeight.SemiBold, null, ContextsKt.getSp(0.15d), 0L, null, 16777083), gapComposer2, 0, 0, 131066);
                    gapComposer2.end(true);
                    Options.Companion.OnThisDayGameFirstEventView(Animation.CC.weight$default(companion, 1.0f), preview.event1, gapComposer2, 0);
                    CardKt.m266HorizontalDivider9IZ8Weo(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).borderColor, gapComposer2, 6, 2);
                    Options.Companion.OnThisDayGameFirstEventView(Animation.CC.weight$default(companion, 1.0f), preview.event2, gapComposer2, 0);
                    gapComposer2.end(true);
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(OffsetKt.m134paddingVpY3zN4$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, 2), 1.0f);
                    MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    long j5 = gapComposer2.compositeKeyHashCode;
                    int i7 = (int) (j5 ^ (j5 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer2, fillMaxWidth);
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i7, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer2, materializeModifier5, composeUiNode$Companion$SetModifier$14);
                    Modifier align = BoxScopeInstance.INSTANCE.align(companion, Alignment.Companion.CenterEnd);
                    PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                    CardKt.FilledTonalButton(function0, align, false, null, ButtonDefaults.m261filledTonalButtonColorsro_MJ88(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).backgroundColor, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, gapComposer2), null, null, Expect_jvmKt.rememberComposableLambda(696113903, new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(15, context, preview), gapComposer2), gapComposer2, 805306368, 492);
                    gapComposer2.end(true);
                    gapComposer2.end(true);
                    break;
                }
            case 9:
                ((Integer) obj2).getClass();
                TabUtil.LangLinksItemView((Modifier) obj6, (String) obj4, (String) obj3, (String) obj5, (GapComposer) obj, Updater.updateChangedFlags(7));
                break;
            case 10:
                Function1 function1 = (Function1) obj3;
                Function1 function12 = (Function1) obj5;
                Function0 function02 = (Function0) obj4;
                MutableState mutableState2 = (MutableState) obj6;
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    String stringResource = UtilsKt.stringResource(R.string.languages_list_activity_title, gapComposer3);
                    String stringResource2 = UtilsKt.stringResource(R.string.search_hint_search_languages, gapComposer3);
                    String str3 = (String) mutableState2.getValue();
                    boolean changed = gapComposer3.changed(function1) | gapComposer3.changed(function12);
                    Object rememberedValue3 = gapComposer3.rememberedValue();
                    if (changed || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new AddLanguagesListScreenKt$$ExternalSyntheticLambda3(function1, function12, mutableState2, 0);
                        gapComposer3.updateRememberedValue(rememberedValue3);
                    }
                    TabsBoxKt.WikiTopAppBarWithSearch(stringResource, stringResource2, str3, (Function1) rememberedValue3, function02, gapComposer3, 0);
                    break;
                }
            case 11:
                ArrayList arrayList = (ArrayList) obj6;
                Function1 function13 = (Function1) obj3;
                Function0 function03 = (Function0) obj4;
                String str4 = (String) obj5;
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(ImageKt.m46backgroundbw27NRU(ClipKt.clip(companion, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(28.0f)), ((WikipediaColor) gapComposer4.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, ColorKt.RectangleShape), 16.0f, 8.0f);
                    Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
                    boolean changedInstance = gapComposer4.changedInstance(arrayList) | gapComposer4.changed(function13) | gapComposer4.changed(function03) | gapComposer4.changed(str4);
                    Object rememberedValue4 = gapComposer4.rememberedValue();
                    if (changedInstance || rememberedValue4 == neverEqualPolicy) {
                        AboutActivityKt$$ExternalSyntheticLambda7 aboutActivityKt$$ExternalSyntheticLambda7 = new AboutActivityKt$$ExternalSyntheticLambda7(arrayList, function13, (Object) function03, str4, 12);
                        gapComposer4.updateRememberedValue(aboutActivityKt$$ExternalSyntheticLambda7);
                        rememberedValue4 = aboutActivityKt$$ExternalSyntheticLambda7;
                    }
                    ExceptionsKt.LazyColumn(m133paddingVpY3zN4, null, null, arrangement$SpacedAligned, null, null, false, null, (Function1) rememberedValue4, gapComposer4, 24576, 494);
                    break;
                }
            case 12:
                ((Integer) obj2).getClass();
                NoSearchResultsKt.NoSearchResults((List) obj6, (Function1) obj3, (Constants.InvokeSource) obj4, (Modifier) obj5, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case IMAGE_VALUE:
                ((Integer) obj2).getClass();
                PrefsIoUtil.LinkTextWithHeader((Modifier) obj6, (String) obj4, (String) obj3, (TextLinkStyles) obj5, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ((Integer) obj2).getClass();
                PrefsIoUtil.AboutScreenContent((Modifier) obj6, (String) obj4, (List) obj3, (SnackbarHostState) obj5, (GapComposer) obj, Updater.updateChangedFlags(3073));
                break;
            case 15:
                ((Integer) obj2).getClass();
                ReadingChallengePlaygroundDialogKt.ReadingChallengePlayground((Modifier) obj6, (ReadingChallengeState) obj3, (Function0) obj4, (Function0) obj5, (GapComposer) obj, Updater.updateChangedFlags(7));
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                ((Integer) obj2).getClass();
                Jsoup.HomeFeedDefaultViewScreen((Modifier) obj6, (HomePreferenceType) obj5, (Function0) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                ((Integer) obj2).getClass();
                Options.Companion.WatchlistExpiryDialogView((Modifier) obj6, (List) obj4, (WatchlistExpiry) obj5, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(385));
                break;
            default:
                List list = (List) obj6;
                PagerState pagerState = (PagerState) obj5;
                Function0 function04 = (Function0) obj4;
                Function1 function14 = (Function1) obj3;
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    float f = TopAppBarDefaults.TopAppBarExpandedHeight;
                    AppBarKt.m257TopAppBarGHTll3U(YearInReviewDialog.f82lambda$1400472173, null, Expect_jvmKt.rememberComposableLambda(-1061969003, new RandomScreenKt$$ExternalSyntheticLambda18(list, pagerState, function04, 26), gapComposer5), Expect_jvmKt.rememberComposableLambda(-1986270658, new NewsModuleKt$$ExternalSyntheticLambda1(list, pagerState, function14), gapComposer5), RecyclerView.DECELERATION_RATE, null, TopAppBarDefaults.m311topAppBarColors5tl4gsc(((WikipediaColor) gapComposer5.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, 0L, gapComposer5, 62), null, gapComposer5, 3462, 178);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda1(Modifier modifier, ActivityTabViewModel.ReadingHistory readingHistory, LocalDate localDate, Function0 function0, int i) {
        this.$r8$classId = 4;
        this.f$0 = modifier;
        this.f$2 = readingHistory;
        this.f$3 = localDate;
        this.f$1 = function0;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda1(int i, int i2, Object obj, Object obj2, Object obj3, Object obj4, boolean z) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3, Object obj4, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$2 = obj2;
        this.f$1 = obj3;
        this.f$3 = obj4;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3, Function1 function1, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$3 = obj3;
        this.f$2 = function1;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda1(Object obj, Object obj2, Function function, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = function;
        this.f$3 = obj3;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda1(Object obj, Object obj2, Function0 function0, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$2 = obj2;
        this.f$1 = function0;
        this.f$3 = obj3;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda1(List list, DefaultPagerState defaultPagerState, Function0 function0, Function1 function1) {
        this.$r8$classId = 18;
        this.f$0 = list;
        this.f$3 = defaultPagerState;
        this.f$1 = function0;
        this.f$2 = function1;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda1(Function1 function1, Function1 function12, Function0 function0, MutableState mutableState) {
        this.$r8$classId = 10;
        this.f$2 = function1;
        this.f$3 = function12;
        this.f$1 = function0;
        this.f$0 = mutableState;
    }
}
