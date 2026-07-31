package org.wikipedia.feed;

import android.content.Context;
import android.os.Build;
import android.view.Window;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SnackbarHostState;
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
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.painter.BrushPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import androidx.preference.PreferenceManager;
import androidx.room.Room;
import coil3.compose.AsyncImageKt;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import j$.time.LocalDate;
import j$.time.format.DateTimeFormatter;
import java.util.Iterator;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import okio.ByteString;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.compose.ComposeColors;
import org.wikipedia.compose.components.OnboardingItem;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.onboarding.InitialOnboardingActivity;
import org.wikipedia.random.RandomActivity;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.theme.Theme;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeOnboardingActivity;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeState;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget$$ExternalSyntheticLambda1;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository;
import org.wikipedia.widgets.readingchallenge.StreakProgressBarKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedComponentsKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ FeedComponentsKt$$ExternalSyntheticLambda2(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Object obj3;
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                WikiSite wikiSite = (WikiSite) obj4;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer, 48);
                    long j = gapComposer.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, companion);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Painter painterResource = UnsignedKt.painterResource(R.drawable.ic_dynamic_feed_24dp, 0, gapComposer);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    IconKt.m286Iconww6aTOc(painterResource, null, null, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, gapComposer, 56, 4);
                    OffsetKt.Spacer(gapComposer, SizeKt.m149width3ABfNKs(companion, 16.0f));
                    TextKt.m308TextNvy7gAk(ContextKt.getString((Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext), wikiSite.languageCode, R.string.explore_feed_community_load_more_label, new Object[0]), null, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, null, 0L, FontWeight.Medium, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).titleMedium, gapComposer, 1572864, 0, 131002);
                    gapComposer.end(true);
                    break;
                }
            case 1:
                OnThisDay.Event event = (OnThisDay.Event) obj4;
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(SizeKt.FillWholeMaxSize, 16.0f);
                    RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer2, 6);
                    long j2 = gapComposer2.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m132padding3ABfNKs);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, rowMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    TextKt.m308TextNvy7gAk(event.text, ViewSizeResolver$CC.m(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier, 1.0f, true), ComposeColors.Gray200, null, 0L, null, null, 0L, null, 0L, 2, false, 6, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyMedium, 0L, 0L, null, null, ContextsKt.getSp(0), ContextsKt.getSp(24), null, 16646015), gapComposer2, 384, 24960, 110584);
                    Iterator it = event.pages.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj3 = it.next();
                            String thumbnailUrl = ((PageSummary) obj3).getThumbnailUrl();
                            if (thumbnailUrl == null || thumbnailUrl.length() == 0) {
                            }
                        } else {
                            obj3 = null;
                        }
                    }
                    PageSummary pageSummary = (PageSummary) obj3;
                    String thumbnailUrl2 = pageSummary != null ? pageSummary.getThumbnailUrl() : null;
                    if (thumbnailUrl2 == null) {
                        gapComposer2.startReplaceGroup(-950030108);
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(-950030107);
                        Context context = (Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext);
                        Boolean bool = Boolean.FALSE;
                        context.getClass();
                        AsyncImageKt.m774AsyncImagex1rPTaM(Okio__OkioKt._implementation != null ? ByteString.Companion.getRequestBuilder(context, thumbnailUrl2, bool, bool, null, null).build() : null, null, ClipKt.clip(SizeKt.m145size3ABfNKs(companion, 100.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f)), null, new BrushPainter(new SolidColor(((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor)), null, null, ContentScale.Companion.Crop, gapComposer2, 32816, 6, 31720);
                        gapComposer2.end(false);
                    }
                    gapComposer2.end(true);
                    break;
                }
                break;
            case 2:
                InitialOnboardingActivity initialOnboardingActivity = (InitialOnboardingActivity) obj4;
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                int i4 = InitialOnboardingActivity.$r8$clinit;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    Object rememberedValue = gapComposer3.rememberedValue();
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = Updater.mutableStateOf$default(Theme.BLACK);
                        gapComposer3.updateRememberedValue(rememberedValue);
                    }
                    MutableState mutableState = (MutableState) rememberedValue;
                    Object rememberedValue2 = gapComposer3.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy) {
                        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = new ParcelableSnapshotMutableIntState(initialOnboardingActivity.getWindow().getContext().getColor(android.R.color.black));
                        gapComposer3.updateRememberedValue(parcelableSnapshotMutableIntState);
                        rememberedValue2 = parcelableSnapshotMutableIntState;
                    }
                    ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState2 = (ParcelableSnapshotMutableIntState) rememberedValue2;
                    boolean z = !((Theme) mutableState.getValue()).isDark();
                    Window window = initialOnboardingActivity.getWindow();
                    window.getClass();
                    HintHandler hintHandler = new HintHandler(window.getDecorView());
                    int i5 = Build.VERSION.SDK_INT;
                    (i5 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i5 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i5 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).setAppearanceLightStatusBars(z);
                    Window window2 = initialOnboardingActivity.getWindow();
                    window2.getClass();
                    HintHandler hintHandler2 = new HintHandler(window2.getDecorView());
                    int i6 = Build.VERSION.SDK_INT;
                    (i6 >= 35 ? new WindowInsetsControllerCompat$Impl35(window2, hintHandler2) : i6 >= 30 ? new WindowInsetsControllerCompat$Impl30(window2, hintHandler2) : i6 >= 26 ? new WindowInsetsControllerCompat$Impl26(window2, hintHandler2) : new WindowInsetsControllerCompat$Impl23(window2, hintHandler2)).setAppearanceLightNavigationBars(z);
                    initialOnboardingActivity.setNavigationBarColor(parcelableSnapshotMutableIntState2.getIntValue());
                    Cache.Companion.BaseTheme((Theme) mutableState.getValue(), Expect_jvmKt.rememberComposableLambda(-531210542, new RandomScreenKt$$ExternalSyntheticLambda18(initialOnboardingActivity, mutableState, parcelableSnapshotMutableIntState2, 17), gapComposer3), gapComposer3, 48, 0);
                    break;
                }
            case 3:
                RandomActivity randomActivity = (RandomActivity) obj4;
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                int i7 = RandomActivity.$r8$clinit;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    Object rememberedValue3 = gapComposer4.rememberedValue();
                    if (rememberedValue3 == neverEqualPolicy) {
                        Prefs prefs = Prefs.INSTANCE;
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String m = ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_randomizer_shake_prompt_shown);
                        WikipediaApp jsoup = Jsoup.getInstance();
                        rememberedValue3 = Updater.mutableStateOf$default(Boolean.valueOf(jsoup.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(jsoup), 0).getBoolean(m, false)));
                        gapComposer4.updateRememberedValue(rememberedValue3);
                    }
                    Cache.Companion.BaseTheme(Theme.BLACK, Expect_jvmKt.rememberComposableLambda(278913066, new RandomActivity$$ExternalSyntheticLambda1(r11 ? 1 : 0, randomActivity, (MutableState) rememberedValue3), gapComposer4), gapComposer4, 54, 0);
                    break;
                }
            case 4:
                RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity = (RecommendedReadingListSettingsActivity) obj4;
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                int i8 = RecommendedReadingListSettingsActivity.$r8$clinit;
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(691350116, new RandomScreenKt$$ExternalSyntheticLambda18(recommendedReadingListSettingsActivity, Updater.collectAsState(recommendedReadingListSettingsActivity.getViewModel().resetUiState, gapComposer5), Updater.collectAsState(recommendedReadingListSettingsActivity.getViewModel().uiState, gapComposer5), 18), gapComposer5), gapComposer5, 48, 1);
                    break;
                }
            case 5:
                SnackbarHostState snackbarHostState = (SnackbarHostState) obj4;
                GapComposer gapComposer6 = (GapComposer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    CardKt.SnackbarHost(snackbarHostState, null, PrefsIoUtil.f63lambda$1740632181, gapComposer6, 390);
                    break;
                }
            case 6:
                ReadingChallengeOnboardingActivity readingChallengeOnboardingActivity = (ReadingChallengeOnboardingActivity) obj4;
                DateTimeFormatter dateTimeFormatter = readingChallengeOnboardingActivity.formatter;
                GapComposer gapComposer7 = (GapComposer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                int i9 = ReadingChallengeOnboardingActivity.$r8$clinit;
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    LocalDate localDate = ReadingChallengeWidgetRepository.REMOVE_DATE;
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(636652855, new RandomActivity$$ExternalSyntheticLambda1(15, readingChallengeOnboardingActivity, Room.listOf((Object[]) new OnboardingItem[]{new OnboardingItem(R.drawable.ic_contract_24dp, R.string.reading_challenge_onboarding_read_title, 0, 4, readingChallengeOnboardingActivity.getString(R.string.reading_challenge_onboarding_read_subtitle, dateTimeFormatter.format(StreakProgressBarKt.getSTART_DATE()), dateTimeFormatter.format(StreakProgressBarKt.getEND_DATE()))), new OnboardingItem(R.drawable.ic_featured_seasonal_and_gifts_24dp, R.string.reading_challenge_onboarding_win_title, R.string.reading_challenge_onboarding_win_description, 8, null), new OnboardingItem(R.drawable.dashboard_customize_24dp, R.string.reading_challenge_onboarding_install_title, R.string.reading_challenge_onboarding_install_description, 8, null)})), gapComposer7), gapComposer7, 48, 1);
                    break;
                }
            default:
                ReadingChallengeWidgetRepository readingChallengeWidgetRepository = (ReadingChallengeWidgetRepository) obj4;
                GapComposer gapComposer8 = (GapComposer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if (!gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else {
                    ExceptionsKt.GlanceTheme(null, Expect_jvmKt.rememberComposableLambda(374288452, new ReadingChallengeWidget$$ExternalSyntheticLambda1(Updater.collectAsState(readingChallengeWidgetRepository.observeState(), ReadingChallengeState.Loading.INSTANCE, gapComposer8, 48, 2), r11 ? 1 : 0), gapComposer8), gapComposer8, 48);
                    break;
                }
        }
        return unit;
    }
}
