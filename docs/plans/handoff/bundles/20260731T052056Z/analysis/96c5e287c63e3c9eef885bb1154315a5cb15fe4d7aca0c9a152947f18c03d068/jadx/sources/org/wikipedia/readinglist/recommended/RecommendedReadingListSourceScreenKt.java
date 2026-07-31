package org.wikipedia.readinglist.recommended;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridCells$Adaptive;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda5;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ListItemColors;
import androidx.compose.material3.ListItemDefaults;
import androidx.compose.material3.PinnedScrollBehavior;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.material3.internal.TextFieldImplKt$$ExternalSyntheticLambda9;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.core.app.NotificationCompat$Builder;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda28;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import j$.time.DayOfWeek;
import j$.time.Duration;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.temporal.TemporalAdjusters;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.UStringsKt;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import okio.Okio__JvmOkioKt;
import org.jsoup.Jsoup;
import org.jsoup.nodes.NodeUtils;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.activitytab.ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.compose.components.NotificationBellKt$$ExternalSyntheticLambda1;
import org.wikipedia.compose.components.SettingsKt$$ExternalSyntheticLambda8;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt$$ExternalSyntheticLambda33;
import org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda49;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda5;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda17;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda31;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda30;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda8;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceScreenKt$$ExternalSyntheticLambda10;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda6;
import org.wikipedia.notifications.NotificationCategory;
import org.wikipedia.notifications.NotificationPollBroadcastReceiver;
import org.wikipedia.notifications.NotificationPresenter;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda16;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.readinglist.ReadingListActivity;
import org.wikipedia.readinglist.ReadingListMode;
import org.wikipedia.readinglist.RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;
import org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsViewModel;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceViewModel;
import org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda0;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda10;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda7;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.Prefs$$ExternalSyntheticLambda0;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.util.SingleLiveData$$ExternalSyntheticLambda0;
import org.wikipedia.yearinreview.YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class RecommendedReadingListSourceScreenKt {

    /* renamed from: lambda$-2068516575, reason: not valid java name */
    public static final ComposableLambdaImpl f56lambda$2068516575 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(1), false, -2068516575);
    public static final ComposableLambdaImpl lambda$23780735 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(2), false, 23780735);

    /* renamed from: lambda$-1322444793, reason: not valid java name */
    public static final ComposableLambdaImpl f52lambda$1322444793 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(3), false, -1322444793);

    /* renamed from: lambda$-1849238334, reason: not valid java name */
    public static final ComposableLambdaImpl f54lambda$1849238334 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(22), false, -1849238334);
    public static final ComposableLambdaImpl lambda$1916731419 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(23), false, 1916731419);

    /* renamed from: lambda$-1945706553, reason: not valid java name */
    public static final ComposableLambdaImpl f55lambda$1945706553 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(24), false, -1945706553);

    /* renamed from: lambda$-843599355, reason: not valid java name */
    public static final ComposableLambdaImpl f59lambda$843599355 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(25), false, -843599355);
    public static final ComposableLambdaImpl lambda$1879372161 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(26), false, 1879372161);

    /* renamed from: lambda$-718111611, reason: not valid java name */
    public static final ComposableLambdaImpl f57lambda$718111611 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(27), false, -718111611);
    public static final ComposableLambdaImpl lambda$341974785 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(28), false, 341974785);

    /* renamed from: lambda$-1571855636, reason: not valid java name */
    public static final ComposableLambdaImpl f53lambda$1571855636 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(29), false, -1571855636);

    /* renamed from: lambda$-815831568, reason: not valid java name */
    public static final ComposableLambdaImpl f58lambda$815831568 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(1), false, -815831568);

    public static final void ArticlesNumberView(int i, Function1 function1, Modifier modifier, int i2, int i3, GapComposer gapComposer, int i4) {
        Modifier modifier2;
        int i5;
        int i6;
        gapComposer.startRestartGroup(1034226656);
        int i7 = i4 | (gapComposer.changed(i) ? 4 : 2) | (gapComposer.changedInstance(function1) ? 32 : 16) | 28032;
        if (gapComposer.shouldExecute(i7 & 1, (i7 & 9363) != 9362)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(String.valueOf(i));
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState2 = (MutableState) rememberedValue2;
            if (!((Boolean) mutableState2.getValue()).booleanValue()) {
                mutableState2.setValue(Boolean.TRUE);
                mutableState.setValue("");
            }
            int i8 = ListItemDefaults.$r8$clinit;
            ListItemColors m287colorsJ08w3E = ListItemDefaults.m287colorsJ08w3E(((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, gapComposer);
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-362009410, new ForYouCardKt$$ExternalSyntheticLambda31(function1, mutableState, i, 15), gapComposer);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            CardKt.m267ListItemHXNGIdc(rememberComposableLambda, companion, null, f54lambda$1849238334, null, m287colorsJ08w3E, gapComposer, 24630, 428);
            i5 = 20;
            modifier2 = companion;
            i6 = 1;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            i5 = i2;
            i6 = i3;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NotificationBellKt$$ExternalSyntheticLambda1(i, function1, modifier2, i5, i6, i4);
        }
    }

    public static final void DisabledState(Modifier modifier, GapComposer gapComposer, int i) {
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(825890908);
        if (gapComposer2.shouldExecute(i & 1, (i & 3) != 2)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer2, 6);
            long j = gapComposer2.compositeKeyHashCode;
            int i2 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.recommended_reading_list_settings_toggle_disable_message, gapComposer2), null, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodySmall, gapComposer, 0, 0, 131066);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda10(modifier, i, 3);
        }
    }

    public static final void EnabledState(final int i, final RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency, final RecommendedReadingListSource recommendedReadingListSource, final boolean z, final Function1 function1, final Function1 function12, final Function0 function0, final Function0 function02, final Function1 function13, Modifier modifier, GapComposer gapComposer, final int i2) {
        final Modifier modifier2;
        gapComposer.startRestartGroup(403159251);
        int i3 = i2 | (gapComposer.changed(i) ? 4 : 2) | (gapComposer.changed(recommendedReadingListUpdateFrequency.ordinal()) ? 32 : 16) | (gapComposer.changed(recommendedReadingListSource.ordinal()) ? 256 : 128) | (gapComposer.changed(z) ? 2048 : 1024) | (gapComposer.changedInstance(function1) ? 16384 : 8192) | (gapComposer.changedInstance(function12) ? 131072 : 65536) | (gapComposer.changedInstance(function0) ? 1048576 : 524288) | (gapComposer.changedInstance(function02) ? 8388608 : 4194304) | (gapComposer.changedInstance(function13) ? 67108864 : 33554432) | 805306368;
        if (gapComposer.shouldExecute(i3 & 1, (306783379 & i3) != 306783378)) {
            ScrollState rememberScrollState = ImageKt.rememberScrollState(gapComposer);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier scroll$default = ImageKt.scroll$default(companion, rememberScrollState, true);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, scroll$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            SettingsSection(null, false, Expect_jvmKt.rememberComposableLambda(-648070088, new CommunityContentTabKt$$ExternalSyntheticLambda49(i, function12, recommendedReadingListUpdateFrequency, function1), gapComposer), gapComposer, 384, 3);
            SettingsSection(null, false, Expect_jvmKt.rememberComposableLambda(335289761, new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(16, function0, recommendedReadingListSource), gapComposer), gapComposer, 384, 3);
            if (recommendedReadingListSource == RecommendedReadingListSource.INTERESTS) {
                gapComposer.startReplaceGroup(412441590);
                SettingsSection(null, false, Expect_jvmKt.rememberComposableLambda(-981145347, new TextFieldImplKt$$ExternalSyntheticLambda9(3, function02), gapComposer), gapComposer, 384, 3);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(412732773);
                gapComposer.end(false);
            }
            SettingsSection(null, false, Expect_jvmKt.rememberComposableLambda(1048487680, new HomeScreenKt$$ExternalSyntheticLambda1(function13, z), gapComposer), gapComposer, 432, 1);
            gapComposer.end(true);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(i, recommendedReadingListUpdateFrequency, recommendedReadingListSource, z, function1, function12, function0, function02, function13, modifier2, i2) { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda13
                public final /* synthetic */ int f$0;
                public final /* synthetic */ RecommendedReadingListUpdateFrequency f$1;
                public final /* synthetic */ RecommendedReadingListSource f$2;
                public final /* synthetic */ boolean f$3;
                public final /* synthetic */ Function1 f$4;
                public final /* synthetic */ Function1 f$5;
                public final /* synthetic */ Function0 f$6;
                public final /* synthetic */ Function0 f$7;
                public final /* synthetic */ Function1 f$8;
                public final /* synthetic */ Modifier f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    RecommendedReadingListSourceScreenKt.EnabledState(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, this.f$8, this.f$9, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void InterestsView(Modifier modifier, GapComposer gapComposer, int i) {
        Modifier modifier2;
        GapComposer gapComposer2;
        gapComposer.startRestartGroup(81902243);
        int i2 = 2;
        int i3 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 3) != 2)) {
            int i4 = ListItemDefaults.$r8$clinit;
            modifier2 = modifier;
            gapComposer2 = gapComposer;
            CardKt.m267ListItemHXNGIdc(f57lambda$718111611, modifier2, null, lambda$341974785, null, ListItemDefaults.m287colorsJ08w3E(((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, gapComposer), gapComposer2, ((i3 << 3) & 112) | 24582, 428);
        } else {
            modifier2 = modifier;
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda10(modifier2, i, i2);
        }
    }

    public static final void NotificationView(int i, GapComposer gapComposer, Modifier modifier, Function1 function1, boolean z) {
        String stringResource;
        MutableState mutableState;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(-1931558002);
        int i2 = i | (gapComposer2.changed(z) ? 32 : 16) | (gapComposer2.changedInstance(function1) ? 256 : 128);
        byte b = 0;
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState2 = (MutableState) rememberedValue;
            if (z) {
                gapComposer2.startReplaceGroup(-801359771);
                stringResource = UtilsKt.stringResource(R.string.recommended_reading_list_settings_notification_subtitle_enable, gapComposer2);
                gapComposer2.end(false);
            } else {
                gapComposer2.startReplaceGroup(-801356665);
                stringResource = UtilsKt.stringResource(R.string.recommended_reading_list_settings_notifications_subtitle_disable, gapComposer2);
                gapComposer2.end(false);
            }
            boolean z2 = (i2 & 112) == 32;
            int i3 = i2 & 896;
            boolean z3 = z2 | (i3 == 256);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (z3 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new HomePreferenceScreenKt$$ExternalSyntheticLambda10(z, function1, mutableState2, 1);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            Modifier noRippleClickable$default = Jsoup.noRippleClickable$default(modifier, (Function0) rememberedValue2);
            int i4 = ListItemDefaults.$r8$clinit;
            CardKt.m267ListItemHXNGIdc(f53lambda$1571855636, noRippleClickable$default, Expect_jvmKt.rememberComposableLambda(68904239, new HomeScreenKt$$ExternalSyntheticLambda30(stringResource, 11, b), gapComposer2), f58lambda$815831568, Expect_jvmKt.rememberComposableLambda(-1700567375, new SettingsKt$$ExternalSyntheticLambda8(4, function1, mutableState2, z), gapComposer2), ListItemDefaults.m287colorsJ08w3E(((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, gapComposer2), gapComposer2, 224262, 388);
            if (((Boolean) mutableState2.getValue()).booleanValue()) {
                gapComposer2.startReplaceGroup(930040667);
                String stringResource2 = UtilsKt.stringResource(R.string.recommended_reading_list_settings_notifications_dialog_title, gapComposer2);
                String stringResource3 = UtilsKt.stringResource(R.string.recommended_reading_list_settings_notifications_dialog_message, gapComposer2);
                String stringResource4 = UtilsKt.stringResource(R.string.recommended_reading_list_settings_notifications_dialog_negative_button, gapComposer2);
                String stringResource5 = UtilsKt.stringResource(R.string.recommended_reading_list_settings_notifications_dialog_positive_button, gapComposer2);
                Object rememberedValue3 = gapComposer2.rememberedValue();
                if (rememberedValue3 == neverEqualPolicy) {
                    mutableState = mutableState2;
                    rememberedValue3 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda32(mutableState, 5);
                    gapComposer2.updateRememberedValue(rememberedValue3);
                } else {
                    mutableState = mutableState2;
                }
                Function0 function0 = (Function0) rememberedValue3;
                boolean z4 = i3 == 256;
                Object rememberedValue4 = gapComposer2.rememberedValue();
                if (z4 || rememberedValue4 == neverEqualPolicy) {
                    rememberedValue4 = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function1, mutableState, 3);
                    gapComposer2.updateRememberedValue(rememberedValue4);
                }
                Function0 function02 = (Function0) rememberedValue4;
                boolean z5 = i3 == 256;
                Object rememberedValue5 = gapComposer2.rememberedValue();
                if (z5 || rememberedValue5 == neverEqualPolicy) {
                    rememberedValue5 = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function1, mutableState, 4);
                    gapComposer2.updateRememberedValue(rememberedValue5);
                }
                TabsBoxKt.m905WikipediaAlertDialogsK9R1Co(null, stringResource2, null, 0, stringResource3, null, 0, null, stringResource4, 0L, stringResource5, 0L, function0, function02, (Function0) rememberedValue5, gapComposer, 0, 384, 2797);
                gapComposer2 = gapComposer;
                gapComposer2.end(false);
            } else {
                gapComposer2.startReplaceGroup(931079508);
                gapComposer2.end(false);
            }
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new DonationReminderScreenKt$$ExternalSyntheticLambda33(modifier, z, function1, i);
        }
    }

    public static final void RadioListDialog(Modifier modifier, ArrayList arrayList, String str, Function0 function0, Function1 function1, GapComposer gapComposer, int i) {
        GapComposer gapComposer2;
        Function1 function12;
        Function0 function02;
        String str2;
        ArrayList arrayList2;
        str.getClass();
        function0.getClass();
        function1.getClass();
        gapComposer.startRestartGroup(1063146428);
        int i2 = i | 6 | (gapComposer.changedInstance(arrayList) ? 32 : 16) | (gapComposer.changed(str) ? 256 : 128) | (gapComposer.changedInstance(function1) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            RandomScreenKt$$ExternalSyntheticLambda1 randomScreenKt$$ExternalSyntheticLambda1 = new RandomScreenKt$$ExternalSyntheticLambda1((Object) arrayList, (Object) function1, function0, (Object) str, 11);
            gapComposer2 = gapComposer;
            function12 = function1;
            arrayList2 = arrayList;
            function02 = function0;
            str2 = str;
            UtilsKt.Dialog(function02, null, Expect_jvmKt.rememberComposableLambda(1671976645, randomScreenKt$$ExternalSyntheticLambda1, gapComposer2), gapComposer2, 390, 2);
            modifier = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer2 = gapComposer;
            function12 = function1;
            function02 = function0;
            str2 = str;
            arrayList2 = arrayList;
            gapComposer2.skipToGroupEnd();
        }
        Modifier modifier2 = modifier;
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedComponentsKt$$ExternalSyntheticLambda5(modifier2, arrayList2, str2, function02, function12, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8, types: [boolean] */
    public static final void RecommendedReadingListInterestsContent(boolean z, LazyStaggeredGridState lazyStaggeredGridState, List list, Set set, Function1 function1, Function0 function0, Function0 function02, Function0 function03, GapComposer gapComposer, int i) {
        Function0 function04;
        GapComposer gapComposer2;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1;
        Object aboutActivityKt$$ExternalSyntheticLambda7;
        Arrangement$SpacedAligned arrangement$SpacedAligned;
        float f;
        ?? r14;
        String pluralStringResource;
        boolean z2;
        function0.getClass();
        function03.getClass();
        gapComposer.startRestartGroup(-61604861);
        int i2 = (gapComposer.changedInstance(function03) ? 8388608 : 4194304) | i | (gapComposer.changed(z) ? 4 : 2) | (gapComposer.changed(lazyStaggeredGridState) ? 32 : 16) | (gapComposer.changedInstance(list) ? 256 : 128) | (gapComposer.changedInstance(set) ? 2048 : 1024) | (gapComposer.changedInstance(function1) ? 16384 : 8192) | (gapComposer.changedInstance(function0) ? 131072 : 65536);
        if (gapComposer.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, companion);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$12);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$13);
            Integer valueOf = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$14);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$15);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            long j2 = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor;
            StaggeredGridCells$Adaptive staggeredGridCells$Adaptive = new StaggeredGridCells$Adaptive();
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(SizeKt.FillWholeMaxSize, 16.0f, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, 10);
            Arrangement$SpacedAligned arrangement$SpacedAligned2 = new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
            boolean changedInstance = ((i2 & 29360128) == 8388608) | gapComposer.changedInstance(list) | gapComposer.changedInstance(set) | ((i2 & 57344) == 16384);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (changedInstance || rememberedValue == neverEqualPolicy) {
                composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$13;
                arrangement$SpacedAligned = arrangement$SpacedAligned2;
                f = 16.0f;
                aboutActivityKt$$ExternalSyntheticLambda7 = new AboutActivityKt$$ExternalSyntheticLambda7(list, function03, set, function1, 11);
                gapComposer.updateRememberedValue(aboutActivityKt$$ExternalSyntheticLambda7);
            } else {
                composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$13;
                aboutActivityKt$$ExternalSyntheticLambda7 = rememberedValue;
                f = 16.0f;
                arrangement$SpacedAligned = arrangement$SpacedAligned2;
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = composeUiNode$Companion$SetModifier$1;
            UtilsKt.m792LazyVerticalStaggeredGrid6qCrX9Q(staggeredGridCells$Adaptive, m136paddingqDBjuR0$default, lazyStaggeredGridState, null, f, arrangement$SpacedAligned, null, false, null, (Function1) aboutActivityKt$$ExternalSyntheticLambda7, gapComposer, ((i2 << 3) & 896) | 1769520, 920);
            Modifier align = BoxScopeInstance.INSTANCE.align(ImageKt.m46backgroundbw27NRU(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 56.0f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ColorKt.RectangleShape), Alignment.Companion.BottomCenter);
            boolean changed = gapComposer.changed(j2);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new WorkSpecDao_Impl$$ExternalSyntheticLambda28(j2, 10);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Modifier drawBehind = ClipKt.drawBehind(align, (Function1) rememberedValue2);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer, 48);
            long j3 = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, drawBehind);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$12);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$16);
            Animation.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$14, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$15);
            if (z) {
                r14 = 0;
                gapComposer.startReplaceGroup(671861453);
                OffsetKt.Spacer(gapComposer, SizeKt.m149width3ABfNKs(companion, 48.0f));
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(671381945);
                r14 = 0;
                IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_dice_24, 0, gapComposer), UtilsKt.stringResource(R.string.recommended_reading_list_interest_pick_random_button_content_description, gapComposer), OffsetKt.m132padding3ABfNKs(ImageKt.m51clickableoSLSa3U$default(15, SizeKt.m145size3ABfNKs(companion, 48.0f), null, function02, false), 12.0f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, gapComposer, 8, 0);
                gapComposer.end(false);
            }
            Modifier then = OffsetKt.m136paddingqDBjuR0$default(companion, 8.0f, RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, 10).then(new LayoutWeightElement(1.0f, true));
            if (z && set.isEmpty()) {
                gapComposer.startReplaceGroup(-1086696650);
                pluralStringResource = UtilsKt.stringResource(R.string.recommended_reading_list_interest_select_minimum, gapComposer);
                gapComposer.end(r14);
            } else {
                gapComposer.startReplaceGroup(-1086693477);
                int size = set.size();
                Object[] objArr = new Object[1];
                objArr[r14] = Integer.valueOf(set.size());
                pluralStringResource = UtilsKt.pluralStringResource(R.plurals.recommended_reading_list_interest_pick_selected_articles, size, objArr, gapComposer);
                gapComposer.end(r14);
            }
            TextKt.m308TextNvy7gAk(pluralStringResource, then, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, FontWeight.Medium, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodyMedium, gapComposer, 1572864, 0, 129976);
            gapComposer2 = gapComposer;
            if (z) {
                function04 = function0;
                z2 = true;
                gapComposer2.startReplaceGroup(673280013);
                OffsetKt.Spacer(gapComposer2, SizeKt.m149width3ABfNKs(companion, 48.0f));
                gapComposer2.end(false);
            } else {
                gapComposer2.startReplaceGroup(672732274);
                z2 = true;
                function04 = function0;
                IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_forward_black_24dp, 0, gapComposer2), UtilsKt.stringResource(R.string.nav_item_forward, gapComposer2), ClipKt.alpha(OffsetKt.m132padding3ABfNKs(ImageKt.m51clickableoSLSa3U$default(14, SizeKt.m145size3ABfNKs(companion, 48.0f), null, function04, !r1.isEmpty()), 12.0f), !set.isEmpty() ? 1.0f : 0.5f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, gapComposer2, 8, 0);
                gapComposer2.end(false);
            }
            gapComposer2.end(z2);
            gapComposer2.end(z2);
        } else {
            function04 = function0;
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChipKt$$ExternalSyntheticLambda5(z, lazyStaggeredGridState, list, set, function1, function04, function02, function03, i);
        }
    }

    public static final void RecommendedReadingListInterestsScreen(final Resource resource, final boolean z, final WikiErrorClickEvents wikiErrorClickEvents, final Function1 function1, Function0 function0, final Function0 function02, Function1 function12, final Function0 function03, GapComposer gapComposer, int i) {
        GapComposer gapComposer2;
        State state;
        int i2;
        resource.getClass();
        function0.getClass();
        function02.getClass();
        function12.getClass();
        function03.getClass();
        gapComposer.startRestartGroup(308665033);
        int i3 = i | (gapComposer.changed(resource) ? 4 : 2) | (gapComposer.changed(z) ? 32 : 16) | (gapComposer.changedInstance(wikiErrorClickEvents) ? 256 : 128) | (gapComposer.changedInstance(function1) ? 2048 : 1024) | (gapComposer.changedInstance(function0) ? 16384 : 8192) | (gapComposer.changedInstance(function02) ? 131072 : 65536) | (gapComposer.changedInstance(function12) ? 1048576 : 524288) | (gapComposer.changedInstance(function03) ? 8388608 : 4194304);
        if (gapComposer.shouldExecute(i3 & 1, (4793491 & i3) != 4793490)) {
            final LazyStaggeredGridState rememberLazyStaggeredGridState = UStringsKt.rememberLazyStaggeredGridState(gapComposer);
            final float mo87toPx0680j_4 = ((Density) gapComposer.consume(CompositionLocalsKt.LocalDensity)).mo87toPx0680j_4(100.0f);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = SnapshotStateKt__DerivedStateKt.derivedStateOf(new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        LazyStaggeredGridState lazyStaggeredGridState = LazyStaggeredGridState.this;
                        return Boolean.valueOf(((ParcelableSnapshotMutableIntState) lazyStaggeredGridState.scrollPosition.density).getIntValue() > 0 || ((float) ((ParcelableSnapshotMutableIntState) lazyStaggeredGridState.scrollPosition.placeholders).getIntValue()) > mo87toPx0680j_4);
                    }
                });
                gapComposer.updateRememberedValue(rememberedValue);
            }
            State state2 = (State) rememberedValue;
            boolean z2 = (57344 & i3) == 16384;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (z2 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new Handshake$$ExternalSyntheticLambda0(25, function0);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Operation$State.BackHandler(false, (Function0) rememberedValue2, gapComposer, 0);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            final MutableState mutableState = (MutableState) rememberedValue3;
            if (((Boolean) mutableState.getValue()).booleanValue()) {
                gapComposer.startReplaceGroup(-84102262);
                String stringResource = UtilsKt.stringResource(R.string.recommended_reading_list_interest_pick_random_dialog_title, gapComposer);
                String stringResource2 = UtilsKt.stringResource(R.string.recommended_reading_list_interest_pick_random_dialog_message, gapComposer);
                String stringResource3 = UtilsKt.stringResource(R.string.recommended_reading_list_interest_pick_random_dialog_positive_button, gapComposer);
                String stringResource4 = UtilsKt.stringResource(R.string.recommended_reading_list_interest_pick_random_dialog_negative_button, gapComposer);
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (rememberedValue4 == neverEqualPolicy) {
                    i2 = i3;
                    rememberedValue4 = new ForYouCardKt$$ExternalSyntheticLambda2(mutableState, 29);
                    gapComposer.updateRememberedValue(rememberedValue4);
                } else {
                    i2 = i3;
                }
                Function0 function04 = (Function0) rememberedValue4;
                boolean changed = ((i2 & 3670016) == 1048576) | gapComposer.changed(rememberLazyStaggeredGridState);
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (changed || rememberedValue5 == neverEqualPolicy) {
                    rememberedValue5 = new HomeScreenKt$$ExternalSyntheticLambda29(function12, rememberLazyStaggeredGridState, mutableState, 18);
                    gapComposer.updateRememberedValue(rememberedValue5);
                }
                Function0 function05 = (Function0) rememberedValue5;
                Object rememberedValue6 = gapComposer.rememberedValue();
                if (rememberedValue6 == neverEqualPolicy) {
                    rememberedValue6 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda32(mutableState, 1);
                    gapComposer.updateRememberedValue(rememberedValue6);
                }
                Function0 function06 = (Function0) rememberedValue6;
                state = state2;
                TabsBoxKt.m905WikipediaAlertDialogsK9R1Co(null, stringResource, null, 0, stringResource2, null, 0, null, stringResource3, 0L, stringResource4, 0L, function04, function05, function06, gapComposer, 0, 24960, 2797);
                gapComposer2 = gapComposer;
                gapComposer2.end(false);
            } else {
                gapComposer2 = gapComposer;
                state = state2;
                gapComposer2.startReplaceGroup(-83103783);
                gapComposer2.end(false);
            }
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            CardKt.m270ScaffoldTvnljyQ(ImageKt.m46backgroundbw27NRU(Modifier.Companion.$$INSTANCE, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).paperColor, ColorKt.RectangleShape), Expect_jvmKt.rememberComposableLambda(1995312517, new GamesHubScreenKt$$ExternalSyntheticLambda6(state, z, resource, function0), gapComposer2), null, null, null, 0, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(1130425690, new Function3() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    GapComposer gapComposer3 = (GapComposer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    BiasAlignment biasAlignment = Alignment.Companion.Center;
                    paddingValues.getClass();
                    if ((intValue & 6) == 0) {
                        intValue |= gapComposer3.changed(paddingValues) ? 4 : 2;
                    }
                    if (gapComposer3.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                        Resource resource2 = Resource.this;
                        boolean z3 = resource2 instanceof Resource.Loading;
                        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                        if (z3) {
                            gapComposer3.startReplaceGroup(-326744113);
                            Modifier padding = OffsetKt.padding(SizeKt.fillMaxWidth(companion, 1.0f), paddingValues);
                            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                            long j = gapComposer3.compositeKeyHashCode;
                            int i4 = (int) (j ^ (j >>> 32));
                            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
                            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, padding);
                            ComposeUiNode.Companion.getClass();
                            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                            gapComposer3.startReusableNode();
                            if (gapComposer3.inserting) {
                                gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                            } else {
                                gapComposer3.useNode();
                            }
                            Updater.m327setimpl(gapComposer3, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                            Updater.m327setimpl(gapComposer3, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                            Updater.m326reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                            Updater.m327setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
                            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
                            ProgressIndicatorKt.m291LinearProgressIndicatorrIrjwxo(fillMaxWidth, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal2)).progressiveColor, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal2)).borderColor, 0, RecyclerView.DECELERATION_RATE, gapComposer3, 6);
                            gapComposer3.end(true);
                            gapComposer3.end(false);
                        } else if (resource2 instanceof Resource.Error) {
                            gapComposer3.startReplaceGroup(-326238720);
                            Modifier padding2 = OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues);
                            MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                            long j2 = gapComposer3.compositeKeyHashCode;
                            int i5 = (int) (j2 ^ (j2 >>> 32));
                            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer3.currentCompositionLocalScope();
                            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer3, padding2);
                            ComposeUiNode.Companion.getClass();
                            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                            gapComposer3.startReusableNode();
                            if (gapComposer3.inserting) {
                                gapComposer3.createNode(layoutNode$Companion$Constructor$12);
                            } else {
                                gapComposer3.useNode();
                            }
                            Updater.m327setimpl(gapComposer3, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                            Updater.m327setimpl(gapComposer3, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
                            Updater.m326reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                            Updater.m327setimpl(gapComposer3, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                            Okio__JvmOkioKt.WikiErrorView(SizeKt.fillMaxWidth(companion, 1.0f), ((Resource.Error) resource2).throwable, wikiErrorClickEvents, false, gapComposer3, 6, 20);
                            gapComposer3.end(true);
                            gapComposer3.end(false);
                        } else if (resource2 instanceof Resource.Success) {
                            gapComposer3.startReplaceGroup(-325676163);
                            Modifier padding3 = OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues);
                            MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                            long j3 = gapComposer3.compositeKeyHashCode;
                            int i6 = (int) ((j3 >>> 32) ^ j3);
                            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer3.currentCompositionLocalScope();
                            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer3, padding3);
                            ComposeUiNode.Companion.getClass();
                            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                            gapComposer3.startReusableNode();
                            if (gapComposer3.inserting) {
                                gapComposer3.createNode(layoutNode$Companion$Constructor$13);
                            } else {
                                gapComposer3.useNode();
                            }
                            Updater.m327setimpl(gapComposer3, maybeCachedBoxMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                            Updater.m327setimpl(gapComposer3, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                            Updater.m326reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                            Updater.m327setimpl(gapComposer3, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                            RecommendedReadingListInterestsViewModel.UiState uiState = (RecommendedReadingListInterestsViewModel.UiState) ((Resource.Success) resource2).data;
                            List list = uiState.items;
                            Set set = uiState.selectedItems;
                            Object rememberedValue7 = gapComposer3.rememberedValue();
                            if (rememberedValue7 == Composer$Companion.Empty) {
                                rememberedValue7 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda32(mutableState, 2);
                                gapComposer3.updateRememberedValue(rememberedValue7);
                            }
                            RecommendedReadingListSourceScreenKt.RecommendedReadingListInterestsContent(z, rememberLazyStaggeredGridState, list, set, function1, function02, (Function0) rememberedValue7, function03, gapComposer3, 1572864);
                            gapComposer3.end(true);
                            gapComposer3.end(false);
                        } else {
                            gapComposer3.startReplaceGroup(-324856120);
                            gapComposer3.end(false);
                        }
                    } else {
                        gapComposer3.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer2), gapComposer, 805306416, 444);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChipKt$$ExternalSyntheticLambda5(resource, z, wikiErrorClickEvents, function1, function0, function02, function12, function03, i);
        }
    }

    public static final void RecommendedReadingListSettingsScreen(Modifier modifier, final RecommendedReadingListSettingsState recommendedReadingListSettingsState, final Resource resource, final Function0 function0, final Function0 function02, final Function0 function03, final Function1 function1, final Function1 function12, final Function1 function13, final Function1 function14, final Function0 function04, WikiErrorClickEvents wikiErrorClickEvents, GapComposer gapComposer, final int i, final int i2, final int i3) {
        Modifier modifier2;
        int i4;
        Function0 function05;
        Function0 function06;
        int i5;
        int i6;
        final WikiErrorClickEvents wikiErrorClickEvents2;
        final Modifier modifier3;
        recommendedReadingListSettingsState.getClass();
        resource.getClass();
        function0.getClass();
        function02.getClass();
        function03.getClass();
        function1.getClass();
        function12.getClass();
        function13.getClass();
        function14.getClass();
        function04.getClass();
        gapComposer.startRestartGroup(-1651544831);
        int i7 = i3 & 1;
        if (i7 != 0) {
            i4 = i | 6;
            modifier2 = modifier;
        } else {
            modifier2 = modifier;
            i4 = (gapComposer.changed(modifier2) ? 4 : 2) | i;
        }
        int i8 = i4 | (gapComposer.changed(recommendedReadingListSettingsState) ? 32 : 16) | (gapComposer.changed(resource) ? 256 : 128);
        if ((i & 3072) == 0) {
            i8 |= gapComposer.changedInstance(function0) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            function05 = function02;
            i8 |= gapComposer.changedInstance(function05) ? 16384 : 8192;
        } else {
            function05 = function02;
        }
        if ((196608 & i) == 0) {
            function06 = function03;
            i8 |= gapComposer.changedInstance(function06) ? 131072 : 65536;
        } else {
            function06 = function03;
        }
        if ((1572864 & i) == 0) {
            i8 |= gapComposer.changedInstance(function1) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i8 |= gapComposer.changedInstance(function12) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i8 |= gapComposer.changedInstance(function13) ? 67108864 : 33554432;
        }
        if ((i & 805306368) == 0) {
            i8 |= gapComposer.changedInstance(function14) ? 536870912 : 268435456;
        }
        int i9 = i8;
        if ((i2 & 6) == 0) {
            i5 = i2 | (gapComposer.changedInstance(function04) ? 4 : 2);
        } else {
            i5 = i2;
        }
        int i10 = i3 & 2048;
        if (i10 != 0) {
            i6 = i5 | 48;
        } else {
            i6 = i5 | (gapComposer.changedInstance(wikiErrorClickEvents) ? 32 : 16);
        }
        byte b = 0;
        if (gapComposer.shouldExecute(i9 & 1, ((i9 & 306783379) == 306783378 && (i6 & 19) == 18) ? false : true)) {
            Modifier modifier4 = i7 != 0 ? Modifier.Companion.$$INSTANCE : modifier2;
            final WikiErrorClickEvents wikiErrorClickEvents3 = i10 != 0 ? null : wikiErrorClickEvents;
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final MutableState mutableState = (MutableState) rememberedValue;
            final boolean z = recommendedReadingListSettingsState.isRecommendedReadingListEnabled;
            final Function0 function07 = function05;
            final Function0 function08 = function06;
            Modifier modifier5 = modifier4;
            CardKt.m270ScaffoldTvnljyQ(modifier5, Expect_jvmKt.rememberComposableLambda(-1979198779, new RandomScreenKt$$ExternalSyntheticLambda16(function0, 3, b), gapComposer), null, null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(-1603449776, new Function3() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    MutableState mutableState2;
                    Object obj4;
                    Function1 function15;
                    int i11;
                    MutableState mutableState3;
                    PaddingValues paddingValues = (PaddingValues) obj;
                    GapComposer gapComposer2 = (GapComposer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((intValue & 6) == 0) {
                        intValue |= gapComposer2.changed(paddingValues) ? 4 : 2;
                    }
                    boolean shouldExecute = gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18);
                    Unit unit = Unit.INSTANCE;
                    if (!shouldExecute) {
                        gapComposer2.skipToGroupEnd();
                        return unit;
                    }
                    Resource resource2 = Resource.this;
                    boolean z2 = resource2 instanceof Resource.Loading;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    if (z2) {
                        gapComposer2.startReplaceGroup(254089273);
                        Modifier padding = OffsetKt.padding(SizeKt.fillMaxWidth(companion, 1.0f), paddingValues);
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                        long j = gapComposer2.compositeKeyHashCode;
                        int i12 = (int) (j ^ (j >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, padding);
                        ComposeUiNode.Companion.getClass();
                        Function0 function09 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(function09);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m327setimpl(gapComposer2, Integer.valueOf(i12), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                        Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                        ProvidableCompositionLocal providableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                        ProgressIndicatorKt.m291LinearProgressIndicatorrIrjwxo(fillMaxWidth, ((WikipediaColor) gapComposer2.consume(providableCompositionLocal)).progressiveColor, ((WikipediaColor) gapComposer2.consume(providableCompositionLocal)).borderColor, 0, RecyclerView.DECELERATION_RATE, gapComposer2, 6);
                        gapComposer2.end(true);
                        gapComposer2.end(false);
                        return unit;
                    }
                    if (resource2 instanceof Resource.Error) {
                        gapComposer2.startReplaceGroup(254626565);
                        Modifier padding2 = OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues);
                        MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                        long j2 = gapComposer2.compositeKeyHashCode;
                        int i13 = (int) (j2 ^ (j2 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, padding2);
                        ComposeUiNode.Companion.getClass();
                        Function0 function010 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(function010);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m327setimpl(gapComposer2, Integer.valueOf(i13), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                        Okio__JvmOkioKt.WikiErrorView(SizeKt.fillMaxWidth(companion, 1.0f), ((Resource.Error) resource2).throwable, wikiErrorClickEvents3, false, gapComposer2, 6, 20);
                        gapComposer2.end(true);
                        gapComposer2.end(false);
                        return unit;
                    }
                    if (resource2 instanceof Resource.Success) {
                        gapComposer2.startReplaceGroup(255201057);
                        function04.invoke();
                        gapComposer2.end(false);
                        return unit;
                    }
                    gapComposer2.startReplaceGroup(255288818);
                    gapComposer2.end(false);
                    Modifier padding3 = OffsetKt.padding(companion, paddingValues);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                    long j3 = gapComposer2.compositeKeyHashCode;
                    int i14 = (int) ((j3 >>> 32) ^ j3);
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, padding3);
                    ComposeUiNode.Companion.getClass();
                    Function0 function011 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(function011);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer2, Integer.valueOf(i14), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer2, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                    boolean z3 = z;
                    boolean changed = gapComposer2.changed(z3);
                    Function1 function16 = function1;
                    boolean changed2 = changed | gapComposer2.changed(function16);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    MutableState mutableState4 = mutableState;
                    Object obj5 = Composer$Companion.Empty;
                    if (changed2 || rememberedValue2 == obj5) {
                        rememberedValue2 = new HomePreferenceScreenKt$$ExternalSyntheticLambda10(z3, function16, mutableState4, 2);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(Jsoup.noRippleClickable$default(companion, (Function0) rememberedValue2), 16.0f);
                    boolean changed3 = gapComposer2.changed(z3) | gapComposer2.changed(function16);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changed3 || rememberedValue3 == obj5) {
                        rememberedValue3 = new RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda4(z3, function16, mutableState4, 0);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    RecommendedReadingListSourceScreenKt.RecommendedReadingListSwitch(0, gapComposer2, m132padding3ABfNKs, (Function1) rememberedValue3, z3);
                    RecommendedReadingListSettingsState recommendedReadingListSettingsState2 = recommendedReadingListSettingsState;
                    if (recommendedReadingListSettingsState2.isRecommendedReadingListEnabled) {
                        gapComposer2.startReplaceGroup(1023830013);
                        int i15 = recommendedReadingListSettingsState2.articlesNumber;
                        RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency = recommendedReadingListSettingsState2.updateFrequency;
                        RecommendedReadingListSource recommendedReadingListSource = recommendedReadingListSettingsState2.recommendedReadingListSource;
                        boolean z4 = recommendedReadingListSettingsState2.isRecommendedReadingListNotificationEnabled;
                        Function1 function17 = function14;
                        Function1 function18 = function13;
                        Function0 function012 = function07;
                        Function0 function013 = function08;
                        Function1 function19 = function12;
                        mutableState2 = mutableState4;
                        obj4 = obj5;
                        function15 = function16;
                        RecommendedReadingListSourceScreenKt.EnabledState(i15, recommendedReadingListUpdateFrequency, recommendedReadingListSource, z4, function17, function18, function012, function013, function19, null, gapComposer2, 0);
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(1023670673);
                        RecommendedReadingListSourceScreenKt.DisabledState(OffsetKt.m132padding3ABfNKs(companion, 16.0f), gapComposer2, 6);
                        gapComposer2.end(false);
                        function15 = function16;
                        mutableState2 = mutableState4;
                        obj4 = obj5;
                    }
                    gapComposer2.end(true);
                    if (!((Boolean) mutableState2.getValue()).booleanValue()) {
                        gapComposer2.startReplaceGroup(258345170);
                        gapComposer2.end(false);
                        return unit;
                    }
                    gapComposer2.startReplaceGroup(257188126);
                    String stringResource = UtilsKt.stringResource(R.string.recommended_reading_list_settings_turn_off_dialog_title, gapComposer2);
                    String lowerCase = recommendedReadingListSettingsState2.updateFrequency.name().toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                    String stringResource2 = UtilsKt.stringResource(R.string.recommended_reading_list_settings_turn_off_dialog_message, new Object[]{lowerCase}, gapComposer2);
                    String stringResource3 = UtilsKt.stringResource(R.string.recommended_reading_list_settings_turn_off_dialog_negative_button, gapComposer2);
                    String stringResource4 = UtilsKt.stringResource(R.string.recommended_reading_list_settings_turn_off_dialog_positive_button, gapComposer2);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    Object obj6 = obj4;
                    if (rememberedValue4 == obj6) {
                        i11 = 6;
                        mutableState3 = mutableState2;
                        rememberedValue4 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda32(mutableState3, 6);
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    } else {
                        i11 = 6;
                        mutableState3 = mutableState2;
                    }
                    Function0 function014 = (Function0) rememberedValue4;
                    boolean changed4 = gapComposer2.changed(function15);
                    Object rememberedValue5 = gapComposer2.rememberedValue();
                    if (changed4 || rememberedValue5 == obj6) {
                        rememberedValue5 = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function15, mutableState3, 5);
                        gapComposer2.updateRememberedValue(rememberedValue5);
                    }
                    Function0 function015 = (Function0) rememberedValue5;
                    boolean changed5 = gapComposer2.changed(function15);
                    Object rememberedValue6 = gapComposer2.rememberedValue();
                    if (changed5 || rememberedValue6 == obj6) {
                        rememberedValue6 = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function15, mutableState3, i11);
                        gapComposer2.updateRememberedValue(rememberedValue6);
                    }
                    TabsBoxKt.m905WikipediaAlertDialogsK9R1Co(null, stringResource, null, 0, stringResource2, null, 0, null, stringResource3, 0L, stringResource4, 0L, function014, function015, (Function0) rememberedValue6, gapComposer2, 0, 384, 2797);
                    gapComposer2.end(false);
                    return unit;
                }
            }, gapComposer), gapComposer, (i9 & 14) | 805306416, 444);
            wikiErrorClickEvents2 = wikiErrorClickEvents3;
            modifier3 = modifier5;
        } else {
            gapComposer.skipToGroupEnd();
            wikiErrorClickEvents2 = wikiErrorClickEvents;
            modifier3 = modifier2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i | 1);
                    int updateChangedFlags2 = Updater.updateChangedFlags(i2);
                    RecommendedReadingListSourceScreenKt.RecommendedReadingListSettingsScreen(Modifier.this, recommendedReadingListSettingsState, resource, function0, function02, function03, function1, function12, function13, function14, function04, wikiErrorClickEvents2, (GapComposer) obj, updateChangedFlags, updateChangedFlags2, i3);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void RecommendedReadingListSwitch(int i, GapComposer gapComposer, Modifier modifier, Function1 function1, boolean z) {
        GapComposer gapComposer2;
        gapComposer.startRestartGroup(695229801);
        int i2 = 2;
        int i3 = (gapComposer.changed(z) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changed(modifier) ? 256 : 128);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            Modifier clip = ClipKt.clip(modifier, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f));
            int i4 = ListItemDefaults.$r8$clinit;
            gapComposer2 = gapComposer;
            CardKt.m267ListItemHXNGIdc(f55lambda$1945706553, clip, null, null, Expect_jvmKt.rememberComposableLambda(-1170054132, new ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5(z, function1, i2), gapComposer), ListItemDefaults.m287colorsJ08w3E(((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).backgroundColor, gapComposer), gapComposer2, 196614, 412);
        } else {
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new DonationReminderScreenKt$$ExternalSyntheticLambda33(z, function1, modifier, i, 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void SettingsSection(androidx.compose.ui.Modifier r17, boolean r18, androidx.compose.runtime.internal.ComposableLambdaImpl r19, androidx.compose.runtime.GapComposer r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt.SettingsSection(androidx.compose.ui.Modifier, boolean, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void SourceOptionCard(boolean z, Modifier modifier, int i, int i2, GapComposer gapComposer, int i3) {
        long j;
        modifier.getClass();
        gapComposer.startRestartGroup(1458716839);
        int i4 = i3 | (gapComposer.changed(z) ? 4 : 2) | (gapComposer.changed(modifier) ? 32 : 16) | (gapComposer.changed(i) ? 256 : 128) | (gapComposer.changed(i2) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 1171) != 1170)) {
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f), 16.0f, RecyclerView.DECELERATION_RATE, 2);
            if (z) {
                gapComposer.startReplaceGroup(1667555476);
                j = NodeTraversor.getColors(gapComposer).additionColor;
            } else {
                gapComposer.startReplaceGroup(1667556785);
                j = NodeTraversor.getColors(gapComposer).paperColor;
            }
            gapComposer.end(false);
            TabsBoxKt.m902WikiCardjfnsLPA(m134paddingVpY3zN4$default, RecyclerView.DECELERATION_RATE, CardKt.m274cardColorsro_MJ88(j, 0L, gapComposer, 0, 14), ImageKt.m45BorderStrokecXLIe8U(1.0f, NodeTraversor.getColors(gapComposer).borderColor), null, null, Expect_jvmKt.rememberComposableLambda(-1221251686, new RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14(modifier, i, i2, z), gapComposer), gapComposer, 1572918, 48);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14(z, modifier, i, i2, i3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [boolean, int] */
    public static final void SourceSelectionContent(final Function1 function1, Function0 function0, final RecommendedReadingListSource recommendedReadingListSource, final boolean z, final boolean z2, final boolean z3, GapComposer gapComposer, final int i) {
        Function0 function02;
        GapComposer gapComposer2;
        int i2;
        float f;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12;
        Modifier.Companion companion;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13;
        OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14;
        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1;
        final ?? r2;
        GapComposer gapComposer3;
        String str;
        boolean z4;
        boolean z5;
        GapComposer gapComposer4;
        boolean z6;
        boolean z7;
        GapComposer gapComposer5 = gapComposer;
        function1.getClass();
        function0.getClass();
        recommendedReadingListSource.getClass();
        gapComposer5.startRestartGroup(1238960707);
        int i3 = i | (gapComposer5.changedInstance(function1) ? 4 : 2) | (gapComposer5.changedInstance(function0) ? 32 : 16) | (gapComposer5.changed(recommendedReadingListSource.ordinal()) ? 256 : 128) | (gapComposer5.changed(z) ? 2048 : 1024) | (gapComposer5.changed(z2) ? 16384 : 8192) | (gapComposer5.changed(z3) ? 131072 : 65536);
        if (gapComposer5.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            Modifier scroll$default = ImageKt.scroll$default(SizeKt.FillWholeMaxSize, ImageKt.rememberScrollState(gapComposer5), true);
            BiasAlignment.Horizontal horizontal = Alignment.Companion.CenterHorizontally;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, horizontal, gapComposer5, 48);
            long j = gapComposer5.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer5.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer5, scroll$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
            gapComposer5.startReusableNode();
            if (gapComposer5.inserting) {
                gapComposer5.createNode(layoutNode$Companion$Constructor$12);
            } else {
                gapComposer5.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer5, columnMeasurePolicy, composeUiNode$Companion$SetModifier$15);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer5, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$16);
            Integer valueOf = Integer.valueOf(i4);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer5, valueOf, composeUiNode$Companion$SetModifier$17);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$12);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$18 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer5, materializeModifier, composeUiNode$Companion$SetModifier$18);
            Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
            if (z3) {
                i2 = i3;
                gapComposer5.startReplaceGroup(369539176);
                OffsetKt.Spacer(gapComposer5, SizeKt.m140height3ABfNKs(companion2, 16.0f));
                gapComposer5.end(false);
                f = 1.0f;
            } else {
                i2 = i3;
                gapComposer5.startReplaceGroup(369471627);
                f = 1.0f;
                OffsetKt.Spacer(gapComposer5, Animation.CC.weight$default(companion2, 1.0f));
                gapComposer5.end(false);
            }
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion2, f);
            ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(24.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), horizontal, gapComposer5, 54);
            long j2 = gapComposer5.compositeKeyHashCode;
            int i5 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer5.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer5, fillMaxWidth);
            gapComposer5.startReusableNode();
            if (gapComposer5.inserting) {
                gapComposer5.createNode(layoutNode$Companion$Constructor$12);
            } else {
                gapComposer5.useNode();
            }
            Updater.m327setimpl(gapComposer5, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$15);
            Updater.m327setimpl(gapComposer5, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$16);
            Animation.CC.m(i5, gapComposer5, composeUiNode$Companion$SetModifier$17, gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$12);
            Updater.m327setimpl(gapComposer5, materializeModifier2, composeUiNode$Companion$SetModifier$18);
            if (z3) {
                composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$18;
                composeUiNode$Companion$SetModifier$12 = composeUiNode$Companion$SetModifier$16;
                companion = companion2;
                composeUiNode$Companion$SetModifier$13 = composeUiNode$Companion$SetModifier$15;
                ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                composeUiNode$Companion$SetModifier$14 = composeUiNode$Companion$SetModifier$17;
                layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                r2 = 0;
                gapComposer5.startReplaceGroup(1429413267);
                gapComposer5.end(false);
                gapComposer3 = gapComposer5;
            } else {
                gapComposer5.startReplaceGroup(1429063029);
                composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$18;
                r2 = 0;
                composeUiNode$Companion$SetModifier$14 = composeUiNode$Companion$SetModifier$17;
                layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                companion = companion2;
                ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                composeUiNode$Companion$SetModifier$13 = composeUiNode$Companion$SetModifier$15;
                composeUiNode$Companion$SetModifier$12 = composeUiNode$Companion$SetModifier$16;
                TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.recommended_reading_list_interest_source_message, gapComposer5), OffsetKt.m134paddingVpY3zN4$default(companion2, 16.0f, RecyclerView.DECELERATION_RATE, 2), ((WikipediaColor) gapComposer5.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, ContextsKt.getSp(22), null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, null, gapComposer, 24624, 0, 261096);
                GapComposer gapComposer6 = gapComposer;
                gapComposer6.end(false);
                gapComposer3 = gapComposer6;
            }
            int i6 = i2 & 14;
            boolean z8 = i6 == 4 ? true : r2;
            Object rememberedValue = gapComposer3.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (z8 || rememberedValue == obj) {
                rememberedValue = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i7 = r2;
                        Unit unit = Unit.INSTANCE;
                        Function1 function12 = function1;
                        switch (i7) {
                            case 0:
                                function12.invoke(RecommendedReadingListSource.INTERESTS);
                                break;
                            default:
                                function12.invoke(RecommendedReadingListSource.HISTORY);
                                break;
                        }
                        return unit;
                    }
                };
                gapComposer3.updateRememberedValue(rememberedValue);
            }
            Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, companion, null, (Function0) rememberedValue, r2);
            if (recommendedReadingListSource == RecommendedReadingListSource.INTERESTS) {
                str = null;
                z4 = true;
            } else {
                str = null;
                z4 = r2;
            }
            String str2 = str;
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$13 = ownerSnapshotObserver$onCommitAffectingLayout$1;
            SourceOptionCard(z4, m51clickableoSLSa3U$default, R.drawable.outline_interests_24, R.string.recommended_reading_list_interest_source_interests, gapComposer3, 0);
            if (z) {
                gapComposer3.startReplaceGroup(1429940236);
                boolean z9 = i6 == 4 ? true : r2;
                Object rememberedValue2 = gapComposer3.rememberedValue();
                if (z9 || rememberedValue2 == obj) {
                    rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda4(function1, 29);
                    gapComposer3.updateRememberedValue(rememberedValue2);
                }
                Modifier m51clickableoSLSa3U$default2 = ImageKt.m51clickableoSLSa3U$default(15, companion, str2, (Function0) rememberedValue2, r2);
                if (recommendedReadingListSource == RecommendedReadingListSource.READING_LIST) {
                    z6 = 29;
                    z7 = true;
                } else {
                    z6 = 29;
                    z7 = r2;
                }
                SourceOptionCard(z7, m51clickableoSLSa3U$default2, R.drawable.ic_bookmark_border_white_24dp, R.string.recommended_reading_list_interest_source_saved, gapComposer3, 0);
                gapComposer3.end(r2);
            } else {
                gapComposer3.startReplaceGroup(1430422131);
                gapComposer3.end(r2);
            }
            if (z2) {
                gapComposer3.startReplaceGroup(1430496004);
                boolean z10 = i6 == 4 ? true : r2;
                Object rememberedValue3 = gapComposer3.rememberedValue();
                if (z10 || rememberedValue3 == obj) {
                    final int i7 = 1;
                    rememberedValue3 = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda9
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i72 = i7;
                            Unit unit = Unit.INSTANCE;
                            Function1 function12 = function1;
                            switch (i72) {
                                case 0:
                                    function12.invoke(RecommendedReadingListSource.INTERESTS);
                                    break;
                                default:
                                    function12.invoke(RecommendedReadingListSource.HISTORY);
                                    break;
                            }
                            return unit;
                        }
                    };
                    gapComposer3.updateRememberedValue(rememberedValue3);
                }
                SourceOptionCard(recommendedReadingListSource == RecommendedReadingListSource.HISTORY ? true : r2, ImageKt.m51clickableoSLSa3U$default(15, companion, str2, (Function0) rememberedValue3, r2), R.drawable.ic_history_24, R.string.recommended_reading_list_interest_source_history, gapComposer3, 0);
                gapComposer3.end(r2);
            } else {
                gapComposer3.startReplaceGroup(1430954835);
                gapComposer3.end(r2);
            }
            gapComposer3.end(true);
            if (z3) {
                function02 = function0;
                z5 = true;
                gapComposer3.startReplaceGroup(372808777);
                gapComposer3.end(r2);
                gapComposer4 = gapComposer3;
            } else {
                gapComposer3.startReplaceGroup(371842011);
                OffsetKt.Spacer(gapComposer3, Animation.CC.weight$default(companion, 1.0f));
                Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 56.0f);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, r2);
                long j3 = gapComposer3.compositeKeyHashCode;
                int i8 = (int) (j3 ^ (j3 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer3.currentCompositionLocalScope();
                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer3, m140height3ABfNKs);
                gapComposer3.startReusableNode();
                if (gapComposer3.inserting) {
                    gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer3.useNode();
                }
                Updater.m327setimpl(gapComposer3, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$13);
                Updater.m327setimpl(gapComposer3, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i8, gapComposer3, composeUiNode$Companion$SetModifier$14, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$13);
                Updater.m327setimpl(gapComposer3, materializeModifier3, composeUiNode$Companion$SetModifier$1);
                Modifier m140height3ABfNKs2 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 1.0f);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                OffsetKt.Spacer(gapComposer3, ImageKt.m46backgroundbw27NRU(m140height3ABfNKs2, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal)).borderColor, ColorKt.RectangleShape));
                Painter painterResource = UnsignedKt.painterResource(R.drawable.ic_arrow_forward_black_24dp, r2, gapComposer3);
                String stringResource = UtilsKt.stringResource(R.string.nav_item_forward, gapComposer3);
                long j4 = ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal)).primaryColor;
                Modifier align = BoxScopeInstance.INSTANCE.align(SizeKt.m145size3ABfNKs(companion, 48.0f), Alignment.Companion.CenterEnd);
                boolean z11 = (i2 & 112) == 32 ? true : r2;
                Object rememberedValue4 = gapComposer3.rememberedValue();
                if (z11 || rememberedValue4 == obj) {
                    function02 = function0;
                    rememberedValue4 = new Handshake$$ExternalSyntheticLambda0(29, function02);
                    gapComposer3.updateRememberedValue(rememberedValue4);
                } else {
                    function02 = function0;
                }
                GapComposer gapComposer7 = gapComposer3;
                IconKt.m286Iconww6aTOc(painterResource, stringResource, OffsetKt.m132padding3ABfNKs(ImageKt.m51clickableoSLSa3U$default(15, align, null, (Function0) rememberedValue4, r2), 12.0f), j4, gapComposer7, 8, 0);
                GapComposer gapComposer8 = gapComposer7;
                z5 = true;
                gapComposer8.end(true);
                gapComposer8.end(r2);
                gapComposer4 = gapComposer8;
            }
            gapComposer4.end(z5);
            gapComposer2 = gapComposer4;
        } else {
            function02 = function0;
            gapComposer5.skipToGroupEnd();
            gapComposer2 = gapComposer5;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            final Function0 function03 = function02;
            endRestartGroup.block = new Function2(function03, recommendedReadingListSource, z, z2, z3, i) { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda13
                public final /* synthetic */ Function0 f$1;
                public final /* synthetic */ RecommendedReadingListSource f$2;
                public final /* synthetic */ boolean f$3;
                public final /* synthetic */ boolean f$4;
                public final /* synthetic */ boolean f$5;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    RecommendedReadingListSourceScreenKt.SourceSelectionContent(Function1.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, (GapComposer) obj2, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void SourceSelectionScreen(final Resource resource, final boolean z, final WikiErrorClickEvents wikiErrorClickEvents, Function0 function0, final Function0 function02, final Function1 function1, GapComposer gapComposer, int i) {
        resource.getClass();
        function0.getClass();
        function02.getClass();
        function1.getClass();
        gapComposer.startRestartGroup(2146694627);
        int i2 = i | (gapComposer.changed(resource) ? 4 : 2) | (gapComposer.changed(z) ? 32 : 16) | (gapComposer.changedInstance(wikiErrorClickEvents) ? 256 : 128) | (gapComposer.changedInstance(function0) ? 2048 : 1024) | (gapComposer.changedInstance(function02) ? 16384 : 8192) | (gapComposer.changedInstance(function1) ? 131072 : 65536);
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            float f = TopAppBarDefaults.TopAppBarExpandedHeight;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = AppBarKt.LocalSingleRowTopAppBarOverride;
            Object[] objArr = new Object[0];
            CardView.AnonymousClass1 anonymousClass1 = TopAppBarState.Saver;
            boolean changed = gapComposer.changed(-3.4028235E38f) | gapComposer.changed(RecyclerView.DECELERATION_RATE) | gapComposer.changed(RecyclerView.DECELERATION_RATE);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (changed || rememberedValue == obj) {
                rememberedValue = new ImmLeaksCleaner$$ExternalSyntheticLambda0(24);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            TopAppBarState topAppBarState = (TopAppBarState) SaverKt.rememberSaveable(objArr, anonymousClass1, (Function0) rememberedValue, gapComposer, 0);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = new ImmLeaksCleaner$$ExternalSyntheticLambda0(9);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Function0 function03 = (Function0) rememberedValue2;
            boolean changed2 = gapComposer.changed(topAppBarState) | gapComposer.changed(function03);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == obj) {
                rememberedValue3 = new PinnedScrollBehavior(topAppBarState, function03);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            PinnedScrollBehavior pinnedScrollBehavior = (PinnedScrollBehavior) rememberedValue3;
            boolean z2 = (i2 & 7168) == 2048;
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (z2 || rememberedValue4 == obj) {
                rememberedValue4 = new Handshake$$ExternalSyntheticLambda0(28, function0);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Operation$State.BackHandler(false, (Function0) rememberedValue4, gapComposer, 0);
            Modifier nestedScroll = NestedScrollModifierKt.nestedScroll(SizeKt.FillWholeMaxSize, pinnedScrollBehavior.nestedScrollConnection, null);
            ProvidableCompositionLocal providableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            CardKt.m270ScaffoldTvnljyQ(ImageKt.m46backgroundbw27NRU(nestedScroll, ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).paperColor, ColorKt.RectangleShape), Expect_jvmKt.rememberComposableLambda(-1943498841, new SettingsKt$$ExternalSyntheticLambda8(pinnedScrollBehavior, z, function0), gapComposer), null, null, null, 0, ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(1828751410, new Function3() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    PaddingValues paddingValues = (PaddingValues) obj2;
                    GapComposer gapComposer2 = (GapComposer) obj3;
                    int intValue = ((Integer) obj4).intValue();
                    BiasAlignment biasAlignment = Alignment.Companion.TopStart;
                    paddingValues.getClass();
                    if ((intValue & 6) == 0) {
                        intValue |= gapComposer2.changed(paddingValues) ? 4 : 2;
                    }
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                        Resource resource2 = Resource.this;
                        boolean z3 = resource2 instanceof Resource.Loading;
                        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                        if (z3) {
                            gapComposer2.startReplaceGroup(-1326801417);
                            Modifier padding = OffsetKt.padding(SizeKt.fillMaxWidth(companion, 1.0f), paddingValues);
                            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                            long j = gapComposer2.compositeKeyHashCode;
                            int i3 = (int) (j ^ (j >>> 32));
                            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, padding);
                            ComposeUiNode.Companion.getClass();
                            Function0 function04 = ComposeUiNode.Companion.Constructor;
                            gapComposer2.startReusableNode();
                            if (gapComposer2.inserting) {
                                gapComposer2.createNode(function04);
                            } else {
                                gapComposer2.useNode();
                            }
                            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                            Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                            ProvidableCompositionLocal providableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
                            ProgressIndicatorKt.m291LinearProgressIndicatorrIrjwxo(fillMaxWidth, ((WikipediaColor) gapComposer2.consume(providableCompositionLocal2)).progressiveColor, ((WikipediaColor) gapComposer2.consume(providableCompositionLocal2)).borderColor, 0, RecyclerView.DECELERATION_RATE, gapComposer2, 6);
                            gapComposer2.end(true);
                            gapComposer2.end(false);
                        } else if (resource2 instanceof Resource.Error) {
                            gapComposer2.startReplaceGroup(-1326296024);
                            Modifier padding2 = OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues);
                            MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                            long j2 = gapComposer2.compositeKeyHashCode;
                            int i4 = (int) (j2 ^ (j2 >>> 32));
                            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, padding2);
                            ComposeUiNode.Companion.getClass();
                            Function0 function05 = ComposeUiNode.Companion.Constructor;
                            gapComposer2.startReusableNode();
                            if (gapComposer2.inserting) {
                                gapComposer2.createNode(function05);
                            } else {
                                gapComposer2.useNode();
                            }
                            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                            Updater.m327setimpl(gapComposer2, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                            Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                            Okio__JvmOkioKt.WikiErrorView(SizeKt.fillMaxWidth(companion, 1.0f), ((Resource.Error) resource2).throwable, wikiErrorClickEvents, false, gapComposer2, 6, 20);
                            gapComposer2.end(true);
                            gapComposer2.end(false);
                        } else if (resource2 instanceof Resource.Success) {
                            gapComposer2.startReplaceGroup(-1325735389);
                            Modifier padding3 = OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues);
                            MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                            long j3 = gapComposer2.compositeKeyHashCode;
                            int i5 = (int) (j3 ^ (j3 >>> 32));
                            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
                            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, padding3);
                            ComposeUiNode.Companion.getClass();
                            Function0 function06 = ComposeUiNode.Companion.Constructor;
                            gapComposer2.startReusableNode();
                            if (gapComposer2.inserting) {
                                gapComposer2.createNode(function06);
                            } else {
                                gapComposer2.useNode();
                            }
                            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                            Updater.m327setimpl(gapComposer2, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
                            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                            Updater.m327setimpl(gapComposer2, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                            RecommendedReadingListSourceViewModel.SourceSelectionUiState sourceSelectionUiState = (RecommendedReadingListSourceViewModel.SourceSelectionUiState) ((Resource.Success) resource2).data;
                            RecommendedReadingListSource recommendedReadingListSource = sourceSelectionUiState.selectedSource;
                            boolean z4 = sourceSelectionUiState.isSavedOptionEnabled;
                            boolean z5 = sourceSelectionUiState.isHistoryOptionEnabled;
                            Function1 function12 = function1;
                            boolean changed3 = gapComposer2.changed(function12);
                            Object rememberedValue5 = gapComposer2.rememberedValue();
                            Object obj5 = Composer$Companion.Empty;
                            if (changed3 || rememberedValue5 == obj5) {
                                rememberedValue5 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 26);
                                gapComposer2.updateRememberedValue(rememberedValue5);
                            }
                            Function1 function13 = (Function1) rememberedValue5;
                            Function0 function07 = function02;
                            boolean changed4 = gapComposer2.changed(function07);
                            Object rememberedValue6 = gapComposer2.rememberedValue();
                            if (changed4 || rememberedValue6 == obj5) {
                                rememberedValue6 = new SearchResultsScreenKt$$ExternalSyntheticLambda1(1, function07);
                                gapComposer2.updateRememberedValue(rememberedValue6);
                            }
                            RecommendedReadingListSourceScreenKt.SourceSelectionContent(function13, (Function0) rememberedValue6, recommendedReadingListSource, z4, z5, z, gapComposer2, 0);
                            gapComposer2.end(true);
                            gapComposer2.end(false);
                        } else {
                            gapComposer2.startReplaceGroup(-1324974928);
                            gapComposer2.end(false);
                        }
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 805306416, 444);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0(resource, z, wikiErrorClickEvents, function0, function02, function1, i);
        }
    }

    public static final void SourceView(RecommendedReadingListSource recommendedReadingListSource, Modifier modifier, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(171271843);
        int i3 = (gapComposer.changed(recommendedReadingListSource.ordinal()) ? 4 : 2) | i | (gapComposer.changed(modifier) ? 32 : 16);
        int i4 = 0;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            int i5 = RecommendedReadingListSettingsScreenKt$WhenMappings.$EnumSwitchMapping$0[recommendedReadingListSource.ordinal()];
            if (i5 == 1) {
                i2 = R.string.recommended_reading_list_settings_updates_base_subtitle_interests;
            } else if (i5 == 2) {
                i2 = R.string.recommended_reading_list_settings_updates_base_subtitle_saved;
            } else {
                if (i5 != 3) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                i2 = R.string.recommended_reading_list_settings_updates_base_subtitle_history;
            }
            int i6 = ListItemDefaults.$r8$clinit;
            CardKt.m267ListItemHXNGIdc(f59lambda$843599355, modifier, Expect_jvmKt.rememberComposableLambda(-2022596190, new RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda36(i2, i4), gapComposer), lambda$1879372161, null, ListItemDefaults.m287colorsJ08w3E(((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, gapComposer), gapComposer, (i3 & 112) | 27654, 420);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomActivity$$ExternalSyntheticLambda1(recommendedReadingListSource, modifier, i, 7);
        }
    }

    public static final void UpdatesFrequencyView(RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency, Function1 function1, Modifier modifier, GapComposer gapComposer, int i) {
        Modifier modifier2;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(1198356025);
        int i2 = i | (gapComposer2.changed(recommendedReadingListUpdateFrequency.ordinal()) ? 4 : 2) | (gapComposer2.changedInstance(function1) ? 32 : 16) | 384;
        byte b = 0;
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Object rememberedValue = gapComposer2.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (rememberedValue == obj) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            RecommendedReadingListUpdateFrequency[] recommendedReadingListUpdateFrequencyArr = (RecommendedReadingListUpdateFrequency[]) RecommendedReadingListUpdateFrequency.getEntries().toArray(new RecommendedReadingListUpdateFrequency[0]);
            gapComposer2.startReplaceGroup(568916707);
            ArrayList arrayList = new ArrayList(recommendedReadingListUpdateFrequencyArr.length);
            for (RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency2 : recommendedReadingListUpdateFrequencyArr) {
                arrayList.add(UtilsKt.stringResource(recommendedReadingListUpdateFrequency2.getDialogStringRes(), gapComposer2));
            }
            gapComposer2.end(false);
            String stringResource = UtilsKt.stringResource(recommendedReadingListUpdateFrequency.getDialogStringRes(), gapComposer2);
            String stringResource2 = UtilsKt.stringResource(R.string.recommended_reading_list_settings_updates_frequency, new Object[]{UtilsKt.stringResource(recommendedReadingListUpdateFrequency.getDisplayStringRes(), gapComposer2)}, gapComposer2);
            boolean changed = gapComposer2.changed(arrayList) | gapComposer2.changed(recommendedReadingListUpdateFrequencyArr);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            int i3 = 10;
            if (changed || rememberedValue2 == obj) {
                int length = recommendedReadingListUpdateFrequencyArr.length;
                ArrayList arrayList2 = new ArrayList(Math.min(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10), length));
                Iterator it = arrayList.iterator();
                int i4 = 0;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (i4 >= length) {
                        break;
                    }
                    arrayList2.add(new Pair(next, recommendedReadingListUpdateFrequencyArr[i4]));
                    i4++;
                }
                rememberedValue2 = MapsKt__MapsKt.toMap(arrayList2);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            Map map = (Map) rememberedValue2;
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (rememberedValue3 == obj) {
                rememberedValue3 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda32(mutableState, 3);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(ImageKt.m51clickableoSLSa3U$default(15, companion, null, (Function0) rememberedValue3, false), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 16.0f, 7);
            int i5 = ListItemDefaults.$r8$clinit;
            CardKt.m267ListItemHXNGIdc(Expect_jvmKt.rememberComposableLambda(1670168087, new HomeScreenKt$$ExternalSyntheticLambda30(stringResource2, i3, b), gapComposer2), m136paddingqDBjuR0$default, null, lambda$1916731419, null, ListItemDefaults.m287colorsJ08w3E(((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, gapComposer2), gapComposer2, 24582, 428);
            gapComposer2 = gapComposer2;
            if (((Boolean) mutableState.getValue()).booleanValue()) {
                gapComposer2.startReplaceGroup(457987631);
                Object rememberedValue4 = gapComposer2.rememberedValue();
                if (rememberedValue4 == obj) {
                    rememberedValue4 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda32(mutableState, 4);
                    gapComposer2.updateRememberedValue(rememberedValue4);
                }
                Function0 function0 = (Function0) rememberedValue4;
                boolean changedInstance = gapComposer2.changedInstance(map) | ((i2 & 112) == 32);
                Object rememberedValue5 = gapComposer2.rememberedValue();
                if (changedInstance || rememberedValue5 == obj) {
                    rememberedValue5 = new SingleLiveData$$ExternalSyntheticLambda0(2, map, function1);
                    gapComposer2.updateRememberedValue(rememberedValue5);
                }
                RadioListDialog(null, arrayList, stringResource, function0, (Function1) rememberedValue5, gapComposer2, 3072);
                gapComposer2.end(false);
            } else {
                gapComposer2.startReplaceGroup(458412393);
                gapComposer2.end(false);
            }
            modifier2 = companion;
        } else {
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda18((Object) recommendedReadingListUpdateFrequency, function1, (Object) modifier2, i, 19);
        }
    }

    public static void scheduleRecommendedReadingListNotification(Context context) {
        Duration between;
        long j;
        context.getClass();
        Object systemService = context.getSystemService("alarm");
        systemService.getClass();
        Intent action = new Intent(context, (Class<?>) NotificationPollBroadcastReceiver.class).setAction("action_recommended_reading_list");
        action.getClass();
        ((AlarmManager) systemService).cancel(PendingIntent.getBroadcast(context, 0, action, 67108864));
        Object systemService2 = context.getSystemService("alarm");
        systemService2.getClass();
        AlarmManager alarmManager = (AlarmManager) systemService2;
        Intent action2 = new Intent(context, (Class<?>) NotificationPollBroadcastReceiver.class).setAction("action_recommended_reading_list");
        action2.getClass();
        Prefs prefs = Prefs.INSTANCE;
        RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency = Prefs.getRecommendedReadingListUpdateFrequency();
        LocalDateTime now = LocalDateTime.now();
        int[] iArr = RecommendedReadingListNotificationManager$WhenMappings.$EnumSwitchMapping$0;
        int i = iArr[recommendedReadingListUpdateFrequency.ordinal()];
        if (i == 1) {
            between = Duration.between(now, LocalDateTime.of(now.toLocalDate().plusDays(1L), LocalTime.MIDNIGHT));
            between.getClass();
        } else if (i == 2) {
            between = Duration.between(now, now.n(TemporalAdjusters.next(DayOfWeek.MONDAY)).toLocalDate().atStartOfDay());
            between.getClass();
        } else if (i != 3) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return;
        } else {
            between = Duration.between(now, now.plusMonths(1L).withDayOfMonth(1).toLocalDate().atStartOfDay());
            between.getClass();
        }
        long currentTimeMillis = System.currentTimeMillis() + between.toMillis();
        int i2 = iArr[Prefs.getRecommendedReadingListUpdateFrequency().ordinal()];
        if (i2 == 1) {
            j = 86400000;
        } else if (i2 == 2) {
            j = 604800000;
        } else {
            if (i2 != 3) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return;
            }
            j = 0;
        }
        alarmManager.setInexactRepeating(0, currentTimeMillis, j, PendingIntent.getBroadcast(context, 0, action2, 67108864));
    }

    public static void showNotification(Context context, RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency) {
        String string;
        recommendedReadingListUpdateFrequency.getClass();
        int i = RecommendedReadingListNotificationManager$WhenMappings.$EnumSwitchMapping$0[recommendedReadingListUpdateFrequency.ordinal()];
        if (i == 1) {
            string = context.getString(R.string.recommended_reading_list_settings_updates_frequency_daily);
        } else if (i == 2) {
            string = context.getString(R.string.recommended_reading_list_settings_updates_frequency_weekly);
        } else {
            if (i != 3) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return;
            }
            string = context.getString(R.string.recommended_reading_list_settings_updates_frequency_monthly);
        }
        string.getClass();
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_reset, true);
        WikiGamesEvent.submit$default("impression", "rrl_notification", null, null, null, null, null, null, 508);
        NotificationCompat$Builder defaultBuilder$default = NotificationPresenter.getDefaultBuilder$default(context, 1L, NotificationCategory.RECOMMENDED_READING_LISTS, 4);
        String string2 = context.getString(R.string.recommended_reading_list_notification_title, string);
        string2.getClass();
        String string3 = context.getString(R.string.recommended_reading_list_notification_subtitle);
        string3.getClass();
        int i2 = ReadingListActivity.$r8$clinit;
        NotificationPresenter.showNotification(context, defaultBuilder$default, 1, string2, string3, null, null, null, R.color.blue600, NodeUtils.newIntent(context, ReadingListMode.RECOMMENDED, Constants.InvokeSource.NOTIFICATION));
    }
}
