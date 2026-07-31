package org.wikipedia.onboarding;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.ButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda2;
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
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.compose.AsyncImageKt;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.activitytab.WikiGamesModuleKt$$ExternalSyntheticLambda1;
import org.wikipedia.compose.components.SettingsKt$$ExternalSyntheticLambda8;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.extensions.ModifierKt$$ExternalSyntheticLambda2;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda5;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda17;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda27;
import org.wikipedia.feed.didyouknow.DidYouKnowModuleKt$$ExternalSyntheticLambda5;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;
import org.wikipedia.language.AppLanguageState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class InitialOnboardingScreenKt {

    /* renamed from: lambda$-1510619266, reason: not valid java name */
    public static final ComposableLambdaImpl f47lambda$1510619266 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(11), false, -1510619266);
    public static final ComposableLambdaImpl lambda$753177243 = new ComposableLambdaImpl(new ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0(6), false, 753177243);

    /* renamed from: lambda$-1678819327, reason: not valid java name */
    public static final ComposableLambdaImpl f48lambda$1678819327 = new ComposableLambdaImpl(new ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0(7), false, -1678819327);

    /* renamed from: lambda$-1745273141, reason: not valid java name */
    public static final ComposableLambdaImpl f49lambda$1745273141 = new ComposableLambdaImpl(new ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0(8), false, -1745273141);

    /* renamed from: lambda$-1219168603, reason: not valid java name */
    public static final ComposableLambdaImpl f46lambda$1219168603 = new ComposableLambdaImpl(new ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0(9), false, -1219168603);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OnboardingScreen.values().length];
            try {
                iArr[OnboardingScreen.INTRO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OnboardingScreen.DATA_PRIVACY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OnboardingScreen.LANGUAGES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void AppOnboardingScreen(Modifier modifier, AppLanguageState appLanguageState, List list, boolean z, Function0 function0, Function0 function02, Function0 function03, GapComposer gapComposer, int i) {
        Modifier modifier2;
        list.getClass();
        function0.getClass();
        function02.getClass();
        function03.getClass();
        gapComposer.startRestartGroup(-539655787);
        int i2 = i | 6 | (gapComposer.changedInstance(appLanguageState) ? 32 : 16) | (gapComposer.changedInstance(list) ? 256 : 128) | (gapComposer.changed(z) ? 2048 : 1024) | (gapComposer.changedInstance(function0) ? 16384 : 8192) | (gapComposer.changedInstance(function02) ? 131072 : 65536) | (gapComposer.changedInstance(function03) ? 1048576 : 524288);
        if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.valueOf(z));
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (booleanValue) {
                gapComposer.startReplaceGroup(-822602483);
                List listOf = Room.listOf((Object[]) new OnboardingScreen[]{OnboardingScreen.INTRO, OnboardingScreen.DATA_PRIVACY, OnboardingScreen.LANGUAGES});
                boolean z2 = (i2 & 57344) == 16384;
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (z2 || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new Handshake$$ExternalSyntheticLambda0(21, function0);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Function0 function04 = (Function0) rememberedValue2;
                boolean z3 = (458752 & i2) == 131072;
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (z3 || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new Handshake$$ExternalSyntheticLambda0(22, function02);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                Function0 function05 = (Function0) rememberedValue3;
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (rememberedValue4 == neverEqualPolicy) {
                    rememberedValue4 = new ForYouCardKt$$ExternalSyntheticLambda2(mutableState, 27);
                    gapComposer.updateRememberedValue(rememberedValue4);
                }
                int i3 = i2 << 3;
                modifier2 = companion;
                InitialOnboardingScreen(modifier2, listOf, appLanguageState, list, function04, function05, (Function0) rememberedValue4, gapComposer, (i3 & 7168) | (i3 & 896) | 1572918);
                gapComposer.end(false);
            } else {
                modifier2 = companion;
                gapComposer.startReplaceGroup(-822071825);
                gapComposer.end(false);
                function03.invoke();
            }
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ButtonKt$$ExternalSyntheticLambda4(modifier2, appLanguageState, list, z, function0, function02, function03, i);
        }
    }

    public static final void InitialOnboardingDataPrivacyContent(Modifier modifier, Function0 function0, Function0 function02, GapComposer gapComposer, int i) {
        Modifier modifier2;
        Function0 function03 = function02;
        GapComposer gapComposer2 = gapComposer;
        function0.getClass();
        function03.getClass();
        gapComposer2.startRestartGroup(-1387281096);
        int i2 = i | 6;
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changedInstance(function03) ? 256 : 128;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Modifier scroll$default = ImageKt.scroll$default(SizeKt.FillWholeMaxSize, ImageKt.rememberScrollState(gapComposer2), true);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Center, Alignment.Companion.CenterHorizontally, gapComposer2, 54);
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
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(companion, 124.0f);
            ImageRequest.Builder builder = new ImageRequest.Builder((Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext));
            builder.data = Integer.valueOf(R.drawable.ic_onboarding_puzzle);
            ImageRequests_androidKt.allowHardware(builder);
            AsyncImageKt.m776SubcomposeAsyncImagenc27qi8(builder.build(), UtilsKt.stringResource(R.string.onboarding_data_privacy_title, gapComposer2), m145size3ABfNKs, lambda$753177243, f48lambda$1678819327, null, gapComposer2, 221568, 65480);
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 24.0f));
            Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(SizeKt.fillMaxWidth(companion, 1.0f), 24.0f, 16.0f);
            String stringResource = UtilsKt.stringResource(R.string.onboarding_data_privacy_title, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
            TextStyle textStyle = ((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).headlineMedium;
            FontWeight fontWeight = FontWeight.Medium;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
            int i4 = i2;
            modifier2 = companion;
            TextKt.m308TextNvy7gAk(stringResource, m133paddingVpY3zN4, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, fontWeight, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer, 1572912, 0, 131000);
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(modifier2, 1.0f), 24.0f, RecyclerView.DECELERATION_RATE, 2);
            String stringResource2 = UtilsKt.stringResource(R.string.onboarding_data_privacy_text, gapComposer);
            TextStyle textStyle2 = ((Typography) gapComposer.consume(staticProvidableCompositionLocal)).bodyLarge;
            long j2 = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).primaryColor;
            TextLinkStyles textLinkStyles = new TextLinkStyles(new SpanStyle(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).progressiveColor, ContextsKt.getSp(16), FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65528), null, null, null);
            boolean z = ((i4 & 112) == 32) | ((i4 & 896) == 256);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer$Companion.Empty) {
                function03 = function02;
                rememberedValue = new DidYouKnowModuleKt$$ExternalSyntheticLambda5(1, function03, function0);
                gapComposer.updateRememberedValue(rememberedValue);
            } else {
                function03 = function02;
            }
            TabsBoxKt.m897HtmlTextKiACRJU(stringResource2, m134paddingVpY3zN4$default, textLinkStyles, textStyle2, j2, 0, 0, 0L, (LinkInteractionListener) rememberedValue, null, 0, gapComposer, 48, 3808);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new InitialOnboardingScreenKt$$ExternalSyntheticLambda10(modifier2, function0, function03, i, 0);
        }
    }

    public static final void InitialOnboardingIntroContent(Modifier modifier, Function0 function0, GapComposer gapComposer, int i) {
        int i2;
        Modifier modifier2;
        GapComposer gapComposer2 = gapComposer;
        function0.getClass();
        gapComposer2.startRestartGroup(-717269350);
        int i3 = i | 6;
        if ((i & 48) == 0) {
            i3 |= gapComposer2.changedInstance(function0) ? 32 : 16;
        }
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            Modifier scroll$default = ImageKt.scroll$default(SizeKt.FillWholeMaxSize, ImageKt.rememberScrollState(gapComposer2), true);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.CenterHorizontally, gapComposer2, 48);
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
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 24.0f, RecyclerView.DECELERATION_RATE, 16.0f, 5), 20.0f);
            Painter painterResource = UnsignedKt.painterResource(R.drawable.feed_header_wordmark, 0, gapComposer2);
            String stringResource = UtilsKt.stringResource(R.string.app_name_prod, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            ImageKt.Image(painterResource, stringResource, m140height3ABfNKs, null, null, RecyclerView.DECELERATION_RATE, new BlendModeColorFilter(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, 5), gapComposer2, 392, 56);
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 24.0f));
            Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(SizeKt.fillMaxWidth(companion, 1.0f), 24.0f, 16.0f);
            String stringResource2 = UtilsKt.stringResource(R.string.onboarding_fresh_install_knowledge_title, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
            modifier2 = companion;
            TextKt.m308TextNvy7gAk(stringResource2, m133paddingVpY3zN4, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, FontWeight.Medium, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).headlineMedium, gapComposer, 1572912, 0, 131000);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.onboarding_fresh_install_knowledge_text, gapComposer), OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(modifier2, 1.0f), 24.0f, RecyclerView.DECELERATION_RATE, 2), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).bodyLarge, gapComposer, 48, 0, 131064);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.onboarding_fresh_install_knowledge_learn_more, gapComposer), ImageKt.m51clickableoSLSa3U$default(15, OffsetKt.m132padding3ABfNKs(SizeKt.fillMaxWidth(modifier2, 1.0f), 24.0f), null, function0, false), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor, null, 0L, FontWeight.Bold, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).bodyLarge, gapComposer, 1572864, 0, 131000);
            gapComposer2 = gapComposer;
            i2 = 1;
            OffsetKt.Spacer(gapComposer2, new LayoutWeightElement(1.0f, true));
            ImageKt.Image(UnsignedKt.painterResource(R.drawable.ic_onboarding_knowledge, 0, gapComposer2), null, SizeKt.fillMaxWidth(modifier2, 1.0f), null, ContentScale.Companion.FillWidth, RecyclerView.DECELERATION_RATE, null, gapComposer2, 25016, 104);
            gapComposer2.end(true);
        } else {
            i2 = 1;
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new WikiGamesModuleKt$$ExternalSyntheticLambda1(i, modifier2, function0, i2);
        }
    }

    public static final void InitialOnboardingLanguageItem(AppLanguageState appLanguageState, String str, boolean z, GapComposer gapComposer, int i) {
        String str2;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal;
        GapComposer gapComposer2 = gapComposer;
        str.getClass();
        gapComposer2.startRestartGroup(-572780350);
        int i2 = i | (gapComposer2.changedInstance(appLanguageState) ? 4 : 2) | (gapComposer2.changed(str) ? 32 : 16) | (gapComposer2.changed(z) ? 256 : 128);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            if (appLanguageState == null || (str2 = appLanguageState.getAppLanguageLocalizedName(str)) == null) {
                str2 = str;
            }
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            String str3 = str2;
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
            TextStyle textStyle = ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).bodyLarge;
            FontWeight fontWeight = FontWeight.Medium;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
            TextKt.m308TextNvy7gAk(str3, fillMaxWidth, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal3)).primaryColor, null, 0L, fontWeight, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer, 1572912, 0, 131000);
            gapComposer2 = gapComposer;
            if (z) {
                gapComposer2.startReplaceGroup(206162608);
                staticProvidableCompositionLocal = staticProvidableCompositionLocal3;
                TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.onboarding_app_languages_primary, gapComposer2), SizeKt.fillMaxWidth(companion, 1.0f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal3)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).bodyMedium, gapComposer, 48, 0, 131064);
                gapComposer2 = gapComposer;
                gapComposer2.end(false);
            } else {
                staticProvidableCompositionLocal = staticProvidableCompositionLocal3;
                gapComposer2.startReplaceGroup(206429952);
                gapComposer2.end(false);
            }
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 16.0f));
            OffsetKt.Spacer(gapComposer2, ImageKt.m46backgroundbw27NRU(SizeKt.fillMaxWidth(SizeKt.m140height3ABfNKs(companion, 0.5f), 1.0f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).borderColor, ColorKt.RectangleShape));
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SettingsKt$$ExternalSyntheticLambda8(appLanguageState, str, z, i);
        }
    }

    public static final void InitialOnboardingLanguagesScreen(Modifier modifier, AppLanguageState appLanguageState, List list, Function0 function0, GapComposer gapComposer, int i) {
        Modifier modifier2;
        GapComposer gapComposer2 = gapComposer;
        list.getClass();
        function0.getClass();
        gapComposer2.startRestartGroup(-159335544);
        int i2 = i | 6;
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(appLanguageState) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changedInstance(list) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changedInstance(function0) ? 2048 : 1024;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            LazyListState rememberLazyListState = LazyListStateKt.rememberLazyListState(gapComposer2);
            Modifier scroll$default = ImageKt.scroll$default(SizeKt.FillWholeMaxSize, ImageKt.rememberScrollState(gapComposer2), true);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Center, Alignment.Companion.Start, gapComposer2, 6);
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
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, fillMaxWidth);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i4, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(companion, 124.0f);
            ImageRequest.Builder builder = new ImageRequest.Builder((Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext));
            builder.data = Integer.valueOf(R.drawable.yir_puzzle_stone);
            ImageRequests_androidKt.allowHardware(builder);
            AsyncImageKt.m776SubcomposeAsyncImagenc27qi8(builder.build(), UtilsKt.stringResource(R.string.onboarding_app_languages_title, gapComposer2), m145size3ABfNKs, f49lambda$1745273141, f46lambda$1219168603, null, gapComposer2, 221568, 65480);
            gapComposer2.end(true);
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 24.0f));
            Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(SizeKt.fillMaxWidth(companion, 1.0f), 24.0f, 16.0f);
            String stringResource = UtilsKt.stringResource(R.string.onboarding_app_languages_title, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
            TextStyle textStyle = ((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).headlineMedium;
            FontWeight fontWeight = FontWeight.Medium;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
            TextKt.m308TextNvy7gAk(stringResource, m133paddingVpY3zN4, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, fontWeight, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer, 1572912, 0, 131000);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.onboarding_app_languages_text, gapComposer), OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), 24.0f, RecyclerView.DECELERATION_RATE, 2), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal)).bodyLarge, gapComposer, 48, 0, 131064);
            OffsetKt.Spacer(gapComposer, SizeKt.m140height3ABfNKs(companion, 16.0f));
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 120.0f), 24.0f, RecyclerView.DECELERATION_RATE, 2);
            long j3 = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).inactiveColor;
            m134paddingVpY3zN4$default.getClass();
            rememberLazyListState.getClass();
            Modifier drawWithContent = ClipKt.drawWithContent(m134paddingVpY3zN4$default, new ModifierKt$$ExternalSyntheticLambda2(0, j3, rememberLazyListState));
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
            boolean changedInstance = gapComposer.changedInstance(list) | gapComposer.changedInstance(appLanguageState);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new GamesHubScreenKt$$ExternalSyntheticLambda8(24, list, appLanguageState);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ExceptionsKt.LazyColumn(drawWithContent, rememberLazyListState, null, arrangement$SpacedAligned, null, null, false, null, (Function1) rememberedValue, gapComposer, 24576, 492);
            Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, OffsetKt.m134paddingVpY3zN4$default(companion, 24.0f, RecyclerView.DECELERATION_RATE, 2), null, function0, false);
            MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j4 = gapComposer.compositeKeyHashCode;
            int i5 = (int) (j4 ^ (j4 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, m51clickableoSLSa3U$default);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i5, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            Modifier m134paddingVpY3zN4$default2 = OffsetKt.m134paddingVpY3zN4$default(companion, RecyclerView.DECELERATION_RATE, 24.0f, 1);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.onboarding_app_languages_add_button, gapComposer), m134paddingVpY3zN4$default2, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).progressiveColor, null, 0L, FontWeight.Bold, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal)).bodyLarge, gapComposer, 1572912, 0, 131000);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
            gapComposer2.end(true);
            modifier2 = companion;
        } else {
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda27(modifier2, appLanguageState, list, function0, i);
        }
    }

    public static final void InitialOnboardingScreen(Modifier modifier, List list, AppLanguageState appLanguageState, List list2, Function0 function0, Function0 function02, Function0 function03, GapComposer gapComposer, int i) {
        Modifier modifier2;
        int i2;
        List list3;
        list2.getClass();
        function0.getClass();
        function02.getClass();
        function03.getClass();
        gapComposer.startRestartGroup(107827039);
        if ((i & 6) == 0) {
            modifier2 = modifier;
            i2 = (gapComposer.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i2 = i;
        }
        if ((i & 48) == 0) {
            list3 = list;
            i2 |= gapComposer.changedInstance(list3) ? 32 : 16;
        } else {
            list3 = list;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(appLanguageState) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(list2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changedInstance(function02) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changedInstance(function03) ? 1048576 : 524288;
        }
        if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new ParcelableSnapshotMutableIntState(0);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) rememberedValue;
            CardKt.m270ScaffoldTvnljyQ(modifier2, null, Expect_jvmKt.rememberComposableLambda(77269860, new FeedComponentsKt$$ExternalSyntheticLambda5(context, parcelableSnapshotMutableIntState, list3, function03, function02), gapComposer), null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(1833901742, new SubcomposeAsyncImageKt$$ExternalSyntheticLambda0(list, context, appLanguageState, list2, function0, parcelableSnapshotMutableIntState, 4), gapComposer), gapComposer, (i2 & 14) | 805306752, 442);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda2(modifier, list, appLanguageState, list2, function0, function02, function03, i);
        }
    }
}
