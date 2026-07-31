package org.wikipedia.settings;

import android.content.SharedPreferences;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
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
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.RecyclerView;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.UtilsKt;
import java.util.List;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt__StringsKt$$ExternalSyntheticLambda2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.json.JsonImpl;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda27;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda30;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda16;
import org.wikipedia.util.log.L;
import org.wikipedia.yearinreview.YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PrefsIoUtil {
    public static RemoteConfig$RemoteConfigImpl curConfig;

    /* renamed from: lambda$-1740632181, reason: not valid java name */
    public static final ComposableLambdaImpl f63lambda$1740632181 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(6), false, -1740632181);

    public static final void AboutScreenBody(int i, GapComposer gapComposer, Modifier modifier, List list) {
        list.getClass();
        gapComposer.startRestartGroup(714956444);
        int i2 = i | (gapComposer.changedInstance(list) ? 32 : 16);
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(32.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer, 6);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
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
            LinkTextWithHeader(null, UtilsKt.stringResource(R.string.about_contributors_heading, gapComposer), UtilsKt.stringResource(R.string.about_contributors, gapComposer), null, gapComposer, 0);
            LinkTextWithHeader(null, UtilsKt.stringResource(R.string.about_translators_heading, gapComposer), UtilsKt.stringResource(R.string.about_translators_translatewiki, gapComposer), null, gapComposer, 0);
            LicenseTextWithHeader(null, UtilsKt.stringResource(R.string.about_libraries_heading, gapComposer), list, gapComposer, (i2 << 3) & 896);
            LinkTextWithHeader(null, UtilsKt.stringResource(R.string.about_app_license_heading, gapComposer), UtilsKt.stringResource(R.string.about_app_license, gapComposer), null, gapComposer, 0);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda6(i, i3, modifier, list);
        }
    }

    public static final void AboutScreenContent(Modifier modifier, String str, List list, SnackbarHostState snackbarHostState, GapComposer gapComposer, int i) {
        SnackbarHostState snackbarHostState2;
        list.getClass();
        snackbarHostState.getClass();
        gapComposer.startRestartGroup(-766630278);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changed(str) ? 32 : 16) | (gapComposer.changedInstance(list) ? 256 : 128);
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Modifier scroll$default = ImageKt.scroll$default(modifier, ImageKt.rememberScrollState(gapComposer), true);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.CenterHorizontally, gapComposer, 48);
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
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            snackbarHostState2 = snackbarHostState;
            AboutWikipediaHeader(OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 30.0f, RecyclerView.DECELERATION_RATE, 16.0f, 5), str, snackbarHostState2, gapComposer, (i2 & 112) | 390);
            SimpleLayoutKt.SelectionContainer(null, Expect_jvmKt.rememberComposableLambda(-1026619565, new StringsKt__StringsKt$$ExternalSyntheticLambda2(list, i3), gapComposer), gapComposer, 48);
            AboutScreenFooter(OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 24.0f, RecyclerView.DECELERATION_RATE, 16.0f, 5), gapComposer, 6);
            gapComposer.end(true);
        } else {
            snackbarHostState2 = snackbarHostState;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda1(i, 14, modifier, str, list, snackbarHostState2, false);
        }
    }

    public static final void AboutScreenFooter(Modifier modifier, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-989414979);
        if (gapComposer.shouldExecute(i & 1, (i & 3) != 2)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterHorizontally, gapComposer, 54);
            long j = gapComposer.compositeKeyHashCode;
            int i2 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
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
            Updater.m327setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(Modifier.Companion.$$INSTANCE, 24.0f);
            Painter painterResource = UnsignedKt.painterResource(R.drawable.ic_wmf_logo, 0, gapComposer);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            ImageKt.Image(painterResource, null, m145size3ABfNKs, null, null, RecyclerView.DECELERATION_RATE, new BlendModeColorFilter(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).placeholderColor, 5), gapComposer, 440, 56);
            TabsBoxKt.m897HtmlTextKiACRJU(UtilsKt.stringResource(R.string.about_wmf, gapComposer), null, new TextLinkStyles(new SpanStyle(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65534), null, null, null), ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodySmall, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).secondaryColor, 0, 0, 0L, null, null, 0, gapComposer, 0, 4066);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda10(modifier, i, 0);
        }
    }

    public static final void AboutWikipediaHeader(Modifier modifier, String str, SnackbarHostState snackbarHostState, GapComposer gapComposer, int i) {
        int i2;
        snackbarHostState.getClass();
        gapComposer.startRestartGroup(-1055523489);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(str) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(snackbarHostState) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CoroutineScope coroutineScope = (CoroutineScope) rememberedValue;
            String stringResource = UtilsKt.stringResource(R.string.show_developer_settings_already_enabled, gapComposer);
            String stringResource2 = UtilsKt.stringResource(R.string.show_developer_settings_enabled, gapComposer);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.CenterHorizontally, gapComposer, 48);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
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
            Updater.m327setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            boolean changedInstance = ((i2 & 896) == 256) | gapComposer.changedInstance(coroutineScope) | gapComposer.changed(stringResource) | gapComposer.changed(stringResource2);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                AboutActivityKt$$ExternalSyntheticLambda7 aboutActivityKt$$ExternalSyntheticLambda7 = new AboutActivityKt$$ExternalSyntheticLambda7(coroutineScope, snackbarHostState, stringResource, stringResource2, 0);
                gapComposer.updateRememberedValue(aboutActivityKt$$ExternalSyntheticLambda7);
                rememberedValue2 = aboutActivityKt$$ExternalSyntheticLambda7;
            }
            AboutWikipediaImage(null, (Function1) rememberedValue2, gapComposer, 0);
            SimpleLayoutKt.SelectionContainer(null, Expect_jvmKt.rememberComposableLambda(-1048612058, new HomeScreenKt$$ExternalSyntheticLambda30(str, 12, (byte) 0), gapComposer), gapComposer, 48);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9(modifier, str, snackbarHostState, i, 0);
        }
    }

    public static final void AboutWikipediaImage(Modifier modifier, Function1 function1, GapComposer gapComposer, int i) {
        Modifier modifier2;
        function1.getClass();
        gapComposer.startRestartGroup(-814400019);
        int i2 = i | 6 | (gapComposer.changedInstance(function1) ? 32 : 16);
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new ParcelableSnapshotMutableIntState(0);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) rememberedValue;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.CenterHorizontally, gapComposer, 48);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            modifier2 = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier2);
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
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(modifier2, 88.0f);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new MutableInteractionSourceImpl();
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableInteractionSourceImpl mutableInteractionSourceImpl = (MutableInteractionSourceImpl) rememberedValue2;
            boolean z = (i2 & 112) == 32;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new AboutActivityKt$$ExternalSyntheticLambda11(i3, function1, parcelableSnapshotMutableIntState);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            ImageKt.Image(UnsignedKt.painterResource(R.drawable.w_nav_mark, 0, gapComposer), UtilsKt.stringResource(R.string.about_logo_content_description, gapComposer), ImageKt.m50clickableO2vRcR0$default(m145size3ABfNKs, mutableInteractionSourceImpl, null, false, null, (Function0) rememberedValue3, 28), null, null, RecyclerView.DECELERATION_RATE, null, gapComposer, 8, 120);
            ImageKt.Image(UnsignedKt.painterResource(R.drawable.wp_wordmark, 0, gapComposer), null, SizeKt.m146sizeVpY3zN4(OffsetKt.m136paddingqDBjuR0$default(modifier2, RecyclerView.DECELERATION_RATE, 4.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), 114.0f, 22.0f), null, null, RecyclerView.DECELERATION_RATE, new BlendModeColorFilter(((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, 5), gapComposer, 56, 56);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda12(modifier2, function1, i, i3);
        }
    }

    public static final void AboutWikipediaScreen(Modifier modifier, String str, List list, Function0 function0, GapComposer gapComposer, int i) {
        Modifier modifier2;
        int i2;
        list.getClass();
        function0.getClass();
        gapComposer.startRestartGroup(660142328);
        int i3 = 4;
        if ((i & 6) == 0) {
            modifier2 = modifier;
            i2 = (gapComposer.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i2 = i;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(list) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 2048 : 1024;
        }
        byte b = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new SnackbarHostState();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) rememberedValue;
            CardKt.m270ScaffoldTvnljyQ(modifier2, Expect_jvmKt.rememberComposableLambda(-1513990212, new RandomScreenKt$$ExternalSyntheticLambda16(function0, i3, b), gapComposer), null, Expect_jvmKt.rememberComposableLambda(2074380478, new FeedComponentsKt$$ExternalSyntheticLambda2(5, snackbarHostState), gapComposer), null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(2062174727, new AboutActivityKt$$ExternalSyntheticLambda2(str, list, snackbarHostState, b), gapComposer), gapComposer, (i2 & 14) | 805309488, 436);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda27(modifier, str, list, function0, i);
        }
    }

    public static final void LicenseTextWithHeader(Modifier modifier, String str, List list, GapComposer gapComposer, int i) {
        String str2;
        GapComposer gapComposer2;
        Modifier modifier2;
        str.getClass();
        list.getClass();
        gapComposer.startRestartGroup(-1032351811);
        int i2 = i | 6;
        if ((i & 48) == 0) {
            str2 = str;
            i2 |= gapComposer.changed(str2) ? 32 : 16;
        } else {
            str2 = str;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(list) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer, 6);
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
            Updater.m327setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            modifier2 = companion;
            TextKt.m308TextNvy7gAk(str2, null, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer, (i2 >> 3) & 14, 0, 131066);
            gapComposer2 = gapComposer;
            TabsBoxKt.LicenseLinkText((i2 >> 6) & 14, gapComposer2, null, list);
            gapComposer2.end(true);
        } else {
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9(modifier2, str, list, i, 18);
        }
    }

    public static final void LinkTextWithHeader(Modifier modifier, String str, String str2, TextLinkStyles textLinkStyles, GapComposer gapComposer, int i) {
        Modifier modifier2;
        TextLinkStyles textLinkStyles2;
        int i2;
        TextLinkStyles textLinkStyles3;
        Modifier modifier3;
        GapComposer gapComposer2 = gapComposer;
        str.getClass();
        str2.getClass();
        gapComposer2.startRestartGroup(2073438210);
        int i3 = i | 6 | (gapComposer2.changed(str) ? 32 : 16) | (gapComposer2.changed(str2) ? 256 : 128) | 1024;
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            gapComposer2.startDefaults();
            if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                i2 = i3 & (-7169);
                textLinkStyles3 = new TextLinkStyles(new SpanStyle(((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65534), null, null, null);
                modifier3 = Modifier.Companion.$$INSTANCE;
            } else {
                gapComposer2.skipToGroupEnd();
                textLinkStyles3 = textLinkStyles;
                i2 = i3 & (-7169);
                modifier3 = modifier;
            }
            gapComposer2.endDefaults();
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer2, 6);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, modifier3);
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
            TextKt.m308TextNvy7gAk(str, null, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer, (i2 >> 3) & 14, 0, 131066);
            gapComposer2 = gapComposer;
            TextLinkStyles textLinkStyles4 = textLinkStyles3;
            TabsBoxKt.m897HtmlTextKiACRJU(str2, null, textLinkStyles4, null, 0L, 0, 0, 0L, null, null, 0, gapComposer2, (i2 >> 6) & 14, 4090);
            gapComposer2.end(true);
            textLinkStyles2 = textLinkStyles4;
            modifier2 = modifier3;
        } else {
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
            textLinkStyles2 = textLinkStyles;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda1(i, 13, modifier2, str, str2, textLinkStyles2, false);
        }
    }

    public static RemoteConfig$RemoteConfigImpl getConfig() {
        RemoteConfig$RemoteConfigImpl remoteConfig$RemoteConfigImpl = curConfig;
        if (remoteConfig$RemoteConfigImpl == null) {
            try {
                JsonImpl jsonImpl = JsonUtil.json;
                Prefs prefs = Prefs.INSTANCE;
                String str = "";
                String string = getString(R.string.preference_key_remote_config, "");
                if (string != null) {
                    str = string;
                }
                if (str.length() == 0) {
                    str = "{}";
                }
                Object obj = null;
                if (str.length() != 0) {
                    try {
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        obj = jsonImpl2.decodeFromString(str, UnsignedKt.getNullable(RemoteConfig$RemoteConfigImpl.Companion.serializer()));
                    } catch (Exception e) {
                        L.w(e);
                    }
                }
                remoteConfig$RemoteConfigImpl = (RemoteConfig$RemoteConfigImpl) obj;
            } catch (Exception e2) {
                L.e(e2);
                remoteConfig$RemoteConfigImpl = new RemoteConfig$RemoteConfigImpl();
            }
            curConfig = remoteConfig$RemoteConfigImpl;
        }
        return remoteConfig$RemoteConfigImpl == null ? new RemoteConfig$RemoteConfigImpl() : remoteConfig$RemoteConfigImpl;
    }

    public static int getInt(int i, int i2) {
        return getPreferences().getInt(getKey(i, new Object[0]), i2);
    }

    public static String getKey(int i, Object... objArr) {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m(objArr, objArr.length, Jsoup.getInstance().getResources(), i);
    }

    public static long getLong(long j, int i) {
        return getPreferences().getLong(getKey(i, new Object[0]), j);
    }

    public static SharedPreferences getPreferences() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        WikipediaApp jsoup = Jsoup.getInstance();
        return jsoup.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(jsoup), 0);
    }

    public static String getString(int i, String str) {
        return getPreferences().getString(getKey(i, new Object[0]), str);
    }

    public static void remove(int i) {
        String key = getKey(i, new Object[0]);
        SharedPreferences.Editor edit = getPreferences().edit();
        edit.getClass();
        edit.remove(key).apply();
    }

    public static void setBoolean(int i, boolean z) {
        String key = getKey(i, new Object[0]);
        SharedPreferences.Editor edit = getPreferences().edit();
        edit.getClass();
        edit.putBoolean(key, z).apply();
    }

    public static void setInt(int i, int i2) {
        String key = getKey(i, new Object[0]);
        SharedPreferences.Editor edit = getPreferences().edit();
        edit.getClass();
        edit.putInt(key, i2).apply();
    }

    public static void setLong(long j, int i) {
        String key = getKey(i, new Object[0]);
        SharedPreferences.Editor edit = getPreferences().edit();
        edit.getClass();
        edit.putLong(key, j).apply();
    }

    public static void setString(int i, String str) {
        String key = getKey(i, new Object[0]);
        SharedPreferences.Editor edit = getPreferences().edit();
        edit.getClass();
        edit.putString(key, str).apply();
    }
}
