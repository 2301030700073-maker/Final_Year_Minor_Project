package org.wikipedia.widgets.readingchallenge;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.PercentCornerSize;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ProgressIndicatorKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpSize;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.BackgroundModifier;
import androidx.glance.ButtonColors;
import androidx.glance.ColorFilter;
import androidx.glance.CompositionLocalsKt;
import androidx.glance.GlanceModifier;
import androidx.glance.TintColorFilterParams;
import androidx.glance.action.ActionParameters$Pair;
import androidx.glance.appwidget.CornerRadiusModifier;
import androidx.glance.appwidget.action.RunCallbackAction;
import androidx.glance.color.DayNightColorProvider;
import androidx.glance.layout.ColumnScopeImplInstance;
import androidx.glance.layout.HeightModifier;
import androidx.glance.layout.RowScopeImplInstance;
import androidx.glance.layout.WidthModifier;
import androidx.glance.unit.Dimension;
import androidx.glance.unit.FixedColorProvider;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.BackoffPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Operation$State;
import androidx.work.impl.WorkManagerImpl;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import j$.time.Duration;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.UStringsKt;
import kotlin.uuid.UuidKt;
import okhttp3.Headers;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activitytab.ImpactModuleKt$$ExternalSyntheticLambda3;
import org.wikipedia.compose.components.NotificationBellKt$$ExternalSyntheticLambda2;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda31;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda30;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl$$ExternalSyntheticLambda19;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.Prefs$$ExternalSyntheticLambda0;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.widgets.readingchallenge.LargeWidgetSize;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeState;
import org.wikipedia.widgets.readingchallenge.SmallWidgetSize;
import org.wikipedia.yearinreview.YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.yearinreview.YearInReviewScreenDeckKt$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class StreakProgressBarKt {
    public static final ComposableLambdaImpl lambda$1029752960;
    public static final ComposableLambdaImpl lambda$1116339918;
    public static final ComposableLambdaImpl lambda$298548362;
    public static final ComposableLambdaImpl lambda$716671001;

    /* renamed from: lambda$-697822892, reason: not valid java name */
    public static final ComposableLambdaImpl f79lambda$697822892 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(12), false, -697822892);
    public static final ComposableLambdaImpl lambda$1819238617 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(13), false, 1819238617);

    /* renamed from: lambda$-1295545987, reason: not valid java name */
    public static final ComposableLambdaImpl f77lambda$1295545987 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(28), false, -1295545987);
    public static final ComposableLambdaImpl lambda$856857194 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(29), false, 856857194);

    /* renamed from: lambda$-1715926239, reason: not valid java name */
    public static final ComposableLambdaImpl f78lambda$1715926239 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(14), false, -1715926239);
    public static final ComposableLambdaImpl lambda$106262146 = new ComposableLambdaImpl(new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(3, 0), false, 106262146);
    public static final ComposableLambdaImpl lambda$1663097143 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(15), false, 1663097143);

    static {
        byte b = 0;
        lambda$1116339918 = new ComposableLambdaImpl(new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(1, b), false, 1116339918);
        lambda$1029752960 = new ComposableLambdaImpl(new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(2, b), false, 1029752960);
        lambda$298548362 = new ComposableLambdaImpl(new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(4, b), false, 298548362);
        lambda$716671001 = new ComposableLambdaImpl(new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(5, b), false, 716671001);
    }

    /* renamed from: BaseWidgetContent-Iv8Zu3U, reason: not valid java name */
    public static final void m925BaseWidgetContentIv8Zu3U(long j, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        GapComposer gapComposer2;
        gapComposer.startRestartGroup(-817938576);
        int i3 = 4;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            gapComposer2 = gapComposer;
            RegexKt.Box(DpKt.fillMaxSize(GlanceModifier.Companion.$$INSTANCE), null, Expect_jvmKt.rememberComposableLambda(-1004405550, new GamesHubScreenKt$$ExternalSyntheticLambda4(i3, j, composableLambdaImpl), gapComposer), gapComposer2, 384, 2);
        } else {
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NotificationBellKt$$ExternalSyntheticLambda2(j, composableLambdaImpl, i);
        }
    }

    /* renamed from: BoxedStreakProgressBar-nhtM5HE, reason: not valid java name */
    public static final void m926BoxedStreakProgressBarnhtM5HE(GlanceModifier glanceModifier, int i, long j, long j2, long j3, GapComposer gapComposer, int i2) {
        gapComposer.startRestartGroup(1967938147);
        int i3 = i2 | (gapComposer.changed(glanceModifier) ? 4 : 2) | (gapComposer.changed(i) ? 32 : 16) | (gapComposer.changed(R.drawable.ic_calendar_day_1) ? 2048 : 1024) | (gapComposer.changed(j) ? 16384 : 8192) | (gapComposer.changed(R.drawable.ic_calendar_day_25) ? 131072 : 65536) | (gapComposer.changed(j2) ? 1048576 : 524288);
        if (gapComposer.shouldExecute(i3 & 1, (4793491 & i3) != 4793490)) {
            RegexKt.Box(null, null, Expect_jvmKt.rememberComposableLambda(-1052922175, new StreakProgressBarKt$$ExternalSyntheticLambda0(j, glanceModifier, i, j2, j3), gapComposer), gapComposer, 384, 3);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new StreakProgressBarKt$$ExternalSyntheticLambda0(glanceModifier, i, j, j2, j3, i2);
        }
    }

    /* renamed from: EnrolledNotStartedLargeWidget-Y0xEhic, reason: not valid java name */
    public static final void m927EnrolledNotStartedLargeWidgetY0xEhic(int i, final int i2, final long j, final long j2, final int i3, final int i4, GapComposer gapComposer, final int i5) {
        final int i6;
        int i7;
        int i8;
        gapComposer.startRestartGroup(-1977106770);
        int i9 = i5 | 2 | (gapComposer.changed(i2) ? 32 : 16) | (gapComposer.changed(j) ? 256 : 128) | (gapComposer.changed(j2) ? 2048 : 1024) | (gapComposer.changed(i3) ? 16384 : 8192) | (gapComposer.changed(i4) ? 131072 : 65536);
        if (gapComposer.shouldExecute(i9 & 1, (74899 & i9) != 74898)) {
            gapComposer.startDefaults();
            if ((i5 & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                i7 = i9 & (-15);
                i8 = R.drawable.ic_w_logo_shadow;
            } else {
                gapComposer.skipToGroupEnd();
                i7 = i9 & (-15);
                i8 = i;
            }
            gapComposer.endDefaults();
            Context context = (Context) gapComposer.consume(CompositionLocalsKt.LocalContext);
            String string = context.getString(i3);
            string.getClass();
            String string2 = context.getString(i4);
            string2.getClass();
            m928GeneralLargeWidgetVQfMllA(GlanceModifier.Companion.$$INSTANCE, new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), j2, j, i8, string, string2, i2, false, null, Expect_jvmKt.rememberComposableLambda(316160979, new ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda5(context, 4), gapComposer), gapComposer, ((i7 >> 3) & 896) | 6 | ((i7 << 3) & 7168) | ((i7 << 18) & 29360128), 6, 768);
            i6 = i8;
        } else {
            gapComposer.skipToGroupEnd();
            i6 = i;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(i6, i2, j, j2, i3, i4, i5) { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda34
                public final /* synthetic */ int f$0;
                public final /* synthetic */ int f$1;
                public final /* synthetic */ long f$2;
                public final /* synthetic */ long f$3;
                public final /* synthetic */ int f$4;
                public final /* synthetic */ int f$5;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    StreakProgressBarKt.m927EnrolledNotStartedLargeWidgetY0xEhic(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01d3  */
    /* renamed from: GeneralLargeWidget-VQfMllA, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m928GeneralLargeWidgetVQfMllA(final androidx.glance.GlanceModifier r31, final androidx.glance.appwidget.action.RunCallbackAction r32, final long r33, final long r35, int r37, final java.lang.String r38, java.lang.String r39, final int r40, boolean r41, kotlin.jvm.functions.Function2 r42, kotlin.jvm.functions.Function2 r43, androidx.compose.runtime.GapComposer r44, final int r45, final int r46, final int r47) {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.widgets.readingchallenge.StreakProgressBarKt.m928GeneralLargeWidgetVQfMllA(androidx.glance.GlanceModifier, androidx.glance.appwidget.action.RunCallbackAction, long, long, int, java.lang.String, java.lang.String, int, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.runtime.GapComposer, int, int, int):void");
    }

    /* renamed from: RandomArticleLargeWidget-6xbWgXg, reason: not valid java name */
    public static final void m929RandomArticleLargeWidget6xbWgXg(final long j, final long j2, final int i, int i2, GapComposer gapComposer, final int i3) {
        final int i4;
        int i5;
        int i6;
        gapComposer.startRestartGroup(1759678200);
        int i7 = i3 | (gapComposer.changed(j) ? 4 : 2) | (gapComposer.changed(j2) ? 32 : 16) | (gapComposer.changed(i) ? 256 : 128) | 1024;
        if (gapComposer.shouldExecute(i7 & 1, (i7 & 1171) != 1170)) {
            gapComposer.startDefaults();
            if ((i3 & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                i5 = i7 & (-7169);
                i6 = R.drawable.ic_w_logo_shadow;
            } else {
                gapComposer.skipToGroupEnd();
                i5 = i7 & (-7169);
                i6 = i2;
            }
            gapComposer.endDefaults();
            Context context = (Context) gapComposer.consume(CompositionLocalsKt.LocalContext);
            LargeWidgetSize.Companion companion = LargeWidgetSize.Companion;
            long j3 = ((DpSize) gapComposer.consume(CompositionLocalsKt.LocalSize)).packedValue;
            companion.getClass();
            m925BaseWidgetContentIv8Zu3U(j, Expect_jvmKt.rememberComposableLambda(-85353488, new ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29(i6, LargeWidgetSize.Companion.m921fromEaSLcWc(j3), i, context, j2, j, 0), gapComposer), gapComposer, (i5 & 14) | 48);
            i4 = i6;
        } else {
            gapComposer.skipToGroupEnd();
            i4 = i2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(j, j2, i, i4, i3) { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda30
                public final /* synthetic */ long f$0;
                public final /* synthetic */ long f$1;
                public final /* synthetic */ int f$2;
                public final /* synthetic */ int f$3;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    StreakProgressBarKt.m929RandomArticleLargeWidget6xbWgXg(this.f$0, this.f$1, this.f$2, this.f$3, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void ReadingChallengeLargeWidgetContent(ReadingChallengeState readingChallengeState, LocalDate localDate, GapComposer gapComposer, int i) {
        byte b;
        readingChallengeState.getClass();
        gapComposer.startRestartGroup(2113374572);
        int i2 = 2;
        int i3 = i | (gapComposer.changed(readingChallengeState) ? 4 : 2) | (gapComposer.changedInstance(localDate) ? 32 : 16);
        int i4 = 1;
        byte b2 = 0;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            Context context = (Context) gapComposer.consume(CompositionLocalsKt.LocalContext);
            boolean equals = readingChallengeState.equals(ReadingChallengeState.Loading.INSTANCE);
            GlanceModifier.Companion companion = GlanceModifier.Companion.$$INSTANCE;
            if (equals) {
                gapComposer.startReplaceGroup(-383507771);
                ReadingChallengeWidgetLoading(DpKt.fillMaxSize(companion), 0, gapComposer, 0);
                gapComposer.end(false);
                b = 0;
            } else if (readingChallengeState.equals(ReadingChallengeState.Loading.INSTANCE$1)) {
                gapComposer.startReplaceGroup(-383265847);
                String quantityString = context.getResources().getQuantityString(R.plurals.reading_challenge_small_widget_streak_final_large, 25, 25, 25);
                quantityString.getClass();
                GlanceModifier fillMaxSize = DpKt.fillMaxSize(companion);
                RunCallbackAction runCallbackAction = new RunCallbackAction(ChallengeRewardAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)));
                long j = WidgetColors.joinChallengeBackground;
                long j2 = WidgetColors.primary;
                String string = context.getString(R.string.reading_challenge_widget_concluded_complete);
                string.getClass();
                b = 0;
                m928GeneralLargeWidgetVQfMllA(fillMaxSize, runCallbackAction, j2, j, 0, string, null, R.drawable.wp25_babyglobe_celebration_neutral, true, Expect_jvmKt.rememberComposableLambda(-1315424966, new HomeScreenKt$$ExternalSyntheticLambda30(quantityString, 13, b2), gapComposer), Expect_jvmKt.rememberComposableLambda(-1133594744, new ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda5(context, i4), gapComposer), gapComposer, 905973120, 6, 80);
                gapComposer.end(false);
            } else {
                b = 0;
                int i5 = 14;
                if (readingChallengeState instanceof ReadingChallengeState.ChallengeConcludedIncomplete) {
                    gapComposer.startReplaceGroup(-381610323);
                    String quantityString2 = context.getResources().getQuantityString(R.plurals.reading_challenge_small_widget_streak_final_large, 25, Integer.valueOf(((ReadingChallengeState.ChallengeConcludedIncomplete) readingChallengeState).streak), 25);
                    quantityString2.getClass();
                    GlanceModifier fillMaxSize2 = DpKt.fillMaxSize(companion);
                    RunCallbackAction runCallbackAction2 = new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)));
                    long j3 = WidgetColors.joinChallengeBackground;
                    long j4 = WidgetColors.primary;
                    String string2 = context.getString(R.string.reading_challenge_widget_concluded_incomplete);
                    string2.getClass();
                    m928GeneralLargeWidgetVQfMllA(fillMaxSize2, runCallbackAction2, j4, j3, 0, string2, null, R.drawable.wp25_babyglobe_reading, true, null, Expect_jvmKt.rememberComposableLambda(-1478510489, new HomeScreenKt$$ExternalSyntheticLambda30(quantityString2, i5, b), gapComposer), gapComposer, 100666752, 6, 592);
                    gapComposer.end(false);
                } else if (readingChallengeState.equals(ReadingChallengeState.Loading.INSTANCE$2) || readingChallengeState.equals(ReadingChallengeState.Loading.INSTANCE$3)) {
                    gapComposer.startReplaceGroup(-380242045);
                    GlanceModifier fillMaxSize3 = DpKt.fillMaxSize(companion);
                    RunCallbackAction runCallbackAction3 = new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)));
                    long j5 = WidgetColors.joinChallengeBackground;
                    long j6 = WidgetColors.primary;
                    String string3 = context.getString(R.string.reading_challenge_widget_concluded_incomplete);
                    string3.getClass();
                    m928GeneralLargeWidgetVQfMllA(fillMaxSize3, runCallbackAction3, j6, j5, 0, string3, null, R.drawable.wp25_babyglobe_reading, true, null, null, gapComposer, 100666752, 0, 1616);
                    gapComposer.end(false);
                } else if (readingChallengeState.equals(ReadingChallengeState.Loading.INSTANCE$6)) {
                    gapComposer.startReplaceGroup(-379694275);
                    List list = WidgetCombinations.streakNeedsReading;
                    WidgetCombination forToday$default = WidgetCombinations.forToday$default(WidgetCombinations.streakOngoing, localDate);
                    m929RandomArticleLargeWidget6xbWgXg(forToday$default.backgroundColor, forToday$default.contentColor, forToday$default.iconResId, 0, gapComposer, 0);
                    gapComposer.end(false);
                } else if (readingChallengeState.equals(ReadingChallengeState.EnrolledNotStarted.INSTANCE)) {
                    gapComposer.startReplaceGroup(-379291709);
                    List list2 = WidgetCombinations.streakNeedsReading;
                    WidgetCombination forToday$default2 = WidgetCombinations.forToday$default(WidgetCombinations.enrolledNotStarted, localDate);
                    int i6 = forToday$default2.iconResId;
                    long j7 = forToday$default2.backgroundColor;
                    long j8 = forToday$default2.contentColor;
                    Integer num = forToday$default2.titleResId;
                    int intValue = num != null ? num.intValue() : R.string.reading_challenge_widget_enrolled_not_started_title;
                    Integer num2 = forToday$default2.subtitleResId;
                    m927EnrolledNotStartedLargeWidgetY0xEhic(0, i6, j7, j8, intValue, num2 != null ? num2.intValue() : R.string.reading_challenge_widget_enrolled_not_started_subtitle, gapComposer, 0);
                    gapComposer.end(false);
                } else if (readingChallengeState.equals(ReadingChallengeState.Loading.INSTANCE$4)) {
                    gapComposer.startReplaceGroup(-378633455);
                    GlanceModifier fillMaxSize4 = DpKt.fillMaxSize(companion);
                    RunCallbackAction runCallbackAction4 = new RunCallbackAction(JoinChallengeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)));
                    long j9 = WidgetColors.joinChallengeBackground;
                    long j10 = WidgetColors.primary;
                    String string4 = context.getString(R.string.reading_challenge_widget_not_opted_in_title);
                    string4.getClass();
                    m928GeneralLargeWidgetVQfMllA(fillMaxSize4, runCallbackAction4, j10, j9, 0, string4, context.getString(R.string.reading_challenge_widget_not_opted_in_description), R.drawable.wp25_babyglobe_reading, false, null, Expect_jvmKt.rememberComposableLambda(1436793827, new ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda5(context, i2), gapComposer), gapComposer, 3456, 6, 784);
                    gapComposer.end(false);
                } else if (readingChallengeState.equals(ReadingChallengeState.Loading.INSTANCE$5)) {
                    gapComposer.startReplaceGroup(-377703703);
                    GlanceModifier fillMaxSize5 = DpKt.fillMaxSize(companion);
                    RunCallbackAction runCallbackAction5 = new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)));
                    long j11 = WidgetColors.challengeNotLiveBackground;
                    long j12 = WidgetColors.primary;
                    String string5 = context.getString(R.string.reading_challenge_widget_not_live_title);
                    string5.getClass();
                    m928GeneralLargeWidgetVQfMllA(fillMaxSize5, runCallbackAction5, j12, j11, 0, string5, context.getString(R.string.reading_challenge_widget_not_live_description), R.drawable.wp25_babyglobe_reading, false, null, Expect_jvmKt.rememberComposableLambda(1091878082, new ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda5(context, 3), gapComposer), gapComposer, 3456, 6, 784);
                    gapComposer.end(false);
                } else if (readingChallengeState instanceof ReadingChallengeState.StreakOngoingNeedsReading) {
                    gapComposer.startReplaceGroup(-376796674);
                    List list3 = WidgetCombinations.streakNeedsReading;
                    WidgetCombination forToday$default3 = WidgetCombinations.forToday$default(WidgetCombinations.streakNeedsReading, localDate);
                    GlanceModifier m844paddingVpY3zN4 = UStringsKt.m844paddingVpY3zN4(DpKt.fillMaxSize(companion));
                    RunCallbackAction runCallbackAction6 = new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)));
                    Integer num3 = forToday$default3.titleResId;
                    m932StreakOngoingNeedsReadingLargeWidgetIDJXs2g(m844paddingVpY3zN4, runCallbackAction6, (ReadingChallengeState.StreakOngoingNeedsReading) readingChallengeState, 0, num3 != null ? num3.intValue() : R.string.reading_challenge_widget_reminder_dont_let_today_drift, forToday$default3.backgroundColor, forToday$default3.iconResId, forToday$default3.contentColor, gapComposer, (i3 << 6) & 896);
                    gapComposer.end(false);
                } else {
                    if (!(readingChallengeState instanceof ReadingChallengeState.StreakOngoingReadToday)) {
                        throw Modifier.CC.m(gapComposer, -566554191, false);
                    }
                    gapComposer.startReplaceGroup(-376015970);
                    List list4 = WidgetCombinations.streakNeedsReading;
                    WidgetCombination forToday$default4 = WidgetCombinations.forToday$default(WidgetCombinations.streakOngoing, localDate);
                    GlanceModifier clickable = ResultKt.clickable(UStringsKt.m844paddingVpY3zN4(DpKt.fillMaxSize(companion)), new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))));
                    long j13 = forToday$default4.backgroundColor;
                    long j14 = forToday$default4.contentColor;
                    Color color = forToday$default4.progressColor;
                    m931StreakOngoingLargeWidgetEMNEwkI((ReadingChallengeState.StreakOngoingReadToday) readingChallengeState, forToday$default4.iconResId, clickable, j13, j14, color != null ? color.value : WidgetColors.phoneReadingProgressColor, 0, gapComposer, 14 & i3);
                    gapComposer.end(false);
                }
            }
        } else {
            b = 0;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda24(readingChallengeState, localDate, i, b);
        }
    }

    public static final void ReadingChallengeSmallWidgetContent(ReadingChallengeState readingChallengeState, LocalDate localDate, GapComposer gapComposer, int i) {
        readingChallengeState.getClass();
        gapComposer.startRestartGroup(1632164100);
        int i2 = 16;
        int i3 = (gapComposer.changed(readingChallengeState) ? 4 : 2) | i | (gapComposer.changedInstance(localDate) ? 32 : 16);
        final int i4 = 1;
        final byte b = 0;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            Context context = (Context) gapComposer.consume(CompositionLocalsKt.LocalContext);
            boolean equals = readingChallengeState.equals(ReadingChallengeState.Loading.INSTANCE);
            GlanceModifier.Companion companion = GlanceModifier.Companion.$$INSTANCE;
            if (equals) {
                gapComposer.startReplaceGroup(476154925);
                ReadingChallengeWidgetLoading(DpKt.fillMaxSize(companion), 0, gapComposer, 0);
                gapComposer.end(false);
            } else if (readingChallengeState.equals(ReadingChallengeState.Loading.INSTANCE$1)) {
                gapComposer.startReplaceGroup(476395733);
                String quantityString = context.getResources().getQuantityString(R.plurals.reading_challenge_small_widget_streak_final, 25, 25, 25);
                quantityString.getClass();
                m930SmallWidgetfWhpE4E(ResultKt.clickable(UStringsKt.m844paddingVpY3zN4(DpKt.fillMaxSize(companion)), new RunCallbackAction(ChallengeRewardAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)))), 0, R.drawable.wp25_babyglobe_celebration_neutral, WidgetColors.challengeCompletedBackground, true, Expect_jvmKt.rememberComposableLambda(1058634624, new RandomActivity$$ExternalSyntheticLambda1(i2, quantityString, context), gapComposer), gapComposer, 224256, 2);
                gapComposer.end(false);
            } else if (readingChallengeState instanceof ReadingChallengeState.ChallengeConcludedIncomplete) {
                gapComposer.startReplaceGroup(477980732);
                String quantityString2 = context.getResources().getQuantityString(R.plurals.reading_challenge_small_widget_streak_final, 25, Integer.valueOf(((ReadingChallengeState.ChallengeConcludedIncomplete) readingChallengeState).streak), 25);
                quantityString2.getClass();
                m930SmallWidgetfWhpE4E(ResultKt.clickable(UStringsKt.m844paddingVpY3zN4(DpKt.fillMaxSize(companion)), new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)))), 0, R.drawable.wp25_babyglobe_reading, WidgetColors.challengeCompletedBackground, false, Expect_jvmKt.rememberComposableLambda(713718879, new HomeScreenKt$$ExternalSyntheticLambda30(quantityString2, 15, b), gapComposer), gapComposer, 199680, 18);
                gapComposer.end(false);
            } else if (readingChallengeState.equals(ReadingChallengeState.Loading.INSTANCE$2) || readingChallengeState.equals(ReadingChallengeState.Loading.INSTANCE$3)) {
                gapComposer.startReplaceGroup(479185113);
                m930SmallWidgetfWhpE4E(ResultKt.clickable(UStringsKt.m844paddingVpY3zN4(DpKt.fillMaxSize(companion)), new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)))), 0, R.drawable.wp25_babyglobe_reading, WidgetColors.challengeCompletedBackground, false, null, gapComposer, 3072, 50);
                gapComposer.end(false);
            } else if (readingChallengeState.equals(ReadingChallengeState.Loading.INSTANCE$6)) {
                gapComposer.startReplaceGroup(479645339);
                List list = WidgetCombinations.streakNeedsReading;
                WidgetCombination forToday$default = WidgetCombinations.forToday$default(WidgetCombinations.streakOngoing, localDate);
                m930SmallWidgetfWhpE4E(ResultKt.clickable(UStringsKt.m844paddingVpY3zN4(DpKt.fillMaxSize(companion)), new RunCallbackAction(RandomArticleWidgetAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)))), 0, forToday$default.iconResId, forToday$default.backgroundColor, false, Expect_jvmKt.rememberComposableLambda(23887389, new RandomActivity$$ExternalSyntheticLambda1(17, context, forToday$default), gapComposer), gapComposer, 196608, 18);
                gapComposer.end(false);
            } else if (readingChallengeState.equals(ReadingChallengeState.EnrolledNotStarted.INSTANCE)) {
                gapComposer.startReplaceGroup(480615422);
                List list2 = WidgetCombinations.streakNeedsReading;
                WidgetCombination forToday$default2 = WidgetCombinations.forToday$default(WidgetCombinations.enrolledNotStarted, localDate);
                m930SmallWidgetfWhpE4E(ResultKt.clickable(UStringsKt.m844paddingVpY3zN4(DpKt.fillMaxSize(companion)), new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)))), 0, forToday$default2.iconResId, forToday$default2.backgroundColor, false, Expect_jvmKt.rememberComposableLambda(-321028356, new ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda5(context, b), gapComposer), gapComposer, 196608, 18);
                gapComposer.end(false);
            } else if (readingChallengeState.equals(ReadingChallengeState.Loading.INSTANCE$4)) {
                gapComposer.startReplaceGroup(481390267);
                m930SmallWidgetfWhpE4E(ResultKt.clickable(UStringsKt.m844paddingVpY3zN4(DpKt.fillMaxSize(companion)), new RunCallbackAction(JoinChallengeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)))), 0, R.drawable.wp25_babyglobe_reading, WidgetColors.joinChallengeBackground, false, Expect_jvmKt.rememberComposableLambda(-665944101, new ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda5(context, 5), gapComposer), gapComposer, 199680, 18);
                gapComposer.end(false);
            } else if (readingChallengeState.equals(ReadingChallengeState.Loading.INSTANCE$5)) {
                gapComposer.startReplaceGroup(482135569);
                m930SmallWidgetfWhpE4E(ResultKt.clickable(UStringsKt.m844paddingVpY3zN4(DpKt.fillMaxSize(companion)), new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)))), 0, R.drawable.wp25_babyglobe_reading, WidgetColors.challengeNotLiveBackground, false, Expect_jvmKt.rememberComposableLambda(-1010859846, new ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda5(context, 6), gapComposer), gapComposer, 199680, 18);
                gapComposer.end(false);
            } else if (readingChallengeState instanceof ReadingChallengeState.StreakOngoingNeedsReading) {
                gapComposer.startReplaceGroup(482890388);
                List list3 = WidgetCombinations.streakNeedsReading;
                final WidgetCombination forToday$default3 = WidgetCombinations.forToday$default(WidgetCombinations.streakNeedsReading, localDate);
                Resources resources = context.getResources();
                int i5 = ((ReadingChallengeState.StreakOngoingNeedsReading) readingChallengeState).streak;
                final String quantityString3 = resources.getQuantityString(R.plurals.reading_challenge_small_widget_streak, i5, Integer.valueOf(i5));
                quantityString3.getClass();
                m930SmallWidgetfWhpE4E(ResultKt.clickable(UStringsKt.m844paddingVpY3zN4(DpKt.fillMaxSize(companion)), new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)))), 0, forToday$default3.iconResId, forToday$default3.backgroundColor, false, Expect_jvmKt.rememberComposableLambda(-1355775591, new Function2() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i6 = b;
                        Unit unit = Unit.INSTANCE;
                        WidgetCombination widgetCombination = forToday$default3;
                        switch (i6) {
                            case 0:
                                GapComposer gapComposer2 = (GapComposer) obj;
                                int intValue = ((Integer) obj2).intValue();
                                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    SmallWidgetSize.Companion companion2 = SmallWidgetSize.Companion;
                                    long j = ((DpSize) gapComposer2.consume(CompositionLocalsKt.LocalSize)).packedValue;
                                    companion2.getClass();
                                    SmallWidgetSize m924fromEaSLcWc = SmallWidgetSize.Companion.m924fromEaSLcWc(j);
                                    StreakProgressBarKt.m934WidgetBadgeLNF6LQw(quantityString3, m924fromEaSLcWc.m923getBadgeTextSizeXSAIIZE(), R.drawable.ic_streak_warning, m924fromEaSLcWc.m922getBadgeIconSizeD9Ej5fM(), RecyclerView.DECELERATION_RATE, null, widgetCombination.contentColor, null, gapComposer2, 0, 176);
                                    break;
                                }
                            default:
                                GapComposer gapComposer3 = (GapComposer) obj;
                                int intValue2 = ((Integer) obj2).intValue();
                                if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                                    gapComposer3.skipToGroupEnd();
                                    break;
                                } else {
                                    SmallWidgetSize.Companion companion3 = SmallWidgetSize.Companion;
                                    long j2 = ((DpSize) gapComposer3.consume(CompositionLocalsKt.LocalSize)).packedValue;
                                    companion3.getClass();
                                    SmallWidgetSize m924fromEaSLcWc2 = SmallWidgetSize.Companion.m924fromEaSLcWc(j2);
                                    float m922getBadgeIconSizeD9Ej5fM = m924fromEaSLcWc2.m922getBadgeIconSizeD9Ej5fM();
                                    long m923getBadgeTextSizeXSAIIZE = m924fromEaSLcWc2.m923getBadgeTextSizeXSAIIZE();
                                    long j3 = widgetCombination.contentColor;
                                    StreakProgressBarKt.m934WidgetBadgeLNF6LQw(quantityString3, m923getBadgeTextSizeXSAIIZE, R.drawable.ic_flame_24dp, m922getBadgeIconSizeD9Ej5fM, RecyclerView.DECELERATION_RATE, new Color(j3), j3, null, gapComposer3, 0, 144);
                                    break;
                                }
                        }
                        return unit;
                    }
                }, gapComposer), gapComposer, 196608, 18);
                gapComposer.end(false);
            } else {
                if (!(readingChallengeState instanceof ReadingChallengeState.StreakOngoingReadToday)) {
                    throw Modifier.CC.m(gapComposer, 846651073, false);
                }
                gapComposer.startReplaceGroup(484042317);
                List list4 = WidgetCombinations.streakNeedsReading;
                final WidgetCombination forToday$default4 = WidgetCombinations.forToday$default(WidgetCombinations.streakOngoing, localDate);
                Resources resources2 = context.getResources();
                int i6 = ((ReadingChallengeState.StreakOngoingReadToday) readingChallengeState).streak;
                final String quantityString4 = resources2.getQuantityString(R.plurals.reading_challenge_small_widget_streak, i6, Integer.valueOf(i6));
                quantityString4.getClass();
                m930SmallWidgetfWhpE4E(ResultKt.clickable(UStringsKt.m844paddingVpY3zN4(DpKt.fillMaxSize(companion)), new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0)))), 0, forToday$default4.iconResId, forToday$default4.backgroundColor, false, Expect_jvmKt.rememberComposableLambda(-1700691336, new Function2() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i62 = i4;
                        Unit unit = Unit.INSTANCE;
                        WidgetCombination widgetCombination = forToday$default4;
                        switch (i62) {
                            case 0:
                                GapComposer gapComposer2 = (GapComposer) obj;
                                int intValue = ((Integer) obj2).intValue();
                                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    SmallWidgetSize.Companion companion2 = SmallWidgetSize.Companion;
                                    long j = ((DpSize) gapComposer2.consume(CompositionLocalsKt.LocalSize)).packedValue;
                                    companion2.getClass();
                                    SmallWidgetSize m924fromEaSLcWc = SmallWidgetSize.Companion.m924fromEaSLcWc(j);
                                    StreakProgressBarKt.m934WidgetBadgeLNF6LQw(quantityString4, m924fromEaSLcWc.m923getBadgeTextSizeXSAIIZE(), R.drawable.ic_streak_warning, m924fromEaSLcWc.m922getBadgeIconSizeD9Ej5fM(), RecyclerView.DECELERATION_RATE, null, widgetCombination.contentColor, null, gapComposer2, 0, 176);
                                    break;
                                }
                            default:
                                GapComposer gapComposer3 = (GapComposer) obj;
                                int intValue2 = ((Integer) obj2).intValue();
                                if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                                    gapComposer3.skipToGroupEnd();
                                    break;
                                } else {
                                    SmallWidgetSize.Companion companion3 = SmallWidgetSize.Companion;
                                    long j2 = ((DpSize) gapComposer3.consume(CompositionLocalsKt.LocalSize)).packedValue;
                                    companion3.getClass();
                                    SmallWidgetSize m924fromEaSLcWc2 = SmallWidgetSize.Companion.m924fromEaSLcWc(j2);
                                    float m922getBadgeIconSizeD9Ej5fM = m924fromEaSLcWc2.m922getBadgeIconSizeD9Ej5fM();
                                    long m923getBadgeTextSizeXSAIIZE = m924fromEaSLcWc2.m923getBadgeTextSizeXSAIIZE();
                                    long j3 = widgetCombination.contentColor;
                                    StreakProgressBarKt.m934WidgetBadgeLNF6LQw(quantityString4, m923getBadgeTextSizeXSAIIZE, R.drawable.ic_flame_24dp, m922getBadgeIconSizeD9Ej5fM, RecyclerView.DECELERATION_RATE, new Color(j3), j3, null, gapComposer3, 0, 144);
                                    break;
                                }
                        }
                        return unit;
                    }
                }, gapComposer), gapComposer, 196608, 18);
                gapComposer.end(false);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda24(readingChallengeState, localDate, i, i4);
        }
    }

    public static final void ReadingChallengeWidgetLoading(GlanceModifier glanceModifier, int i, GapComposer gapComposer, int i2) {
        GlanceModifier glanceModifier2;
        GapComposer gapComposer2;
        gapComposer.startRestartGroup(-1343109571);
        int i3 = (gapComposer.changed(glanceModifier) ? 4 : 2) | i2 | 48;
        byte b = 0;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            glanceModifier2 = glanceModifier;
            gapComposer2 = gapComposer;
            RegexKt.Box(glanceModifier2, null, Expect_jvmKt.rememberComposableLambda(-1552411109, new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(6, b), gapComposer), gapComposer2, (i3 & 14) | 384, 2);
            i = R.drawable.widget_linear_gradient_background;
        } else {
            glanceModifier2 = glanceModifier;
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ImpactModuleKt$$ExternalSyntheticLambda3(glanceModifier2, i, i2, 7);
        }
    }

    public static final void RewardScreen(Function0 function0, Function0 function02, GapComposer gapComposer, int i) {
        int i2;
        Function0 function03 = function02;
        GapComposer gapComposer2 = gapComposer;
        function0.getClass();
        function03.getClass();
        gapComposer2.startRestartGroup(647530504);
        if ((i & 6) == 0) {
            i2 = i | (gapComposer2.changedInstance(function0) ? 4 : 2);
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(function03) ? 32 : 16;
        }
        int i3 = i2;
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier scroll$default = ImageKt.scroll$default(OffsetKt.m135paddingqDBjuR0(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, 16.0f, 16.0f, 16.0f), ImageKt.rememberScrollState(gapComposer2), true);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, scroll$default);
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
            Integer valueOf = Integer.valueOf(i4);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier then = SizeKt.m140height3ABfNKs(SizeKt.m149width3ABfNKs(companion, 32.0f), 4.0f).then(new HorizontalAlignElement(Alignment.Companion.CenterHorizontally));
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.CircleShape;
            PercentCornerSize percentCornerSize = new PercentCornerSize(50.0f);
            Modifier clip = ClipKt.clip(then, new RoundedCornerShape(percentCornerSize, percentCornerSize, percentCornerSize, percentCornerSize));
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            BoxKt.Box(ImageKt.m46backgroundbw27NRU(clip, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).placeholderColor, ColorKt.RectangleShape), gapComposer2, 0);
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer2, 48);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m136paddingqDBjuR0$default);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            LayoutWeightElement m = ViewSizeResolver$CC.m(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14, 1.0f, true);
            String stringResource = UtilsKt.stringResource(R.string.reading_challenge_widget_collect_your_prize_button, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
            TextStyle textStyle = ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).titleLarge;
            FontWeight fontWeight = FontWeight.Medium;
            TextKt.m308TextNvy7gAk(stringResource, m, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(textStyle, 0L, 0L, fontWeight, null, 0L, 0L, null, 16777211), gapComposer, 0, 0, 131064);
            Modifier m131offsetVpY3zN4$default = OffsetKt.m131offsetVpY3zN4$default(companion, RecyclerView.DECELERATION_RATE, 2);
            boolean z = (i3 & 14) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            int i6 = 14;
            if (z || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda1(i6, function0);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CardKt.IconButton((Function0) rememberedValue, m131offsetVpY3zN4$default, false, null, null, lambda$1029752960, gapComposer, 1572912, 60);
            gapComposer.end(true);
            Modifier clip2 = ClipKt.clip(SizeKt.fillMaxWidth(SizeKt.m140height3ABfNKs(OffsetKt.m134paddingVpY3zN4$default(companion, RecyclerView.DECELERATION_RATE, 12.0f, 1), 202.0f), 1.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(12.0f));
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j3 = gapComposer.compositeKeyHashCode;
            int i7 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, clip2);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i7, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            ImageKt.Image(UnsignedKt.painterResource(R.drawable.reading_challenge_reward, 0, gapComposer), null, SizeKt.FillWholeMaxSize, null, ContentScale.Companion.FillWidth, RecyclerView.DECELERATION_RATE, null, gapComposer, 25016, 104);
            gapComposer.end(true);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.reading_challenge_widget_reward_title, gapComposer), companion, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).titleLarge, 0L, 0L, fontWeight, null, 0L, 0L, null, 16777211), gapComposer, 48, 0, 131064);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.reading_challenge_widget_reward_body, Arrays.copyOf(new Object[0], 0), gapComposer), SizeKt.fillMaxWidth(companion, 1.0f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).bodyLarge, gapComposer, 48, 0, 131064);
            function03 = function02;
            gapComposer2 = gapComposer;
            TabsBoxKt.m895AppButtont6yy7ic(function03, OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13).then(new HorizontalAlignElement(Alignment.Companion.End)), 0L, 0L, lambda$106262146, gapComposer2, ((i3 >> 3) & 14) | 24576, 12);
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ForYouCardKt$$ExternalSyntheticLambda31(function0, function03, i, 16);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x005d  */
    /* renamed from: SmallWidget-fWhpE4E, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m930SmallWidgetfWhpE4E(final androidx.glance.GlanceModifier r16, int r17, final int r18, final long r19, boolean r21, kotlin.jvm.functions.Function2 r22, androidx.compose.runtime.GapComposer r23, final int r24, final int r25) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.widgets.readingchallenge.StreakProgressBarKt.m930SmallWidgetfWhpE4E(androidx.glance.GlanceModifier, int, int, long, boolean, kotlin.jvm.functions.Function2, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* renamed from: StreakOngoingLargeWidget-EMNEwkI, reason: not valid java name */
    public static final void m931StreakOngoingLargeWidgetEMNEwkI(final ReadingChallengeState.StreakOngoingReadToday streakOngoingReadToday, final int i, final GlanceModifier glanceModifier, final long j, final long j2, final long j3, int i2, GapComposer gapComposer, final int i3) {
        final int i4;
        int i5;
        int i6;
        gapComposer.startRestartGroup(1330636148);
        int i7 = i3 | (gapComposer.changed(streakOngoingReadToday) ? 4 : 2) | (gapComposer.changed(i) ? 32 : 16) | (gapComposer.changed(glanceModifier) ? 256 : 128) | (gapComposer.changed(j) ? 2048 : 1024) | (gapComposer.changed(j2) ? 16384 : 8192) | (gapComposer.changed(j3) ? 131072 : 65536) | 524288;
        if (gapComposer.shouldExecute(i7 & 1, (599187 & i7) != 599186)) {
            gapComposer.startDefaults();
            if ((i3 & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                i5 = i7 & (-3670017);
                i6 = R.drawable.ic_w_logo_shadow;
            } else {
                gapComposer.skipToGroupEnd();
                i5 = i7 & (-3670017);
                i6 = i2;
            }
            int i8 = i5;
            gapComposer.endDefaults();
            final Context context = (Context) gapComposer.consume(CompositionLocalsKt.LocalContext);
            Resources resources = context.getResources();
            int i9 = streakOngoingReadToday.streak;
            final String quantityString = resources.getQuantityString(R.plurals.reading_challenge_small_widget_streak, i9, Integer.valueOf(i9));
            quantityString.getClass();
            LargeWidgetSize.Companion companion = LargeWidgetSize.Companion;
            long j4 = ((DpSize) gapComposer.consume(CompositionLocalsKt.LocalSize)).packedValue;
            companion.getClass();
            final LargeWidgetSize m921fromEaSLcWc = LargeWidgetSize.Companion.m921fromEaSLcWc(j4);
            i4 = i6;
            m925BaseWidgetContentIv8Zu3U(j, Expect_jvmKt.rememberComposableLambda(-2018419092, new Function2() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    GapComposer gapComposer2 = (GapComposer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        RegexKt.Box(GlanceModifier.this, null, Expect_jvmKt.rememberComposableLambda(1332936910, new ReadingChallengeWidgetKt$$ExternalSyntheticLambda1(m921fromEaSLcWc, quantityString, j2, streakOngoingReadToday, j3, context, i4, i), gapComposer2), gapComposer2, 384, 2);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, ((i8 >> 9) & 14) | 48);
        } else {
            gapComposer.skipToGroupEnd();
            i4 = i2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(i, glanceModifier, j, j2, j3, i4, i3) { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26
                public final /* synthetic */ int f$1;
                public final /* synthetic */ GlanceModifier f$2;
                public final /* synthetic */ long f$3;
                public final /* synthetic */ long f$4;
                public final /* synthetic */ long f$5;
                public final /* synthetic */ int f$6;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    StreakProgressBarKt.m931StreakOngoingLargeWidgetEMNEwkI(ReadingChallengeState.StreakOngoingReadToday.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: StreakOngoingNeedsReadingLargeWidget-IDJXs2g, reason: not valid java name */
    public static final void m932StreakOngoingNeedsReadingLargeWidgetIDJXs2g(final GlanceModifier glanceModifier, final RunCallbackAction runCallbackAction, final ReadingChallengeState.StreakOngoingNeedsReading streakOngoingNeedsReading, int i, final int i2, final long j, final int i3, final long j2, GapComposer gapComposer, final int i4) {
        int i5;
        final int i6;
        int i7;
        final int i8;
        gapComposer.startRestartGroup(690636611);
        if ((i4 & 6) == 0) {
            i5 = (gapComposer.changed(glanceModifier) ? 4 : 2) | i4;
        } else {
            i5 = i4;
        }
        if ((i4 & 48) == 0) {
            i5 |= gapComposer.changedInstance(runCallbackAction) ? 32 : 16;
        }
        if ((i4 & 384) == 0) {
            i5 |= gapComposer.changed(streakOngoingNeedsReading) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            i5 |= 1024;
        }
        if ((i4 & 24576) == 0) {
            i5 |= gapComposer.changed(i2) ? 16384 : 8192;
        }
        if ((196608 & i4) == 0) {
            i5 |= gapComposer.changed(j) ? 131072 : 65536;
        }
        if ((1572864 & i4) == 0) {
            i5 |= gapComposer.changed(i3) ? 1048576 : 524288;
        }
        if ((12582912 & i4) == 0) {
            i5 |= gapComposer.changed(j2) ? 8388608 : 4194304;
        }
        if (gapComposer.shouldExecute(i5 & 1, (4793491 & i5) != 4793490)) {
            gapComposer.startDefaults();
            if ((i4 & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                i7 = i5 & (-7169);
                i8 = R.drawable.ic_w_logo_shadow;
            } else {
                gapComposer.skipToGroupEnd();
                i7 = i5 & (-7169);
                i8 = i;
            }
            gapComposer.endDefaults();
            final Context context = (Context) gapComposer.consume(CompositionLocalsKt.LocalContext);
            Resources resources = context.getResources();
            int i9 = streakOngoingNeedsReading.streak;
            int i10 = i7;
            final String quantityString = resources.getQuantityString(R.plurals.reading_challenge_small_widget_streak, i9, Integer.valueOf(i9));
            quantityString.getClass();
            final String string = context.getString(i2);
            string.getClass();
            final long j3 = ((DpSize) gapComposer.consume(CompositionLocalsKt.LocalSize)).packedValue;
            LargeWidgetSize.Companion.getClass();
            final LargeWidgetSize m921fromEaSLcWc = LargeWidgetSize.Companion.m921fromEaSLcWc(j3);
            m925BaseWidgetContentIv8Zu3U(j, Expect_jvmKt.rememberComposableLambda(1313707067, new Function2() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    GapComposer gapComposer2 = (GapComposer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        GlanceModifier glanceModifier2 = GlanceModifier.this;
                        final RunCallbackAction runCallbackAction2 = runCallbackAction;
                        GlanceModifier clickable = ResultKt.clickable(glanceModifier2, runCallbackAction2);
                        final LargeWidgetSize largeWidgetSize = m921fromEaSLcWc;
                        final String str = quantityString;
                        final long j4 = j2;
                        final String str2 = string;
                        final long j5 = j3;
                        final int i11 = i8;
                        final int i12 = i3;
                        final Context context2 = context;
                        Room.m758ColumnK4GKKTE(clickable, 0, 0, Expect_jvmKt.rememberComposableLambda(-501793659, new Function3() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                                GapComposer gapComposer3 = (GapComposer) obj4;
                                ((Integer) obj5).getClass();
                                ((ColumnScopeImplInstance) obj3).getClass();
                                GlanceModifier fillMaxWidth = DpKt.fillMaxWidth(new HeightModifier(Dimension.Expand.INSTANCE));
                                final RunCallbackAction runCallbackAction3 = RunCallbackAction.this;
                                final LargeWidgetSize largeWidgetSize2 = largeWidgetSize;
                                final String str3 = str;
                                final long j6 = j4;
                                final String str4 = str2;
                                final long j7 = j5;
                                final int i13 = i11;
                                final int i14 = i12;
                                UuidKt.m859RowlMAjyxE(fillMaxWidth, 0, 0, Expect_jvmKt.rememberComposableLambda(-1127347039, new Function3() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object invoke(Object obj6, Object obj7, Object obj8) {
                                        GapComposer gapComposer4 = (GapComposer) obj7;
                                        ((Integer) obj8).getClass();
                                        ((RowScopeImplInstance) obj6).getClass();
                                        WidthModifier widthModifier = new WidthModifier(Dimension.Expand.INSTANCE);
                                        RunCallbackAction runCallbackAction4 = RunCallbackAction.this;
                                        boolean changedInstance = gapComposer4.changedInstance(runCallbackAction4);
                                        LargeWidgetSize largeWidgetSize3 = largeWidgetSize2;
                                        boolean changed = changedInstance | gapComposer4.changed(largeWidgetSize3.ordinal());
                                        String str5 = str3;
                                        boolean changed2 = changed | gapComposer4.changed(str5);
                                        long j8 = j6;
                                        boolean changed3 = changed2 | gapComposer4.changed(j8);
                                        String str6 = str4;
                                        boolean changed4 = changed3 | gapComposer4.changed(str6);
                                        Object rememberedValue = gapComposer4.rememberedValue();
                                        if (changed4 || rememberedValue == Composer$Companion.Empty) {
                                            ReadingListPageDao_Impl$$ExternalSyntheticLambda19 readingListPageDao_Impl$$ExternalSyntheticLambda19 = new ReadingListPageDao_Impl$$ExternalSyntheticLambda19(runCallbackAction4, largeWidgetSize3, str5, j8, str6);
                                            gapComposer4.updateRememberedValue(readingListPageDao_Impl$$ExternalSyntheticLambda19);
                                            rememberedValue = readingListPageDao_Impl$$ExternalSyntheticLambda19;
                                        }
                                        ResultKt.m816LazyColumnEiNPFjs(widthModifier, (Function1) rememberedValue, gapComposer4, 0);
                                        Operation$State.Spacer(new WidthModifier(new Dimension.Dp(12.0f)), gapComposer4, 0);
                                        float f = ((Dp) Operation$State.minOf(new Dp(largeWidgetSize3.m916getSideMascotSizeD9Ej5fM()), new Dp(DpSize.m711getHeightD9Ej5fM(j7) - largeWidgetSize3.m920getTitleBarIconSizeD9Ej5fM()))).value;
                                        Room.m758ColumnK4GKKTE(new WidthModifier(new Dimension.Dp(largeWidgetSize3.m915getRightColumnExtraSpaceD9Ej5fM() + f)).then(new HeightModifier(Dimension.Fill.INSTANCE)), 0, 2, Expect_jvmKt.rememberComposableLambda(1824641643, new ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8(i13, largeWidgetSize3, i14, f, 0), gapComposer4), gapComposer4, 3072, 2);
                                        return Unit.INSTANCE;
                                    }
                                }, gapComposer3), gapComposer3, 3072, 6);
                                Operation$State.Spacer(new HeightModifier(new Dimension.Dp(2.0f)), gapComposer3, 0);
                                UuidKt.m859RowlMAjyxE(new WidthModifier(Dimension.Fill.INSTANCE), 0, 0, Expect_jvmKt.rememberComposableLambda(-358025014, new ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda6(context2, 0), gapComposer3), gapComposer3, 3072, 6);
                                return Unit.INSTANCE;
                            }
                        }, gapComposer2), gapComposer2, 3072, 6);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, ((i10 >> 15) & 14) | 48);
            i6 = i8;
        } else {
            gapComposer.skipToGroupEnd();
            i6 = i;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    StreakProgressBarKt.m932StreakOngoingNeedsReadingLargeWidgetIDJXs2g(GlanceModifier.this, runCallbackAction, streakOngoingNeedsReading, i6, i2, j, i3, j2, (GapComposer) obj, Updater.updateChangedFlags(i4 | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: StreakProgressBar-iv-I9-Q, reason: not valid java name */
    public static final void m933StreakProgressBarivI9Q(final int i, final float f, GlanceModifier glanceModifier, final long j, final long j2, GapComposer gapComposer, int i2) {
        GlanceModifier glanceModifier2;
        gapComposer.startRestartGroup(-721959876);
        int i3 = i2 | (gapComposer.changed(i) ? 4 : 2) | (gapComposer.changed(25) ? 32 : 16) | (gapComposer.changed(f) ? 256 : 128) | 3072 | (gapComposer.changed(j) ? 16384 : 8192) | (gapComposer.changed(j2) ? 131072 : 65536);
        if (gapComposer.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1573796192, new Function3() { // from class: org.wikipedia.widgets.readingchallenge.StreakProgressBarKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    GapComposer gapComposer2 = (GapComposer) obj2;
                    ((Integer) obj3).getClass();
                    ((RowScopeImplInstance) obj).getClass();
                    int i4 = i;
                    float f2 = f;
                    final long j3 = j;
                    final long j4 = j2;
                    final int i5 = 0;
                    final int i6 = 1;
                    if (1 > i4 || i4 >= 25) {
                        gapComposer2.startReplaceGroup(-1099295756);
                        GlanceModifier m709width3ABfNKs = DpKt.m709width3ABfNKs(new HeightModifier(new Dimension.Dp(24.0f)), f2);
                        if (i4 < 25) {
                            j3 = j4;
                        }
                        RegexKt.Box(m709width3ABfNKs.then(new BackgroundModifier.Color(new FixedColorProvider(j3))).then(new CornerRadiusModifier(new Dimension.Dp(12.0f))), null, StreakProgressBarKt.lambda$716671001, gapComposer2, 384, 2);
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(-1098904040);
                        float f3 = RecyclerView.DECELERATION_RATE;
                        float coerceIn = RegexKt.coerceIn(i4 / 25.0f, RecyclerView.DECELERATION_RATE, 1.0f) * f2;
                        RegexKt.Box(DpKt.m709width3ABfNKs(new HeightModifier(new Dimension.Dp(24.0f)), coerceIn), null, Expect_jvmKt.rememberComposableLambda(788042274, new Function2() { // from class: org.wikipedia.widgets.readingchallenge.StreakProgressBarKt$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj4, Object obj5) {
                                int i7 = i5;
                                Unit unit = Unit.INSTANCE;
                                GlanceModifier.Companion companion = GlanceModifier.Companion.$$INSTANCE;
                                long j5 = j3;
                                switch (i7) {
                                    case 0:
                                        GapComposer gapComposer3 = (GapComposer) obj4;
                                        int intValue = ((Integer) obj5).intValue();
                                        if (!gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                            gapComposer3.skipToGroupEnd();
                                            break;
                                        } else {
                                            ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(R.drawable.progress_bar_start_bg), DpKt.fillMaxSize(companion), 0, new ColorFilter(new TintColorFilterParams(new DayNightColorProvider(j5, j5))), gapComposer3, 32816, 8);
                                            break;
                                        }
                                    case 1:
                                        GapComposer gapComposer4 = (GapComposer) obj4;
                                        int intValue2 = ((Integer) obj5).intValue();
                                        if (!gapComposer4.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                                            gapComposer4.skipToGroupEnd();
                                            break;
                                        } else {
                                            ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(R.drawable.widget_shape_12dp_corner_radius), DpKt.fillMaxSize(companion), 0, new ColorFilter(new TintColorFilterParams(new DayNightColorProvider(j5, j5))), gapComposer4, 32816, 8);
                                            break;
                                        }
                                    default:
                                        GapComposer gapComposer5 = (GapComposer) obj4;
                                        int intValue3 = ((Integer) obj5).intValue();
                                        if (!gapComposer5.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                                            gapComposer5.skipToGroupEnd();
                                            break;
                                        } else {
                                            ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(R.drawable.progress_bar_end_bg), DpKt.fillMaxSize(companion), 0, new ColorFilter(new TintColorFilterParams(new DayNightColorProvider(j5, j5))), gapComposer5, 32816, 8);
                                            break;
                                        }
                                }
                                return unit;
                            }
                        }, gapComposer2), gapComposer2, 384, 2);
                        Operation$State.Spacer(new WidthModifier(new Dimension.Dp(4.0f)), gapComposer2, 0);
                        RegexKt.Box(DpKt.m707size3ABfNKs(24.0f), null, Expect_jvmKt.rememberComposableLambda(2007432601, new Function2() { // from class: org.wikipedia.widgets.readingchallenge.StreakProgressBarKt$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj4, Object obj5) {
                                int i7 = i6;
                                Unit unit = Unit.INSTANCE;
                                GlanceModifier.Companion companion = GlanceModifier.Companion.$$INSTANCE;
                                long j5 = j3;
                                switch (i7) {
                                    case 0:
                                        GapComposer gapComposer3 = (GapComposer) obj4;
                                        int intValue = ((Integer) obj5).intValue();
                                        if (!gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                            gapComposer3.skipToGroupEnd();
                                            break;
                                        } else {
                                            ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(R.drawable.progress_bar_start_bg), DpKt.fillMaxSize(companion), 0, new ColorFilter(new TintColorFilterParams(new DayNightColorProvider(j5, j5))), gapComposer3, 32816, 8);
                                            break;
                                        }
                                    case 1:
                                        GapComposer gapComposer4 = (GapComposer) obj4;
                                        int intValue2 = ((Integer) obj5).intValue();
                                        if (!gapComposer4.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                                            gapComposer4.skipToGroupEnd();
                                            break;
                                        } else {
                                            ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(R.drawable.widget_shape_12dp_corner_radius), DpKt.fillMaxSize(companion), 0, new ColorFilter(new TintColorFilterParams(new DayNightColorProvider(j5, j5))), gapComposer4, 32816, 8);
                                            break;
                                        }
                                    default:
                                        GapComposer gapComposer5 = (GapComposer) obj4;
                                        int intValue3 = ((Integer) obj5).intValue();
                                        if (!gapComposer5.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                                            gapComposer5.skipToGroupEnd();
                                            break;
                                        } else {
                                            ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(R.drawable.progress_bar_end_bg), DpKt.fillMaxSize(companion), 0, new ColorFilter(new TintColorFilterParams(new DayNightColorProvider(j5, j5))), gapComposer5, 32816, 8);
                                            break;
                                        }
                                }
                                return unit;
                            }
                        }, gapComposer2), gapComposer2, 384, 2);
                        Operation$State.Spacer(new WidthModifier(new Dimension.Dp(4.0f)), gapComposer2, 0);
                        float f4 = f2 - coerceIn;
                        if (f4 >= RecyclerView.DECELERATION_RATE) {
                            f3 = f4;
                        }
                        final int i7 = 2;
                        RegexKt.Box(DpKt.m709width3ABfNKs(new HeightModifier(new Dimension.Dp(24.0f)), f3), null, Expect_jvmKt.rememberComposableLambda(-78410214, new Function2() { // from class: org.wikipedia.widgets.readingchallenge.StreakProgressBarKt$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj4, Object obj5) {
                                int i72 = i7;
                                Unit unit = Unit.INSTANCE;
                                GlanceModifier.Companion companion = GlanceModifier.Companion.$$INSTANCE;
                                long j5 = j4;
                                switch (i72) {
                                    case 0:
                                        GapComposer gapComposer3 = (GapComposer) obj4;
                                        int intValue = ((Integer) obj5).intValue();
                                        if (!gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                            gapComposer3.skipToGroupEnd();
                                            break;
                                        } else {
                                            ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(R.drawable.progress_bar_start_bg), DpKt.fillMaxSize(companion), 0, new ColorFilter(new TintColorFilterParams(new DayNightColorProvider(j5, j5))), gapComposer3, 32816, 8);
                                            break;
                                        }
                                    case 1:
                                        GapComposer gapComposer4 = (GapComposer) obj4;
                                        int intValue2 = ((Integer) obj5).intValue();
                                        if (!gapComposer4.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                                            gapComposer4.skipToGroupEnd();
                                            break;
                                        } else {
                                            ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(R.drawable.widget_shape_12dp_corner_radius), DpKt.fillMaxSize(companion), 0, new ColorFilter(new TintColorFilterParams(new DayNightColorProvider(j5, j5))), gapComposer4, 32816, 8);
                                            break;
                                        }
                                    default:
                                        GapComposer gapComposer5 = (GapComposer) obj4;
                                        int intValue3 = ((Integer) obj5).intValue();
                                        if (!gapComposer5.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                                            gapComposer5.skipToGroupEnd();
                                            break;
                                        } else {
                                            ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(R.drawable.progress_bar_end_bg), DpKt.fillMaxSize(companion), 0, new ColorFilter(new TintColorFilterParams(new DayNightColorProvider(j5, j5))), gapComposer5, 32816, 8);
                                            break;
                                        }
                                }
                                return unit;
                            }
                        }, gapComposer2), gapComposer2, 384, 2);
                        gapComposer2.end(false);
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer);
            GlanceModifier.Companion companion = GlanceModifier.Companion.$$INSTANCE;
            UuidKt.m859RowlMAjyxE(companion, 0, 1, rememberComposableLambda, gapComposer, 3078, 2);
            glanceModifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            glanceModifier2 = glanceModifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ProgressIndicatorKt$$ExternalSyntheticLambda3(i, f, glanceModifier2, j, j2, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0088  */
    /* renamed from: WidgetBadge-LNF6LQw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m934WidgetBadgeLNF6LQw(final java.lang.String r23, final long r24, final int r26, final float r27, float r28, androidx.compose.ui.graphics.Color r29, final long r30, androidx.glance.GlanceModifier r32, androidx.compose.runtime.GapComposer r33, final int r34, final int r35) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.widgets.readingchallenge.StreakProgressBarKt.m934WidgetBadgeLNF6LQw(java.lang.String, long, int, float, float, androidx.compose.ui.graphics.Color, long, androidx.glance.GlanceModifier, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0048  */
    /* renamed from: WidgetButton-Y0xEhic, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m935WidgetButtonY0xEhic(java.lang.String r18, androidx.glance.appwidget.action.RunCallbackAction r19, long r20, long r22, androidx.glance.AndroidResourceImageProvider r24, androidx.glance.GlanceModifier r25, androidx.compose.runtime.GapComposer r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.widgets.readingchallenge.StreakProgressBarKt.m935WidgetButtonY0xEhic(java.lang.String, androidx.glance.appwidget.action.RunCallbackAction, long, long, androidx.glance.AndroidResourceImageProvider, androidx.glance.GlanceModifier, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void WidgetIconButton(String str, RunCallbackAction runCallbackAction, int i, GlanceModifier glanceModifier, GapComposer gapComposer, int i2) {
        gapComposer.startRestartGroup(-1092356910);
        int i3 = (gapComposer.changed(str) ? 4 : 2) | i2 | (gapComposer.changedInstance(runCallbackAction) ? 32 : 16) | (gapComposer.changed(i) ? 256 : 128) | (gapComposer.changed(glanceModifier) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            AndroidResourceImageProvider androidResourceImageProvider = new AndroidResourceImageProvider(i);
            long j = WidgetColors.progressive;
            DayNightColorProvider dayNightColorProvider = new DayNightColorProvider(j, j);
            long j2 = WidgetColors.white;
            DayNightColorProvider dayNightColorProvider2 = new DayNightColorProvider(j2, j2);
            gapComposer.startReplaceableGroup(207135993);
            ButtonColors buttonColors = new ButtonColors(dayNightColorProvider, dayNightColorProvider2);
            gapComposer.end(false);
            ContextsKt.FilledButton(str, runCallbackAction, glanceModifier, false, androidResourceImageProvider, buttonColors, 0, gapComposer, (i3 & 126) | ((i3 >> 3) & 896));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9(str, runCallbackAction, i, glanceModifier, i2);
        }
    }

    public static LocalDate getEND_DATE() {
        Prefs prefs = Prefs.INSTANCE;
        String string = PrefsIoUtil.getString(R.string.preference_key_reading_challenge_end_date, "2026-06-18");
        if (string == null) {
            string = "";
        }
        return LocalDate.parse(string.length() != 0 ? string : "2026-06-18");
    }

    public static LocalDate getSTART_DATE() {
        Prefs prefs = Prefs.INSTANCE;
        String string = PrefsIoUtil.getString(R.string.preference_key_reading_challenge_start_date, "2026-05-11");
        if (string == null) {
            string = "";
        }
        return LocalDate.parse(string.length() != 0 ? string : "2026-05-11");
    }

    public static boolean isWidgetInstalled() {
        int[] iArr;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        WikipediaApp jsoup = Jsoup.getInstance();
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(jsoup);
        if (appWidgetManager == null || (iArr = appWidgetManager.getAppWidgetIds(new ComponentName(jsoup, (Class<?>) ReadingChallengeWidgetReceiver.class))) == null) {
            iArr = new int[0];
        }
        return !(iArr.length == 0);
    }

    public static void scheduleNextWidgetUpdate(Context context) {
        Duration between;
        char c = 0;
        if (StringsKt.contains("org.wikipedia", "beta", false)) {
            c = 1;
        } else if (StringsKt.contains("org.wikipedia", "alpha", false)) {
            c = 2;
        } else if (StringsKt.contains("org.wikipedia", "dev", false)) {
            c = 3;
        }
        if (c != 0 && c != 1) {
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.getReadingChallengeWidgetFastCycle()) {
                between = Duration.ofMinutes(1L);
                Latch latch = new Latch(ReadingChallengeWidgetWorker.class);
                ((LinkedHashSet) latch.spareList).add("ReadingChallengeWidgetWorker");
                latch.setInitialDelay(between.toMillis(), TimeUnit.MILLISECONDS);
                latch.setBackoffCriteria(BackoffPolicy.LINEAR);
                WorkManagerImpl.getInstance$1(context).enqueueUniqueWork("ReadingChallengeWidgetWorker", ExistingWorkPolicy.REPLACE, latch.build());
            }
        }
        LocalDateTime now = LocalDateTime.now();
        between = Duration.between(now, LocalDateTime.of(now.toLocalDate().plusDays(1L), LocalTime.MIDNIGHT).plusMinutes(1L));
        Latch latch2 = new Latch(ReadingChallengeWidgetWorker.class);
        ((LinkedHashSet) latch2.spareList).add("ReadingChallengeWidgetWorker");
        latch2.setInitialDelay(between.toMillis(), TimeUnit.MILLISECONDS);
        latch2.setBackoffCriteria(BackoffPolicy.LINEAR);
        WorkManagerImpl.getInstance$1(context).enqueueUniqueWork("ReadingChallengeWidgetWorker", ExistingWorkPolicy.REPLACE, latch2.build());
    }

    public static boolean shouldShowWidgetInstallDialog() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        if (AppWidgetManager.getInstance(Jsoup.getInstance()) != null) {
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.getReadingChallengeOnboardingShown() && !Prefs.getReadingChallengeInstallPromptShown() && Prefs.getReadingChallengeEnrolled() && Headers.Companion.isLoggedIn() && !LocalDate.now().isBefore(getSTART_DATE()) && !LocalDate.now().isAfter(getEND_DATE()) && !isWidgetInstalled()) {
                return true;
            }
        }
        return false;
    }
}
