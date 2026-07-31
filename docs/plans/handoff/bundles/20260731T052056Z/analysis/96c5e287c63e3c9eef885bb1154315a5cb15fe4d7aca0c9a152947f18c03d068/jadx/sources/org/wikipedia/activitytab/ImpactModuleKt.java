package org.wikipedia.activitytab;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.VerticalAlignElement;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda7;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardColors;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ListItemColors;
import androidx.compose.material3.ListItemDefaults;
import androidx.compose.material3.RadioButtonKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.BrushStyle;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import j$.time.LocalDate;
import java.io.Serializable;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import okio.Okio__JvmOkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.activitytab.ActivityTabViewModel;
import org.wikipedia.compose.ComposeColors;
import org.wikipedia.compose.components.LineChartKt$$ExternalSyntheticLambda0;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.growthtasks.GrowthUserImpact;
import org.wikipedia.feed.ForYouContentTabKt$$ExternalSyntheticLambda76;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda27;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda30;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda8;
import org.wikipedia.feed.news.NewsModuleKt$$ExternalSyntheticLambda2;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda6;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda16;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda9;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ImpactModuleKt {
    public static final ComposableLambdaImpl lambda$567232380 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(4), false, 567232380);

    /* renamed from: lambda$-1882619459, reason: not valid java name */
    public static final ComposableLambdaImpl f21lambda$1882619459 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(5), false, -1882619459);

    /* renamed from: lambda$-1326171468, reason: not valid java name */
    public static final ComposableLambdaImpl f20lambda$1326171468 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(6), false, -1326171468);

    /* renamed from: lambda$-1207335334, reason: not valid java name */
    public static final ComposableLambdaImpl f19lambda$1207335334 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(7), false, -1207335334);

    /* renamed from: lambda$-600581679, reason: not valid java name */
    public static final ComposableLambdaImpl f24lambda$600581679 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(8), false, -600581679);

    /* renamed from: lambda$-461486953, reason: not valid java name */
    public static final ComposableLambdaImpl f23lambda$461486953 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(9), false, -461486953);
    public static final ComposableLambdaImpl lambda$2075109956 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(10), false, 2075109956);
    public static final ComposableLambdaImpl lambda$655954818 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(11), false, 655954818);

    /* renamed from: lambda$-455803052, reason: not valid java name */
    public static final ComposableLambdaImpl f22lambda$455803052 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(12), false, -455803052);
    public static final ComposableLambdaImpl lambda$653983946 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(13), false, 653983946);

    /* renamed from: ActivityTabShimmerView-kHDZbjc, reason: not valid java name */
    public static final void m893ActivityTabShimmerViewkHDZbjc(final float f, GapComposer gapComposer, final int i, final int i2) {
        int i3;
        gapComposer.startRestartGroup(-1512101505);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (gapComposer.changed(f) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 3) != 2)) {
            if (i4 != 0) {
                f = 120.0f;
            }
            BoxKt.Box(SizeKt.m145size3ABfNKs(Jsoup.shimmerEffect$default(SizeKt.fillMaxWidth(ClipKt.clip(OffsetKt.m132padding3ABfNKs(Modifier.Companion.$$INSTANCE, 16.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(12.0f)), 1.0f), null, ArcSplineKt.rememberInfiniteTransition(null, gapComposer, 1), 15), f), gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: org.wikipedia.activitytab.ActivityTabFragmentKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i | 1);
                    ImpactModuleKt.m893ActivityTabShimmerViewkHDZbjc(f, (GapComposer) obj, updateChangedFlags, i2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void AllTimeImpactCard(Modifier modifier, int i, int i2, int i3, long j, Map map, long j2, Map map2, GapComposer gapComposer, int i4) {
        gapComposer.startRestartGroup(-576533325);
        int i5 = i4 | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changed(i) ? 32 : 16) | (gapComposer.changed(i2) ? 256 : 128) | (gapComposer.changed(i3) ? 2048 : 1024) | (gapComposer.changed(j) ? 16384 : 8192) | (gapComposer.changedInstance(map) ? 131072 : 65536) | (gapComposer.changed(j2) ? 1048576 : 524288) | (gapComposer.changedInstance(map2) ? 8388608 : 4194304);
        if (gapComposer.shouldExecute(i5 & 1, (i5 & 4793491) != 4793490)) {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = NumberFormat.getNumberInstance(Locale.getDefault());
                gapComposer.updateRememberedValue(rememberedValue);
            }
            NumberFormat numberFormat = (NumberFormat) rememberedValue;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            TabsBoxKt.m902WikiCardjfnsLPA(modifier, RecyclerView.DECELERATION_RATE, CardKt.m274cardColorsro_MJ88(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, gapComposer, 0, 12), ImageKt.m45BorderStrokecXLIe8U(1.0f, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor), null, null, Expect_jvmKt.rememberComposableLambda(-315574624, new ImpactModuleKt$$ExternalSyntheticLambda1(i, i3, i2, j, map2, map, numberFormat, j2), gapComposer), gapComposer, (i5 & 14) | 1572912, 48);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ImpactModuleKt$$ExternalSyntheticLambda1(modifier, i, i2, i3, j, map, j2, map2, i4);
        }
    }

    public static final void ArticleReadThisMonthCard(Modifier modifier, ActivityTabViewModel.ReadingHistory readingHistory, LocalDate localDate, Function0 function0, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(-911672127);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = i2 | (gapComposer.changedInstance(readingHistory) ? 32 : 16) | (gapComposer.changedInstance(localDate) ? 256 : 128);
        if ((i & 3072) == 0) {
            i3 |= gapComposer.changedInstance(function0) ? 2048 : 1024;
        }
        int i4 = 1;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            TabsBoxKt.m902WikiCardjfnsLPA(modifier, RecyclerView.DECELERATION_RATE, null, ImageKt.m45BorderStrokecXLIe8U(1.0f, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor), function0, null, Expect_jvmKt.rememberComposableLambda(1908649518, new ReadingHistoryModuleKt$$ExternalSyntheticLambda6(readingHistory, localDate, i4), gapComposer), gapComposer, (i3 & 14) | 1572912 | ((i3 << 3) & 57344), 36);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda27(modifier, readingHistory, localDate, function0, i);
        }
    }

    public static final void ArticleSavedThisMonthCard(Modifier modifier, ActivityTabViewModel.ReadingHistory readingHistory, LocalDate localDate, Function0 function0, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(1252414272);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changedInstance(readingHistory) ? 32 : 16) | (gapComposer.changedInstance(localDate) ? 256 : 128) | (gapComposer.changedInstance(function0) ? 2048 : 1024);
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            TabsBoxKt.m902WikiCardjfnsLPA(modifier, RecyclerView.DECELERATION_RATE, null, ImageKt.m45BorderStrokecXLIe8U(1.0f, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor), function0, null, Expect_jvmKt.rememberComposableLambda(-1511927949, new ReadingHistoryModuleKt$$ExternalSyntheticLambda6(readingHistory, localDate, i3), gapComposer), gapComposer, (i2 & 14) | 1572912 | ((i2 << 3) & 57344), 36);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda1(modifier, readingHistory, localDate, function0, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x008c  */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CommonCardHeader(androidx.compose.ui.Modifier r49, final androidx.compose.ui.graphics.painter.Painter r50, final java.lang.String r51, java.lang.String r52, boolean r53, boolean r54, androidx.compose.runtime.GapComposer r55, final int r56, final int r57) {
        /*
            Method dump skipped, instructions count: 889
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.activitytab.ImpactModuleKt.CommonCardHeader(androidx.compose.ui.Modifier, androidx.compose.ui.graphics.painter.Painter, java.lang.String, java.lang.String, boolean, boolean, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void ContributionCard(final Modifier modifier, final String str, final int i, final int i2, final Function0 function0, Function0 function02, GapComposer gapComposer, final int i3, final int i4) {
        int i5;
        Function0 function03;
        int i6;
        final Function0 function04;
        str.getClass();
        gapComposer.startRestartGroup(2076014546);
        if ((i3 & 6) == 0) {
            i5 = (gapComposer.changed(modifier) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposer.changed(str) ? 32 : 16;
        }
        if ((i3 & 384) == 0) {
            i5 |= gapComposer.changed(i) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposer.changed(i2) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposer.changedInstance(function0) ? 16384 : 8192;
        }
        int i7 = i4 & 32;
        if (i7 != 0) {
            i6 = i5 | 196608;
            function03 = function02;
        } else {
            function03 = function02;
            i6 = i5 | (gapComposer.changedInstance(function03) ? 131072 : 65536);
        }
        int i8 = i6;
        if (gapComposer.shouldExecute(i8 & 1, (74899 & i8) != 74898)) {
            Function0 function05 = i7 != 0 ? null : function03;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            Function0 function06 = function05;
            TabsBoxKt.m902WikiCardjfnsLPA(modifier, RecyclerView.DECELERATION_RATE, CardKt.m274cardColorsro_MJ88(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, gapComposer, 0, 12), ImageKt.m45BorderStrokecXLIe8U(1.0f, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor), function0, null, Expect_jvmKt.rememberComposableLambda(-802826491, new ForYouContentTabKt$$ExternalSyntheticLambda76(i, str, modifier, function06, i2), gapComposer), gapComposer, (i8 & 14) | 1572912 | (57344 & i8), 32);
            function04 = function06;
        } else {
            gapComposer.skipToGroupEnd();
            function04 = function03;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: org.wikipedia.activitytab.EditingInsightsModuleKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    ImpactModuleKt.ContributionCard(Modifier.this, str, i, i2, function0, function04, (GapComposer) obj, Updater.updateChangedFlags(i3 | 1), i4);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: ContributionEditsView-qFjXxE8, reason: not valid java name */
    public static final void m894ContributionEditsViewqFjXxE8(Modifier modifier, String str, int i, float f, long j, GapComposer gapComposer, int i2) {
        GapComposer gapComposer2 = gapComposer;
        modifier.getClass();
        gapComposer2.startRestartGroup(-931286588);
        int i3 = i2 | (gapComposer2.changed(str) ? 32 : 16) | (gapComposer2.changed(i) ? 256 : 128) | (gapComposer2.changed(f) ? 2048 : 1024) | (gapComposer2.changed(j) ? 16384 : 8192);
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
            BiasAlignment.Vertical vertical = Alignment.Companion.Bottom;
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$SpacedAligned, vertical, gapComposer2, 54);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j2 ^ (j2 >>> 32));
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
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            String valueOf = String.valueOf(i);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier then = OffsetKt.m136paddingqDBjuR0$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14).then(new VerticalAlignElement(vertical));
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
            TextStyle textStyle = ((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).titleLarge;
            FontWeight fontWeight = FontWeight.Medium;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
            TextKt.m308TextNvy7gAk(valueOf, then, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, fontWeight, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer2, 1572864, 0, 131000);
            TextKt.m308TextNvy7gAk(str, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).bodySmall, 0L, 0L, fontWeight, null, 0L, ContextsKt.getSp(22), null, 16646139), gapComposer2, (i3 >> 3) & 14, 0, 131066);
            gapComposer2 = gapComposer2;
            gapComposer2.end(true);
            if (i > 0) {
                gapComposer2.startReplaceGroup(1530861487);
                BoxKt.Box(ImageKt.m46backgroundbw27NRU(SizeKt.m140height3ABfNKs(OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, i / f), 16.0f, RecyclerView.DECELERATION_RATE, 2), 20.0f), j, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f)), gapComposer2, 0);
                gapComposer2.end(false);
            } else {
                gapComposer2.startReplaceGroup(1531183422);
                gapComposer2.end(false);
            }
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LineChartKt$$ExternalSyntheticLambda0(modifier, str, i, f, j, i2);
        }
    }

    public static final void CustomizationScreen(Modifier modifier, Function0 function0, ActivityTabModules activityTabModules, boolean z, boolean z2, GapComposer gapComposer, int i, int i2) {
        boolean z3;
        int i3;
        boolean z4;
        int i4;
        Modifier modifier2;
        boolean z5;
        function0.getClass();
        gapComposer.startRestartGroup(-632704030);
        int i5 = i | 6;
        if ((i & 48) == 0) {
            i5 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        int i6 = i5 | (gapComposer.changed(activityTabModules) ? 256 : 128);
        int i7 = i2 & 8;
        if (i7 != 0) {
            i3 = i6 | 3072;
            z3 = z;
        } else {
            z3 = z;
            i3 = i6 | (gapComposer.changed(z3) ? 2048 : 1024);
        }
        int i8 = i2 & 16;
        if (i8 != 0) {
            i4 = i3 | 24576;
            z4 = z2;
        } else {
            z4 = z2;
            i4 = i3 | (gapComposer.changed(z4) ? 16384 : 8192);
        }
        byte b = 0;
        int i9 = 1;
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 9363) != 9362)) {
            final boolean z6 = i7 != 0 ? false : z3;
            final boolean z7 = i8 != 0 ? false : z4;
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = Updater.mutableStateOf$default(activityTabModules);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final MutableState mutableState = (MutableState) rememberedValue;
            modifier2 = Modifier.Companion.$$INSTANCE;
            CardKt.m270ScaffoldTvnljyQ(OffsetKt.safeDrawingPadding(modifier2), Expect_jvmKt.rememberComposableLambda(-1984758618, new RandomScreenKt$$ExternalSyntheticLambda16(function0, i9, b), gapComposer), null, null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).backgroundColor, 0L, null, Expect_jvmKt.rememberComposableLambda(-984552847, new Function3() { // from class: org.wikipedia.activitytab.ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    GapComposer gapComposer2 = (GapComposer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((intValue & 6) == 0) {
                        intValue |= gapComposer2.changed(paddingValues) ? 4 : 2;
                    }
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                        Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(OffsetKt.padding(Modifier.Companion.$$INSTANCE, paddingValues), RecyclerView.DECELERATION_RATE, 16.0f, 1);
                        boolean z8 = z6;
                        boolean changed = gapComposer2.changed(z8);
                        boolean z9 = z7;
                        boolean changed2 = changed | gapComposer2.changed(z9);
                        Object rememberedValue2 = gapComposer2.rememberedValue();
                        if (changed2 || rememberedValue2 == Composer$Companion.Empty) {
                            rememberedValue2 = new ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3(z8, z9, mutableState);
                            gapComposer2.updateRememberedValue(rememberedValue2);
                        }
                        ExceptionsKt.LazyColumn(m134paddingVpY3zN4$default, null, null, null, null, null, false, null, (Function1) rememberedValue2, gapComposer2, 0, 510);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 805306416, 444);
            z3 = z6;
            z5 = z7;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            z5 = z4;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RadioButtonKt$$ExternalSyntheticLambda1(modifier2, function0, activityTabModules, z3, z5, i, i2);
        }
    }

    public static final void CustomizationScreenSwitch(boolean z, String str, Function1 function1, Modifier modifier, GapComposer gapComposer, int i) {
        Modifier modifier2;
        gapComposer.startRestartGroup(-1289370827);
        int i2 = (gapComposer.changed(z) ? 4 : 2) | i | (gapComposer.changed(str) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | 3072;
        byte b = 0;
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            int i4 = ListItemDefaults.$r8$clinit;
            ListItemColors m287colorsJ08w3E = ListItemDefaults.m287colorsJ08w3E(((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, gapComposer);
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-929668461, new HomeScreenKt$$ExternalSyntheticLambda30(str, i3, b), gapComposer);
            ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(-1058380200, new ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5(z, function1, b), gapComposer);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            CardKt.m267ListItemHXNGIdc(rememberComposableLambda, companion, null, null, rememberComposableLambda2, m287colorsJ08w3E, gapComposer, 196662, 412);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GamesHubScreenKt$$ExternalSyntheticLambda6(z, str, function1, modifier2, i, 1);
        }
    }

    public static final void DonationModule(Modifier modifier, UiState uiState, Function0 function0, GapComposer gapComposer, int i) {
        uiState.getClass();
        gapComposer.startRestartGroup(1133006917);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changed(uiState) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            TabsBoxKt.m902WikiCardjfnsLPA(modifier, RecyclerView.DECELERATION_RATE, null, ImageKt.m45BorderStrokecXLIe8U(1.0f, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor), function0, null, Expect_jvmKt.rememberComposableLambda(1004783928, new HintHandler$$ExternalSyntheticLambda0(28, uiState), gapComposer), gapComposer, (i2 & 14) | 1572912 | ((i2 << 6) & 57344), 36);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda18(modifier, uiState, function0, i, 8);
        }
    }

    public static final void EditingInsightsModule(Modifier modifier, UiState uiState, Function1 function1, Function0 function0, Function0 function02, WikiErrorClickEvents wikiErrorClickEvents, GapComposer gapComposer, int i) {
        GapComposer gapComposer2 = gapComposer;
        uiState.getClass();
        function1.getClass();
        function0.getClass();
        function02.getClass();
        gapComposer2.startRestartGroup(-1433361813);
        int i2 = i | (gapComposer2.changed(modifier) ? 4 : 2) | (gapComposer2.changed(uiState) ? 32 : 16) | (gapComposer2.changedInstance(function1) ? 256 : 128) | (gapComposer2.changedInstance(function0) ? 2048 : 1024) | (gapComposer2.changedInstance(function02) ? 16384 : 8192) | (gapComposer2.changedInstance(wikiErrorClickEvents) ? 131072 : 65536);
        if (gapComposer2.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            boolean equals = uiState.equals(UiState.Loading.INSTANCE);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (equals) {
                gapComposer2.startReplaceGroup(-716570614);
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                long j = gapComposer2.compositeKeyHashCode;
                int i3 = (int) (j ^ (j >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, companion);
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
                Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                m893ActivityTabShimmerViewkHDZbjc(RecyclerView.DECELERATION_RATE, gapComposer2, 0, 1);
                m893ActivityTabShimmerViewkHDZbjc(210.0f, gapComposer2, 6, 0);
                gapComposer2.end(true);
                gapComposer2.end(false);
            } else if (uiState instanceof UiState.Success) {
                gapComposer2.startReplaceGroup(-716378941);
                GrowthUserImpact growthUserImpact = (GrowthUserImpact) ((Pair) ((UiState.Success) uiState).data).first;
                Modifier fillMaxWidth = SizeKt.fillMaxWidth(modifier, 1.0f);
                Map map = growthUserImpact.topViewedArticlesWithPageTitle;
                boolean z = (i2 & 896) == 256;
                Object rememberedValue = gapComposer2.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                if (z || rememberedValue == neverEqualPolicy) {
                    rememberedValue = new HomeScreenKt$$ExternalSyntheticLambda8(function1, 5);
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                MostViewedCard(fillMaxWidth, map, 0, (Function1) rememberedValue, gapComposer2, 0, 4);
                Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(modifier, 1.0f);
                String str = (String) growthUserImpact.lastEditRelativeTime$delegate.getValue();
                int intValue = ((Number) growthUserImpact.editsThisMonth$delegate.getValue()).intValue();
                int intValue2 = ((Number) growthUserImpact.editsLastMonth$delegate.getValue()).intValue();
                boolean z2 = (i2 & 7168) == 2048;
                Object rememberedValue2 = gapComposer2.rememberedValue();
                if (z2 || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new Handshake$$ExternalSyntheticLambda0(3, function0);
                    gapComposer2.updateRememberedValue(rememberedValue2);
                }
                Function0 function03 = (Function0) rememberedValue2;
                boolean z3 = (i2 & 57344) == 16384;
                Object rememberedValue3 = gapComposer2.rememberedValue();
                if (z3 || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new Handshake$$ExternalSyntheticLambda0(4, function02);
                    gapComposer2.updateRememberedValue(rememberedValue3);
                }
                ContributionCard(fillMaxWidth2, str, intValue, intValue2, function03, (Function0) rememberedValue3, gapComposer2, 0, 0);
                gapComposer2 = gapComposer2;
                gapComposer2.end(false);
            } else {
                if (!(uiState instanceof UiState.Error)) {
                    throw Modifier.CC.m(gapComposer2, 1223810796, false);
                }
                gapComposer2.startReplaceGroup(-715546746);
                Modifier then = modifier.then(SizeKt.FillWholeMaxSize);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
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
                Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m327setimpl(gapComposer2, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                Okio__JvmOkioKt.WikiErrorView(SizeKt.fillMaxWidth(companion, 1.0f), ((UiState.Error) uiState).error, wikiErrorClickEvents, true, gapComposer2, ((i2 >> 6) & 7168) | 24582, 4);
                gapComposer2.end(true);
                gapComposer2.end(false);
            }
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NewsModuleKt$$ExternalSyntheticLambda2(modifier, uiState, function1, function0, function02, wikiErrorClickEvents, i, 1);
        }
    }

    public static final void ImpactModule(Modifier modifier, UiState uiState, Function0 function0, WikiErrorClickEvents wikiErrorClickEvents, GapComposer gapComposer, int i) {
        Modifier modifier2;
        UiState uiState2;
        Function0 function02;
        int i2;
        boolean z;
        GrowthUserImpact.EditDateRange editDateRange;
        uiState.getClass();
        gapComposer.startRestartGroup(1769253658);
        int i3 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changed(uiState) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | (gapComposer.changedInstance(wikiErrorClickEvents) ? 2048 : 1024);
        if (!gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            modifier2 = modifier;
            uiState2 = uiState;
            function02 = function0;
            gapComposer.skipToGroupEnd();
        } else if (uiState.equals(UiState.Loading.INSTANCE)) {
            gapComposer.startReplaceGroup(-2680149);
            m893ActivityTabShimmerViewkHDZbjc(340.0f, gapComposer, 6, 0);
            gapComposer.end(false);
            modifier2 = modifier;
            uiState2 = uiState;
            function02 = function0;
        } else {
            boolean z2 = uiState instanceof UiState.Success;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (z2) {
                gapComposer.startReplaceGroup(-2561853);
                Pair pair = (Pair) ((UiState.Success) uiState).data;
                GrowthUserImpact growthUserImpact = (GrowthUserImpact) pair.first;
                Modifier fillMaxWidth = SizeKt.fillMaxWidth(modifier, 1.0f);
                int i4 = growthUserImpact.totalEditsCount;
                int i5 = growthUserImpact.receivedThanksCount;
                GrowthUserImpact.EditStreak editStreak = (GrowthUserImpact.EditStreak) growthUserImpact.longestEditingStreak$delegate.getValue();
                if (editStreak == null || (editDateRange = editStreak.datePeriod) == null) {
                    i2 = 0;
                    z = false;
                } else {
                    i2 = editDateRange.days;
                    z = false;
                }
                AllTimeImpactCard(fillMaxWidth, i4, i5, i2, growthUserImpact.lastEditTimestamp, (Map) growthUserImpact.lastThirtyDaysEdits$delegate.getValue(), growthUserImpact.totalPageviewsCount, (Map) growthUserImpact.dailyTotalViews$delegate.getValue(), gapComposer, 0);
                function02 = function0;
                TotalEditsCard(((Number) pair.second).intValue(), i3 & 896, gapComposer, OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, 16.0f, 16.0f, RecyclerView.DECELERATION_RATE, 8), function02);
                gapComposer.end(false);
                modifier2 = modifier;
                uiState2 = uiState;
            } else {
                uiState2 = uiState;
                function02 = function0;
                if (!(uiState2 instanceof UiState.Error)) {
                    throw Modifier.CC.m(gapComposer, -554275684, false);
                }
                gapComposer.startReplaceGroup(-1621065);
                modifier2 = modifier;
                Modifier then = modifier2.then(SizeKt.FillWholeMaxSize);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                long j = gapComposer.compositeKeyHashCode;
                int i6 = (int) (j ^ (j >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
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
                Updater.m327setimpl(gapComposer, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                Okio__JvmOkioKt.WikiErrorView(SizeKt.fillMaxWidth(companion, 1.0f), ((UiState.Error) uiState2).error, wikiErrorClickEvents, true, gapComposer, (i3 & 7168) | 24582, 4);
                gapComposer.end(true);
                gapComposer.end(false);
            }
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda1(modifier2, uiState2, function02, wikiErrorClickEvents, i, 3);
        }
    }

    public static final void ImpactStatView(Modifier modifier, int i, String str, String str2, GapComposer gapComposer, int i2) {
        String str3 = str2;
        GapComposer gapComposer2 = gapComposer;
        modifier.getClass();
        str.getClass();
        str3.getClass();
        gapComposer2.startRestartGroup(-1011873034);
        int i3 = i2 | (gapComposer2.changed(modifier) ? 4 : 2) | (gapComposer2.changed(i) ? 32 : 16) | (gapComposer2.changed(str) ? 256 : 128) | (gapComposer2.changed(str3) ? 2048 : 1024);
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.Top, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
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
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i4);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(companion, 28.0f);
            Painter painterResource = UnsignedKt.painterResource(i, (i3 >> 3) & 14, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            IconKt.m286Iconww6aTOc(painterResource, null, m145size3ABfNKs, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, gapComposer2, 440, 0);
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(companion, 12.0f, RecyclerView.DECELERATION_RATE, 2);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
            TextKt.m308TextNvy7gAk(str, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).labelLarge, 0L, 0L, FontWeight.SemiBold, null, 0L, 0L, null, 16777211), gapComposer, (i3 >> 6) & 14, 0, 131066);
            str3 = str2;
            String lowerCase = str3.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            TextKt.m308TextNvy7gAk(lowerCase, null, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).bodySmall, gapComposer, 0, 0, 131066);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ImpactModuleKt$$ExternalSyntheticLambda5(modifier, i, str, str3, i2, 0);
        }
    }

    public static final void MostViewedCard(Modifier modifier, final Map map, int i, final Function1 function1, GapComposer gapComposer, final int i2, final int i3) {
        int i4;
        final Modifier modifier2;
        RecomposeScopeImpl endRestartGroup;
        Function2 function2;
        map.getClass();
        function1.getClass();
        gapComposer.startRestartGroup(1847773058);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposer.changed(modifier) ? 4 : 2) | i2;
        }
        int i6 = i4 | (gapComposer.changedInstance(map) ? 32 : 16) | 384;
        if ((i2 & 3072) == 0) {
            i6 |= gapComposer.changedInstance(function1) ? 2048 : 1024;
        }
        int i7 = i6;
        if (gapComposer.shouldExecute(i7 & 1, (i7 & 1171) != 1170)) {
            if (i5 != 0) {
                modifier = Modifier.Companion.$$INSTANCE;
            }
            Modifier modifier3 = modifier;
            if (map.isEmpty()) {
                endRestartGroup = gapComposer.endRestartGroup();
                if (endRestartGroup != null) {
                    function2 = new GamesHubScreenKt$$ExternalSyntheticLambda2(modifier3, map, function1, i2, i3);
                    endRestartGroup.block = function2;
                }
                return;
            }
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = NumberFormat.getNumberInstance(Locale.getDefault());
                gapComposer.updateRememberedValue(rememberedValue);
            }
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            TabsBoxKt.m902WikiCardjfnsLPA(modifier3, RecyclerView.DECELERATION_RATE, CardKt.m274cardColorsro_MJ88(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, gapComposer, 0, 12), ImageKt.m45BorderStrokecXLIe8U(1.0f, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor), null, null, Expect_jvmKt.rememberComposableLambda(-1859262673, new RandomScreenKt$$ExternalSyntheticLambda18((Object) map, function1, (Serializable) rememberedValue, 9), gapComposer), gapComposer, (i7 & 14) | 1572912, 48);
            modifier2 = modifier3;
            i = 3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        final int i8 = i;
        endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            function2 = new Function2() { // from class: org.wikipedia.activitytab.EditingInsightsModuleKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    ImpactModuleKt.MostViewedCard(Modifier.this, map, i8, function1, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1), i3);
                    return Unit.INSTANCE;
                }
            };
            endRestartGroup.block = function2;
        }
    }

    public static final void OnThisDayGameLoginPromptCard(Modifier modifier, Function0 function0, GapComposer gapComposer, int i) {
        Modifier modifier2;
        function0.getClass();
        gapComposer.startRestartGroup(-469526963);
        int i2 = i | 6;
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        byte b = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            CardColors m274cardColorsro_MJ88 = CardKt.m274cardColorsro_MJ88(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, gapComposer, 0, 12);
            BorderStroke m45BorderStrokecXLIe8U = ImageKt.m45BorderStrokecXLIe8U(1.0f, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor);
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(118404602, new RandomScreenKt$$ExternalSyntheticLambda16(function0, 2, b), gapComposer);
            modifier2 = Modifier.Companion.$$INSTANCE;
            TabsBoxKt.m902WikiCardjfnsLPA(modifier2, RecyclerView.DECELERATION_RATE, m274cardColorsro_MJ88, m45BorderStrokecXLIe8U, null, null, rememberComposableLambda, gapComposer, 1572918, 48);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new WikiGamesModuleKt$$ExternalSyntheticLambda1(i, modifier2, function0, b);
        }
    }

    public static final void ReadingHistoryModule(HorizontalAlignElement horizontalAlignElement, String str, boolean z, boolean z2, UiState uiState, Function0 function0, Function0 function02, Function0 function03, Function1 function1, WikiErrorClickEvents wikiErrorClickEvents, GapComposer gapComposer, int i) {
        HorizontalAlignElement horizontalAlignElement2;
        GapComposer gapComposer2;
        Function0 function04;
        RecomposeScopeImpl recomposeScopeImpl;
        ChipKt$$ExternalSyntheticLambda1 chipKt$$ExternalSyntheticLambda1;
        ActivityTabViewModel.ReadingHistory readingHistory;
        float f;
        float f2;
        boolean z3;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal;
        boolean z4;
        float f3;
        boolean z5;
        int i2;
        boolean z6;
        UiState uiState2 = uiState;
        uiState2.getClass();
        gapComposer.startRestartGroup(1219598266);
        int i3 = i | (gapComposer.changed(horizontalAlignElement) ? 4 : 2) | (gapComposer.changed(str) ? 32 : 16) | (gapComposer.changed(z) ? 256 : 128) | (gapComposer.changed(z2) ? 2048 : 1024) | (gapComposer.changed(uiState2) ? 16384 : 8192) | (gapComposer.changedInstance(function0) ? 131072 : 65536) | (gapComposer.changedInstance(function02) ? 1048576 : 524288) | (gapComposer.changedInstance(function03) ? 8388608 : 4194304) | (gapComposer.changedInstance(function1) ? 67108864 : 33554432) | (gapComposer.changedInstance(wikiErrorClickEvents) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 306783379) != 306783378)) {
            String stringResource = UtilsKt.stringResource(R.string.activity_tab_user_reading, new Object[]{str}, gapComposer);
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(horizontalAlignElement, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
            TextStyle textStyle = ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).titleLarge;
            FontWeight fontWeight = FontWeight.Medium;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
            TextKt.m308TextNvy7gAk(stringResource, m136paddingqDBjuR0$default, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal3)).primaryColor, null, 0L, fontWeight, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, textStyle, gapComposer, 1572864, 0, 129976);
            Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(OffsetKt.m133paddingVpY3zN4(horizontalAlignElement, 8.0f, 4.0f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal3)).additionColor, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f));
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m46backgroundbw27NRU);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i4);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            String upperCase = UtilsKt.stringResource(R.string.activity_tab_on_wikipedia_android, gapComposer).toUpperCase(Locale.ROOT);
            upperCase.getClass();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            TextKt.m308TextNvy7gAk(upperCase, OffsetKt.m133paddingVpY3zN4(companion, 8.0f, 4.0f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal3)).primaryColor, null, ContextsKt.getSp(11), null, FontFamily.Monospace, ContextsKt.pack(0.8f, 4294967296L), new TextAlign(3), 0L, 0, false, 0, 0, null, null, gapComposer, 24624, 0, 260712);
            gapComposer.end(true);
            if (uiState2 instanceof UiState.Loading) {
                gapComposer.startReplaceGroup(1925077450);
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
                long j2 = gapComposer.compositeKeyHashCode;
                int i5 = (int) (j2 ^ (j2 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, companion);
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                Updater.m327setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i5, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                m893ActivityTabShimmerViewkHDZbjc(RecyclerView.DECELERATION_RATE, gapComposer, 0, 1);
                m893ActivityTabShimmerViewkHDZbjc(RecyclerView.DECELERATION_RATE, gapComposer, 0, 1);
                m893ActivityTabShimmerViewkHDZbjc(240.0f, gapComposer, 6, 0);
                gapComposer.end(true);
                gapComposer.end(false);
                horizontalAlignElement2 = horizontalAlignElement;
                gapComposer2 = gapComposer;
                function04 = function03;
            } else if (uiState2 instanceof UiState.Success) {
                gapComposer.startReplaceGroup(1925393402);
                ActivityTabViewModel.ReadingHistory readingHistory2 = (ActivityTabViewModel.ReadingHistory) ((UiState.Success) uiState2).data;
                LocalDate now = LocalDate.now();
                if (z) {
                    gapComposer.startReplaceGroup(1925442041);
                    String stringResource2 = UtilsKt.stringResource(R.string.activity_tab_weekly_time_spent_hm, new Object[]{Long.valueOf(readingHistory2.timeSpentThisWeek / 3600), Long.valueOf((readingHistory2.timeSpentThisWeek / 60) % 60)}, gapComposer);
                    readingHistory = readingHistory2;
                    staticProvidableCompositionLocal = staticProvidableCompositionLocal3;
                    Modifier m136paddingqDBjuR0$default2 = OffsetKt.m136paddingqDBjuR0$default(horizontalAlignElement, RecyclerView.DECELERATION_RATE, 12.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                    TextStyle textStyle2 = ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).headlineLarge;
                    z3 = true;
                    LinearGradient linearGradient = new LinearGradient(Room.listOf((Object[]) new Color[]{new Color(ComposeColors.Red700), new Color(ComposeColors.Orange500), new Color(ComposeColors.Yellow500), new Color(ComposeColors.Blue300)}), null, 0L, 9187343241974906880L);
                    TextStyle textStyle3 = TextStyle.Default;
                    float alpha = textStyle2.spanStyle.textForegroundStyle.getAlpha();
                    SpanStyle spanStyle = textStyle2.spanStyle;
                    long j3 = spanStyle.fontSize;
                    FontWeight fontWeight2 = spanStyle.fontWeight;
                    FontStyle fontStyle = spanStyle.fontStyle;
                    FontSynthesis fontSynthesis = spanStyle.fontSynthesis;
                    FontFamily fontFamily = spanStyle.fontFamily;
                    String str2 = spanStyle.fontFeatureSettings;
                    long j4 = spanStyle.letterSpacing;
                    BaselineShift baselineShift = spanStyle.baselineShift;
                    TextGeometricTransform textGeometricTransform = spanStyle.textGeometricTransform;
                    LocaleList localeList = spanStyle.localeList;
                    long j5 = spanStyle.background;
                    TextDecoration textDecoration = spanStyle.textDecoration;
                    Shadow shadow = spanStyle.shadow;
                    DrawStyle drawStyle = spanStyle.drawStyle;
                    ParagraphStyle paragraphStyle = textStyle2.paragraphStyle;
                    int i6 = paragraphStyle.textAlign;
                    int i7 = paragraphStyle.textDirection;
                    long j6 = paragraphStyle.lineHeight;
                    TextIndent textIndent = paragraphStyle.textIndent;
                    PlatformTextStyle platformTextStyle = textStyle2.platformStyle;
                    LineHeightStyle lineHeightStyle = paragraphStyle.lineHeightStyle;
                    int i8 = paragraphStyle.lineBreak;
                    int i9 = paragraphStyle.hyphens;
                    TextMotion textMotion = paragraphStyle.textMotion;
                    SpanStyle spanStyle2 = new SpanStyle(new BrushStyle(linearGradient, alpha), j3, fontWeight2, fontStyle, fontSynthesis, fontFamily, str2, j4, baselineShift, textGeometricTransform, localeList, j5, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.spanStyle : null, drawStyle);
                    PlatformParagraphStyle platformParagraphStyle = null;
                    if (platformTextStyle != null) {
                        platformParagraphStyle = platformTextStyle.paragraphStyle;
                    }
                    TextStyle textStyle4 = new TextStyle(spanStyle2, new ParagraphStyle(i6, i7, j6, textIndent, platformParagraphStyle, lineHeightStyle, i8, i9, textMotion), platformTextStyle);
                    long j7 = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor;
                    TextAlign textAlign = new TextAlign(3);
                    f = RecyclerView.DECELERATION_RATE;
                    TextKt.m308TextNvy7gAk(stringResource2, m136paddingqDBjuR0$default2, j7, null, 0L, fontWeight, null, 0L, textAlign, 0L, 0, false, 0, 0, null, textStyle4, gapComposer, 1572864, 0, 129976);
                    f2 = 8.0f;
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.activity_tab_weekly_time_spent, gapComposer), OffsetKt.m136paddingqDBjuR0$default(horizontalAlignElement, RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).labelLarge, gapComposer, 0, 0, 130040);
                    gapComposer2 = gapComposer;
                    z4 = false;
                    gapComposer2.end(false);
                } else {
                    readingHistory = readingHistory2;
                    gapComposer2 = gapComposer;
                    f = 0.0f;
                    f2 = 8.0f;
                    z3 = true;
                    staticProvidableCompositionLocal = staticProvidableCompositionLocal3;
                    z4 = false;
                    gapComposer2.startReplaceGroup(1926686536);
                    gapComposer2.end(false);
                }
                if (!z2) {
                    gapComposer2.startReplaceGroup(1926717908);
                    OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 16.0f));
                    gapComposer2.end(z4);
                    gapComposer2.end(z4);
                    recomposeScopeImpl = gapComposer2.endRestartGroup();
                    if (recomposeScopeImpl != null) {
                        chipKt$$ExternalSyntheticLambda1 = new ChipKt$$ExternalSyntheticLambda1(horizontalAlignElement, str, z, z2, uiState, function0, function02, function03, function1, wikiErrorClickEvents, i, 2);
                        recomposeScopeImpl.block = chipKt$$ExternalSyntheticLambda1;
                    }
                    return;
                }
                gapComposer2.startReplaceGroup(1926798632);
                gapComposer2.end(z4);
                Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(SizeKt.fillMaxWidth(horizontalAlignElement, 1.0f), 16.0f, 16.0f);
                now.getClass();
                boolean z7 = (i3 & 458752) == 131072 ? z3 : false;
                Object rememberedValue = gapComposer2.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                if (z7 || rememberedValue == neverEqualPolicy) {
                    rememberedValue = new Handshake$$ExternalSyntheticLambda0(7, function0);
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                Function0 function05 = (Function0) rememberedValue;
                ActivityTabViewModel.ReadingHistory readingHistory3 = readingHistory;
                ArticleReadThisMonthCard(m133paddingVpY3zN4, readingHistory3, now, function05, gapComposer2, 0);
                Modifier m136paddingqDBjuR0$default3 = OffsetKt.m136paddingqDBjuR0$default(OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(horizontalAlignElement, 1.0f), 16.0f, f, 2), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 16.0f, 7);
                boolean z8 = (i3 & 3670016) == 1048576 ? z3 : false;
                Object rememberedValue2 = gapComposer2.rememberedValue();
                if (z8 || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new Handshake$$ExternalSyntheticLambda0(8, function02);
                    gapComposer2.updateRememberedValue(rememberedValue2);
                }
                ArticleSavedThisMonthCard(m136paddingqDBjuR0$default3, readingHistory3, now, (Function0) rememberedValue2, gapComposer2, 0);
                if (readingHistory3.topCategories.isEmpty()) {
                    f3 = 16.0f;
                    z5 = false;
                    i2 = 6;
                    gapComposer2.startReplaceGroup(1927880904);
                    gapComposer2.end(false);
                } else {
                    gapComposer2.startReplaceGroup(1927543593);
                    Modifier m136paddingqDBjuR0$default4 = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, RecyclerView.DECELERATION_RATE, 16.0f, 16.0f, 2);
                    f3 = 16.0f;
                    List list = readingHistory3.topCategories;
                    boolean z9 = (i3 & 234881024) == 67108864 ? z3 : false;
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (z9 || rememberedValue3 == neverEqualPolicy) {
                        i2 = 6;
                        rememberedValue3 = new HomeScreenKt$$ExternalSyntheticLambda8(function1, 6);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    } else {
                        i2 = 6;
                    }
                    TopCategoriesCard(m136paddingqDBjuR0$default4, list, (Function1) rememberedValue3, gapComposer2, i2);
                    z5 = false;
                    gapComposer2.end(false);
                }
                if (readingHistory3.articlesReadThisMonth == 0) {
                    gapComposer2.startReplaceGroup(1927968696);
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.activity_tab_discover_encourage, gapComposer2), OffsetKt.m133paddingVpY3zN4(horizontalAlignElement, f3, f2), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, ContextsKt.getSp(14), fontWeight, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer, 1597440, 0, 262056);
                    Modifier m136paddingqDBjuR0$default5 = OffsetKt.m136paddingqDBjuR0$default(horizontalAlignElement, RecyclerView.DECELERATION_RATE, f2, RecyclerView.DECELERATION_RATE, 16.0f, 5);
                    horizontalAlignElement2 = horizontalAlignElement;
                    PaddingValuesImpl m125PaddingValuesYgX7TsA$default = OffsetKt.m125PaddingValuesYgX7TsA$default(2, 18.0f);
                    PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                    ButtonColors m260buttonColorsro_MJ88 = ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor, Color.White, gapComposer, 12);
                    boolean z10 = (i3 & 29360128) == 8388608;
                    Object rememberedValue4 = gapComposer.rememberedValue();
                    if (z10 || rememberedValue4 == neverEqualPolicy) {
                        function04 = function03;
                        rememberedValue4 = new Handshake$$ExternalSyntheticLambda0(6, function04);
                        gapComposer.updateRememberedValue(rememberedValue4);
                    } else {
                        function04 = function03;
                    }
                    CardKt.Button((Function0) rememberedValue4, m136paddingqDBjuR0$default5, false, null, m260buttonColorsro_MJ88, null, null, m125PaddingValuesYgX7TsA$default, lambda$655954818, gapComposer, 817889280, 364);
                    gapComposer2 = gapComposer;
                    z6 = false;
                    gapComposer2.end(false);
                } else {
                    function04 = function03;
                    horizontalAlignElement2 = horizontalAlignElement;
                    z6 = z5;
                    gapComposer2.startReplaceGroup(1928937384);
                    gapComposer2.end(z6);
                }
                gapComposer2.end(z6);
                uiState2 = uiState;
            } else {
                horizontalAlignElement2 = horizontalAlignElement;
                gapComposer2 = gapComposer;
                function04 = function03;
                if (uiState2 instanceof UiState.Error) {
                    gapComposer2.startReplaceGroup(1929005956);
                    Modifier m133paddingVpY3zN42 = OffsetKt.m133paddingVpY3zN4(horizontalAlignElement2.then(SizeKt.FillWholeMaxSize), 16.0f, 16.0f);
                    MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                    long j8 = gapComposer2.compositeKeyHashCode;
                    int i10 = (int) (j8 ^ (j8 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, m133paddingVpY3zN42);
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i10, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                    Okio__JvmOkioKt.WikiErrorView(SizeKt.fillMaxWidth(companion, 1.0f), ((UiState.Error) uiState2).error, wikiErrorClickEvents, true, gapComposer2, ((i3 >> 18) & 7168) | 24582, 4);
                    gapComposer2.end(true);
                    gapComposer2.end(false);
                } else {
                    gapComposer2.startReplaceGroup(1929471080);
                    gapComposer2.end(false);
                }
            }
        } else {
            horizontalAlignElement2 = horizontalAlignElement;
            gapComposer2 = gapComposer;
            function04 = function03;
            gapComposer2.skipToGroupEnd();
        }
        recomposeScopeImpl = gapComposer2.endRestartGroup();
        if (recomposeScopeImpl != null) {
            chipKt$$ExternalSyntheticLambda1 = new ChipKt$$ExternalSyntheticLambda1(horizontalAlignElement2, str, z, z2, uiState2, function0, function02, function04, function1, wikiErrorClickEvents, i, 1);
            recomposeScopeImpl.block = chipKt$$ExternalSyntheticLambda1;
        }
    }

    public static final void SuggestedEditsView(Modifier modifier, Function0 function0, GapComposer gapComposer, int i) {
        Function0 function02;
        int i2;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(439970538);
        int i3 = i | (gapComposer2.changedInstance(function0) ? 32 : 16);
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 17) != 16)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f);
            BiasAlignment.Horizontal horizontal = Alignment.Companion.CenterHorizontally;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, horizontal, gapComposer2, 48);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m132padding3ABfNKs);
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
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 8.0f, 7);
            String stringResource = UtilsKt.stringResource(R.string.activity_tab_impact_suggested_edits_title, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
            TextStyle m647copyp1EtxEg$default = TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).titleSmall, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
            TextKt.m308TextNvy7gAk(stringResource, m136paddingqDBjuR0$default, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, m647copyp1EtxEg$default, gapComposer, 48, 0, 131064);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.activity_tab_impact_suggested_edits_message, gapComposer), null, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal)).bodyMedium, gapComposer, 0, 0, 130042);
            Modifier then = OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13).then(new HorizontalAlignElement(horizontal));
            PaddingValuesImpl m125PaddingValuesYgX7TsA$default = OffsetKt.m125PaddingValuesYgX7TsA$default(2, 18.0f);
            PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
            ButtonColors m260buttonColorsro_MJ88 = ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).progressiveColor, Color.White, gapComposer, 12);
            boolean z = (i3 & 112) == 32;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer$Companion.Empty) {
                function02 = function0;
                rememberedValue = new Handshake$$ExternalSyntheticLambda0(2, function02);
                gapComposer.updateRememberedValue(rememberedValue);
            } else {
                function02 = function0;
            }
            CardKt.Button((Function0) rememberedValue, then, false, null, m260buttonColorsro_MJ88, null, null, m125PaddingValuesYgX7TsA$default, lambda$2075109956, gapComposer, 817889280, 364);
            gapComposer2 = gapComposer;
            i2 = 1;
            gapComposer2.end(true);
        } else {
            function02 = function0;
            i2 = 1;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda9(i, modifier, function02, i2);
        }
    }

    public static final void TopCategoriesCard(Modifier modifier, List list, Function1 function1, GapComposer gapComposer, int i) {
        function1.getClass();
        gapComposer.startRestartGroup(-1491620790);
        int i2 = (gapComposer.changedInstance(list) ? 32 : 16) | i;
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            TabsBoxKt.m902WikiCardjfnsLPA(modifier, RecyclerView.DECELERATION_RATE, null, ImageKt.m45BorderStrokecXLIe8U(1.0f, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor), null, null, Expect_jvmKt.rememberComposableLambda(-779918595, new HomeScreenKt$$ExternalSyntheticLambda17(19, list, function1), gapComposer), gapComposer, 1572918, 52);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9((Object) modifier, (Object) list, (Object) function1, i, 14);
        }
    }

    public static final void TotalEditsCard(int i, int i2, GapComposer gapComposer, Modifier modifier, Function0 function0) {
        int i3;
        gapComposer.startRestartGroup(-1593239316);
        if ((i2 & 6) == 0) {
            i3 = (gapComposer.changed(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer.changed(i) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        int i4 = 0;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = NumberFormat.getNumberInstance(Locale.getDefault());
                gapComposer.updateRememberedValue(rememberedValue);
            }
            TabsBoxKt.m902WikiCardjfnsLPA(modifier, RecyclerView.DECELERATION_RATE, null, ImageKt.m45BorderStrokecXLIe8U(1.0f, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor), function0, null, Expect_jvmKt.rememberComposableLambda(2112029727, new ImpactModuleKt$$ExternalSyntheticLambda3(i, i4, (NumberFormat) rememberedValue), gapComposer), gapComposer, (i3 & 14) | 1572912 | ((i3 << 6) & 57344), 36);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ImpactModuleKt$$ExternalSyntheticLambda4(modifier, i, function0, i2);
        }
    }

    public static final void WikiGamesModule(Modifier modifier, UiState uiState, Function0 function0, Function0 function02, WikiErrorClickEvents wikiErrorClickEvents, GapComposer gapComposer, int i) {
        int i2;
        WikiErrorClickEvents wikiErrorClickEvents2;
        Double d;
        GapComposer gapComposer2 = gapComposer;
        uiState.getClass();
        gapComposer2.startRestartGroup(-1439278046);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = i2 | (gapComposer2.changed(uiState) ? 32 : 16);
        if ((i & 384) == 0) {
            i3 |= gapComposer2.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer2.changedInstance(function02) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            wikiErrorClickEvents2 = wikiErrorClickEvents;
            i3 |= gapComposer2.changedInstance(wikiErrorClickEvents2) ? 16384 : 8192;
        } else {
            wikiErrorClickEvents2 = wikiErrorClickEvents;
        }
        if (!gapComposer2.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            gapComposer2.skipToGroupEnd();
        } else if (uiState.equals(UiState.Loading.INSTANCE)) {
            gapComposer2.startReplaceGroup(-873437053);
            m893ActivityTabShimmerViewkHDZbjc(160.0f, gapComposer2, 6, 0);
            gapComposer2.end(false);
        } else if (uiState instanceof UiState.Success) {
            gapComposer2.startReplaceGroup(-873330723);
            Modifier animateContentSize$default = CrossfadeKt.animateContentSize$default(SizeKt.fillMaxWidth(modifier, 1.0f));
            OnThisDayGameViewModel.GameStatistics gameStatistics = (OnThisDayGameViewModel.GameStatistics) ((UiState.Success) uiState).data;
            WikiGamesStatsCard(animateContentSize$default, gameStatistics != null ? gameStatistics.totalGamesPlayed : 0, gameStatistics != null ? gameStatistics.currentStreak : 0, gameStatistics != null ? gameStatistics.bestStreak : 0, (gameStatistics == null || (d = gameStatistics.averageScore) == null) ? 0.0d : d.doubleValue(), false, function02, function0, gapComposer2, ((i3 << 15) & 29360128) | ((i3 << 9) & 3670016), 32);
            gapComposer2 = gapComposer2;
            gapComposer2.end(false);
        } else {
            if (!(uiState instanceof UiState.Error)) {
                throw Modifier.CC.m(gapComposer2, -166723006, false);
            }
            gapComposer2.startReplaceGroup(-872760881);
            Modifier then = modifier.then(SizeKt.FillWholeMaxSize);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, then);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Okio__JvmOkioKt.WikiErrorView(SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f), ((UiState.Error) uiState).error, wikiErrorClickEvents2, true, gapComposer2, ((i3 >> 3) & 7168) | 24582, 4);
            gapComposer2.end(true);
            gapComposer2.end(false);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda18(i, 3, modifier, uiState, function0, function02, wikiErrorClickEvents);
        }
    }

    public static final void WikiGamesStatView(Modifier modifier, int i, String str, String str2, GapComposer gapComposer, int i2) {
        String str3 = str2;
        GapComposer gapComposer2 = gapComposer;
        modifier.getClass();
        str.getClass();
        str3.getClass();
        gapComposer2.startRestartGroup(-219982984);
        int i3 = i2 | (gapComposer2.changed(modifier) ? 4 : 2) | (gapComposer2.changed(i) ? 32 : 16) | (gapComposer2.changed(str) ? 256 : 128) | (gapComposer2.changed(str3) ? 2048 : 1024);
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.Top, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
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
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i4);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(companion, 28.0f);
            Painter painterResource = UnsignedKt.painterResource(i, (i3 >> 3) & 14, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            IconKt.m286Iconww6aTOc(painterResource, null, m145size3ABfNKs, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, gapComposer2, 440, 0);
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(companion, 12.0f, RecyclerView.DECELERATION_RATE, 2);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
            TextKt.m308TextNvy7gAk(str, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).labelLarge, 0L, 0L, FontWeight.SemiBold, null, 0L, 0L, null, 16777211), gapComposer, (i3 >> 6) & 14, 0, 131066);
            str3 = str2;
            String lowerCase = str3.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            TextKt.m308TextNvy7gAk(lowerCase, null, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).bodySmall, gapComposer, 0, 0, 131066);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ImpactModuleKt$$ExternalSyntheticLambda5(modifier, i, str, str3, i2, 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void WikiGamesStatsCard(final androidx.compose.ui.Modifier r22, final int r23, final int r24, final int r25, final double r26, boolean r28, kotlin.jvm.functions.Function0 r29, kotlin.jvm.functions.Function0 r30, androidx.compose.runtime.GapComposer r31, final int r32, final int r33) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.activitytab.ImpactModuleKt.WikiGamesStatsCard(androidx.compose.ui.Modifier, int, int, int, double, boolean, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final String toOnOffString(boolean z) {
        return z ? "on" : "off";
    }
}
