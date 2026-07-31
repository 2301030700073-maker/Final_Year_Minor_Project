package org.wikipedia.feed.personalization.homepreference;

import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda7;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.TextFieldDefaults$$ExternalSyntheticLambda1;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import kotlin.ExceptionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.personalization.homepreference.HomeContentState;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda23;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda7;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class HomePreferenceScreenKt {

    /* renamed from: lambda$-1391714738, reason: not valid java name */
    public static final ComposableLambdaImpl f44lambda$1391714738 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(26), false, -1391714738);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HomePreferenceType.values().length];
            try {
                iArr[HomePreferenceType.COMMUNITY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HomePreferenceType.PERSONALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void ArticleCardTag(int i, GapComposer gapComposer, Modifier modifier, String str) {
        String str2;
        str.getClass();
        gapComposer.startRestartGroup(558980619);
        int i2 = (gapComposer.changed(str) ? 4 : 2) | i | (gapComposer.changed(modifier) ? 32 : 16);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            str2 = str;
            TextKt.m308TextNvy7gAk(str2, modifier, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).backgroundColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodySmall, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211), gapComposer, i2 & 126, 0, 131064);
        } else {
            str2 = str;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3(str2, modifier, i, 4);
        }
    }

    public static final void HomePreferenceArticleCard(Modifier modifier, HomePreferenceType homePreferenceType, HomePreferenceContent homePreferenceContent, GapComposer gapComposer, int i) {
        Modifier modifier2;
        homePreferenceType.getClass();
        homePreferenceContent.getClass();
        gapComposer.startRestartGroup(-1748131503);
        int i2 = i | 6 | (gapComposer.changed(homePreferenceType.ordinal()) ? 32 : 16) | (gapComposer.changed(homePreferenceContent) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            TabsBoxKt.m902WikiCardjfnsLPA(SizeKt.m140height3ABfNKs(SizeKt.m149width3ABfNKs(companion, 185.0f), 230.0f), RecyclerView.DECELERATION_RATE, null, ImageKt.m45BorderStrokecXLIe8U(1.0f, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor), null, null, Expect_jvmKt.rememberComposableLambda(-987233724, new RandomActivity$$ExternalSyntheticLambda1(2, homePreferenceContent, homePreferenceType), gapComposer), gapComposer, 1572912, 52);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda18(modifier2, homePreferenceType, homePreferenceContent, i, 14);
        }
    }

    public static final void HomePreferenceScreen(Modifier modifier, HomePreferenceType homePreferenceType, HomeContentState homeContentState, HomeContentState homeContentState2, Function1 function1, Function1 function12, GapComposer gapComposer, int i) {
        GapComposer gapComposer2 = gapComposer;
        homePreferenceType.getClass();
        function1.getClass();
        function12.getClass();
        gapComposer2.startRestartGroup(-2125105682);
        int i2 = (gapComposer2.changed(modifier) ? 4 : 2) | i;
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(homePreferenceType.ordinal()) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changed(homeContentState) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changed(homeContentState2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changedInstance(function1) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer2.changedInstance(function12) ? 131072 : 65536;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer2, 6);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
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
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            int i4 = i2;
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.explore_feed_preference_selection_screen_title, gapComposer2), OffsetKt.m134paddingVpY3zN4$default(Modifier.Companion.$$INSTANCE, 16.0f, RecyclerView.DECELERATION_RATE, 2), ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).titleLarge, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211), gapComposer, 48, 0, 131064);
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(24.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
            boolean z = ((i4 & 896) == 256) | ((i4 & 112) == 32) | ((458752 & i4) == 131072) | ((57344 & i4) == 16384) | ((i4 & 7168) == 2048);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer$Companion.Empty) {
                GamesHubScreenKt$$ExternalSyntheticLambda23 gamesHubScreenKt$$ExternalSyntheticLambda23 = new GamesHubScreenKt$$ExternalSyntheticLambda23(homePreferenceType, homeContentState, function12, function1, homeContentState2);
                gapComposer.updateRememberedValue(gamesHubScreenKt$$ExternalSyntheticLambda23);
                rememberedValue = gamesHubScreenKt$$ExternalSyntheticLambda23;
            }
            gapComposer2 = gapComposer;
            ExceptionsKt.LazyColumn(fillElement, null, null, arrangement$SpacedAligned, null, null, false, null, (Function1) rememberedValue, gapComposer2, 24582, 494);
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda3(modifier, homePreferenceType, homeContentState, homeContentState2, function1, function12, i, 3);
        }
    }

    public static final void HomePreferenceSection(HomeContentState homeContentState, boolean z, HomePreferenceType homePreferenceType, Function1 function1, Function1 function12, GapComposer gapComposer, int i) {
        boolean z2;
        long j;
        GapComposer gapComposer2 = gapComposer;
        homePreferenceType.getClass();
        function1.getClass();
        function12.getClass();
        gapComposer2.startRestartGroup(714913883);
        int i2 = i | (gapComposer2.changed(homeContentState) ? 4 : 2) | (gapComposer2.changed(z) ? 32 : 16) | (gapComposer2.changedInstance(function1) ? 2048 : 1024) | (gapComposer2.changedInstance(function12) ? 16384 : 8192);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            InfiniteTransition rememberInfiniteTransition = ArcSplineKt.rememberInfiniteTransition("homePreferenceShimmerTransition", gapComposer2, 0);
            boolean z3 = homeContentState instanceof HomeContentState.Empty;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer2, 6);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j2 ^ (j2 >>> 32));
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
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), 8.0f, RecyclerView.DECELERATION_RATE, 2);
            int i4 = 57344 & i2;
            boolean changed = gapComposer2.changed(z3) | (i4 == 16384);
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                z2 = false;
                rememberedValue = new HomePreferenceScreenKt$$ExternalSyntheticLambda10(z3, function12, homePreferenceType, 0);
                gapComposer2.updateRememberedValue(rememberedValue);
            } else {
                z2 = false;
            }
            Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, m134paddingVpY3zN4$default, null, (Function0) rememberedValue, z2);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer2, 48);
            long j3 = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m51clickableoSLSa3U$default);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            boolean z4 = i4 == 16384;
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (z4 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new HomePreferenceScreenKt$$ExternalSyntheticLambda2(function12, homePreferenceType, 1);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            boolean z5 = false;
            CardKt.RadioButton(z, (Function0) rememberedValue2, null, !z3, CardKt.m277colorsro_MJ88(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).inactiveColor, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).inactiveColor, gapComposer2, 0), gapComposer, (i2 >> 3) & 14, 36);
            String stringResource = UtilsKt.stringResource(homePreferenceType.getTitleRes(), gapComposer);
            TextStyle m647copyp1EtxEg$default = TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodyLarge, 0L, 0L, z3 ? FontWeight.Normal : FontWeight.Medium, null, 0L, 0L, null, 16777211);
            if (z3) {
                gapComposer.startReplaceGroup(363798146);
                j = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).inactiveColor;
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(363800097);
                j = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor;
                gapComposer.end(false);
            }
            TextKt.m308TextNvy7gAk(stringResource, null, j, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, m647copyp1EtxEg$default, gapComposer, 0, 0, 131066);
            gapComposer.end(true);
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            PaddingValuesImpl m125PaddingValuesYgX7TsA$default = OffsetKt.m125PaddingValuesYgX7TsA$default(2, 24.0f);
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
            boolean z6 = (i2 & 14) == 4;
            if ((i2 & 7168) == 2048) {
                z5 = true;
            }
            boolean changedInstance = z5 | z6 | gapComposer.changedInstance(rememberInfiniteTransition);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue3 == neverEqualPolicy) {
                AboutActivityKt$$ExternalSyntheticLambda7 aboutActivityKt$$ExternalSyntheticLambda7 = new AboutActivityKt$$ExternalSyntheticLambda7(homeContentState, function1, homePreferenceType, rememberInfiniteTransition, 9);
                gapComposer.updateRememberedValue(aboutActivityKt$$ExternalSyntheticLambda7);
                rememberedValue3 = aboutActivityKt$$ExternalSyntheticLambda7;
            }
            ExceptionsKt.LazyRow(fillMaxWidth, null, m125PaddingValuesYgX7TsA$default, arrangement$SpacedAligned, null, null, false, null, (Function1) rememberedValue3, gapComposer, 24966, 490);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextFieldDefaults$$ExternalSyntheticLambda1(i, 1, homeContentState, homePreferenceType, function1, function12, z);
        }
    }
}
