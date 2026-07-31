package org.wikipedia.feed.personalization;

import android.content.Context;
import android.content.Intent;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda7;
import androidx.compose.material3.CardKt;
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
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.font.FontWeight;
import androidx.recyclerview.widget.RecyclerView;
import coil3.compose.AsyncImageKt;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.util.UtilsKt;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import okhttp3.Handshake$Companion$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda6;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda17;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda22;
import org.wikipedia.feed.places.PlacesOfInterestModuleKt$$ExternalSyntheticLambda0;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PersonalizationScreenKt {
    public static final ComposableLambdaImpl lambda$175470717 = new ComposableLambdaImpl(new ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0(3), false, 175470717);
    public static final ComposableLambdaImpl lambda$810472291 = new ComposableLambdaImpl(new ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0(4), false, 810472291);

    /* renamed from: lambda$-1783142722, reason: not valid java name */
    public static final ComposableLambdaImpl f43lambda$1783142722 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(25), false, -1783142722);

    /* renamed from: lambda$-1162847560, reason: not valid java name */
    public static final ComposableLambdaImpl f42lambda$1162847560 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(10), false, -1162847560);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PersonalizationPage.values().length];
            try {
                iArr[PersonalizationPage.CURIOSITY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PersonalizationPage.INTERESTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PersonalizationPage.HOME_PREFERENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void OnboardingBottomBar(DefaultPagerState defaultPagerState, Function0 function0, Function0 function02, GapComposer gapComposer, int i) {
        GapComposer gapComposer2;
        NeverEqualPolicy neverEqualPolicy;
        int i2;
        Modifier.Companion companion;
        boolean z;
        int i3;
        Function0 function03 = function0;
        GapComposer gapComposer3 = gapComposer;
        function03.getClass();
        function02.getClass();
        gapComposer3.startRestartGroup(-2051829200);
        int i4 = i | (gapComposer3.changed(defaultPagerState) ? 4 : 2) | (gapComposer3.changedInstance(function03) ? 32 : 16) | (gapComposer3.changedInstance(function02) ? 256 : 128);
        if (gapComposer3.shouldExecute(i4 & 1, (i4 & 147) != 146)) {
            Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer3, 0);
            long j = gapComposer3.compositeKeyHashCode;
            int i5 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
            Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, companion2);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer3.startReusableNode();
            if (gapComposer3.inserting) {
                gapComposer3.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer3.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer3, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i5);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer3, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer3, materializeModifier, composeUiNode$Companion$SetModifier$14);
            CardKt.m266HorizontalDivider9IZ8Weo(SizeKt.fillMaxWidth(SizeKt.m140height3ABfNKs(companion2, 1.0f), 1.0f), RecyclerView.DECELERATION_RATE, ((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor, gapComposer3, 6, 2);
            Modifier navigationBarsPadding = OffsetKt.navigationBarsPadding(companion2);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer3, 48);
            long j2 = gapComposer3.compositeKeyHashCode;
            int i6 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer3.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer3, navigationBarsPadding);
            gapComposer3.startReusableNode();
            if (gapComposer3.inserting) {
                gapComposer3.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer3.useNode();
            }
            Updater.m327setimpl(gapComposer3, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i6, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer3, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            int pageCount = defaultPagerState.getPageCount();
            NeverEqualPolicy neverEqualPolicy2 = Composer$Companion.Empty;
            boolean z2 = true;
            if (pageCount > 1) {
                gapComposer3.startReplaceGroup(-1102415063);
                boolean z3 = (i4 & 896) == 256;
                Object rememberedValue = gapComposer3.rememberedValue();
                if (z3 || rememberedValue == neverEqualPolicy2) {
                    rememberedValue = new Handshake$$ExternalSyntheticLambda0(16, function02);
                    gapComposer3.updateRememberedValue(rememberedValue);
                }
                CardKt.TextButton((Function0) rememberedValue, SizeKt.wrapContentHeight$default(SizeKt.wrapContentWidth$default(companion2, horizontal, 2), 2), false, null, null, null, f43lambda$1783142722, gapComposer, 805306416, 508);
                neverEqualPolicy = neverEqualPolicy2;
                TabsBoxKt.m899PageIndicatorXDZ_kE(SizeKt.wrapContentHeight$default(Animation.CC.weight$default$1(companion2, 1.0f), 2), defaultPagerState, 0, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 0L, 0L, gapComposer, (i4 << 3) & 112, 124);
                gapComposer2 = gapComposer;
                z = false;
                gapComposer2.end(false);
                z2 = true;
                i2 = 32;
                i3 = 2;
                companion = companion2;
            } else {
                gapComposer2 = gapComposer3;
                neverEqualPolicy = neverEqualPolicy2;
                i2 = 32;
                companion = companion2;
                z = false;
                i3 = 2;
                gapComposer2.startReplaceGroup(-1101696762);
                OffsetKt.Spacer(gapComposer2, Animation.CC.weight$default$1(companion, 1.0f));
                gapComposer2.end(false);
            }
            if ((i4 & 112) == i2) {
                z = z2;
            }
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (z || rememberedValue2 == neverEqualPolicy) {
                function03 = function0;
                rememberedValue2 = new Handshake$$ExternalSyntheticLambda0(17, function03);
                gapComposer2.updateRememberedValue(rememberedValue2);
            } else {
                function03 = function0;
            }
            CardKt.IconButton((Function0) rememberedValue2, SizeKt.wrapContentHeight$default(SizeKt.wrapContentWidth$default(companion, Alignment.Companion.End, i3), i3), false, null, null, f42lambda$1162847560, gapComposer, 1572912, 60);
            gapComposer3 = gapComposer;
            gapComposer3.end(z2);
            gapComposer3.end(z2);
        } else {
            gapComposer3.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer3.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda18(defaultPagerState, function03, function02, i, 13);
        }
    }

    public static final void OnboardingCuriosityScreen(Modifier modifier, GapComposer gapComposer, int i, int i2) {
        Modifier modifier2;
        int i3;
        int i4;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(749733978);
        int i5 = i2 & 1;
        if (i5 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = i | (gapComposer2.changed(modifier2) ? 4 : 2);
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 3) != 2)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier modifier3 = i5 != 0 ? companion : modifier2;
            Modifier then = modifier3.then(SizeKt.FillWholeMaxSize);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(then, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).paperColor, ColorKt.RectangleShape);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.CenterHorizontally, gapComposer2, 48);
            long j = gapComposer2.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m46backgroundbw27NRU);
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
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            OffsetKt.Spacer(gapComposer2, Animation.CC.weight$default(companion, 1.0f));
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(companion, 125.0f);
            ImageRequest.Builder builder = new ImageRequest.Builder((Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext));
            builder.data = Integer.valueOf(R.drawable.yir_puzzle_browser);
            ImageRequests_androidKt.allowHardware(builder);
            AsyncImageKt.m776SubcomposeAsyncImagenc27qi8(builder.build(), UtilsKt.stringResource(R.string.explore_feed_onboarding_curiosity_title, gapComposer2), m145size3ABfNKs, lambda$175470717, lambda$810472291, null, gapComposer2, 221568, 65480);
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 24.0f));
            Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(SizeKt.fillMaxWidth(companion, 1.0f), 24.0f, 16.0f);
            String stringResource = UtilsKt.stringResource(R.string.explore_feed_onboarding_curiosity_title, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
            TextKt.m308TextNvy7gAk(stringResource, m133paddingVpY3zN4, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, FontWeight.Medium, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).headlineMedium, gapComposer, 1572912, 0, 131000);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.explore_feed_onboarding_curiosity_description, gapComposer), OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), 24.0f, RecyclerView.DECELERATION_RATE, 2), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).bodyLarge, gapComposer, 48, 0, 131064);
            gapComposer2 = gapComposer;
            OffsetKt.Spacer(gapComposer2, Animation.CC.weight$default(companion, 1.0f));
            i4 = 1;
            gapComposer2.end(true);
            modifier2 = modifier3;
        } else {
            i4 = 1;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedComponentsKt$$ExternalSyntheticLambda6(modifier2, i, i2, i4);
        }
    }

    public static final void PersonalizationScreen(Modifier modifier, PersonalizationViewModel personalizationViewModel, List list, Function0 function0, Function0 function02, Function0 function03, Function0 function04, GapComposer gapComposer, int i) {
        Modifier modifier2;
        Integer num;
        DefaultPagerState defaultPagerState;
        Map map;
        personalizationViewModel.getClass();
        function0.getClass();
        function02.getClass();
        function03.getClass();
        gapComposer.startRestartGroup(-129556436);
        int i2 = i | 6 | (gapComposer.changedInstance(personalizationViewModel) ? 32 : 16) | (gapComposer.changedInstance(list) ? 256 : 128) | (gapComposer.changedInstance(function0) ? 2048 : 1024) | (gapComposer.changedInstance(function02) ? 16384 : 8192) | (gapComposer.changedInstance(function03) ? 131072 : 65536) | (gapComposer.changedInstance(function04) ? 1048576 : 524288);
        if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (rememberedValue == obj) {
                rememberedValue = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CoroutineScope coroutineScope = (CoroutineScope) rememberedValue;
            MutableState collectAsState = Updater.collectAsState(personalizationViewModel.interestUiState, gapComposer);
            MutableState collectAsState2 = Updater.collectAsState(personalizationViewModel.feedPreferenceUiState, gapComposer);
            boolean changedInstance = gapComposer.changedInstance(list);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == obj) {
                rememberedValue2 = new Handshake$Companion$$ExternalSyntheticLambda0(list, 5);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            DefaultPagerState rememberPagerState = PagerStateKt.rememberPagerState((Function0) rememberedValue2, gapComposer, 0, 3);
            Map mapOf = MapsKt__MapsKt.mapOf(new Pair(PersonalizationPage.CURIOSITY, "feed_entry"), new Pair(PersonalizationPage.INTERESTS, "feed_customize"), new Pair(PersonalizationPage.HOME_PREFERENCE, "feed_order_customize"));
            Integer valueOf = Integer.valueOf(rememberPagerState.getCurrentPage());
            boolean changedInstance2 = gapComposer.changedInstance(context) | gapComposer.changedInstance(list) | gapComposer.changed(rememberPagerState) | gapComposer.changedInstance(personalizationViewModel);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue3 == obj) {
                num = valueOf;
                defaultPagerState = rememberPagerState;
                map = mapOf;
                rememberedValue3 = new BringIntoViewResponderNode$bringIntoView$2(context, map, list, defaultPagerState, personalizationViewModel, null);
                gapComposer.updateRememberedValue(rememberedValue3);
            } else {
                num = valueOf;
                defaultPagerState = rememberPagerState;
                map = mapOf;
            }
            Updater.LaunchedEffect(gapComposer, num, (Function2) rememberedValue3);
            Map map2 = map;
            DefaultPagerState defaultPagerState2 = defaultPagerState;
            CardKt.m270ScaffoldTvnljyQ(null, null, Expect_jvmKt.rememberComposableLambda(1217467399, new HomeScreenKt$$ExternalSyntheticLambda22(defaultPagerState2, context, list, coroutineScope, function02, function0, map2), gapComposer), null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(-1827792771, new PlacesOfInterestModuleKt$$ExternalSyntheticLambda0(defaultPagerState2, list, collectAsState, context, personalizationViewModel, function03, function04, collectAsState2, map2), gapComposer), gapComposer, 805306752, 443);
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda22(modifier2, personalizationViewModel, list, function0, function02, function03, function04, i);
        }
    }

    public static Intent newIntent(Context context) {
        context.getClass();
        Intent putExtra = new Intent(context, (Class<?>) PersonalizationActivity.class).putExtra("show_interests_only", true);
        putExtra.getClass();
        return putExtra;
    }
}
