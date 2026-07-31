package org.wikipedia.settings.dev.playground;

import android.content.res.Configuration;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.AndroidWindowInsets;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.SwitchColors;
import androidx.compose.material3.SwitchKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextFieldDefaults;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
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
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.recyclerview.widget.RecyclerView;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import coil3.size.ViewSizeResolver$CC;
import j$.time.LocalDate;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.R;
import org.wikipedia.activitytab.ActivityTabFragment$$ExternalSyntheticLambda10;
import org.wikipedia.compose.components.OnboardingKt$$ExternalSyntheticLambda0;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda32;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda8;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda28;
import org.wikipedia.language.LangLinksScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda16;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.readinglist.RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda2;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda0;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda12;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda6;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.Prefs$$ExternalSyntheticLambda0;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.UiState;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeState;
import org.wikipedia.yearinreview.YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.yearinreview.YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ReadingChallengePlaygroundDialogKt {
    public static final ComposableLambdaImpl lambda$1144127370 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(6), false, 1144127370);
    public static final ComposableLambdaImpl lambda$598748980 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(11), false, 598748980);

    /* renamed from: lambda$-235902285, reason: not valid java name */
    public static final ComposableLambdaImpl f71lambda$235902285 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(12), false, -235902285);
    public static final ComposableLambdaImpl lambda$1369524109 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(13), false, 1369524109);

    /* renamed from: lambda$-1014666397, reason: not valid java name */
    public static final ComposableLambdaImpl f64lambda$1014666397 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(14), false, -1014666397);
    public static final ComposableLambdaImpl lambda$749487391 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(15), false, 749487391);

    /* renamed from: lambda$-2104715562, reason: not valid java name */
    public static final ComposableLambdaImpl f70lambda$2104715562 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(16), false, -2104715562);

    /* renamed from: lambda$-1525949417, reason: not valid java name */
    public static final ComposableLambdaImpl f65lambda$1525949417 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(17), false, -1525949417);
    public static final ComposableLambdaImpl lambda$1880299273 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(7), false, 1880299273);
    public static final ComposableLambdaImpl lambda$659736017 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(8), false, 659736017);
    public static final ComposableLambdaImpl lambda$213214216 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(9), false, 213214216);

    /* renamed from: lambda$-708144453, reason: not valid java name */
    public static final ComposableLambdaImpl f75lambda$708144453 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(10), false, -708144453);
    public static final ComposableLambdaImpl lambda$1284433102 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(18), false, 1284433102);

    /* renamed from: lambda$-558935227, reason: not valid java name */
    public static final ComposableLambdaImpl f73lambda$558935227 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(24), false, -558935227);

    /* renamed from: lambda$-1602158724, reason: not valid java name */
    public static final ComposableLambdaImpl f66lambda$1602158724 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(25), false, -1602158724);

    /* renamed from: lambda$-636134630, reason: not valid java name */
    public static final ComposableLambdaImpl f74lambda$636134630 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(26), false, -636134630);

    /* renamed from: lambda$-2015767535, reason: not valid java name */
    public static final ComposableLambdaImpl f69lambda$2015767535 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(10), false, -2015767535);
    public static final ComposableLambdaImpl lambda$2033903237 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(27), false, 2033903237);
    public static final ComposableLambdaImpl lambda$265198780 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(19), false, 265198780);
    public static final ComposableLambdaImpl lambda$1328387389 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(20), false, 1328387389);

    /* renamed from: lambda$-1903391298, reason: not valid java name */
    public static final ComposableLambdaImpl f67lambda$1903391298 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(21), false, -1903391298);
    public static final ComposableLambdaImpl lambda$836143963 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(22), false, 836143963);

    /* renamed from: lambda$-543488942, reason: not valid java name */
    public static final ComposableLambdaImpl f72lambda$543488942 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(7), false, -543488942);

    /* renamed from: lambda$-1986544740, reason: not valid java name */
    public static final ComposableLambdaImpl f68lambda$1986544740 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(23), false, -1986544740);
    public static final ComposableLambdaImpl lambda$928789651 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(8), false, 928789651);
    public static final ComposableLambdaImpl lambda$1801978061 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(9), false, 1801978061);

    public static final void CategoryDeveloperPlayGroundScreen(final Modifier modifier, final UiState uiState, final Function3 function3, final Function2 function2, final Function1 function1, final Function0 function0, final Function1 function12, final Function1 function13, final Function0 function02, GapComposer gapComposer, final int i) {
        int i2;
        Function3 function32;
        Function2 function22;
        Function1 function14;
        Function0 function03;
        Function1 function15;
        uiState.getClass();
        function3.getClass();
        function2.getClass();
        function1.getClass();
        function0.getClass();
        function12.getClass();
        function13.getClass();
        function02.getClass();
        gapComposer.startRestartGroup(-1859289705);
        if ((i & 48) == 0) {
            i2 = (gapComposer.changed(uiState) ? 32 : 16) | i;
        } else {
            i2 = i;
        }
        if ((i & 384) == 0) {
            function32 = function3;
            i2 |= gapComposer.changedInstance(function32) ? 256 : 128;
        } else {
            function32 = function3;
        }
        if ((i & 3072) == 0) {
            function22 = function2;
            i2 |= gapComposer.changedInstance(function22) ? 2048 : 1024;
        } else {
            function22 = function2;
        }
        if ((i & 24576) == 0) {
            function14 = function1;
            i2 |= gapComposer.changedInstance(function14) ? 16384 : 8192;
        } else {
            function14 = function1;
        }
        if ((196608 & i) == 0) {
            function03 = function0;
            i2 |= gapComposer.changedInstance(function03) ? 131072 : 65536;
        } else {
            function03 = function0;
        }
        if ((1572864 & i) == 0) {
            function15 = function12;
            i2 |= gapComposer.changedInstance(function15) ? 1048576 : 524288;
        } else {
            function15 = function12;
        }
        if ((12582912 & i) == 0) {
            i2 |= gapComposer.changedInstance(function13) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= gapComposer.changedInstance(function02) ? 67108864 : 33554432;
        }
        byte b = 0;
        if (gapComposer.shouldExecute(i2 & 1, (38347923 & i2) != 38347922)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(Option.ENTRY);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final MutableState mutableState = (MutableState) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.mutableStateOf$default(ENTRY.SINGLE);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            final MutableState mutableState2 = (MutableState) rememberedValue2;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new ParcelableSnapshotMutableIntState(0);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            final ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) rememberedValue3;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.LocalDensity;
            final float mo84toDpu2uoSUM = ((Density) gapComposer.consume(staticProvidableCompositionLocal)).mo84toDpu2uoSUM(parcelableSnapshotMutableIntState.getIntValue());
            final float f = ((Configuration) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalConfiguration)).screenHeightDp;
            WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
            AndroidWindowInsets androidWindowInsets = OffsetKt.current(gapComposer).statusBars;
            Density density = (Density) gapComposer.consume(staticProvidableCompositionLocal);
            final float mo84toDpu2uoSUM2 = density.mo84toDpu2uoSUM(androidWindowInsets.getTop(density));
            AndroidWindowInsets androidWindowInsets2 = OffsetKt.current(gapComposer).navigationBars;
            Density density2 = (Density) gapComposer.consume(staticProvidableCompositionLocal);
            final float mo84toDpu2uoSUM3 = density2.mo84toDpu2uoSUM(androidWindowInsets2.getBottom(density2));
            final Function3 function33 = function32;
            final Function2 function23 = function22;
            final Function1 function16 = function14;
            final Function0 function04 = function03;
            final Function1 function17 = function15;
            CardKt.m270ScaffoldTvnljyQ(null, Expect_jvmKt.rememberComposableLambda(367658843, new RandomScreenKt$$ExternalSyntheticLambda16(function02, 5, b), gapComposer), null, null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(755307494, new Function3() { // from class: org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundActivityKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    boolean z;
                    PaddingValues paddingValues;
                    PaddingValues paddingValues2 = (PaddingValues) obj;
                    GapComposer gapComposer2 = (GapComposer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    paddingValues2.getClass();
                    if ((intValue & 6) == 0) {
                        intValue |= gapComposer2.changed(paddingValues2) ? 4 : 2;
                    }
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                        FillElement fillElement = SizeKt.FillWholeMaxSize;
                        Modifier scroll$default = ImageKt.scroll$default(OffsetKt.padding(Modifier.this.then(fillElement), paddingValues2), ImageKt.rememberScrollState(gapComposer2), true);
                        Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
                        BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
                        ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$SpacedAligned, horizontal, gapComposer2, 6);
                        long j = gapComposer2.compositeKeyHashCode;
                        int i3 = (int) (j ^ (j >>> 32));
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
                        Integer valueOf = Integer.valueOf(i3);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
                        OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                        Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                        Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
                        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                        Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                        Object rememberedValue4 = gapComposer2.rememberedValue();
                        Object obj4 = Composer$Companion.Empty;
                        if (rememberedValue4 == obj4) {
                            rememberedValue4 = new ActivityTabFragment$$ExternalSyntheticLambda10(parcelableSnapshotMutableIntState, 1);
                            gapComposer2.updateRememberedValue(rememberedValue4);
                        }
                        Modifier onGloballyPositioned = RulerKt.onGloballyPositioned(fillMaxWidth, (Function1) rememberedValue4);
                        ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), horizontal, gapComposer2, 6);
                        long j2 = gapComposer2.compositeKeyHashCode;
                        int i4 = (int) (j2 ^ (j2 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, onGloballyPositioned);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                        Animation.CC.m(i4, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                        BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
                        Arrangement$SpacedAligned arrangement$SpacedAligned2 = new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
                        Function1 function18 = function13;
                        boolean changed = gapComposer2.changed(function18);
                        Object rememberedValue5 = gapComposer2.rememberedValue();
                        MutableState mutableState3 = mutableState;
                        if (changed || rememberedValue5 == obj4) {
                            rememberedValue5 = new LangLinksScreenKt$$ExternalSyntheticLambda4(function18, mutableState3, 3);
                            gapComposer2.updateRememberedValue(rememberedValue5);
                        }
                        ExceptionsKt.LazyRow(null, null, null, arrangement$SpacedAligned2, vertical, null, false, null, (Function1) rememberedValue5, gapComposer2, 221184, 463);
                        int i5 = CategoryDeveloperPlayGroundActivityKt$WhenMappings.$EnumSwitchMapping$1[((Option) mutableState3.getValue()).ordinal()];
                        if (i5 != 1) {
                            if (i5 == 2) {
                                z = false;
                                gapComposer2.startReplaceGroup(-914148459);
                                Function1 function19 = function16;
                                boolean changed2 = gapComposer2.changed(function19);
                                Object rememberedValue6 = gapComposer2.rememberedValue();
                                if (changed2 || rememberedValue6 == obj4) {
                                    rememberedValue6 = new HomeScreenKt$$ExternalSyntheticLambda8(function19, 28);
                                    gapComposer2.updateRememberedValue(rememberedValue6);
                                }
                                ReadingChallengePlaygroundDialogKt.FilterView(null, (Function1) rememberedValue6, gapComposer2, 0);
                                gapComposer2.end(false);
                            } else {
                                if (i5 != 3) {
                                    throw Modifier.CC.m(gapComposer2, 1078844505, false);
                                }
                                gapComposer2.startReplaceGroup(-913901544);
                                z = false;
                                ReadingChallengePlaygroundDialogKt.DeleteView(null, function04, function17, gapComposer2, 0);
                                gapComposer2.end(false);
                            }
                            paddingValues = paddingValues2;
                        } else {
                            z = false;
                            gapComposer2.startReplaceGroup(-915516954);
                            Arrangement$SpacedAligned arrangement$SpacedAligned3 = new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
                            Object rememberedValue7 = gapComposer2.rememberedValue();
                            MutableState mutableState4 = mutableState2;
                            if (rememberedValue7 == obj4) {
                                rememberedValue7 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState4, 19);
                                gapComposer2.updateRememberedValue(rememberedValue7);
                            }
                            paddingValues = paddingValues2;
                            ExceptionsKt.LazyRow(null, null, null, arrangement$SpacedAligned3, vertical, null, false, null, (Function1) rememberedValue7, gapComposer2, 805527552, 463);
                            int i6 = CategoryDeveloperPlayGroundActivityKt$WhenMappings.$EnumSwitchMapping$0[((ENTRY) mutableState4.getValue()).ordinal()];
                            if (i6 == 1) {
                                gapComposer2.startReplaceGroup(1078883540);
                                ReadingChallengePlaygroundDialogKt.SingleEntryView(function33, null, gapComposer2, 0);
                                gapComposer2.end(false);
                            } else {
                                if (i6 != 2) {
                                    throw Modifier.CC.m(gapComposer2, 1078881573, false);
                                }
                                gapComposer2.startReplaceGroup(1078885980);
                                ReadingChallengePlaygroundDialogKt.RandomBulkEntryView(0, gapComposer2, null, function23);
                                gapComposer2.end(false);
                            }
                            gapComposer2.end(false);
                        }
                        gapComposer2.end(true);
                        float mo123calculateTopPaddingD9Ej5fM = (((((f - mo84toDpu2uoSUM) - paddingValues.mo123calculateTopPaddingD9Ej5fM()) - paddingValues.mo120calculateBottomPaddingD9Ej5fM()) - mo84toDpu2uoSUM2) - mo84toDpu2uoSUM3) - 16.0f;
                        Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(companion, 1.0f);
                        if (mo123calculateTopPaddingD9Ej5fM < 300.0f) {
                            mo123calculateTopPaddingD9Ej5fM = 300.0f;
                        }
                        Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(fillMaxWidth2, mo123calculateTopPaddingD9Ej5fM);
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, z);
                        long j3 = gapComposer2.compositeKeyHashCode;
                        int i7 = (int) (j3 ^ (j3 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, m140height3ABfNKs);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                        Animation.CC.m(i7, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                        Option option = (Option) mutableState3.getValue();
                        Option option2 = Option.FILTER;
                        UiState uiState2 = uiState;
                        if (option == option2 && (uiState2 instanceof UiState.Success)) {
                            gapComposer2.startReplaceGroup(166183141);
                            ReadingChallengePlaygroundDialogKt.CategoryTable(6, gapComposer2, fillElement, (List) ((UiState.Success) uiState2).data);
                            gapComposer2.end(z);
                        } else if (((Option) mutableState3.getValue()) == option2 || !(uiState2 instanceof UiState.Success)) {
                            gapComposer2.startReplaceGroup(166727439);
                            ProgressIndicatorKt.m290CircularProgressIndicator4lLiAd8(OffsetKt.m132padding3ABfNKs(BoxScopeInstance.INSTANCE.align(companion, Alignment.Companion.Center), 24.0f), ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, RecyclerView.DECELERATION_RATE, 0L, 0, RecyclerView.DECELERATION_RATE, gapComposer2, 0, 60);
                            gapComposer2 = gapComposer2;
                            gapComposer2.end(z);
                        } else {
                            gapComposer2.startReplaceGroup(166484709);
                            ReadingChallengePlaygroundDialogKt.CategoryTable(6, gapComposer2, fillElement, (List) ((UiState.Success) uiState2).data);
                            gapComposer2.end(z);
                        }
                        gapComposer2.end(true);
                        gapComposer2.end(true);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 805306416, 445);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundActivityKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    ReadingChallengePlaygroundDialogKt.CategoryDeveloperPlayGroundScreen(Modifier.this, uiState, function3, function2, function1, function0, function12, function13, function02, (GapComposer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void CategoryTable(int i, GapComposer gapComposer, Modifier modifier, List list) {
        gapComposer.startRestartGroup(-1322461423);
        int i2 = (gapComposer.changedInstance(list) ? 32 : 16) | i;
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            boolean changedInstance = gapComposer.changedInstance(list);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda2(list, i3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ExceptionsKt.LazyColumn(modifier, null, null, null, null, null, false, null, (Function1) rememberedValue, gapComposer, 6, 510);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda6(i, i3, modifier, list);
        }
    }

    public static final void ChipButton(String str, Function0 function0, Modifier modifier, boolean z, GapComposer gapComposer, int i) {
        int i2;
        Modifier modifier2;
        long j;
        function0.getClass();
        gapComposer.startRestartGroup(633303640);
        if ((i & 48) == 0) {
            i2 = i | (gapComposer.changedInstance(function0) ? 32 : 16);
        } else {
            i2 = i;
        }
        int i3 = i2 | 384 | (gapComposer.changed(z) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            modifier2 = Modifier.Companion.$$INSTANCE;
            Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(modifier2, 32.0f);
            RoundedCornerShape m177RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f);
            PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
            if (z) {
                gapComposer.startReplaceGroup(-1280546174);
                j = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).focusColor;
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1280544440);
                j = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor;
                gapComposer.end(false);
            }
            CardKt.Button(function0, m140height3ABfNKs, false, m177RoundedCornerShape0680j_4, ButtonDefaults.m260buttonColorsro_MJ88(j, 0L, gapComposer, 14), null, null, new PaddingValuesImpl(12.0f, RecyclerView.DECELERATION_RATE, 12.0f, RecyclerView.DECELERATION_RATE), Expect_jvmKt.rememberComposableLambda(2066226760, new OnboardingKt$$ExternalSyntheticLambda0(6, str), gapComposer), gapComposer, ((i3 >> 3) & 14) | 817889280, 356);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new YearInReviewScreenDeckKt$$ExternalSyntheticLambda30(i, modifier2, str, function0, z);
        }
    }

    public static final void DeleteView(Modifier modifier, Function0 function0, Function1 function1, GapComposer gapComposer, int i) {
        Function1 function12;
        Modifier modifier2;
        MutableState mutableState;
        GapComposer gapComposer2 = gapComposer;
        function0.getClass();
        function1.getClass();
        gapComposer2.startRestartGroup(-879292476);
        int i2 = i | 6 | (gapComposer2.changedInstance(function0) ? 32 : 16) | (gapComposer2.changedInstance(function1) ? 256 : 128);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default("");
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState2 = (MutableState) rememberedValue;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
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
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            boolean z = (i2 & 112) == 32;
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (z || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda1(9, function0);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            TabsBoxKt.m895AppButtont6yy7ic((Function0) rememberedValue2, fillMaxWidth, 0L, 0L, lambda$1144127370, gapComposer2, 24624, 12);
            String str = (String) mutableState2.getValue();
            KeyboardOptions keyboardOptions = new KeyboardOptions(3, 123);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            TextFieldColors m304colors0hiis_0 = TextFieldDefaults.m304colors0hiis_0(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, 0L, 0L, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, 0L, gapComposer, 2147481596);
            Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(companion, 1.0f);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                mutableState = mutableState2;
                rememberedValue3 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState, 20);
                gapComposer.updateRememberedValue(rememberedValue3);
            } else {
                mutableState = mutableState2;
            }
            MutableState mutableState3 = mutableState;
            modifier2 = companion;
            CardKt.OutlinedTextField(str, (Function1) rememberedValue3, fillMaxWidth2, false, null, lambda$598748980, null, null, null, null, null, false, null, keyboardOptions, null, true, 0, 0, null, m304colors0hiis_0, gapComposer, 1573296, 12779520, 4030392);
            gapComposer2 = gapComposer;
            Modifier fillMaxWidth3 = SizeKt.fillMaxWidth(modifier2, 1.0f);
            boolean z2 = (i2 & 896) == 256;
            Object rememberedValue4 = gapComposer2.rememberedValue();
            if (z2 || rememberedValue4 == neverEqualPolicy) {
                function12 = function1;
                rememberedValue4 = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function12, mutableState3, 11);
                gapComposer2.updateRememberedValue(rememberedValue4);
            } else {
                function12 = function1;
            }
            TabsBoxKt.m895AppButtont6yy7ic((Function0) rememberedValue4, fillMaxWidth3, 0L, 0L, f71lambda$235902285, gapComposer2, 24624, 12);
            gapComposer2.end(true);
        } else {
            function12 = function1;
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda18(modifier2, function0, function12, i);
        }
    }

    public static final void FilterView(Modifier modifier, Function1 function1, GapComposer gapComposer, int i) {
        Function1 function12;
        int i2;
        Modifier modifier2;
        MutableState mutableState;
        GapComposer gapComposer2 = gapComposer;
        function1.getClass();
        gapComposer2.startRestartGroup(603757597);
        int i3 = i | 6 | (gapComposer2.changedInstance(function1) ? 32 : 16);
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default("2025");
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState2 = (MutableState) rememberedValue;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
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
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            String str = (String) mutableState2.getValue();
            KeyboardOptions keyboardOptions = new KeyboardOptions(3, 123);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            modifier2 = companion;
            TextFieldColors m304colors0hiis_0 = TextFieldDefaults.m304colors0hiis_0(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, 0L, 0L, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, 0L, gapComposer2, 2147481596);
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(modifier2, 1.0f);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                mutableState = mutableState2;
                rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState, 13);
                gapComposer2.updateRememberedValue(rememberedValue2);
            } else {
                mutableState = mutableState2;
            }
            MutableState mutableState3 = mutableState;
            CardKt.OutlinedTextField(str, (Function1) rememberedValue2, fillMaxWidth, false, null, lambda$1369524109, null, null, null, null, null, false, null, keyboardOptions, null, true, 0, 0, null, m304colors0hiis_0, gapComposer, 1573296, 12779520, 4030392);
            gapComposer2 = gapComposer;
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(modifier2, 6.0f));
            Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(modifier2, 1.0f);
            boolean z = (i3 & 112) == 32;
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (z || rememberedValue3 == neverEqualPolicy) {
                function12 = function1;
                rememberedValue3 = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function12, mutableState3, 7);
                gapComposer2.updateRememberedValue(rememberedValue3);
            } else {
                function12 = function1;
            }
            TabsBoxKt.m895AppButtont6yy7ic((Function0) rememberedValue3, fillMaxWidth2, 0L, 0L, f64lambda$1014666397, gapComposer2, 24624, 12);
            i2 = 1;
            gapComposer2.end(true);
        } else {
            function12 = function1;
            i2 = 1;
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda12(modifier2, function12, i, i2);
        }
    }

    public static final void RandomBulkEntryView(int i, GapComposer gapComposer, Modifier modifier, Function2 function2) {
        Modifier modifier2;
        MutableState mutableState;
        MutableState mutableState2;
        GapComposer gapComposer2 = gapComposer;
        Function2 function22 = function2;
        function22.getClass();
        gapComposer2.startRestartGroup(1304793921);
        int i2 = i | (gapComposer2.changedInstance(function22) ? 4 : 2) | 48;
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default("");
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState3 = (MutableState) rememberedValue;
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.mutableStateOf$default("2025");
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState4 = (MutableState) rememberedValue2;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
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
            String str = (String) mutableState3.getValue();
            KeyboardOptions keyboardOptions = new KeyboardOptions(3, 123);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            modifier2 = companion;
            TextFieldColors m304colors0hiis_0 = TextFieldDefaults.m304colors0hiis_0(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, 0L, 0L, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, 0L, gapComposer2, 2147481596);
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(modifier2, 1.0f);
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                mutableState = mutableState3;
                rememberedValue3 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState, 17);
                gapComposer2.updateRememberedValue(rememberedValue3);
            } else {
                mutableState = mutableState3;
            }
            MutableState mutableState5 = mutableState;
            CardKt.OutlinedTextField(str, (Function1) rememberedValue3, fillMaxWidth, false, null, lambda$659736017, null, null, null, null, null, false, null, keyboardOptions, null, true, 0, 0, null, m304colors0hiis_0, gapComposer, 1573296, 12779520, 4030392);
            String str2 = (String) mutableState4.getValue();
            KeyboardOptions keyboardOptions2 = new KeyboardOptions(3, 123);
            TextFieldColors m304colors0hiis_02 = TextFieldDefaults.m304colors0hiis_0(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, 0L, 0L, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, 0L, gapComposer, 2147481596);
            Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(modifier2, 1.0f);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (rememberedValue4 == neverEqualPolicy) {
                mutableState2 = mutableState4;
                rememberedValue4 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState2, 18);
                gapComposer.updateRememberedValue(rememberedValue4);
            } else {
                mutableState2 = mutableState4;
            }
            MutableState mutableState6 = mutableState2;
            CardKt.OutlinedTextField(str2, (Function1) rememberedValue4, fillMaxWidth2, false, null, lambda$213214216, null, null, null, null, null, false, null, keyboardOptions2, null, true, 0, 0, null, m304colors0hiis_02, gapComposer, 1573296, 12779520, 4030392);
            gapComposer2 = gapComposer;
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(modifier2, 6.0f));
            Modifier fillMaxWidth3 = SizeKt.fillMaxWidth(modifier2, 1.0f);
            boolean z = (i2 & 14) == 4;
            Object rememberedValue5 = gapComposer2.rememberedValue();
            if (z || rememberedValue5 == neverEqualPolicy) {
                function22 = function2;
                rememberedValue5 = new HomeScreenKt$$ExternalSyntheticLambda29((Object) function22, mutableState5, mutableState6, 19);
                gapComposer2.updateRememberedValue(rememberedValue5);
            } else {
                function22 = function2;
            }
            TabsBoxKt.m895AppButtont6yy7ic((Function0) rememberedValue5, fillMaxWidth3, 0L, 0L, f75lambda$708144453, gapComposer2, 24624, 12);
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomActivity$$ExternalSyntheticLambda1(function22, modifier2, i, 10);
        }
    }

    public static final void ReadingChallengePlayground(Modifier modifier, ReadingChallengeState readingChallengeState, final Function0 function0, Function0 function02, GapComposer gapComposer, int i) {
        final Function0 function03;
        ReadingChallengeState readingChallengeState2;
        GapComposer gapComposer2;
        GapComposer gapComposer3 = gapComposer;
        readingChallengeState.getClass();
        function0.getClass();
        function02.getClass();
        gapComposer3.startRestartGroup(-216701723);
        int i2 = i | (gapComposer3.changed(readingChallengeState) ? 32 : 16) | (gapComposer3.changedInstance(function0) ? 256 : 128) | (gapComposer3.changedInstance(function02) ? 2048 : 1024);
        if (gapComposer3.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Object rememberedValue = gapComposer3.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                Prefs prefs = Prefs.INSTANCE;
                ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = new ParcelableSnapshotMutableIntState(Prefs.getReadingChallengeStreak());
                gapComposer3.updateRememberedValue(parcelableSnapshotMutableIntState);
                rememberedValue = parcelableSnapshotMutableIntState;
            }
            final ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState2 = (ParcelableSnapshotMutableIntState) rememberedValue;
            Object rememberedValue2 = gapComposer3.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                Prefs prefs2 = Prefs.INSTANCE;
                rememberedValue2 = Updater.mutableStateOf$default(Boolean.valueOf(Prefs.getReadingChallengeEnrolled()));
                gapComposer3.updateRememberedValue(rememberedValue2);
            }
            final MutableState mutableState = (MutableState) rememberedValue2;
            Object rememberedValue3 = gapComposer3.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                Prefs prefs3 = Prefs.INSTANCE;
                rememberedValue3 = Updater.mutableStateOf$default(Prefs.getReadingChallengeLastReadDate());
                gapComposer3.updateRememberedValue(rememberedValue3);
            }
            final MutableState mutableState2 = (MutableState) rememberedValue3;
            Object rememberedValue4 = gapComposer3.rememberedValue();
            if (rememberedValue4 == neverEqualPolicy) {
                Prefs prefs4 = Prefs.INSTANCE;
                String string = PrefsIoUtil.getString(R.string.preference_key_reading_challenge_start_date, "2026-05-11");
                if (string == null) {
                    string = "";
                }
                rememberedValue4 = Updater.mutableStateOf$default(string);
                gapComposer3.updateRememberedValue(rememberedValue4);
            }
            final MutableState mutableState3 = (MutableState) rememberedValue4;
            Object rememberedValue5 = gapComposer3.rememberedValue();
            if (rememberedValue5 == neverEqualPolicy) {
                Prefs prefs5 = Prefs.INSTANCE;
                String string2 = PrefsIoUtil.getString(R.string.preference_key_reading_challenge_end_date, "2026-06-18");
                rememberedValue5 = Updater.mutableStateOf$default(string2 != null ? string2 : "");
                gapComposer3.updateRememberedValue(rememberedValue5);
            }
            final MutableState mutableState4 = (MutableState) rememberedValue5;
            Object rememberedValue6 = gapComposer3.rememberedValue();
            if (rememberedValue6 == neverEqualPolicy) {
                Prefs prefs6 = Prefs.INSTANCE;
                rememberedValue6 = Updater.mutableStateOf$default(Boolean.valueOf(Prefs.getReadingChallengeOnboardingShown()));
                gapComposer3.updateRememberedValue(rememberedValue6);
            }
            final MutableState mutableState5 = (MutableState) rememberedValue6;
            Object rememberedValue7 = gapComposer3.rememberedValue();
            if (rememberedValue7 == neverEqualPolicy) {
                Prefs prefs7 = Prefs.INSTANCE;
                rememberedValue7 = Updater.mutableStateOf$default(Boolean.valueOf(Prefs.getReadingChallengeInstallPromptShown()));
                gapComposer3.updateRememberedValue(rememberedValue7);
            }
            final MutableState mutableState6 = (MutableState) rememberedValue7;
            Object rememberedValue8 = gapComposer3.rememberedValue();
            if (rememberedValue8 == neverEqualPolicy) {
                Prefs prefs8 = Prefs.INSTANCE;
                rememberedValue8 = Updater.mutableStateOf$default(Boolean.valueOf(Prefs.getReadingChallengeWidgetFastCycle()));
                gapComposer3.updateRememberedValue(rememberedValue8);
            }
            final MutableState mutableState7 = (MutableState) rememberedValue8;
            String localDate = LocalDate.now().toString();
            localDate.getClass();
            String localDate2 = LocalDate.now().minusDays(1L).toString();
            localDate2.getClass();
            String localDate3 = LocalDate.now().minusDays(3L).toString();
            localDate3.getClass();
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            long j = ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal)).paperColor;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ColorSchemeKt.LocalColorScheme;
            final int i3 = 1;
            final SwitchColors m276colorsV1nXRL4 = CardKt.m276colorsV1nXRL4(((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal)).paperColor, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal)).progressiveColor, ((ColorScheme) gapComposer3.consume(staticProvidableCompositionLocal2)).outline, j, ((ColorScheme) gapComposer3.consume(staticProvidableCompositionLocal2)).outline, gapComposer3);
            Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(ImageKt.scroll$default(modifier.then(SizeKt.FillWholeMaxSize), ImageKt.rememberScrollState(gapComposer3), true), 16.0f);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer3, 6);
            long j2 = gapComposer3.compositeKeyHashCode;
            int i4 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, m132padding3ABfNKs);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer3.startReusableNode();
            if (gapComposer3.inserting) {
                gapComposer3.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer3.useNode();
            }
            Updater.m327setimpl(gapComposer3, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer3, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
            TextKt.m308TextNvy7gAk(Modifier.CC.m("Current State: ", Reflection.factory.getOrCreateKotlinClass(readingChallengeState.getClass()).getSimpleName()), null, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer3.consume(TypographyKt.LocalTypography)).titleLarge, gapComposer, 0, 0, 131066);
            CardKt.Card(null, null, null, null, null, Expect_jvmKt.rememberComposableLambda(-1237926707, new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(18, function0, parcelableSnapshotMutableIntState2), gapComposer), gapComposer, 196608, 31);
            final int i5 = 0;
            CardKt.Card(null, null, null, null, null, Expect_jvmKt.rememberComposableLambda(-1051011708, new Function3() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    int i6 = i5;
                    Unit unit = Unit.INSTANCE;
                    NeverEqualPolicy neverEqualPolicy2 = Composer$Companion.Empty;
                    RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    final MutableState mutableState8 = mutableState;
                    final Function0 function04 = function0;
                    final int i7 = 1;
                    switch (i6) {
                        case 0:
                            GapComposer gapComposer4 = (GapComposer) obj2;
                            int intValue = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer4.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                gapComposer4.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier fillMaxWidth = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer4, 54);
                                long j3 = gapComposer4.compositeKeyHashCode;
                                int i8 = (int) (j3 ^ (j3 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer4.currentCompositionLocalScope();
                                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer4, fillMaxWidth);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                                gapComposer4.startReusableNode();
                                if (gapComposer4.inserting) {
                                    gapComposer4.createNode(layoutNode$Companion$Constructor$12);
                                } else {
                                    gapComposer4.useNode();
                                }
                                Updater.m327setimpl(gapComposer4, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                Updater.m327setimpl(gapComposer4, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                Updater.m327setimpl(gapComposer4, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                                Updater.m326reconcileimpl(gapComposer4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                TextKt.m308TextNvy7gAk("readingChallengeEnrolled", ViewSizeResolver$CC.m(gapComposer4, materializeModifier2, ComposeUiNode.Companion.SetModifier, 1.0f, true), ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer4, 6, 0, 131064);
                                boolean booleanValue = ((Boolean) mutableState8.getValue()).booleanValue();
                                boolean changed = gapComposer4.changed(function04);
                                Object rememberedValue9 = gapComposer4.rememberedValue();
                                if (changed || rememberedValue9 == neverEqualPolicy2) {
                                    final int i9 = 0;
                                    rememberedValue9 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            int i10 = i9;
                                            Unit unit2 = Unit.INSTANCE;
                                            MutableState mutableState9 = mutableState8;
                                            Function0 function05 = function04;
                                            Boolean bool = (Boolean) obj4;
                                            switch (i10) {
                                                case 0:
                                                    boolean booleanValue2 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs9 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue2);
                                                    String localDate4 = LocalDate.now().toString();
                                                    localDate4.getClass();
                                                    PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                    function05.invoke();
                                                    break;
                                                case 1:
                                                    boolean booleanValue3 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs10 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue3);
                                                    function05.invoke();
                                                    break;
                                                case 2:
                                                    boolean booleanValue4 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs11 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue4);
                                                    function05.invoke();
                                                    break;
                                                default:
                                                    boolean booleanValue5 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs12 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                    function05.invoke();
                                                    break;
                                            }
                                            return unit2;
                                        }
                                    };
                                    gapComposer4.updateRememberedValue(rememberedValue9);
                                }
                                SwitchKt.Switch(booleanValue, (Function1) rememberedValue9, null, false, m276colorsV1nXRL4, gapComposer4, 0);
                                gapComposer4.end(true);
                                break;
                            }
                        case 1:
                            GapComposer gapComposer5 = (GapComposer) obj2;
                            int intValue2 = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer5.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                gapComposer5.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal4)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer5, 54);
                                long j4 = gapComposer5.compositeKeyHashCode;
                                int i10 = (int) (j4 ^ (j4 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer5.currentCompositionLocalScope();
                                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer5, fillMaxWidth2);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                                gapComposer5.startReusableNode();
                                if (gapComposer5.inserting) {
                                    gapComposer5.createNode(layoutNode$Companion$Constructor$13);
                                } else {
                                    gapComposer5.useNode();
                                }
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                                Updater.m327setimpl(gapComposer5, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                                Updater.m327setimpl(gapComposer5, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                                Integer valueOf = Integer.valueOf(i10);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                Updater.m327setimpl(gapComposer5, valueOf, composeUiNode$Companion$SetModifier$13);
                                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                                Updater.m326reconcileimpl(gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$1);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                                LayoutWeightElement m = ViewSizeResolver$CC.m(gapComposer5, materializeModifier3, composeUiNode$Companion$SetModifier$14, 1.0f, true);
                                ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer5, 0);
                                long j5 = gapComposer5.compositeKeyHashCode;
                                int i11 = (int) (j5 ^ (j5 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer5.currentCompositionLocalScope();
                                Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer5, m);
                                gapComposer5.startReusableNode();
                                if (gapComposer5.inserting) {
                                    gapComposer5.createNode(layoutNode$Companion$Constructor$13);
                                } else {
                                    gapComposer5.useNode();
                                }
                                Updater.m327setimpl(gapComposer5, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                                Updater.m327setimpl(gapComposer5, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
                                Animation.CC.m(i11, gapComposer5, composeUiNode$Companion$SetModifier$13, gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$1);
                                Updater.m327setimpl(gapComposer5, materializeModifier4, composeUiNode$Companion$SetModifier$14);
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = TypographyKt.LocalTypography;
                                TextKt.m308TextNvy7gAk("readingChallengeWidgetFastCycle", null, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal4)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer5.consume(staticProvidableCompositionLocal5)).labelMedium, gapComposer5, 6, 0, 131066);
                                TextKt.m308TextNvy7gAk("Updates every 1 min instead of midnight", null, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal4)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer5.consume(staticProvidableCompositionLocal5)).bodySmall, gapComposer5, 6, 0, 131066);
                                gapComposer5.end(true);
                                boolean booleanValue2 = ((Boolean) mutableState8.getValue()).booleanValue();
                                boolean changed2 = gapComposer5.changed(function04);
                                Object rememberedValue10 = gapComposer5.rememberedValue();
                                if (changed2 || rememberedValue10 == neverEqualPolicy2) {
                                    final int i12 = 2;
                                    rememberedValue10 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            int i102 = i12;
                                            Unit unit2 = Unit.INSTANCE;
                                            MutableState mutableState9 = mutableState8;
                                            Function0 function05 = function04;
                                            Boolean bool = (Boolean) obj4;
                                            switch (i102) {
                                                case 0:
                                                    boolean booleanValue22 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs9 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                    String localDate4 = LocalDate.now().toString();
                                                    localDate4.getClass();
                                                    PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                    function05.invoke();
                                                    break;
                                                case 1:
                                                    boolean booleanValue3 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs10 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue3);
                                                    function05.invoke();
                                                    break;
                                                case 2:
                                                    boolean booleanValue4 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs11 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue4);
                                                    function05.invoke();
                                                    break;
                                                default:
                                                    boolean booleanValue5 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs12 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                    function05.invoke();
                                                    break;
                                            }
                                            return unit2;
                                        }
                                    };
                                    gapComposer5.updateRememberedValue(rememberedValue10);
                                }
                                SwitchKt.Switch(booleanValue2, (Function1) rememberedValue10, null, false, m276colorsV1nXRL4, gapComposer5, 0);
                                gapComposer5.end(true);
                                break;
                            }
                        case 2:
                            GapComposer gapComposer6 = (GapComposer) obj2;
                            int intValue3 = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer6.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                gapComposer6.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal6 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier fillMaxWidth3 = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer6.consume(staticProvidableCompositionLocal6)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                RowMeasurePolicy rowMeasurePolicy3 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer6, 54);
                                long j6 = gapComposer6.compositeKeyHashCode;
                                int i13 = (int) (j6 ^ (j6 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer6.currentCompositionLocalScope();
                                Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer6, fillMaxWidth3);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$14 = ComposeUiNode.Companion.Constructor;
                                gapComposer6.startReusableNode();
                                if (gapComposer6.inserting) {
                                    gapComposer6.createNode(layoutNode$Companion$Constructor$14);
                                } else {
                                    gapComposer6.useNode();
                                }
                                Updater.m327setimpl(gapComposer6, rowMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                                Updater.m327setimpl(gapComposer6, currentCompositionLocalScope5, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                Updater.m327setimpl(gapComposer6, Integer.valueOf(i13), ComposeUiNode.Companion.SetCompositeKeyHash);
                                Updater.m326reconcileimpl(gapComposer6, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                TextKt.m308TextNvy7gAk("readingChallengeOnboardingShown", ViewSizeResolver$CC.m(gapComposer6, materializeModifier5, ComposeUiNode.Companion.SetModifier, 1.0f, true), ((WikipediaColor) gapComposer6.consume(staticProvidableCompositionLocal6)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer6.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer6, 6, 0, 131064);
                                boolean booleanValue3 = ((Boolean) mutableState8.getValue()).booleanValue();
                                boolean changed3 = gapComposer6.changed(function04);
                                Object rememberedValue11 = gapComposer6.rememberedValue();
                                if (changed3 || rememberedValue11 == neverEqualPolicy2) {
                                    final int i14 = 3;
                                    rememberedValue11 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            int i102 = i14;
                                            Unit unit2 = Unit.INSTANCE;
                                            MutableState mutableState9 = mutableState8;
                                            Function0 function05 = function04;
                                            Boolean bool = (Boolean) obj4;
                                            switch (i102) {
                                                case 0:
                                                    boolean booleanValue22 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs9 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                    String localDate4 = LocalDate.now().toString();
                                                    localDate4.getClass();
                                                    PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                    function05.invoke();
                                                    break;
                                                case 1:
                                                    boolean booleanValue32 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs10 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue32);
                                                    function05.invoke();
                                                    break;
                                                case 2:
                                                    boolean booleanValue4 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs11 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue4);
                                                    function05.invoke();
                                                    break;
                                                default:
                                                    boolean booleanValue5 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs12 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                    function05.invoke();
                                                    break;
                                            }
                                            return unit2;
                                        }
                                    };
                                    gapComposer6.updateRememberedValue(rememberedValue11);
                                }
                                SwitchKt.Switch(booleanValue3, (Function1) rememberedValue11, null, false, m276colorsV1nXRL4, gapComposer6, 0);
                                gapComposer6.end(true);
                                break;
                            }
                        default:
                            GapComposer gapComposer7 = (GapComposer) obj2;
                            int intValue4 = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer7.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                                gapComposer7.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal7 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier fillMaxWidth4 = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer7.consume(staticProvidableCompositionLocal7)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                RowMeasurePolicy rowMeasurePolicy4 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer7, 54);
                                long j7 = gapComposer7.compositeKeyHashCode;
                                int i15 = (int) (j7 ^ (j7 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope6 = gapComposer7.currentCompositionLocalScope();
                                Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(gapComposer7, fillMaxWidth4);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$15 = ComposeUiNode.Companion.Constructor;
                                gapComposer7.startReusableNode();
                                if (gapComposer7.inserting) {
                                    gapComposer7.createNode(layoutNode$Companion$Constructor$15);
                                } else {
                                    gapComposer7.useNode();
                                }
                                Updater.m327setimpl(gapComposer7, rowMeasurePolicy4, ComposeUiNode.Companion.SetMeasurePolicy);
                                Updater.m327setimpl(gapComposer7, currentCompositionLocalScope6, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                Updater.m327setimpl(gapComposer7, Integer.valueOf(i15), ComposeUiNode.Companion.SetCompositeKeyHash);
                                Updater.m326reconcileimpl(gapComposer7, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                TextKt.m308TextNvy7gAk("readingChallengeInstallPromptShown", ViewSizeResolver$CC.m(gapComposer7, materializeModifier6, ComposeUiNode.Companion.SetModifier, 1.0f, true), ((WikipediaColor) gapComposer7.consume(staticProvidableCompositionLocal7)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer7.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer7, 6, 0, 131064);
                                boolean booleanValue4 = ((Boolean) mutableState8.getValue()).booleanValue();
                                boolean changed4 = gapComposer7.changed(function04);
                                Object rememberedValue12 = gapComposer7.rememberedValue();
                                if (changed4 || rememberedValue12 == neverEqualPolicy2) {
                                    rememberedValue12 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            int i102 = i7;
                                            Unit unit2 = Unit.INSTANCE;
                                            MutableState mutableState9 = mutableState8;
                                            Function0 function05 = function04;
                                            Boolean bool = (Boolean) obj4;
                                            switch (i102) {
                                                case 0:
                                                    boolean booleanValue22 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs9 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                    String localDate4 = LocalDate.now().toString();
                                                    localDate4.getClass();
                                                    PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                    function05.invoke();
                                                    break;
                                                case 1:
                                                    boolean booleanValue32 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs10 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue32);
                                                    function05.invoke();
                                                    break;
                                                case 2:
                                                    boolean booleanValue42 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs11 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue42);
                                                    function05.invoke();
                                                    break;
                                                default:
                                                    boolean booleanValue5 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs12 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                    function05.invoke();
                                                    break;
                                            }
                                            return unit2;
                                        }
                                    };
                                    gapComposer7.updateRememberedValue(rememberedValue12);
                                }
                                SwitchKt.Switch(booleanValue4, (Function1) rememberedValue12, null, false, m276colorsV1nXRL4, gapComposer7, 0);
                                gapComposer7.end(true);
                                break;
                            }
                    }
                    return unit;
                }
            }, gapComposer), gapComposer, 196608, 31);
            readingChallengeState2 = readingChallengeState;
            if ((readingChallengeState2 instanceof ReadingChallengeState.EnrolledNotStarted) || (readingChallengeState2 instanceof ReadingChallengeState.StreakOngoingNeedsReading) || (readingChallengeState2 instanceof ReadingChallengeState.StreakOngoingReadToday)) {
                gapComposer.startReplaceGroup(402565772);
                function03 = function02;
                CardKt.Card(null, null, null, null, null, Expect_jvmKt.rememberComposableLambda(-1888131160, new Function3() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        int i6 = i3;
                        Unit unit = Unit.INSTANCE;
                        NeverEqualPolicy neverEqualPolicy2 = Composer$Companion.Empty;
                        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
                        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                        final MutableState mutableState8 = mutableState7;
                        final Function0 function04 = function03;
                        final int i7 = 1;
                        switch (i6) {
                            case 0:
                                GapComposer gapComposer4 = (GapComposer) obj2;
                                int intValue = ((Integer) obj3).intValue();
                                ((ColumnScopeInstance) obj).getClass();
                                if (!gapComposer4.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer4.skipToGroupEnd();
                                    break;
                                } else {
                                    StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
                                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer4, 54);
                                    long j3 = gapComposer4.compositeKeyHashCode;
                                    int i8 = (int) (j3 ^ (j3 >>> 32));
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer4.currentCompositionLocalScope();
                                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer4, fillMaxWidth);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                                    gapComposer4.startReusableNode();
                                    if (gapComposer4.inserting) {
                                        gapComposer4.createNode(layoutNode$Companion$Constructor$12);
                                    } else {
                                        gapComposer4.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer4, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m327setimpl(gapComposer4, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    Updater.m327setimpl(gapComposer4, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                                    Updater.m326reconcileimpl(gapComposer4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                    TextKt.m308TextNvy7gAk("readingChallengeEnrolled", ViewSizeResolver$CC.m(gapComposer4, materializeModifier2, ComposeUiNode.Companion.SetModifier, 1.0f, true), ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer4, 6, 0, 131064);
                                    boolean booleanValue = ((Boolean) mutableState8.getValue()).booleanValue();
                                    boolean changed = gapComposer4.changed(function04);
                                    Object rememberedValue9 = gapComposer4.rememberedValue();
                                    if (changed || rememberedValue9 == neverEqualPolicy2) {
                                        final int i9 = 0;
                                        rememberedValue9 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj4) {
                                                int i102 = i9;
                                                Unit unit2 = Unit.INSTANCE;
                                                MutableState mutableState9 = mutableState8;
                                                Function0 function05 = function04;
                                                Boolean bool = (Boolean) obj4;
                                                switch (i102) {
                                                    case 0:
                                                        boolean booleanValue22 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs9 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                        String localDate4 = LocalDate.now().toString();
                                                        localDate4.getClass();
                                                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                        function05.invoke();
                                                        break;
                                                    case 1:
                                                        boolean booleanValue32 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs10 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue32);
                                                        function05.invoke();
                                                        break;
                                                    case 2:
                                                        boolean booleanValue42 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs11 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue42);
                                                        function05.invoke();
                                                        break;
                                                    default:
                                                        boolean booleanValue5 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs12 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                        function05.invoke();
                                                        break;
                                                }
                                                return unit2;
                                            }
                                        };
                                        gapComposer4.updateRememberedValue(rememberedValue9);
                                    }
                                    SwitchKt.Switch(booleanValue, (Function1) rememberedValue9, null, false, m276colorsV1nXRL4, gapComposer4, 0);
                                    gapComposer4.end(true);
                                    break;
                                }
                            case 1:
                                GapComposer gapComposer5 = (GapComposer) obj2;
                                int intValue2 = ((Integer) obj3).intValue();
                                ((ColumnScopeInstance) obj).getClass();
                                if (!gapComposer5.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                    gapComposer5.skipToGroupEnd();
                                    break;
                                } else {
                                    StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = WikipediaColorKt.LocalWikipediaColor;
                                    Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal4)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                    RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer5, 54);
                                    long j4 = gapComposer5.compositeKeyHashCode;
                                    int i10 = (int) (j4 ^ (j4 >>> 32));
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer5.currentCompositionLocalScope();
                                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer5, fillMaxWidth2);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                                    gapComposer5.startReusableNode();
                                    if (gapComposer5.inserting) {
                                        gapComposer5.createNode(layoutNode$Companion$Constructor$13);
                                    } else {
                                        gapComposer5.useNode();
                                    }
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                                    Updater.m327setimpl(gapComposer5, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                                    Updater.m327setimpl(gapComposer5, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                                    Integer valueOf = Integer.valueOf(i10);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    Updater.m327setimpl(gapComposer5, valueOf, composeUiNode$Companion$SetModifier$13);
                                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                                    Updater.m326reconcileimpl(gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$1);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                                    LayoutWeightElement m = ViewSizeResolver$CC.m(gapComposer5, materializeModifier3, composeUiNode$Companion$SetModifier$14, 1.0f, true);
                                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer5, 0);
                                    long j5 = gapComposer5.compositeKeyHashCode;
                                    int i11 = (int) (j5 ^ (j5 >>> 32));
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer5.currentCompositionLocalScope();
                                    Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer5, m);
                                    gapComposer5.startReusableNode();
                                    if (gapComposer5.inserting) {
                                        gapComposer5.createNode(layoutNode$Companion$Constructor$13);
                                    } else {
                                        gapComposer5.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer5, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                                    Updater.m327setimpl(gapComposer5, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
                                    Animation.CC.m(i11, gapComposer5, composeUiNode$Companion$SetModifier$13, gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$1);
                                    Updater.m327setimpl(gapComposer5, materializeModifier4, composeUiNode$Companion$SetModifier$14);
                                    StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = TypographyKt.LocalTypography;
                                    TextKt.m308TextNvy7gAk("readingChallengeWidgetFastCycle", null, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal4)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer5.consume(staticProvidableCompositionLocal5)).labelMedium, gapComposer5, 6, 0, 131066);
                                    TextKt.m308TextNvy7gAk("Updates every 1 min instead of midnight", null, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal4)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer5.consume(staticProvidableCompositionLocal5)).bodySmall, gapComposer5, 6, 0, 131066);
                                    gapComposer5.end(true);
                                    boolean booleanValue2 = ((Boolean) mutableState8.getValue()).booleanValue();
                                    boolean changed2 = gapComposer5.changed(function04);
                                    Object rememberedValue10 = gapComposer5.rememberedValue();
                                    if (changed2 || rememberedValue10 == neverEqualPolicy2) {
                                        final int i12 = 2;
                                        rememberedValue10 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj4) {
                                                int i102 = i12;
                                                Unit unit2 = Unit.INSTANCE;
                                                MutableState mutableState9 = mutableState8;
                                                Function0 function05 = function04;
                                                Boolean bool = (Boolean) obj4;
                                                switch (i102) {
                                                    case 0:
                                                        boolean booleanValue22 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs9 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                        String localDate4 = LocalDate.now().toString();
                                                        localDate4.getClass();
                                                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                        function05.invoke();
                                                        break;
                                                    case 1:
                                                        boolean booleanValue32 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs10 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue32);
                                                        function05.invoke();
                                                        break;
                                                    case 2:
                                                        boolean booleanValue42 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs11 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue42);
                                                        function05.invoke();
                                                        break;
                                                    default:
                                                        boolean booleanValue5 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs12 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                        function05.invoke();
                                                        break;
                                                }
                                                return unit2;
                                            }
                                        };
                                        gapComposer5.updateRememberedValue(rememberedValue10);
                                    }
                                    SwitchKt.Switch(booleanValue2, (Function1) rememberedValue10, null, false, m276colorsV1nXRL4, gapComposer5, 0);
                                    gapComposer5.end(true);
                                    break;
                                }
                            case 2:
                                GapComposer gapComposer6 = (GapComposer) obj2;
                                int intValue3 = ((Integer) obj3).intValue();
                                ((ColumnScopeInstance) obj).getClass();
                                if (!gapComposer6.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                    gapComposer6.skipToGroupEnd();
                                    break;
                                } else {
                                    StaticProvidableCompositionLocal staticProvidableCompositionLocal6 = WikipediaColorKt.LocalWikipediaColor;
                                    Modifier fillMaxWidth3 = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer6.consume(staticProvidableCompositionLocal6)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                    RowMeasurePolicy rowMeasurePolicy3 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer6, 54);
                                    long j6 = gapComposer6.compositeKeyHashCode;
                                    int i13 = (int) (j6 ^ (j6 >>> 32));
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer6.currentCompositionLocalScope();
                                    Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer6, fillMaxWidth3);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$14 = ComposeUiNode.Companion.Constructor;
                                    gapComposer6.startReusableNode();
                                    if (gapComposer6.inserting) {
                                        gapComposer6.createNode(layoutNode$Companion$Constructor$14);
                                    } else {
                                        gapComposer6.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer6, rowMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m327setimpl(gapComposer6, currentCompositionLocalScope5, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    Updater.m327setimpl(gapComposer6, Integer.valueOf(i13), ComposeUiNode.Companion.SetCompositeKeyHash);
                                    Updater.m326reconcileimpl(gapComposer6, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                    TextKt.m308TextNvy7gAk("readingChallengeOnboardingShown", ViewSizeResolver$CC.m(gapComposer6, materializeModifier5, ComposeUiNode.Companion.SetModifier, 1.0f, true), ((WikipediaColor) gapComposer6.consume(staticProvidableCompositionLocal6)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer6.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer6, 6, 0, 131064);
                                    boolean booleanValue3 = ((Boolean) mutableState8.getValue()).booleanValue();
                                    boolean changed3 = gapComposer6.changed(function04);
                                    Object rememberedValue11 = gapComposer6.rememberedValue();
                                    if (changed3 || rememberedValue11 == neverEqualPolicy2) {
                                        final int i14 = 3;
                                        rememberedValue11 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj4) {
                                                int i102 = i14;
                                                Unit unit2 = Unit.INSTANCE;
                                                MutableState mutableState9 = mutableState8;
                                                Function0 function05 = function04;
                                                Boolean bool = (Boolean) obj4;
                                                switch (i102) {
                                                    case 0:
                                                        boolean booleanValue22 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs9 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                        String localDate4 = LocalDate.now().toString();
                                                        localDate4.getClass();
                                                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                        function05.invoke();
                                                        break;
                                                    case 1:
                                                        boolean booleanValue32 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs10 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue32);
                                                        function05.invoke();
                                                        break;
                                                    case 2:
                                                        boolean booleanValue42 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs11 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue42);
                                                        function05.invoke();
                                                        break;
                                                    default:
                                                        boolean booleanValue5 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs12 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                        function05.invoke();
                                                        break;
                                                }
                                                return unit2;
                                            }
                                        };
                                        gapComposer6.updateRememberedValue(rememberedValue11);
                                    }
                                    SwitchKt.Switch(booleanValue3, (Function1) rememberedValue11, null, false, m276colorsV1nXRL4, gapComposer6, 0);
                                    gapComposer6.end(true);
                                    break;
                                }
                            default:
                                GapComposer gapComposer7 = (GapComposer) obj2;
                                int intValue4 = ((Integer) obj3).intValue();
                                ((ColumnScopeInstance) obj).getClass();
                                if (!gapComposer7.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                                    gapComposer7.skipToGroupEnd();
                                    break;
                                } else {
                                    StaticProvidableCompositionLocal staticProvidableCompositionLocal7 = WikipediaColorKt.LocalWikipediaColor;
                                    Modifier fillMaxWidth4 = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer7.consume(staticProvidableCompositionLocal7)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                    RowMeasurePolicy rowMeasurePolicy4 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer7, 54);
                                    long j7 = gapComposer7.compositeKeyHashCode;
                                    int i15 = (int) (j7 ^ (j7 >>> 32));
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope6 = gapComposer7.currentCompositionLocalScope();
                                    Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(gapComposer7, fillMaxWidth4);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$15 = ComposeUiNode.Companion.Constructor;
                                    gapComposer7.startReusableNode();
                                    if (gapComposer7.inserting) {
                                        gapComposer7.createNode(layoutNode$Companion$Constructor$15);
                                    } else {
                                        gapComposer7.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer7, rowMeasurePolicy4, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m327setimpl(gapComposer7, currentCompositionLocalScope6, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    Updater.m327setimpl(gapComposer7, Integer.valueOf(i15), ComposeUiNode.Companion.SetCompositeKeyHash);
                                    Updater.m326reconcileimpl(gapComposer7, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                    TextKt.m308TextNvy7gAk("readingChallengeInstallPromptShown", ViewSizeResolver$CC.m(gapComposer7, materializeModifier6, ComposeUiNode.Companion.SetModifier, 1.0f, true), ((WikipediaColor) gapComposer7.consume(staticProvidableCompositionLocal7)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer7.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer7, 6, 0, 131064);
                                    boolean booleanValue4 = ((Boolean) mutableState8.getValue()).booleanValue();
                                    boolean changed4 = gapComposer7.changed(function04);
                                    Object rememberedValue12 = gapComposer7.rememberedValue();
                                    if (changed4 || rememberedValue12 == neverEqualPolicy2) {
                                        rememberedValue12 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj4) {
                                                int i102 = i7;
                                                Unit unit2 = Unit.INSTANCE;
                                                MutableState mutableState9 = mutableState8;
                                                Function0 function05 = function04;
                                                Boolean bool = (Boolean) obj4;
                                                switch (i102) {
                                                    case 0:
                                                        boolean booleanValue22 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs9 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                        String localDate4 = LocalDate.now().toString();
                                                        localDate4.getClass();
                                                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                        function05.invoke();
                                                        break;
                                                    case 1:
                                                        boolean booleanValue32 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs10 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue32);
                                                        function05.invoke();
                                                        break;
                                                    case 2:
                                                        boolean booleanValue42 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs11 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue42);
                                                        function05.invoke();
                                                        break;
                                                    default:
                                                        boolean booleanValue5 = bool.booleanValue();
                                                        mutableState9.setValue(bool);
                                                        Prefs prefs12 = Prefs.INSTANCE;
                                                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                        function05.invoke();
                                                        break;
                                                }
                                                return unit2;
                                            }
                                        };
                                        gapComposer7.updateRememberedValue(rememberedValue12);
                                    }
                                    SwitchKt.Switch(booleanValue4, (Function1) rememberedValue12, null, false, m276colorsV1nXRL4, gapComposer7, 0);
                                    gapComposer7.end(true);
                                    break;
                                }
                        }
                        return unit;
                    }
                }, gapComposer), gapComposer, 196608, 31);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(403975559);
                gapComposer.end(false);
                function03 = function02;
            }
            final int i6 = 2;
            CardKt.Card(null, null, null, null, null, Expect_jvmKt.rememberComposableLambda(421266885, new Function3() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    int i62 = i6;
                    Unit unit = Unit.INSTANCE;
                    NeverEqualPolicy neverEqualPolicy2 = Composer$Companion.Empty;
                    RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    final MutableState mutableState8 = mutableState5;
                    final Function0 function04 = function0;
                    final int i7 = 1;
                    switch (i62) {
                        case 0:
                            GapComposer gapComposer4 = (GapComposer) obj2;
                            int intValue = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer4.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                gapComposer4.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier fillMaxWidth = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer4, 54);
                                long j3 = gapComposer4.compositeKeyHashCode;
                                int i8 = (int) (j3 ^ (j3 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer4.currentCompositionLocalScope();
                                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer4, fillMaxWidth);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                                gapComposer4.startReusableNode();
                                if (gapComposer4.inserting) {
                                    gapComposer4.createNode(layoutNode$Companion$Constructor$12);
                                } else {
                                    gapComposer4.useNode();
                                }
                                Updater.m327setimpl(gapComposer4, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                Updater.m327setimpl(gapComposer4, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                Updater.m327setimpl(gapComposer4, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                                Updater.m326reconcileimpl(gapComposer4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                TextKt.m308TextNvy7gAk("readingChallengeEnrolled", ViewSizeResolver$CC.m(gapComposer4, materializeModifier2, ComposeUiNode.Companion.SetModifier, 1.0f, true), ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer4, 6, 0, 131064);
                                boolean booleanValue = ((Boolean) mutableState8.getValue()).booleanValue();
                                boolean changed = gapComposer4.changed(function04);
                                Object rememberedValue9 = gapComposer4.rememberedValue();
                                if (changed || rememberedValue9 == neverEqualPolicy2) {
                                    final int i9 = 0;
                                    rememberedValue9 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            int i102 = i9;
                                            Unit unit2 = Unit.INSTANCE;
                                            MutableState mutableState9 = mutableState8;
                                            Function0 function05 = function04;
                                            Boolean bool = (Boolean) obj4;
                                            switch (i102) {
                                                case 0:
                                                    boolean booleanValue22 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs9 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                    String localDate4 = LocalDate.now().toString();
                                                    localDate4.getClass();
                                                    PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                    function05.invoke();
                                                    break;
                                                case 1:
                                                    boolean booleanValue32 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs10 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue32);
                                                    function05.invoke();
                                                    break;
                                                case 2:
                                                    boolean booleanValue42 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs11 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue42);
                                                    function05.invoke();
                                                    break;
                                                default:
                                                    boolean booleanValue5 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs12 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                    function05.invoke();
                                                    break;
                                            }
                                            return unit2;
                                        }
                                    };
                                    gapComposer4.updateRememberedValue(rememberedValue9);
                                }
                                SwitchKt.Switch(booleanValue, (Function1) rememberedValue9, null, false, m276colorsV1nXRL4, gapComposer4, 0);
                                gapComposer4.end(true);
                                break;
                            }
                        case 1:
                            GapComposer gapComposer5 = (GapComposer) obj2;
                            int intValue2 = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer5.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                gapComposer5.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal4)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer5, 54);
                                long j4 = gapComposer5.compositeKeyHashCode;
                                int i10 = (int) (j4 ^ (j4 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer5.currentCompositionLocalScope();
                                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer5, fillMaxWidth2);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                                gapComposer5.startReusableNode();
                                if (gapComposer5.inserting) {
                                    gapComposer5.createNode(layoutNode$Companion$Constructor$13);
                                } else {
                                    gapComposer5.useNode();
                                }
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                                Updater.m327setimpl(gapComposer5, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                                Updater.m327setimpl(gapComposer5, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                                Integer valueOf = Integer.valueOf(i10);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                Updater.m327setimpl(gapComposer5, valueOf, composeUiNode$Companion$SetModifier$13);
                                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                                Updater.m326reconcileimpl(gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$1);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                                LayoutWeightElement m = ViewSizeResolver$CC.m(gapComposer5, materializeModifier3, composeUiNode$Companion$SetModifier$14, 1.0f, true);
                                ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer5, 0);
                                long j5 = gapComposer5.compositeKeyHashCode;
                                int i11 = (int) (j5 ^ (j5 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer5.currentCompositionLocalScope();
                                Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer5, m);
                                gapComposer5.startReusableNode();
                                if (gapComposer5.inserting) {
                                    gapComposer5.createNode(layoutNode$Companion$Constructor$13);
                                } else {
                                    gapComposer5.useNode();
                                }
                                Updater.m327setimpl(gapComposer5, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                                Updater.m327setimpl(gapComposer5, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
                                Animation.CC.m(i11, gapComposer5, composeUiNode$Companion$SetModifier$13, gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$1);
                                Updater.m327setimpl(gapComposer5, materializeModifier4, composeUiNode$Companion$SetModifier$14);
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = TypographyKt.LocalTypography;
                                TextKt.m308TextNvy7gAk("readingChallengeWidgetFastCycle", null, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal4)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer5.consume(staticProvidableCompositionLocal5)).labelMedium, gapComposer5, 6, 0, 131066);
                                TextKt.m308TextNvy7gAk("Updates every 1 min instead of midnight", null, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal4)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer5.consume(staticProvidableCompositionLocal5)).bodySmall, gapComposer5, 6, 0, 131066);
                                gapComposer5.end(true);
                                boolean booleanValue2 = ((Boolean) mutableState8.getValue()).booleanValue();
                                boolean changed2 = gapComposer5.changed(function04);
                                Object rememberedValue10 = gapComposer5.rememberedValue();
                                if (changed2 || rememberedValue10 == neverEqualPolicy2) {
                                    final int i12 = 2;
                                    rememberedValue10 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            int i102 = i12;
                                            Unit unit2 = Unit.INSTANCE;
                                            MutableState mutableState9 = mutableState8;
                                            Function0 function05 = function04;
                                            Boolean bool = (Boolean) obj4;
                                            switch (i102) {
                                                case 0:
                                                    boolean booleanValue22 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs9 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                    String localDate4 = LocalDate.now().toString();
                                                    localDate4.getClass();
                                                    PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                    function05.invoke();
                                                    break;
                                                case 1:
                                                    boolean booleanValue32 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs10 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue32);
                                                    function05.invoke();
                                                    break;
                                                case 2:
                                                    boolean booleanValue42 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs11 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue42);
                                                    function05.invoke();
                                                    break;
                                                default:
                                                    boolean booleanValue5 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs12 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                    function05.invoke();
                                                    break;
                                            }
                                            return unit2;
                                        }
                                    };
                                    gapComposer5.updateRememberedValue(rememberedValue10);
                                }
                                SwitchKt.Switch(booleanValue2, (Function1) rememberedValue10, null, false, m276colorsV1nXRL4, gapComposer5, 0);
                                gapComposer5.end(true);
                                break;
                            }
                        case 2:
                            GapComposer gapComposer6 = (GapComposer) obj2;
                            int intValue3 = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer6.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                gapComposer6.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal6 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier fillMaxWidth3 = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer6.consume(staticProvidableCompositionLocal6)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                RowMeasurePolicy rowMeasurePolicy3 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer6, 54);
                                long j6 = gapComposer6.compositeKeyHashCode;
                                int i13 = (int) (j6 ^ (j6 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer6.currentCompositionLocalScope();
                                Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer6, fillMaxWidth3);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$14 = ComposeUiNode.Companion.Constructor;
                                gapComposer6.startReusableNode();
                                if (gapComposer6.inserting) {
                                    gapComposer6.createNode(layoutNode$Companion$Constructor$14);
                                } else {
                                    gapComposer6.useNode();
                                }
                                Updater.m327setimpl(gapComposer6, rowMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                                Updater.m327setimpl(gapComposer6, currentCompositionLocalScope5, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                Updater.m327setimpl(gapComposer6, Integer.valueOf(i13), ComposeUiNode.Companion.SetCompositeKeyHash);
                                Updater.m326reconcileimpl(gapComposer6, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                TextKt.m308TextNvy7gAk("readingChallengeOnboardingShown", ViewSizeResolver$CC.m(gapComposer6, materializeModifier5, ComposeUiNode.Companion.SetModifier, 1.0f, true), ((WikipediaColor) gapComposer6.consume(staticProvidableCompositionLocal6)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer6.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer6, 6, 0, 131064);
                                boolean booleanValue3 = ((Boolean) mutableState8.getValue()).booleanValue();
                                boolean changed3 = gapComposer6.changed(function04);
                                Object rememberedValue11 = gapComposer6.rememberedValue();
                                if (changed3 || rememberedValue11 == neverEqualPolicy2) {
                                    final int i14 = 3;
                                    rememberedValue11 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            int i102 = i14;
                                            Unit unit2 = Unit.INSTANCE;
                                            MutableState mutableState9 = mutableState8;
                                            Function0 function05 = function04;
                                            Boolean bool = (Boolean) obj4;
                                            switch (i102) {
                                                case 0:
                                                    boolean booleanValue22 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs9 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                    String localDate4 = LocalDate.now().toString();
                                                    localDate4.getClass();
                                                    PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                    function05.invoke();
                                                    break;
                                                case 1:
                                                    boolean booleanValue32 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs10 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue32);
                                                    function05.invoke();
                                                    break;
                                                case 2:
                                                    boolean booleanValue42 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs11 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue42);
                                                    function05.invoke();
                                                    break;
                                                default:
                                                    boolean booleanValue5 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs12 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                    function05.invoke();
                                                    break;
                                            }
                                            return unit2;
                                        }
                                    };
                                    gapComposer6.updateRememberedValue(rememberedValue11);
                                }
                                SwitchKt.Switch(booleanValue3, (Function1) rememberedValue11, null, false, m276colorsV1nXRL4, gapComposer6, 0);
                                gapComposer6.end(true);
                                break;
                            }
                        default:
                            GapComposer gapComposer7 = (GapComposer) obj2;
                            int intValue4 = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer7.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                                gapComposer7.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal7 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier fillMaxWidth4 = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer7.consume(staticProvidableCompositionLocal7)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                RowMeasurePolicy rowMeasurePolicy4 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer7, 54);
                                long j7 = gapComposer7.compositeKeyHashCode;
                                int i15 = (int) (j7 ^ (j7 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope6 = gapComposer7.currentCompositionLocalScope();
                                Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(gapComposer7, fillMaxWidth4);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$15 = ComposeUiNode.Companion.Constructor;
                                gapComposer7.startReusableNode();
                                if (gapComposer7.inserting) {
                                    gapComposer7.createNode(layoutNode$Companion$Constructor$15);
                                } else {
                                    gapComposer7.useNode();
                                }
                                Updater.m327setimpl(gapComposer7, rowMeasurePolicy4, ComposeUiNode.Companion.SetMeasurePolicy);
                                Updater.m327setimpl(gapComposer7, currentCompositionLocalScope6, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                Updater.m327setimpl(gapComposer7, Integer.valueOf(i15), ComposeUiNode.Companion.SetCompositeKeyHash);
                                Updater.m326reconcileimpl(gapComposer7, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                TextKt.m308TextNvy7gAk("readingChallengeInstallPromptShown", ViewSizeResolver$CC.m(gapComposer7, materializeModifier6, ComposeUiNode.Companion.SetModifier, 1.0f, true), ((WikipediaColor) gapComposer7.consume(staticProvidableCompositionLocal7)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer7.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer7, 6, 0, 131064);
                                boolean booleanValue4 = ((Boolean) mutableState8.getValue()).booleanValue();
                                boolean changed4 = gapComposer7.changed(function04);
                                Object rememberedValue12 = gapComposer7.rememberedValue();
                                if (changed4 || rememberedValue12 == neverEqualPolicy2) {
                                    rememberedValue12 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            int i102 = i7;
                                            Unit unit2 = Unit.INSTANCE;
                                            MutableState mutableState9 = mutableState8;
                                            Function0 function05 = function04;
                                            Boolean bool = (Boolean) obj4;
                                            switch (i102) {
                                                case 0:
                                                    boolean booleanValue22 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs9 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                    String localDate4 = LocalDate.now().toString();
                                                    localDate4.getClass();
                                                    PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                    function05.invoke();
                                                    break;
                                                case 1:
                                                    boolean booleanValue32 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs10 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue32);
                                                    function05.invoke();
                                                    break;
                                                case 2:
                                                    boolean booleanValue42 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs11 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue42);
                                                    function05.invoke();
                                                    break;
                                                default:
                                                    boolean booleanValue5 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs12 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                    function05.invoke();
                                                    break;
                                            }
                                            return unit2;
                                        }
                                    };
                                    gapComposer7.updateRememberedValue(rememberedValue12);
                                }
                                SwitchKt.Switch(booleanValue4, (Function1) rememberedValue12, null, false, m276colorsV1nXRL4, gapComposer7, 0);
                                gapComposer7.end(true);
                                break;
                            }
                    }
                    return unit;
                }
            }, gapComposer), gapComposer, 196608, 31);
            final int i7 = 3;
            CardKt.Card(null, null, null, null, null, Expect_jvmKt.rememberComposableLambda(1893545478, new Function3() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    int i62 = i7;
                    Unit unit = Unit.INSTANCE;
                    NeverEqualPolicy neverEqualPolicy2 = Composer$Companion.Empty;
                    RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    final MutableState mutableState8 = mutableState6;
                    final Function0 function04 = function0;
                    final int i72 = 1;
                    switch (i62) {
                        case 0:
                            GapComposer gapComposer4 = (GapComposer) obj2;
                            int intValue = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer4.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                gapComposer4.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier fillMaxWidth = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer4, 54);
                                long j3 = gapComposer4.compositeKeyHashCode;
                                int i8 = (int) (j3 ^ (j3 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer4.currentCompositionLocalScope();
                                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer4, fillMaxWidth);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                                gapComposer4.startReusableNode();
                                if (gapComposer4.inserting) {
                                    gapComposer4.createNode(layoutNode$Companion$Constructor$12);
                                } else {
                                    gapComposer4.useNode();
                                }
                                Updater.m327setimpl(gapComposer4, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                Updater.m327setimpl(gapComposer4, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                Updater.m327setimpl(gapComposer4, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                                Updater.m326reconcileimpl(gapComposer4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                TextKt.m308TextNvy7gAk("readingChallengeEnrolled", ViewSizeResolver$CC.m(gapComposer4, materializeModifier2, ComposeUiNode.Companion.SetModifier, 1.0f, true), ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer4, 6, 0, 131064);
                                boolean booleanValue = ((Boolean) mutableState8.getValue()).booleanValue();
                                boolean changed = gapComposer4.changed(function04);
                                Object rememberedValue9 = gapComposer4.rememberedValue();
                                if (changed || rememberedValue9 == neverEqualPolicy2) {
                                    final int i9 = 0;
                                    rememberedValue9 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            int i102 = i9;
                                            Unit unit2 = Unit.INSTANCE;
                                            MutableState mutableState9 = mutableState8;
                                            Function0 function05 = function04;
                                            Boolean bool = (Boolean) obj4;
                                            switch (i102) {
                                                case 0:
                                                    boolean booleanValue22 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs9 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                    String localDate4 = LocalDate.now().toString();
                                                    localDate4.getClass();
                                                    PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                    function05.invoke();
                                                    break;
                                                case 1:
                                                    boolean booleanValue32 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs10 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue32);
                                                    function05.invoke();
                                                    break;
                                                case 2:
                                                    boolean booleanValue42 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs11 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue42);
                                                    function05.invoke();
                                                    break;
                                                default:
                                                    boolean booleanValue5 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs12 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                    function05.invoke();
                                                    break;
                                            }
                                            return unit2;
                                        }
                                    };
                                    gapComposer4.updateRememberedValue(rememberedValue9);
                                }
                                SwitchKt.Switch(booleanValue, (Function1) rememberedValue9, null, false, m276colorsV1nXRL4, gapComposer4, 0);
                                gapComposer4.end(true);
                                break;
                            }
                        case 1:
                            GapComposer gapComposer5 = (GapComposer) obj2;
                            int intValue2 = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer5.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                gapComposer5.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal4)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer5, 54);
                                long j4 = gapComposer5.compositeKeyHashCode;
                                int i10 = (int) (j4 ^ (j4 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer5.currentCompositionLocalScope();
                                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer5, fillMaxWidth2);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                                gapComposer5.startReusableNode();
                                if (gapComposer5.inserting) {
                                    gapComposer5.createNode(layoutNode$Companion$Constructor$13);
                                } else {
                                    gapComposer5.useNode();
                                }
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                                Updater.m327setimpl(gapComposer5, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                                Updater.m327setimpl(gapComposer5, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                                Integer valueOf = Integer.valueOf(i10);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                Updater.m327setimpl(gapComposer5, valueOf, composeUiNode$Companion$SetModifier$13);
                                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                                Updater.m326reconcileimpl(gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$1);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                                LayoutWeightElement m = ViewSizeResolver$CC.m(gapComposer5, materializeModifier3, composeUiNode$Companion$SetModifier$14, 1.0f, true);
                                ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer5, 0);
                                long j5 = gapComposer5.compositeKeyHashCode;
                                int i11 = (int) (j5 ^ (j5 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer5.currentCompositionLocalScope();
                                Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer5, m);
                                gapComposer5.startReusableNode();
                                if (gapComposer5.inserting) {
                                    gapComposer5.createNode(layoutNode$Companion$Constructor$13);
                                } else {
                                    gapComposer5.useNode();
                                }
                                Updater.m327setimpl(gapComposer5, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                                Updater.m327setimpl(gapComposer5, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
                                Animation.CC.m(i11, gapComposer5, composeUiNode$Companion$SetModifier$13, gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$1);
                                Updater.m327setimpl(gapComposer5, materializeModifier4, composeUiNode$Companion$SetModifier$14);
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = TypographyKt.LocalTypography;
                                TextKt.m308TextNvy7gAk("readingChallengeWidgetFastCycle", null, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal4)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer5.consume(staticProvidableCompositionLocal5)).labelMedium, gapComposer5, 6, 0, 131066);
                                TextKt.m308TextNvy7gAk("Updates every 1 min instead of midnight", null, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal4)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer5.consume(staticProvidableCompositionLocal5)).bodySmall, gapComposer5, 6, 0, 131066);
                                gapComposer5.end(true);
                                boolean booleanValue2 = ((Boolean) mutableState8.getValue()).booleanValue();
                                boolean changed2 = gapComposer5.changed(function04);
                                Object rememberedValue10 = gapComposer5.rememberedValue();
                                if (changed2 || rememberedValue10 == neverEqualPolicy2) {
                                    final int i12 = 2;
                                    rememberedValue10 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            int i102 = i12;
                                            Unit unit2 = Unit.INSTANCE;
                                            MutableState mutableState9 = mutableState8;
                                            Function0 function05 = function04;
                                            Boolean bool = (Boolean) obj4;
                                            switch (i102) {
                                                case 0:
                                                    boolean booleanValue22 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs9 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                    String localDate4 = LocalDate.now().toString();
                                                    localDate4.getClass();
                                                    PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                    function05.invoke();
                                                    break;
                                                case 1:
                                                    boolean booleanValue32 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs10 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue32);
                                                    function05.invoke();
                                                    break;
                                                case 2:
                                                    boolean booleanValue42 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs11 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue42);
                                                    function05.invoke();
                                                    break;
                                                default:
                                                    boolean booleanValue5 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs12 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                    function05.invoke();
                                                    break;
                                            }
                                            return unit2;
                                        }
                                    };
                                    gapComposer5.updateRememberedValue(rememberedValue10);
                                }
                                SwitchKt.Switch(booleanValue2, (Function1) rememberedValue10, null, false, m276colorsV1nXRL4, gapComposer5, 0);
                                gapComposer5.end(true);
                                break;
                            }
                        case 2:
                            GapComposer gapComposer6 = (GapComposer) obj2;
                            int intValue3 = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer6.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                gapComposer6.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal6 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier fillMaxWidth3 = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer6.consume(staticProvidableCompositionLocal6)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                RowMeasurePolicy rowMeasurePolicy3 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer6, 54);
                                long j6 = gapComposer6.compositeKeyHashCode;
                                int i13 = (int) (j6 ^ (j6 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer6.currentCompositionLocalScope();
                                Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer6, fillMaxWidth3);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$14 = ComposeUiNode.Companion.Constructor;
                                gapComposer6.startReusableNode();
                                if (gapComposer6.inserting) {
                                    gapComposer6.createNode(layoutNode$Companion$Constructor$14);
                                } else {
                                    gapComposer6.useNode();
                                }
                                Updater.m327setimpl(gapComposer6, rowMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                                Updater.m327setimpl(gapComposer6, currentCompositionLocalScope5, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                Updater.m327setimpl(gapComposer6, Integer.valueOf(i13), ComposeUiNode.Companion.SetCompositeKeyHash);
                                Updater.m326reconcileimpl(gapComposer6, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                TextKt.m308TextNvy7gAk("readingChallengeOnboardingShown", ViewSizeResolver$CC.m(gapComposer6, materializeModifier5, ComposeUiNode.Companion.SetModifier, 1.0f, true), ((WikipediaColor) gapComposer6.consume(staticProvidableCompositionLocal6)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer6.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer6, 6, 0, 131064);
                                boolean booleanValue3 = ((Boolean) mutableState8.getValue()).booleanValue();
                                boolean changed3 = gapComposer6.changed(function04);
                                Object rememberedValue11 = gapComposer6.rememberedValue();
                                if (changed3 || rememberedValue11 == neverEqualPolicy2) {
                                    final int i14 = 3;
                                    rememberedValue11 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            int i102 = i14;
                                            Unit unit2 = Unit.INSTANCE;
                                            MutableState mutableState9 = mutableState8;
                                            Function0 function05 = function04;
                                            Boolean bool = (Boolean) obj4;
                                            switch (i102) {
                                                case 0:
                                                    boolean booleanValue22 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs9 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                    String localDate4 = LocalDate.now().toString();
                                                    localDate4.getClass();
                                                    PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                    function05.invoke();
                                                    break;
                                                case 1:
                                                    boolean booleanValue32 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs10 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue32);
                                                    function05.invoke();
                                                    break;
                                                case 2:
                                                    boolean booleanValue42 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs11 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue42);
                                                    function05.invoke();
                                                    break;
                                                default:
                                                    boolean booleanValue5 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs12 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                    function05.invoke();
                                                    break;
                                            }
                                            return unit2;
                                        }
                                    };
                                    gapComposer6.updateRememberedValue(rememberedValue11);
                                }
                                SwitchKt.Switch(booleanValue3, (Function1) rememberedValue11, null, false, m276colorsV1nXRL4, gapComposer6, 0);
                                gapComposer6.end(true);
                                break;
                            }
                        default:
                            GapComposer gapComposer7 = (GapComposer) obj2;
                            int intValue4 = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer7.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                                gapComposer7.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal7 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier fillMaxWidth4 = SizeKt.fillMaxWidth(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer7.consume(staticProvidableCompositionLocal7)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f), 1.0f);
                                RowMeasurePolicy rowMeasurePolicy4 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer7, 54);
                                long j7 = gapComposer7.compositeKeyHashCode;
                                int i15 = (int) (j7 ^ (j7 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope6 = gapComposer7.currentCompositionLocalScope();
                                Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(gapComposer7, fillMaxWidth4);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$15 = ComposeUiNode.Companion.Constructor;
                                gapComposer7.startReusableNode();
                                if (gapComposer7.inserting) {
                                    gapComposer7.createNode(layoutNode$Companion$Constructor$15);
                                } else {
                                    gapComposer7.useNode();
                                }
                                Updater.m327setimpl(gapComposer7, rowMeasurePolicy4, ComposeUiNode.Companion.SetMeasurePolicy);
                                Updater.m327setimpl(gapComposer7, currentCompositionLocalScope6, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                Updater.m327setimpl(gapComposer7, Integer.valueOf(i15), ComposeUiNode.Companion.SetCompositeKeyHash);
                                Updater.m326reconcileimpl(gapComposer7, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                TextKt.m308TextNvy7gAk("readingChallengeInstallPromptShown", ViewSizeResolver$CC.m(gapComposer7, materializeModifier6, ComposeUiNode.Companion.SetModifier, 1.0f, true), ((WikipediaColor) gapComposer7.consume(staticProvidableCompositionLocal7)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer7.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer7, 6, 0, 131064);
                                boolean booleanValue4 = ((Boolean) mutableState8.getValue()).booleanValue();
                                boolean changed4 = gapComposer7.changed(function04);
                                Object rememberedValue12 = gapComposer7.rememberedValue();
                                if (changed4 || rememberedValue12 == neverEqualPolicy2) {
                                    rememberedValue12 = new Function1() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            int i102 = i72;
                                            Unit unit2 = Unit.INSTANCE;
                                            MutableState mutableState9 = mutableState8;
                                            Function0 function05 = function04;
                                            Boolean bool = (Boolean) obj4;
                                            switch (i102) {
                                                case 0:
                                                    boolean booleanValue22 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs9 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, booleanValue22);
                                                    String localDate4 = LocalDate.now().toString();
                                                    localDate4.getClass();
                                                    PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate4);
                                                    function05.invoke();
                                                    break;
                                                case 1:
                                                    boolean booleanValue32 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs10 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, booleanValue32);
                                                    function05.invoke();
                                                    break;
                                                case 2:
                                                    boolean booleanValue42 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs11 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_widget_fast_cycle, booleanValue42);
                                                    function05.invoke();
                                                    break;
                                                default:
                                                    boolean booleanValue5 = bool.booleanValue();
                                                    mutableState9.setValue(bool);
                                                    Prefs prefs12 = Prefs.INSTANCE;
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, booleanValue5);
                                                    function05.invoke();
                                                    break;
                                            }
                                            return unit2;
                                        }
                                    };
                                    gapComposer7.updateRememberedValue(rememberedValue12);
                                }
                                SwitchKt.Switch(booleanValue4, (Function1) rememberedValue12, null, false, m276colorsV1nXRL4, gapComposer7, 0);
                                gapComposer7.end(true);
                                break;
                            }
                    }
                    return unit;
                }
            }, gapComposer), gapComposer, 196608, 31);
            CardKt.Card(null, null, null, null, null, Expect_jvmKt.rememberComposableLambda(-929143225, new ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6(function0, mutableState2, localDate, localDate2, localDate3), gapComposer), gapComposer, 196608, 31);
            final int i8 = 0;
            CardKt.Card(null, null, null, null, null, Expect_jvmKt.rememberComposableLambda(543135368, new Function3() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Object failure;
                    boolean z;
                    Object failure2;
                    boolean z2;
                    int i9 = i8;
                    Unit unit = Unit.INSTANCE;
                    NeverEqualPolicy neverEqualPolicy2 = Composer$Companion.Empty;
                    RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    MutableState mutableState8 = mutableState3;
                    Function0 function04 = function0;
                    switch (i9) {
                        case 0:
                            GapComposer gapComposer4 = (GapComposer) obj2;
                            int intValue = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer4.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                gapComposer4.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier m132padding3ABfNKs2 = OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f);
                                ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer4, 6);
                                long j3 = gapComposer4.compositeKeyHashCode;
                                int i10 = (int) (j3 ^ (j3 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer4.currentCompositionLocalScope();
                                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer4, m132padding3ABfNKs2);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                                gapComposer4.startReusableNode();
                                if (gapComposer4.inserting) {
                                    gapComposer4.createNode(layoutNode$Companion$Constructor$12);
                                } else {
                                    gapComposer4.useNode();
                                }
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                                Updater.m327setimpl(gapComposer4, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                                Updater.m327setimpl(gapComposer4, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                                Integer valueOf = Integer.valueOf(i10);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                Updater.m327setimpl(gapComposer4, valueOf, composeUiNode$Companion$SetModifier$13);
                                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                                Updater.m326reconcileimpl(gapComposer4, ownerSnapshotObserver$onCommitAffectingLayout$1);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                                Updater.m327setimpl(gapComposer4, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                                TextKt.m308TextNvy7gAk("readingChallengeStartDate", null, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer4, 6, 0, 131066);
                                RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer4, 54);
                                long j4 = gapComposer4.compositeKeyHashCode;
                                int i11 = (int) (j4 ^ (j4 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer4.currentCompositionLocalScope();
                                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer4, companion);
                                gapComposer4.startReusableNode();
                                if (gapComposer4.inserting) {
                                    gapComposer4.createNode(layoutNode$Companion$Constructor$12);
                                } else {
                                    gapComposer4.useNode();
                                }
                                Updater.m327setimpl(gapComposer4, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                                Updater.m327setimpl(gapComposer4, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                                Animation.CC.m(i11, gapComposer4, composeUiNode$Companion$SetModifier$13, gapComposer4, ownerSnapshotObserver$onCommitAffectingLayout$1);
                                Updater.m327setimpl(gapComposer4, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                                String str = (String) mutableState8.getValue();
                                long j5 = ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).primaryColor;
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = ColorSchemeKt.LocalColorScheme;
                                long j6 = ((ColorScheme) gapComposer4.consume(staticProvidableCompositionLocal4)).outline;
                                TextFieldColors m304colors0hiis_0 = TextFieldDefaults.m304colors0hiis_0(j5, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).primaryColor, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).primaryColor, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).primaryColor, j6, ((ColorScheme) gapComposer4.consume(staticProvidableCompositionLocal4)).outline, gapComposer4, 2147477236);
                                LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
                                Object rememberedValue9 = gapComposer4.rememberedValue();
                                if (rememberedValue9 == neverEqualPolicy2) {
                                    rememberedValue9 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState8, 21);
                                    gapComposer4.updateRememberedValue(rememberedValue9);
                                }
                                CardKt.OutlinedTextField(str, (Function1) rememberedValue9, layoutWeightElement, false, null, null, ReadingChallengePlaygroundDialogKt.lambda$836143963, null, null, null, null, false, null, null, null, true, 0, 0, null, m304colors0hiis_0, gapComposer4, 12582960, 12582912, 4063096);
                                boolean changed = gapComposer4.changed(function04);
                                Object rememberedValue10 = gapComposer4.rememberedValue();
                                if (changed || rememberedValue10 == neverEqualPolicy2) {
                                    rememberedValue10 = new HomeScreenKt$$ExternalSyntheticLambda32(function04, mutableState8, 5);
                                    gapComposer4.updateRememberedValue(rememberedValue10);
                                }
                                Function0 function05 = (Function0) rememberedValue10;
                                if (((String) mutableState8.getValue()).length() != 0) {
                                    try {
                                        failure = LocalDate.parse((String) mutableState8.getValue());
                                    } catch (Throwable th) {
                                        failure = new Result.Failure(th);
                                    }
                                    if (failure instanceof Result.Failure) {
                                        z = false;
                                        PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                                        StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = WikipediaColorKt.LocalWikipediaColor;
                                        CardKt.Button(function05, null, z, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal5)).progressiveColor, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal5)).paperColor, gapComposer4, 12), null, null, null, ReadingChallengePlaygroundDialogKt.f72lambda$543488942, gapComposer4, 805306368, 490);
                                        gapComposer4.end(true);
                                        gapComposer4.end(true);
                                        break;
                                    }
                                }
                                z = true;
                                PaddingValuesImpl paddingValuesImpl2 = ButtonDefaults.ContentPadding;
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal52 = WikipediaColorKt.LocalWikipediaColor;
                                CardKt.Button(function05, null, z, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal52)).progressiveColor, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal52)).paperColor, gapComposer4, 12), null, null, null, ReadingChallengePlaygroundDialogKt.f72lambda$543488942, gapComposer4, 805306368, 490);
                                gapComposer4.end(true);
                                gapComposer4.end(true);
                            }
                        default:
                            GapComposer gapComposer5 = (GapComposer) obj2;
                            int intValue2 = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer5.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                gapComposer5.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal6 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier m132padding3ABfNKs3 = OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal6)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f);
                                ColumnMeasurePolicy columnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer5, 6);
                                long j7 = gapComposer5.compositeKeyHashCode;
                                int i12 = (int) (j7 ^ (j7 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer5.currentCompositionLocalScope();
                                Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer5, m132padding3ABfNKs3);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                                gapComposer5.startReusableNode();
                                if (gapComposer5.inserting) {
                                    gapComposer5.createNode(layoutNode$Companion$Constructor$13);
                                } else {
                                    gapComposer5.useNode();
                                }
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetMeasurePolicy;
                                Updater.m327setimpl(gapComposer5, columnMeasurePolicy3, composeUiNode$Companion$SetModifier$15);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                                Updater.m327setimpl(gapComposer5, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$16);
                                Integer valueOf2 = Integer.valueOf(i12);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                Updater.m327setimpl(gapComposer5, valueOf2, composeUiNode$Companion$SetModifier$17);
                                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                                Updater.m326reconcileimpl(gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$12);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$18 = ComposeUiNode.Companion.SetModifier;
                                Updater.m327setimpl(gapComposer5, materializeModifier4, composeUiNode$Companion$SetModifier$18);
                                TextKt.m308TextNvy7gAk("readingChallengeEndDate", null, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal6)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer5.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer5, 6, 0, 131066);
                                RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer5, 54);
                                long j8 = gapComposer5.compositeKeyHashCode;
                                int i13 = (int) (j8 ^ (j8 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer5.currentCompositionLocalScope();
                                Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer5, companion);
                                gapComposer5.startReusableNode();
                                if (gapComposer5.inserting) {
                                    gapComposer5.createNode(layoutNode$Companion$Constructor$13);
                                } else {
                                    gapComposer5.useNode();
                                }
                                Updater.m327setimpl(gapComposer5, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$15);
                                Updater.m327setimpl(gapComposer5, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$16);
                                Animation.CC.m(i13, gapComposer5, composeUiNode$Companion$SetModifier$17, gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$12);
                                Updater.m327setimpl(gapComposer5, materializeModifier5, composeUiNode$Companion$SetModifier$18);
                                String str2 = (String) mutableState8.getValue();
                                long j9 = ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal6)).primaryColor;
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal7 = ColorSchemeKt.LocalColorScheme;
                                long j10 = ((ColorScheme) gapComposer5.consume(staticProvidableCompositionLocal7)).outline;
                                TextFieldColors m304colors0hiis_02 = TextFieldDefaults.m304colors0hiis_0(j9, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal6)).primaryColor, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal6)).primaryColor, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal6)).primaryColor, j10, ((ColorScheme) gapComposer5.consume(staticProvidableCompositionLocal7)).outline, gapComposer5, 2147477236);
                                LayoutWeightElement layoutWeightElement2 = new LayoutWeightElement(1.0f, true);
                                Object rememberedValue11 = gapComposer5.rememberedValue();
                                if (rememberedValue11 == neverEqualPolicy2) {
                                    rememberedValue11 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState8, 23);
                                    gapComposer5.updateRememberedValue(rememberedValue11);
                                }
                                CardKt.OutlinedTextField(str2, (Function1) rememberedValue11, layoutWeightElement2, false, null, null, ReadingChallengePlaygroundDialogKt.f68lambda$1986544740, null, null, null, null, false, null, null, null, true, 0, 0, null, m304colors0hiis_02, gapComposer5, 12582960, 12582912, 4063096);
                                boolean changed2 = gapComposer5.changed(function04);
                                Object rememberedValue12 = gapComposer5.rememberedValue();
                                if (changed2 || rememberedValue12 == neverEqualPolicy2) {
                                    rememberedValue12 = new HomeScreenKt$$ExternalSyntheticLambda32(function04, mutableState8, 7);
                                    gapComposer5.updateRememberedValue(rememberedValue12);
                                }
                                Function0 function06 = (Function0) rememberedValue12;
                                if (((String) mutableState8.getValue()).length() != 0) {
                                    try {
                                        failure2 = LocalDate.parse((String) mutableState8.getValue());
                                    } catch (Throwable th2) {
                                        failure2 = new Result.Failure(th2);
                                    }
                                    if (failure2 instanceof Result.Failure) {
                                        z2 = false;
                                        PaddingValuesImpl paddingValuesImpl3 = ButtonDefaults.ContentPadding;
                                        StaticProvidableCompositionLocal staticProvidableCompositionLocal8 = WikipediaColorKt.LocalWikipediaColor;
                                        CardKt.Button(function06, null, z2, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal8)).progressiveColor, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal8)).paperColor, gapComposer5, 12), null, null, null, ReadingChallengePlaygroundDialogKt.lambda$928789651, gapComposer5, 805306368, 490);
                                        gapComposer5.end(true);
                                        gapComposer5.end(true);
                                        break;
                                    }
                                }
                                z2 = true;
                                PaddingValuesImpl paddingValuesImpl32 = ButtonDefaults.ContentPadding;
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal82 = WikipediaColorKt.LocalWikipediaColor;
                                CardKt.Button(function06, null, z2, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal82)).progressiveColor, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal82)).paperColor, gapComposer5, 12), null, null, null, ReadingChallengePlaygroundDialogKt.lambda$928789651, gapComposer5, 805306368, 490);
                                gapComposer5.end(true);
                                gapComposer5.end(true);
                            }
                    }
                    return unit;
                }
            }, gapComposer), gapComposer, 196608, 31);
            CardKt.Card(null, null, null, null, null, Expect_jvmKt.rememberComposableLambda(2015413961, new Function3() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Object failure;
                    boolean z;
                    Object failure2;
                    boolean z2;
                    int i9 = i3;
                    Unit unit = Unit.INSTANCE;
                    NeverEqualPolicy neverEqualPolicy2 = Composer$Companion.Empty;
                    RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    MutableState mutableState8 = mutableState4;
                    Function0 function04 = function0;
                    switch (i9) {
                        case 0:
                            GapComposer gapComposer4 = (GapComposer) obj2;
                            int intValue = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer4.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                gapComposer4.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier m132padding3ABfNKs2 = OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f);
                                ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer4, 6);
                                long j3 = gapComposer4.compositeKeyHashCode;
                                int i10 = (int) (j3 ^ (j3 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer4.currentCompositionLocalScope();
                                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer4, m132padding3ABfNKs2);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                                gapComposer4.startReusableNode();
                                if (gapComposer4.inserting) {
                                    gapComposer4.createNode(layoutNode$Companion$Constructor$12);
                                } else {
                                    gapComposer4.useNode();
                                }
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                                Updater.m327setimpl(gapComposer4, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                                Updater.m327setimpl(gapComposer4, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                                Integer valueOf = Integer.valueOf(i10);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                Updater.m327setimpl(gapComposer4, valueOf, composeUiNode$Companion$SetModifier$13);
                                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                                Updater.m326reconcileimpl(gapComposer4, ownerSnapshotObserver$onCommitAffectingLayout$1);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                                Updater.m327setimpl(gapComposer4, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                                TextKt.m308TextNvy7gAk("readingChallengeStartDate", null, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer4, 6, 0, 131066);
                                RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer4, 54);
                                long j4 = gapComposer4.compositeKeyHashCode;
                                int i11 = (int) (j4 ^ (j4 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer4.currentCompositionLocalScope();
                                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer4, companion);
                                gapComposer4.startReusableNode();
                                if (gapComposer4.inserting) {
                                    gapComposer4.createNode(layoutNode$Companion$Constructor$12);
                                } else {
                                    gapComposer4.useNode();
                                }
                                Updater.m327setimpl(gapComposer4, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                                Updater.m327setimpl(gapComposer4, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                                Animation.CC.m(i11, gapComposer4, composeUiNode$Companion$SetModifier$13, gapComposer4, ownerSnapshotObserver$onCommitAffectingLayout$1);
                                Updater.m327setimpl(gapComposer4, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                                String str = (String) mutableState8.getValue();
                                long j5 = ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).primaryColor;
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = ColorSchemeKt.LocalColorScheme;
                                long j6 = ((ColorScheme) gapComposer4.consume(staticProvidableCompositionLocal4)).outline;
                                TextFieldColors m304colors0hiis_0 = TextFieldDefaults.m304colors0hiis_0(j5, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).primaryColor, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).primaryColor, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal3)).primaryColor, j6, ((ColorScheme) gapComposer4.consume(staticProvidableCompositionLocal4)).outline, gapComposer4, 2147477236);
                                LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
                                Object rememberedValue9 = gapComposer4.rememberedValue();
                                if (rememberedValue9 == neverEqualPolicy2) {
                                    rememberedValue9 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState8, 21);
                                    gapComposer4.updateRememberedValue(rememberedValue9);
                                }
                                CardKt.OutlinedTextField(str, (Function1) rememberedValue9, layoutWeightElement, false, null, null, ReadingChallengePlaygroundDialogKt.lambda$836143963, null, null, null, null, false, null, null, null, true, 0, 0, null, m304colors0hiis_0, gapComposer4, 12582960, 12582912, 4063096);
                                boolean changed = gapComposer4.changed(function04);
                                Object rememberedValue10 = gapComposer4.rememberedValue();
                                if (changed || rememberedValue10 == neverEqualPolicy2) {
                                    rememberedValue10 = new HomeScreenKt$$ExternalSyntheticLambda32(function04, mutableState8, 5);
                                    gapComposer4.updateRememberedValue(rememberedValue10);
                                }
                                Function0 function05 = (Function0) rememberedValue10;
                                if (((String) mutableState8.getValue()).length() != 0) {
                                    try {
                                        failure = LocalDate.parse((String) mutableState8.getValue());
                                    } catch (Throwable th) {
                                        failure = new Result.Failure(th);
                                    }
                                    if (failure instanceof Result.Failure) {
                                        z = false;
                                        PaddingValuesImpl paddingValuesImpl2 = ButtonDefaults.ContentPadding;
                                        StaticProvidableCompositionLocal staticProvidableCompositionLocal52 = WikipediaColorKt.LocalWikipediaColor;
                                        CardKt.Button(function05, null, z, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal52)).progressiveColor, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal52)).paperColor, gapComposer4, 12), null, null, null, ReadingChallengePlaygroundDialogKt.f72lambda$543488942, gapComposer4, 805306368, 490);
                                        gapComposer4.end(true);
                                        gapComposer4.end(true);
                                        break;
                                    }
                                }
                                z = true;
                                PaddingValuesImpl paddingValuesImpl22 = ButtonDefaults.ContentPadding;
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal522 = WikipediaColorKt.LocalWikipediaColor;
                                CardKt.Button(function05, null, z, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal522)).progressiveColor, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal522)).paperColor, gapComposer4, 12), null, null, null, ReadingChallengePlaygroundDialogKt.f72lambda$543488942, gapComposer4, 805306368, 490);
                                gapComposer4.end(true);
                                gapComposer4.end(true);
                            }
                        default:
                            GapComposer gapComposer5 = (GapComposer) obj2;
                            int intValue2 = ((Integer) obj3).intValue();
                            ((ColumnScopeInstance) obj).getClass();
                            if (!gapComposer5.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                gapComposer5.skipToGroupEnd();
                                break;
                            } else {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal6 = WikipediaColorKt.LocalWikipediaColor;
                                Modifier m132padding3ABfNKs3 = OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal6)).backgroundColor, rectangleShapeKt$RectangleShape$1), 16.0f);
                                ColumnMeasurePolicy columnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer5, 6);
                                long j7 = gapComposer5.compositeKeyHashCode;
                                int i12 = (int) (j7 ^ (j7 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer5.currentCompositionLocalScope();
                                Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer5, m132padding3ABfNKs3);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                                gapComposer5.startReusableNode();
                                if (gapComposer5.inserting) {
                                    gapComposer5.createNode(layoutNode$Companion$Constructor$13);
                                } else {
                                    gapComposer5.useNode();
                                }
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetMeasurePolicy;
                                Updater.m327setimpl(gapComposer5, columnMeasurePolicy3, composeUiNode$Companion$SetModifier$15);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                                Updater.m327setimpl(gapComposer5, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$16);
                                Integer valueOf2 = Integer.valueOf(i12);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                Updater.m327setimpl(gapComposer5, valueOf2, composeUiNode$Companion$SetModifier$17);
                                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                                Updater.m326reconcileimpl(gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$12);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$18 = ComposeUiNode.Companion.SetModifier;
                                Updater.m327setimpl(gapComposer5, materializeModifier4, composeUiNode$Companion$SetModifier$18);
                                TextKt.m308TextNvy7gAk("readingChallengeEndDate", null, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal6)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer5.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer5, 6, 0, 131066);
                                RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer5, 54);
                                long j8 = gapComposer5.compositeKeyHashCode;
                                int i13 = (int) (j8 ^ (j8 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer5.currentCompositionLocalScope();
                                Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer5, companion);
                                gapComposer5.startReusableNode();
                                if (gapComposer5.inserting) {
                                    gapComposer5.createNode(layoutNode$Companion$Constructor$13);
                                } else {
                                    gapComposer5.useNode();
                                }
                                Updater.m327setimpl(gapComposer5, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$15);
                                Updater.m327setimpl(gapComposer5, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$16);
                                Animation.CC.m(i13, gapComposer5, composeUiNode$Companion$SetModifier$17, gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$12);
                                Updater.m327setimpl(gapComposer5, materializeModifier5, composeUiNode$Companion$SetModifier$18);
                                String str2 = (String) mutableState8.getValue();
                                long j9 = ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal6)).primaryColor;
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal7 = ColorSchemeKt.LocalColorScheme;
                                long j10 = ((ColorScheme) gapComposer5.consume(staticProvidableCompositionLocal7)).outline;
                                TextFieldColors m304colors0hiis_02 = TextFieldDefaults.m304colors0hiis_0(j9, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal6)).primaryColor, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal6)).primaryColor, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal6)).primaryColor, j10, ((ColorScheme) gapComposer5.consume(staticProvidableCompositionLocal7)).outline, gapComposer5, 2147477236);
                                LayoutWeightElement layoutWeightElement2 = new LayoutWeightElement(1.0f, true);
                                Object rememberedValue11 = gapComposer5.rememberedValue();
                                if (rememberedValue11 == neverEqualPolicy2) {
                                    rememberedValue11 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState8, 23);
                                    gapComposer5.updateRememberedValue(rememberedValue11);
                                }
                                CardKt.OutlinedTextField(str2, (Function1) rememberedValue11, layoutWeightElement2, false, null, null, ReadingChallengePlaygroundDialogKt.f68lambda$1986544740, null, null, null, null, false, null, null, null, true, 0, 0, null, m304colors0hiis_02, gapComposer5, 12582960, 12582912, 4063096);
                                boolean changed2 = gapComposer5.changed(function04);
                                Object rememberedValue12 = gapComposer5.rememberedValue();
                                if (changed2 || rememberedValue12 == neverEqualPolicy2) {
                                    rememberedValue12 = new HomeScreenKt$$ExternalSyntheticLambda32(function04, mutableState8, 7);
                                    gapComposer5.updateRememberedValue(rememberedValue12);
                                }
                                Function0 function06 = (Function0) rememberedValue12;
                                if (((String) mutableState8.getValue()).length() != 0) {
                                    try {
                                        failure2 = LocalDate.parse((String) mutableState8.getValue());
                                    } catch (Throwable th2) {
                                        failure2 = new Result.Failure(th2);
                                    }
                                    if (failure2 instanceof Result.Failure) {
                                        z2 = false;
                                        PaddingValuesImpl paddingValuesImpl32 = ButtonDefaults.ContentPadding;
                                        StaticProvidableCompositionLocal staticProvidableCompositionLocal82 = WikipediaColorKt.LocalWikipediaColor;
                                        CardKt.Button(function06, null, z2, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal82)).progressiveColor, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal82)).paperColor, gapComposer5, 12), null, null, null, ReadingChallengePlaygroundDialogKt.lambda$928789651, gapComposer5, 805306368, 490);
                                        gapComposer5.end(true);
                                        gapComposer5.end(true);
                                        break;
                                    }
                                }
                                z2 = true;
                                PaddingValuesImpl paddingValuesImpl322 = ButtonDefaults.ContentPadding;
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal822 = WikipediaColorKt.LocalWikipediaColor;
                                CardKt.Button(function06, null, z2, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal822)).progressiveColor, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal822)).paperColor, gapComposer5, 12), null, null, null, ReadingChallengePlaygroundDialogKt.lambda$928789651, gapComposer5, 805306368, 490);
                                gapComposer5.end(true);
                                gapComposer5.end(true);
                            }
                    }
                    return unit;
                }
            }, gapComposer), gapComposer, 196608, 31);
            boolean z = (i2 & 896) == 256;
            Object rememberedValue9 = gapComposer.rememberedValue();
            if (z || rememberedValue9 == neverEqualPolicy) {
                gapComposer2 = gapComposer;
                rememberedValue9 = new Function0() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Prefs prefs9 = Prefs.INSTANCE;
                        PrefsIoUtil.setInt(R.string.preference_key_reading_challenge_streak, 0);
                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, false);
                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, false);
                        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, false);
                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_last_read_date, "");
                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_end_date, "2026-06-18");
                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_start_date, "2026-05-11");
                        parcelableSnapshotMutableIntState2.setIntValue(Prefs.getReadingChallengeStreak());
                        mutableState.setValue(Boolean.valueOf(Prefs.getReadingChallengeEnrolled()));
                        mutableState2.setValue(Prefs.getReadingChallengeLastReadDate());
                        String string3 = PrefsIoUtil.getString(R.string.preference_key_reading_challenge_start_date, "2026-05-11");
                        if (string3 == null) {
                            string3 = "";
                        }
                        mutableState3.setValue(string3);
                        String string4 = PrefsIoUtil.getString(R.string.preference_key_reading_challenge_end_date, "2026-06-18");
                        mutableState4.setValue(string4 != null ? string4 : "");
                        mutableState5.setValue(Boolean.valueOf(Prefs.getReadingChallengeOnboardingShown()));
                        mutableState6.setValue(Boolean.valueOf(Prefs.getReadingChallengeInstallPromptShown()));
                        Function0.this.invoke();
                        return Unit.INSTANCE;
                    }
                };
                gapComposer2.updateRememberedValue(rememberedValue9);
            } else {
                gapComposer2 = gapComposer;
            }
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f);
            PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
            gapComposer3 = gapComposer2;
            CardKt.OutlinedButton((Function0) rememberedValue9, fillMaxWidth, false, null, ButtonDefaults.m262outlinedButtonColorsro_MJ88(((ColorScheme) gapComposer2.consume(staticProvidableCompositionLocal2)).error, gapComposer2), null, null, lambda$1801978061, gapComposer3, 805306416, 492);
            gapComposer3.end(true);
        } else {
            function03 = function02;
            readingChallengeState2 = readingChallengeState;
            gapComposer3.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer3.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda1(modifier, readingChallengeState2, function0, function03, i, 15);
        }
    }

    public static final void SingleEntryView(Function3 function3, Modifier modifier, GapComposer gapComposer, int i) {
        Function3 function32;
        Modifier modifier2;
        MutableState mutableState;
        MutableState mutableState2;
        MutableState mutableState3;
        GapComposer gapComposer2 = gapComposer;
        function3.getClass();
        gapComposer2.startRestartGroup(-402699633);
        int i2 = i | (gapComposer2.changedInstance(function3) ? 4 : 2) | 48;
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default("");
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState4 = (MutableState) rememberedValue;
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.mutableStateOf$default("");
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState5 = (MutableState) rememberedValue2;
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = Updater.mutableStateOf$default("2025");
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            MutableState mutableState6 = (MutableState) rememberedValue3;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
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
            String str = (String) mutableState4.getValue();
            modifier2 = companion;
            TextFieldColors m304colors0hiis_0 = TextFieldDefaults.m304colors0hiis_0(NodeTraversor.getColors(gapComposer2).primaryColor, NodeTraversor.getColors(gapComposer2).primaryColor, 0L, 0L, NodeTraversor.getColors(gapComposer2).primaryColor, 0L, gapComposer2, 2147481596);
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(modifier2, 1.0f);
            Object rememberedValue4 = gapComposer2.rememberedValue();
            int i4 = 14;
            if (rememberedValue4 == neverEqualPolicy) {
                mutableState = mutableState4;
                rememberedValue4 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState, i4);
                gapComposer2.updateRememberedValue(rememberedValue4);
            } else {
                mutableState = mutableState4;
            }
            MutableState mutableState7 = mutableState;
            CardKt.OutlinedTextField(str, (Function1) rememberedValue4, fillMaxWidth, false, null, lambda$749487391, null, null, null, null, null, false, null, null, null, true, 0, 0, null, m304colors0hiis_0, gapComposer, 1573296, 12582912, 4063160);
            String str2 = (String) mutableState5.getValue();
            TextFieldColors m304colors0hiis_02 = TextFieldDefaults.m304colors0hiis_0(NodeTraversor.getColors(gapComposer).primaryColor, NodeTraversor.getColors(gapComposer).primaryColor, 0L, 0L, NodeTraversor.getColors(gapComposer).primaryColor, 0L, gapComposer, 2147481596);
            Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(modifier2, 1.0f);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (rememberedValue5 == neverEqualPolicy) {
                mutableState2 = mutableState5;
                rememberedValue5 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState2, 15);
                gapComposer.updateRememberedValue(rememberedValue5);
            } else {
                mutableState2 = mutableState5;
            }
            MutableState mutableState8 = mutableState2;
            CardKt.OutlinedTextField(str2, (Function1) rememberedValue5, fillMaxWidth2, false, null, f70lambda$2104715562, null, null, null, null, null, false, null, null, null, true, 0, 0, null, m304colors0hiis_02, gapComposer, 1573296, 12582912, 4063160);
            String str3 = (String) mutableState6.getValue();
            KeyboardOptions keyboardOptions = new KeyboardOptions(3, 123);
            TextFieldColors m304colors0hiis_03 = TextFieldDefaults.m304colors0hiis_0(NodeTraversor.getColors(gapComposer).primaryColor, NodeTraversor.getColors(gapComposer).primaryColor, 0L, 0L, NodeTraversor.getColors(gapComposer).primaryColor, 0L, gapComposer, 2147481596);
            Modifier fillMaxWidth3 = SizeKt.fillMaxWidth(modifier2, 1.0f);
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (rememberedValue6 == neverEqualPolicy) {
                mutableState3 = mutableState6;
                rememberedValue6 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState3, 16);
                gapComposer.updateRememberedValue(rememberedValue6);
            } else {
                mutableState3 = mutableState6;
            }
            MutableState mutableState9 = mutableState3;
            CardKt.OutlinedTextField(str3, (Function1) rememberedValue6, fillMaxWidth3, false, null, f65lambda$1525949417, null, null, null, null, null, false, null, keyboardOptions, null, true, 0, 0, null, m304colors0hiis_03, gapComposer, 1573296, 12779520, 4030392);
            gapComposer2 = gapComposer;
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(modifier2, 6.0f));
            Modifier fillMaxWidth4 = SizeKt.fillMaxWidth(modifier2, 1.0f);
            boolean z = (i2 & 14) == 4;
            Object rememberedValue7 = gapComposer2.rememberedValue();
            if (z || rememberedValue7 == neverEqualPolicy) {
                function32 = function3;
                rememberedValue7 = new GamesHubScreenKt$$ExternalSyntheticLambda28(function32, mutableState7, mutableState8, mutableState9);
                gapComposer2.updateRememberedValue(rememberedValue7);
            } else {
                function32 = function3;
            }
            TabsBoxKt.m895AppButtont6yy7ic((Function0) rememberedValue7, fillMaxWidth4, 0L, 0L, lambda$1880299273, gapComposer2, 24624, 12);
            gapComposer2.end(true);
        } else {
            function32 = function3;
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomActivity$$ExternalSyntheticLambda1(function32, modifier2, i, 9);
        }
    }
}
