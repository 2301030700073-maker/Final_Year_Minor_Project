package org.wikipedia.random;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerState$requestScrollToPage$1;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.painter.BrushPainter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.fragment.app.Fragment;
import androidx.glance.action.ActionParameters$Pair;
import androidx.glance.appwidget.action.RunCallbackAction;
import androidx.glance.layout.HeightModifier;
import androidx.glance.unit.Dimension;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.InvalidationTracker$implementation$1;
import androidx.work.Operation$State;
import coil3.compose.AsyncImageKt;
import coil3.request.ImageRequest;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import j$.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import okhttp3.Cache;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okio.ByteString;
import okio.Okio__JvmOkioKt;
import okio.Okio__OkioKt;
import okio.Options;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda47;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda5;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda27;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import org.wikipedia.feed.HomeViewModel$loadCommunityContent$1;
import org.wikipedia.feed.news.NewsItem;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceContent;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceScreenKt;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.feed.wikigames.OnThisDayGameAction;
import org.wikipedia.games.GamesHubFragment;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.games.onthisday.OnThisDayGameActivity;
import org.wikipedia.games.onthisday.OnThisDayGameProvider;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.random.RandomViewModel$loadMore$2;
import org.wikipedia.readinglist.ReadingListsFragment;
import org.wikipedia.readinglist.database.RecommendedPage;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSource;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;
import org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGround;
import org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGround$$ExternalSyntheticLambda0;
import org.wikipedia.settings.dev.playground.ReadingChallengePlayGroundDialog;
import org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt;
import org.wikipedia.settings.homefeed.FeedConfigurationItem;
import org.wikipedia.settings.homefeed.ModulesViewModel;
import org.wikipedia.talk.TalkReplyViewModel$loadTemplates$2;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.DeviceUtil;
import org.wikipedia.util.UiState;
import org.wikipedia.util.UriUtil;
import org.wikipedia.widgets.readingchallenge.ChallengeRewardAction;
import org.wikipedia.widgets.readingchallenge.RandomArticleWidgetAction;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeInstallWidgetDialog;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeOnboardingActivity;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository;
import org.wikipedia.widgets.readingchallenge.StreakProgressBarKt;
import org.wikipedia.widgets.readingchallenge.WidgetColors;
import org.wikipedia.widgets.readingchallenge.WidgetCombination;
import org.wikipedia.wiktionary.WiktionaryViewModel;
import org.wikipedia.yearinreview.YearInReviewActivity;
import org.wikipedia.yearinreview.YearInReviewCaptureRequest;
import org.wikipedia.yearinreview.YearInReviewDialog;
import org.wikipedia.yearinreview.YearInReviewModel;
import org.wikipedia.yearinreview.YearInReviewScreenData;
import org.wikipedia.yearinreview.YearInReviewSurveyState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RandomActivity$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ RandomActivity$$ExternalSyntheticLambda1(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v75, types: [java.lang.Object, org.wikipedia.widgets.readingchallenge.ReadingChallengeOnboardingActivity] */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25, types: [int] */
    /* JADX WARN: Type inference failed for: r3v86 */
    /* JADX WARN: Type inference failed for: r7v34, types: [androidx.compose.runtime.GapComposer] */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ?? r3;
        boolean z;
        long j;
        String string;
        int i;
        int i2 = this.$r8$classId;
        int i3 = 11;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Continuation continuation = null;
        final int i4 = 2;
        final int i5 = 3;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        final int i6 = 1;
        switch (i2) {
            case 0:
                RandomActivity randomActivity = (RandomActivity) obj4;
                MutableState mutableState = (MutableState) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i7 = RandomActivity.$r8$clinit;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    RandomViewModel randomViewModel = (RandomViewModel) randomActivity.viewModel$delegate.getValue();
                    boolean changedInstance = gapComposer.changedInstance(randomActivity);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new WikiGames$$ExternalSyntheticLambda0(18, randomActivity);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changedInstance2 = gapComposer.changedInstance(randomActivity);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        InvalidationTracker$implementation$1 invalidationTracker$implementation$1 = new InvalidationTracker$implementation$1(1, randomActivity, RandomActivity.class, "openArticle", "openArticle(Lorg/wikipedia/page/PageTitle;)V", 0, 6);
                        gapComposer.updateRememberedValue(invalidationTracker$implementation$1);
                        rememberedValue2 = invalidationTracker$implementation$1;
                    }
                    Function1 function1 = (Function1) ((KFunction) rememberedValue2);
                    boolean changedInstance3 = gapComposer.changedInstance(randomActivity);
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    if (changedInstance3 || rememberedValue3 == neverEqualPolicy) {
                        InvalidationTracker$implementation$1 invalidationTracker$implementation$12 = new InvalidationTracker$implementation$1(1, randomActivity, RandomActivity.class, "onSaveClick", "onSaveClick(Lorg/wikipedia/page/PageTitle;)V", 0, 7);
                        gapComposer.updateRememberedValue(invalidationTracker$implementation$12);
                        rememberedValue3 = invalidationTracker$implementation$12;
                    }
                    RandomScreenKt.RandomScreen(randomViewModel, function0, function1, (Function1) ((KFunction) rememberedValue3), gapComposer, 0);
                    if (((Boolean) mutableState.getValue()).booleanValue()) {
                        gapComposer.startReplaceGroup(-1661199592);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(-1662224018);
                        Object rememberedValue4 = gapComposer.rememberedValue();
                        if (rememberedValue4 == neverEqualPolicy) {
                            rememberedValue4 = new ForYouCardKt$$ExternalSyntheticLambda2(mutableState, 28);
                            gapComposer.updateRememberedValue(rememberedValue4);
                        }
                        Function0 function02 = (Function0) rememberedValue4;
                        TabsBoxKt.m905WikipediaAlertDialogsK9R1Co(null, UtilsKt.stringResource(R.string.randomizer_shake_prompt_title, gapComposer), SizeKt.fillMaxWidth(companion, 1.0f), 0, UtilsKt.stringResource(R.string.randomizer_shake_prompt_message, gapComposer), null, 0, RandomScreenKt.f51lambda$577873682, UtilsKt.stringResource(R.string.onboarding_got_it, gapComposer), 0L, null, 0L, function02, function02, null, gapComposer, 12583296, 3456, 20073);
                        gapComposer.end(false);
                    }
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                HttpUrl.Companion.NewsItemContent((NewsItem) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 2:
                HomePreferenceContent homePreferenceContent = (HomePreferenceContent) obj4;
                HomePreferenceType homePreferenceType = (HomePreferenceType) obj3;
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    return unit;
                }
                Modifier fillMaxHeight = SizeKt.fillMaxHeight(companion, 1.0f);
                Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
                BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 0);
                long j2 = gapComposer2.compositeKeyHashCode;
                int i8 = (int) (j2 ^ (j2 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, fillMaxHeight);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                Integer valueOf = Integer.valueOf(i8);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
                Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(companion, 108.0f);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                long j3 = gapComposer2.compositeKeyHashCode;
                int i9 = (int) (j3 ^ (j3 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m140height3ABfNKs);
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i9, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                Context context = (Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext);
                String str = homePreferenceContent.imageUrl;
                String str2 = homePreferenceContent.title;
                String str3 = homePreferenceContent.tag;
                Boolean bool = Boolean.TRUE;
                Boolean bool2 = Boolean.FALSE;
                context.getClass();
                ImageRequest build = Okio__OkioKt._implementation != null ? ByteString.Companion.getRequestBuilder(context, str, bool, bool2, null, null).build() : null;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                AsyncImageKt.m774AsyncImagex1rPTaM(build, null, SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 108.0f), new BrushPainter(new SolidColor(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).borderColor)), new BrushPainter(new SolidColor(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).borderColor)), null, null, ContentScale.Companion.Crop, gapComposer2, 37296, 6, 31712);
                if (str3 == null || str3.length() == 0) {
                    r3 = 0;
                    gapComposer2.startReplaceGroup(2114028578);
                    gapComposer2.end(false);
                } else {
                    gapComposer2.startReplaceGroup(2113326490);
                    Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(BoxScopeInstance.INSTANCE.align(companion, Alignment.Companion.BottomStart), 8.0f);
                    int i10 = HomePreferenceScreenKt.WhenMappings.$EnumSwitchMapping$0[homePreferenceType.ordinal()];
                    if (i10 == 1) {
                        z = false;
                        gapComposer2.startReplaceGroup(2007845040);
                        j = ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor;
                        gapComposer2.end(false);
                    } else {
                        if (i10 != 2) {
                            throw Modifier.CC.m(gapComposer2, 2007841522, false);
                        }
                        gapComposer2.startReplaceGroup(2007848556);
                        j = ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).successColor;
                        z = false;
                        gapComposer2.end(false);
                    }
                    HomePreferenceScreenKt.ArticleCardTag(z ? 1 : 0, gapComposer2, OffsetKt.m133paddingVpY3zN4(ImageKt.m46backgroundbw27NRU(m132padding3ABfNKs, j, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f)), 12.0f, 4.0f), str3);
                    gapComposer2.end(z);
                    r3 = z;
                }
                gapComposer2.end(true);
                Modifier weight$default = Animation.CC.weight$default(OffsetKt.m132padding3ABfNKs(companion, 16.0f), 1.0f);
                ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, r3);
                long j4 = gapComposer2.compositeKeyHashCode;
                int i11 = (int) (j4 ^ (j4 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, weight$default);
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m327setimpl(gapComposer2, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i11, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                if (str2 == null || str2.length() == 0) {
                    gapComposer2.startReplaceGroup(1876352306);
                    gapComposer2.end(false);
                } else {
                    gapComposer2.startReplaceGroup(1876004827);
                    TabsBoxKt.m897HtmlTextKiACRJU(homePreferenceContent.title, null, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyMedium, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, 2, 0, 0L, null, null, 0, gapComposer2, 196608, 4038);
                    gapComposer2.end(false);
                }
                String str4 = homePreferenceContent.description;
                if (str4 == null || str4.length() == 0) {
                    gapComposer2.startReplaceGroup(1876828900);
                    OffsetKt.Spacer(gapComposer2, Animation.CC.weight$default(companion, 1.0f));
                    gapComposer2.end(false);
                } else {
                    gapComposer2.startReplaceGroup(1876424598);
                    TabsBoxKt.m897HtmlTextKiACRJU(homePreferenceContent.description, null, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyMedium, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).secondaryColor, (str2 == null || str2.length() == 0) ? Integer.MAX_VALUE : 3, 2, 0L, null, null, 0, gapComposer2, 1572864, 3974);
                    gapComposer2.end(false);
                }
                gapComposer2.end(true);
                gapComposer2.end(true);
                return unit;
            case 3:
                ((Integer) obj2).getClass();
                Options.Companion.OnThisDayGameFirstEventView((Modifier) obj4, (OnThisDay.Event) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 4:
                GamesHubFragment gamesHubFragment = (GamesHubFragment) obj4;
                ComposeView composeView = (ComposeView) obj3;
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    AppCompatActivity requireActivity = gamesHubFragment.requireActivity();
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-490205383, new FeedComponentsKt$$ExternalSyntheticLambda5(gamesHubFragment, requireActivity, composeView, ViewSizeResolver$CC.m785m(), ArcSplineKt.rememberInfiniteTransition(null, gapComposer3, 1), 8), gapComposer3), gapComposer3, 48, 1);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 5:
                GamesHubFragment gamesHubFragment2 = (GamesHubFragment) obj4;
                LocalDate localDate = (LocalDate) obj;
                OnThisDayGameAction onThisDayGameAction = (OnThisDayGameAction) obj2;
                localDate.getClass();
                onThisDayGameAction.getClass();
                Fragment.AnonymousClass10 anonymousClass10 = gamesHubFragment2.launchOnThisDayGameActivity;
                int i12 = OnThisDayGameActivity.$r8$clinit;
                Constants.InvokeSource invokeSource = Constants.InvokeSource.GAMES_HUB;
                WikiSite.Companion companion2 = WikiSite.Companion;
                String str5 = gamesHubFragment2.getViewModel().selectedLanguage;
                companion2.getClass();
                anonymousClass10.launch(OnThisDayGameProvider.newIntent((AppCompatActivity) obj3, invokeSource, WikiSite.Companion.forLanguageCode(str5), localDate, onThisDayGameAction.equals(OnThisDayGameAction.ReviewResults.INSTANCE) ? 1 : 0), null);
                return unit;
            case 6:
                ReadingListsFragment readingListsFragment = (ReadingListsFragment) obj4;
                List list = (List) obj3;
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    Prefs prefs = Prefs.INSTANCE;
                    boolean changed = gapComposer4.changed(Prefs.getRecommendedReadingListArticlesNumber()) | gapComposer4.changed(Prefs.getRecommendedReadingListSource().ordinal());
                    Object rememberedValue5 = gapComposer4.rememberedValue();
                    if (changed || rememberedValue5 == neverEqualPolicy) {
                        ArrayList arrayList = new ArrayList();
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            String str6 = ((RecommendedPage) it.next()).thumbUrl;
                            if (str6 != null) {
                                arrayList.add(str6);
                            }
                        }
                        rememberedValue5 = Updater.mutableStateOf$default(arrayList);
                        gapComposer4.updateRememberedValue(rememberedValue5);
                    }
                    MutableState mutableState2 = (MutableState) rememberedValue5;
                    Object rememberedValue6 = gapComposer4.rememberedValue();
                    if (rememberedValue6 == neverEqualPolicy) {
                        Prefs prefs2 = Prefs.INSTANCE;
                        rememberedValue6 = Updater.mutableStateOf$default(Boolean.valueOf(Prefs.isNewRecommendedReadingListGenerated()));
                        gapComposer4.updateRememberedValue(rememberedValue6);
                    }
                    MutableState mutableState3 = (MutableState) rememberedValue6;
                    boolean isLoggedIn = Headers.Companion.isLoggedIn();
                    if (isLoggedIn) {
                        string = readingListsFragment.getString(R.string.recommended_reading_list_page_subtitle_made_for, Animation.CC.m("<b>", Headers.Companion.getUserName(), "</b>"));
                    } else {
                        if (isLoggedIn) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                            return null;
                        }
                        string = readingListsFragment.getString(R.string.recommended_reading_list_page_logged_out_subtitle_made_for_you);
                    }
                    String str7 = string;
                    str7.getClass();
                    Object rememberedValue7 = gapComposer4.rememberedValue();
                    if (rememberedValue7 == neverEqualPolicy) {
                        rememberedValue7 = new SyntaxHighlighter.AnonymousClass2(i3, mutableState3, continuation);
                        gapComposer4.updateRememberedValue(rememberedValue7);
                    }
                    Updater.LaunchedEffect(gapComposer4, unit, (Function2) rememberedValue7);
                    Prefs prefs3 = Prefs.INSTANCE;
                    int i13 = ReadingListsFragment.WhenMappings.$EnumSwitchMapping$0[Prefs.getRecommendedReadingListUpdateFrequency().ordinal()];
                    if (i13 == 1) {
                        i = R.string.recommended_reading_list_page_description_daily;
                    } else if (i13 == 2) {
                        i = R.string.recommended_reading_list_page_description_weekly;
                    } else {
                        if (i13 != 3) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                            return null;
                        }
                        i = R.string.recommended_reading_list_page_description_monthly;
                    }
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(1741479449, new HomeScreenKt$$ExternalSyntheticLambda27(readingListsFragment, str7, i, mutableState2, mutableState3), gapComposer4), gapComposer4, 48, 1);
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 7:
                ((Integer) obj2).getClass();
                RecommendedReadingListSourceScreenKt.SourceView((RecommendedReadingListSource) obj4, (Modifier) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 8:
                State state = (State) obj4;
                final CategoryDeveloperPlayGround categoryDeveloperPlayGround = (CategoryDeveloperPlayGround) obj3;
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                int i14 = CategoryDeveloperPlayGround.$r8$clinit;
                if (gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    Modifier m132padding3ABfNKs2 = OffsetKt.m132padding3ABfNKs(SizeKt.FillWholeMaxSize, 16.0f);
                    UiState uiState = (UiState) state.getValue();
                    boolean changedInstance4 = gapComposer5.changedInstance(categoryDeveloperPlayGround);
                    Object rememberedValue8 = gapComposer5.rememberedValue();
                    if (changedInstance4 || rememberedValue8 == neverEqualPolicy) {
                        rememberedValue8 = new CommunityContentTabKt$$ExternalSyntheticLambda47(13, categoryDeveloperPlayGround);
                        gapComposer5.updateRememberedValue(rememberedValue8);
                    }
                    Function3 function3 = (Function3) rememberedValue8;
                    boolean changedInstance5 = gapComposer5.changedInstance(categoryDeveloperPlayGround);
                    Object rememberedValue9 = gapComposer5.rememberedValue();
                    if (changedInstance5 || rememberedValue9 == neverEqualPolicy) {
                        rememberedValue9 = new CategoryDeveloperPlayGround$$ExternalSyntheticLambda0(categoryDeveloperPlayGround, i6);
                        gapComposer5.updateRememberedValue(rememberedValue9);
                    }
                    Function2 function2 = (Function2) rememberedValue9;
                    boolean changedInstance6 = gapComposer5.changedInstance(categoryDeveloperPlayGround);
                    Object rememberedValue10 = gapComposer5.rememberedValue();
                    if (changedInstance6 || rememberedValue10 == neverEqualPolicy) {
                        final int i15 = false ? 1 : 0;
                        rememberedValue10 = new Function1() { // from class: org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGround$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj5) {
                                int i16 = i15;
                                CategoryDeveloperPlayGround categoryDeveloperPlayGround2 = categoryDeveloperPlayGround;
                                Unit unit2 = Unit.INSTANCE;
                                switch (i16) {
                                    case 0:
                                        String str8 = (String) obj5;
                                        int i17 = CategoryDeveloperPlayGround.$r8$clinit;
                                        str8.getClass();
                                        if (categoryDeveloperPlayGround2.validateInput(str8.length() == 0)) {
                                            CategoryDeveloperPlayGroundViewModel viewModel = categoryDeveloperPlayGround2.getViewModel();
                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 14), null, new RandomViewModel$loadMore$2(Integer.parseInt(str8), viewModel, (Continuation) null), 2);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        String str9 = (String) obj5;
                                        int i18 = CategoryDeveloperPlayGround.$r8$clinit;
                                        str9.getClass();
                                        boolean z2 = str9.length() == 0;
                                        CategoryDeveloperPlayGround categoryDeveloperPlayGround3 = categoryDeveloperPlayGround;
                                        if (categoryDeveloperPlayGround3.validateInput(z2)) {
                                            CategoryDeveloperPlayGroundViewModel viewModel2 = categoryDeveloperPlayGround3.getViewModel();
                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 13), null, new HomeViewModel$loadCommunityContent$1(Integer.parseInt(str9), viewModel2, categoryDeveloperPlayGround3, null, 3), 2);
                                            break;
                                        }
                                        break;
                                    default:
                                        Option option = (Option) obj5;
                                        int i19 = CategoryDeveloperPlayGround.$r8$clinit;
                                        option.getClass();
                                        int i20 = CategoryDeveloperPlayGround.WhenMappings.$EnumSwitchMapping$0[option.ordinal()];
                                        if (i20 == 1) {
                                            categoryDeveloperPlayGround2.getViewModel().loadCategories();
                                        } else if (i20 != 2) {
                                            if (i20 != 3) {
                                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                                break;
                                            } else {
                                                categoryDeveloperPlayGround2.getViewModel().loadCategories();
                                            }
                                        }
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer5.updateRememberedValue(rememberedValue10);
                    }
                    Function1 function12 = (Function1) rememberedValue10;
                    boolean changedInstance7 = gapComposer5.changedInstance(categoryDeveloperPlayGround);
                    Object rememberedValue11 = gapComposer5.rememberedValue();
                    if (changedInstance7 || rememberedValue11 == neverEqualPolicy) {
                        final int i16 = false ? 1 : 0;
                        rememberedValue11 = new Function0() { // from class: org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGround$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i17 = i16;
                                Unit unit2 = Unit.INSTANCE;
                                CategoryDeveloperPlayGround categoryDeveloperPlayGround2 = categoryDeveloperPlayGround;
                                switch (i17) {
                                    case 0:
                                        int i18 = CategoryDeveloperPlayGround.$r8$clinit;
                                        CategoryDeveloperPlayGroundViewModel viewModel = categoryDeveloperPlayGround2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 12), null, new TalkReplyViewModel$loadTemplates$2(viewModel, categoryDeveloperPlayGround2, null, 2), 2);
                                        break;
                                    default:
                                        int i19 = CategoryDeveloperPlayGround.$r8$clinit;
                                        categoryDeveloperPlayGround2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer5.updateRememberedValue(rememberedValue11);
                    }
                    Function0 function03 = (Function0) rememberedValue11;
                    boolean changedInstance8 = gapComposer5.changedInstance(categoryDeveloperPlayGround);
                    Object rememberedValue12 = gapComposer5.rememberedValue();
                    if (changedInstance8 || rememberedValue12 == neverEqualPolicy) {
                        rememberedValue12 = new Function1() { // from class: org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGround$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj5) {
                                int i162 = i6;
                                CategoryDeveloperPlayGround categoryDeveloperPlayGround2 = categoryDeveloperPlayGround;
                                Unit unit2 = Unit.INSTANCE;
                                switch (i162) {
                                    case 0:
                                        String str8 = (String) obj5;
                                        int i17 = CategoryDeveloperPlayGround.$r8$clinit;
                                        str8.getClass();
                                        if (categoryDeveloperPlayGround2.validateInput(str8.length() == 0)) {
                                            CategoryDeveloperPlayGroundViewModel viewModel = categoryDeveloperPlayGround2.getViewModel();
                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 14), null, new RandomViewModel$loadMore$2(Integer.parseInt(str8), viewModel, (Continuation) null), 2);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        String str9 = (String) obj5;
                                        int i18 = CategoryDeveloperPlayGround.$r8$clinit;
                                        str9.getClass();
                                        boolean z2 = str9.length() == 0;
                                        CategoryDeveloperPlayGround categoryDeveloperPlayGround3 = categoryDeveloperPlayGround;
                                        if (categoryDeveloperPlayGround3.validateInput(z2)) {
                                            CategoryDeveloperPlayGroundViewModel viewModel2 = categoryDeveloperPlayGround3.getViewModel();
                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 13), null, new HomeViewModel$loadCommunityContent$1(Integer.parseInt(str9), viewModel2, categoryDeveloperPlayGround3, null, 3), 2);
                                            break;
                                        }
                                        break;
                                    default:
                                        Option option = (Option) obj5;
                                        int i19 = CategoryDeveloperPlayGround.$r8$clinit;
                                        option.getClass();
                                        int i20 = CategoryDeveloperPlayGround.WhenMappings.$EnumSwitchMapping$0[option.ordinal()];
                                        if (i20 == 1) {
                                            categoryDeveloperPlayGround2.getViewModel().loadCategories();
                                        } else if (i20 != 2) {
                                            if (i20 != 3) {
                                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                                break;
                                            } else {
                                                categoryDeveloperPlayGround2.getViewModel().loadCategories();
                                            }
                                        }
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer5.updateRememberedValue(rememberedValue12);
                    }
                    Function1 function13 = (Function1) rememberedValue12;
                    boolean changedInstance9 = gapComposer5.changedInstance(categoryDeveloperPlayGround);
                    Object rememberedValue13 = gapComposer5.rememberedValue();
                    if (changedInstance9 || rememberedValue13 == neverEqualPolicy) {
                        rememberedValue13 = new Function1() { // from class: org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGround$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj5) {
                                int i162 = i4;
                                CategoryDeveloperPlayGround categoryDeveloperPlayGround2 = categoryDeveloperPlayGround;
                                Unit unit2 = Unit.INSTANCE;
                                switch (i162) {
                                    case 0:
                                        String str8 = (String) obj5;
                                        int i17 = CategoryDeveloperPlayGround.$r8$clinit;
                                        str8.getClass();
                                        if (categoryDeveloperPlayGround2.validateInput(str8.length() == 0)) {
                                            CategoryDeveloperPlayGroundViewModel viewModel = categoryDeveloperPlayGround2.getViewModel();
                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 14), null, new RandomViewModel$loadMore$2(Integer.parseInt(str8), viewModel, (Continuation) null), 2);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        String str9 = (String) obj5;
                                        int i18 = CategoryDeveloperPlayGround.$r8$clinit;
                                        str9.getClass();
                                        boolean z2 = str9.length() == 0;
                                        CategoryDeveloperPlayGround categoryDeveloperPlayGround3 = categoryDeveloperPlayGround;
                                        if (categoryDeveloperPlayGround3.validateInput(z2)) {
                                            CategoryDeveloperPlayGroundViewModel viewModel2 = categoryDeveloperPlayGround3.getViewModel();
                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 13), null, new HomeViewModel$loadCommunityContent$1(Integer.parseInt(str9), viewModel2, categoryDeveloperPlayGround3, null, 3), 2);
                                            break;
                                        }
                                        break;
                                    default:
                                        Option option = (Option) obj5;
                                        int i19 = CategoryDeveloperPlayGround.$r8$clinit;
                                        option.getClass();
                                        int i20 = CategoryDeveloperPlayGround.WhenMappings.$EnumSwitchMapping$0[option.ordinal()];
                                        if (i20 == 1) {
                                            categoryDeveloperPlayGround2.getViewModel().loadCategories();
                                        } else if (i20 != 2) {
                                            if (i20 != 3) {
                                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                                break;
                                            } else {
                                                categoryDeveloperPlayGround2.getViewModel().loadCategories();
                                            }
                                        }
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer5.updateRememberedValue(rememberedValue13);
                    }
                    Function1 function14 = (Function1) rememberedValue13;
                    boolean changedInstance10 = gapComposer5.changedInstance(categoryDeveloperPlayGround);
                    Object rememberedValue14 = gapComposer5.rememberedValue();
                    if (changedInstance10 || rememberedValue14 == neverEqualPolicy) {
                        rememberedValue14 = new Function0() { // from class: org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGround$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i17 = i6;
                                Unit unit2 = Unit.INSTANCE;
                                CategoryDeveloperPlayGround categoryDeveloperPlayGround2 = categoryDeveloperPlayGround;
                                switch (i17) {
                                    case 0:
                                        int i18 = CategoryDeveloperPlayGround.$r8$clinit;
                                        CategoryDeveloperPlayGroundViewModel viewModel = categoryDeveloperPlayGround2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 12), null, new TalkReplyViewModel$loadTemplates$2(viewModel, categoryDeveloperPlayGround2, null, 2), 2);
                                        break;
                                    default:
                                        int i19 = CategoryDeveloperPlayGround.$r8$clinit;
                                        categoryDeveloperPlayGround2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer5.updateRememberedValue(rememberedValue14);
                    }
                    ReadingChallengePlaygroundDialogKt.CategoryDeveloperPlayGroundScreen(m132padding3ABfNKs2, uiState, function3, function2, function12, function03, function13, function14, (Function0) rememberedValue14, gapComposer5, 6);
                } else {
                    gapComposer5.skipToGroupEnd();
                }
                return unit;
            case 9:
                ((Integer) obj2).getClass();
                ReadingChallengePlaygroundDialogKt.SingleEntryView((Function3) obj4, (Modifier) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 10:
                ((Integer) obj2).getClass();
                ReadingChallengePlaygroundDialogKt.RandomBulkEntryView(Updater.updateChangedFlags(1), (GapComposer) obj, (Modifier) obj3, (Function2) obj4);
                return unit;
            case 11:
                ReadingChallengeWidgetRepository readingChallengeWidgetRepository = (ReadingChallengeWidgetRepository) obj4;
                ReadingChallengePlayGroundDialog readingChallengePlayGroundDialog = (ReadingChallengePlayGroundDialog) obj3;
                GapComposer gapComposer6 = (GapComposer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if (gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    Object rememberedValue15 = gapComposer6.rememberedValue();
                    if (rememberedValue15 == neverEqualPolicy) {
                        rememberedValue15 = readingChallengeWidgetRepository.observeState();
                        gapComposer6.updateRememberedValue(rememberedValue15);
                    }
                    Flow flow = (Flow) rememberedValue15;
                    Object rememberedValue16 = gapComposer6.rememberedValue();
                    if (rememberedValue16 == neverEqualPolicy) {
                        rememberedValue16 = Updater.createCompositionCoroutineScope(gapComposer6);
                        gapComposer6.updateRememberedValue(rememberedValue16);
                    }
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(1820714070, new RandomScreenKt$$ExternalSyntheticLambda18(flow, (CoroutineScope) rememberedValue16, readingChallengePlayGroundDialog, 22), gapComposer6), gapComposer6, 48, 1);
                } else {
                    gapComposer6.skipToGroupEnd();
                }
                return unit;
            case 12:
                ((Integer) obj2).getClass();
                Okio__JvmOkioKt.CommunityModulesScreen((ModulesViewModel) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case IMAGE_VALUE:
                ((Integer) obj2).getClass();
                Okio__OkioKt.FeedConfigurationItemView((FeedConfigurationItem) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ReadingChallengeInstallWidgetDialog readingChallengeInstallWidgetDialog = (ReadingChallengeInstallWidgetDialog) obj4;
                Function0 function04 = (Function0) obj3;
                GapComposer gapComposer7 = (GapComposer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                } else if (DeviceUtil.isPinWidgetSupported()) {
                    gapComposer7.startReplaceGroup(-1385569157);
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                    String stringResource = UtilsKt.stringResource(R.string.reading_challenge_install_prompt_add, gapComposer7);
                    String stringResource2 = UtilsKt.stringResource(R.string.reading_challenge_install_prompt_got_it, gapComposer7);
                    boolean changedInstance11 = gapComposer7.changedInstance(readingChallengeInstallWidgetDialog);
                    Object rememberedValue17 = gapComposer7.rememberedValue();
                    if (changedInstance11 || rememberedValue17 == neverEqualPolicy) {
                        rememberedValue17 = new ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2(readingChallengeInstallWidgetDialog, i4);
                        gapComposer7.updateRememberedValue(rememberedValue17);
                    }
                    TabsBoxKt.TwoButtonBottomBar(fillMaxWidth, stringResource, stringResource2, (Function0) rememberedValue17, function04, gapComposer7, 6);
                    gapComposer7.end(false);
                } else {
                    gapComposer7.startReplaceGroup(-1384696972);
                    Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(companion, 1.0f);
                    PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                    CardKt.Button(function04, fillMaxWidth2, false, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer7.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, 0L, gapComposer7, 14), null, null, null, StreakProgressBarKt.f79lambda$697822892, gapComposer7, 805306416, 492);
                    gapComposer7.end(false);
                }
                return unit;
            case 15:
                final ?? r1 = (ReadingChallengeOnboardingActivity) obj4;
                List list2 = (List) obj3;
                ?? r7 = (GapComposer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                int i17 = ReadingChallengeOnboardingActivity.$r8$clinit;
                if (r7.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    Object rememberedValue18 = r7.rememberedValue();
                    Object obj5 = rememberedValue18;
                    if (rememberedValue18 == neverEqualPolicy) {
                        CoroutineScope createCompositionCoroutineScope = Updater.createCompositionCoroutineScope(r7);
                        r7.updateRememberedValue(createCompositionCoroutineScope);
                        obj5 = createCompositionCoroutineScope;
                    }
                    CoroutineScope coroutineScope = (CoroutineScope) obj5;
                    Object rememberedValue19 = r7.rememberedValue();
                    Object obj6 = rememberedValue19;
                    if (rememberedValue19 == neverEqualPolicy) {
                        ParcelableSnapshotMutableState mutableStateOf$default = Updater.mutableStateOf$default(Boolean.FALSE);
                        r7.updateRememberedValue(mutableStateOf$default);
                        obj6 = mutableStateOf$default;
                    }
                    MutableState mutableState4 = (MutableState) obj6;
                    if (((Boolean) mutableState4.getValue()).booleanValue()) {
                        r7.startReplaceGroup(-50160534);
                        String stringResource3 = UtilsKt.stringResource(R.string.reading_challenge_onboarding_prompt_title, r7);
                        String stringResource4 = UtilsKt.stringResource(R.string.reading_challenge_onboarding_prompt_message, r7);
                        String stringResource5 = UtilsKt.stringResource(R.string.reading_challenge_onboarding_prompt_login, r7);
                        String stringResource6 = UtilsKt.stringResource(R.string.reading_challenge_onboarding_prompt_no_thanks, r7);
                        long j5 = ((WikipediaColor) r7.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor;
                        Object rememberedValue20 = r7.rememberedValue();
                        Object obj7 = rememberedValue20;
                        if (rememberedValue20 == neverEqualPolicy) {
                            HybridSearchResultsScreenKt$$ExternalSyntheticLambda32 hybridSearchResultsScreenKt$$ExternalSyntheticLambda32 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda32(mutableState4, i3);
                            r7.updateRememberedValue(hybridSearchResultsScreenKt$$ExternalSyntheticLambda32);
                            obj7 = hybridSearchResultsScreenKt$$ExternalSyntheticLambda32;
                        }
                        Function0 function05 = (Function0) obj7;
                        boolean changedInstance12 = r7.changedInstance(r1);
                        Object rememberedValue21 = r7.rememberedValue();
                        Object obj8 = rememberedValue21;
                        if (changedInstance12 || rememberedValue21 == neverEqualPolicy) {
                            final int i18 = false ? 1 : 0;
                            Function0 function06 = new Function0() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeOnboardingActivity$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i19 = i18;
                                    Unit unit2 = Unit.INSTANCE;
                                    ReadingChallengeOnboardingActivity readingChallengeOnboardingActivity = r1;
                                    switch (i19) {
                                        case 0:
                                            int i20 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                            SVGAndroidRenderer instrument = ContextKt.getInstrument(readingChallengeOnboardingActivity);
                                            if (instrument != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument, "click", "widget_challenge_login", null, "login_join", null, null, 244);
                                            }
                                            Intent putExtra = new Intent(readingChallengeOnboardingActivity, (Class<?>) LoginActivity.class).putExtra("login_request_source", "widget_challenge").putExtra("create_account_first", true);
                                            putExtra.getClass();
                                            readingChallengeOnboardingActivity.startActivity(putExtra);
                                            readingChallengeOnboardingActivity.finish();
                                            break;
                                        case 1:
                                            int i21 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(readingChallengeOnboardingActivity);
                                            if (instrument2 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "click", "widget_challenge_login", null, "no_thanks", null, null, 244);
                                            }
                                            readingChallengeOnboardingActivity.finish();
                                            break;
                                        case 2:
                                            int i22 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                            readingChallengeOnboardingActivity.finish();
                                            break;
                                        default:
                                            int i23 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(readingChallengeOnboardingActivity);
                                            if (instrument3 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "learn_more", null, null, 246);
                                            }
                                            String string2 = readingChallengeOnboardingActivity.getString(R.string.reading_challenge_learn_more);
                                            string2.getClass();
                                            Uri parse = Uri.parse(string2);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(readingChallengeOnboardingActivity, parse);
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            r7.updateRememberedValue(function06);
                            obj8 = function06;
                        }
                        Function0 function07 = (Function0) obj8;
                        boolean changedInstance13 = r7.changedInstance(r1);
                        Object rememberedValue22 = r7.rememberedValue();
                        Object obj9 = rememberedValue22;
                        if (changedInstance13 || rememberedValue22 == neverEqualPolicy) {
                            Function0 function08 = new Function0() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeOnboardingActivity$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i19 = i6;
                                    Unit unit2 = Unit.INSTANCE;
                                    ReadingChallengeOnboardingActivity readingChallengeOnboardingActivity = r1;
                                    switch (i19) {
                                        case 0:
                                            int i20 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                            SVGAndroidRenderer instrument = ContextKt.getInstrument(readingChallengeOnboardingActivity);
                                            if (instrument != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument, "click", "widget_challenge_login", null, "login_join", null, null, 244);
                                            }
                                            Intent putExtra = new Intent(readingChallengeOnboardingActivity, (Class<?>) LoginActivity.class).putExtra("login_request_source", "widget_challenge").putExtra("create_account_first", true);
                                            putExtra.getClass();
                                            readingChallengeOnboardingActivity.startActivity(putExtra);
                                            readingChallengeOnboardingActivity.finish();
                                            break;
                                        case 1:
                                            int i21 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(readingChallengeOnboardingActivity);
                                            if (instrument2 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "click", "widget_challenge_login", null, "no_thanks", null, null, 244);
                                            }
                                            readingChallengeOnboardingActivity.finish();
                                            break;
                                        case 2:
                                            int i22 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                            readingChallengeOnboardingActivity.finish();
                                            break;
                                        default:
                                            int i23 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(readingChallengeOnboardingActivity);
                                            if (instrument3 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "learn_more", null, null, 246);
                                            }
                                            String string2 = readingChallengeOnboardingActivity.getString(R.string.reading_challenge_learn_more);
                                            string2.getClass();
                                            Uri parse = Uri.parse(string2);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(readingChallengeOnboardingActivity, parse);
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            r7.updateRememberedValue(function08);
                            obj9 = function08;
                        }
                        TabsBoxKt.m905WikipediaAlertDialogsK9R1Co(null, stringResource3, null, 0, stringResource4, null, 0, null, stringResource5, 0L, stringResource6, j5, function05, function07, (Function0) obj9, r7, 0, 384, 749);
                        r7.end(false);
                    } else {
                        r7.startReplaceGroup(-48867989);
                        r7.end(false);
                    }
                    FillElement fillElement = SizeKt.FillWholeMaxSize;
                    boolean changedInstance14 = r7.changedInstance(r1);
                    Object rememberedValue23 = r7.rememberedValue();
                    Object obj10 = rememberedValue23;
                    if (changedInstance14 || rememberedValue23 == neverEqualPolicy) {
                        Function0 function09 = new Function0() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeOnboardingActivity$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i19 = i4;
                                Unit unit2 = Unit.INSTANCE;
                                ReadingChallengeOnboardingActivity readingChallengeOnboardingActivity = r1;
                                switch (i19) {
                                    case 0:
                                        int i20 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                        SVGAndroidRenderer instrument = ContextKt.getInstrument(readingChallengeOnboardingActivity);
                                        if (instrument != null) {
                                            SVGAndroidRenderer.submitInteraction$default(instrument, "click", "widget_challenge_login", null, "login_join", null, null, 244);
                                        }
                                        Intent putExtra = new Intent(readingChallengeOnboardingActivity, (Class<?>) LoginActivity.class).putExtra("login_request_source", "widget_challenge").putExtra("create_account_first", true);
                                        putExtra.getClass();
                                        readingChallengeOnboardingActivity.startActivity(putExtra);
                                        readingChallengeOnboardingActivity.finish();
                                        break;
                                    case 1:
                                        int i21 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(readingChallengeOnboardingActivity);
                                        if (instrument2 != null) {
                                            SVGAndroidRenderer.submitInteraction$default(instrument2, "click", "widget_challenge_login", null, "no_thanks", null, null, 244);
                                        }
                                        readingChallengeOnboardingActivity.finish();
                                        break;
                                    case 2:
                                        int i22 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                        readingChallengeOnboardingActivity.finish();
                                        break;
                                    default:
                                        int i23 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                        SVGAndroidRenderer instrument3 = ContextKt.getInstrument(readingChallengeOnboardingActivity);
                                        if (instrument3 != null) {
                                            SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "learn_more", null, null, 246);
                                        }
                                        String string2 = readingChallengeOnboardingActivity.getString(R.string.reading_challenge_learn_more);
                                        string2.getClass();
                                        Uri parse = Uri.parse(string2);
                                        parse.getClass();
                                        UriUtil.visitInExternalBrowser(readingChallengeOnboardingActivity, parse);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        r7.updateRememberedValue(function09);
                        obj10 = function09;
                    }
                    Function0 function010 = (Function0) obj10;
                    boolean changedInstance15 = r7.changedInstance(r1);
                    Object rememberedValue24 = r7.rememberedValue();
                    Object obj11 = rememberedValue24;
                    if (changedInstance15 || rememberedValue24 == neverEqualPolicy) {
                        Function0 function011 = new Function0() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeOnboardingActivity$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i19 = i5;
                                Unit unit2 = Unit.INSTANCE;
                                ReadingChallengeOnboardingActivity readingChallengeOnboardingActivity = r1;
                                switch (i19) {
                                    case 0:
                                        int i20 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                        SVGAndroidRenderer instrument = ContextKt.getInstrument(readingChallengeOnboardingActivity);
                                        if (instrument != null) {
                                            SVGAndroidRenderer.submitInteraction$default(instrument, "click", "widget_challenge_login", null, "login_join", null, null, 244);
                                        }
                                        Intent putExtra = new Intent(readingChallengeOnboardingActivity, (Class<?>) LoginActivity.class).putExtra("login_request_source", "widget_challenge").putExtra("create_account_first", true);
                                        putExtra.getClass();
                                        readingChallengeOnboardingActivity.startActivity(putExtra);
                                        readingChallengeOnboardingActivity.finish();
                                        break;
                                    case 1:
                                        int i21 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(readingChallengeOnboardingActivity);
                                        if (instrument2 != null) {
                                            SVGAndroidRenderer.submitInteraction$default(instrument2, "click", "widget_challenge_login", null, "no_thanks", null, null, 244);
                                        }
                                        readingChallengeOnboardingActivity.finish();
                                        break;
                                    case 2:
                                        int i22 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                        readingChallengeOnboardingActivity.finish();
                                        break;
                                    default:
                                        int i23 = ReadingChallengeOnboardingActivity.$r8$clinit;
                                        SVGAndroidRenderer instrument3 = ContextKt.getInstrument(readingChallengeOnboardingActivity);
                                        if (instrument3 != null) {
                                            SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "learn_more", null, null, 246);
                                        }
                                        String string2 = readingChallengeOnboardingActivity.getString(R.string.reading_challenge_learn_more);
                                        string2.getClass();
                                        Uri parse = Uri.parse(string2);
                                        parse.getClass();
                                        UriUtil.visitInExternalBrowser(readingChallengeOnboardingActivity, parse);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        r7.updateRememberedValue(function011);
                        obj11 = function011;
                    }
                    Function0 function012 = (Function0) obj11;
                    boolean changedInstance16 = r7.changedInstance(r1) | r7.changedInstance(coroutineScope);
                    Object rememberedValue25 = r7.rememberedValue();
                    Object obj12 = rememberedValue25;
                    if (changedInstance16 || rememberedValue25 == neverEqualPolicy) {
                        HomeScreenKt$$ExternalSyntheticLambda29 homeScreenKt$$ExternalSyntheticLambda29 = new HomeScreenKt$$ExternalSyntheticLambda29((Object) r1, coroutineScope, mutableState4, 20);
                        r7.updateRememberedValue(homeScreenKt$$ExternalSyntheticLambda29);
                        obj12 = homeScreenKt$$ExternalSyntheticLambda29;
                    }
                    r1.OnboardingScreen(fillElement, list2, function010, function012, (Function0) obj12, r7, 6);
                } else {
                    r7.skipToGroupEnd();
                }
                return unit;
            case LAZY_VERTICAL_GRID_VALUE:
                String str8 = (String) obj4;
                Context context2 = (Context) obj3;
                GapComposer gapComposer8 = (GapComposer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                if (gapComposer8.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    long sp = ContextsKt.getSp(16);
                    long j6 = WidgetColors.primary;
                    StreakProgressBarKt.m934WidgetBadgeLNF6LQw(str8, sp, R.drawable.ic_flame_24dp, 24.0f, RecyclerView.DECELERATION_RATE, new Color(j6), j6, null, gapComposer8, 1772592, 144);
                    Operation$State.Spacer(new HeightModifier(new Dimension.Dp(8.0f)), gapComposer8, 0);
                    String string2 = context2.getString(R.string.reading_challenge_widget_collect_prize_button);
                    string2.getClass();
                    StreakProgressBarKt.m935WidgetButtonY0xEhic(string2, new RunCallbackAction(ChallengeRewardAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), 0L, 0L, null, null, gapComposer8, 0, 60);
                } else {
                    gapComposer8.skipToGroupEnd();
                }
                return unit;
            case VERTICAL_GRID_ITEM_VALUE:
                Context context3 = (Context) obj4;
                WidgetCombination widgetCombination = (WidgetCombination) obj3;
                GapComposer gapComposer9 = (GapComposer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                if (gapComposer9.shouldExecute(intValue10 & 1, (intValue10 & 3) != 2)) {
                    String string3 = context3.getString(R.string.reading_challenge_widget_random_button);
                    string3.getClass();
                    StreakProgressBarKt.m935WidgetButtonY0xEhic(string3, new RunCallbackAction(RandomArticleWidgetAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), widgetCombination.contentColor, widgetCombination.backgroundColor, null, null, gapComposer9, 0, 48);
                } else {
                    gapComposer9.skipToGroupEnd();
                }
                return unit;
            case RADIO_GROUP_VALUE:
                ((Integer) obj2).getClass();
                Jsoup.WiktionaryDialogScreen((WiktionaryViewModel) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case RADIO_BUTTON_VALUE:
                CoroutineScope coroutineScope2 = (CoroutineScope) obj4;
                YearInReviewActivity yearInReviewActivity = (YearInReviewActivity) obj3;
                PagerState pagerState = (PagerState) obj;
                YearInReviewScreenData yearInReviewScreenData = (YearInReviewScreenData) obj2;
                int i19 = YearInReviewActivity.$r8$clinit;
                pagerState.getClass();
                yearInReviewScreenData.getClass();
                Prefs prefs4 = Prefs.INSTANCE;
                LinkedHashMap linkedHashMap = new LinkedHashMap(Prefs.getYearInReviewModelData());
                YearInReviewModel yearInReviewModel = (YearInReviewModel) linkedHashMap.get(2025);
                if (yearInReviewModel != null) {
                    linkedHashMap.put(2025, YearInReviewModel.copy$default(yearInReviewModel, yearInReviewModel.slideViewedCount + 1, false, 917503));
                    Prefs.setYearInReviewModelData(linkedHashMap);
                }
                AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState, continuation, i5), 3);
                if (yearInReviewScreenData instanceof YearInReviewScreenData.HighlightsScreen) {
                    if (Prefs.getYearInReviewSurveyState() == YearInReviewSurveyState.NOT_TRIGGERED) {
                        Prefs.setYearInReviewSurveyState(YearInReviewSurveyState.SHOULD_SHOW);
                    }
                    yearInReviewActivity.finish();
                }
                return unit;
            case RADIO_ROW_VALUE:
                ((Integer) obj2).getClass();
                YearInReviewDialog.HighlightsContent((Modifier) obj4, (YearInReviewScreenData.HighlightItem) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case RADIO_COLUMN_VALUE:
                ((Integer) obj2).getClass();
                YearInReviewDialog.ShareHighlightsScreenCapture((YearInReviewScreenData.HighlightsScreen) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            default:
                ((Integer) obj2).getClass();
                YearInReviewDialog.YearInReviewScreenCaptureHandler((YearInReviewCaptureRequest) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(49));
                return unit;
        }
    }

    public /* synthetic */ RandomActivity$$ExternalSyntheticLambda1(Object obj, Object obj2, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
    }
}
