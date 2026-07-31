package org.wikipedia.compose.components;

import android.content.Context;
import android.content.Intent;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.ChangeSize;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransitionImpl;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.animation.Fade;
import androidx.compose.animation.Scale;
import androidx.compose.animation.TransitionData;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ImageKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.AutoSizeStepBased;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.InlineTextContent;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda7;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardColors;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.RippleKt;
import androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.ParcelableSnapshotMutableLongState;
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
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.AndroidUriHandler;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Dp;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.RealImageLoader$execute$2;
import coil3.compose.AsyncImageKt;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.CoroutineContextKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.compose.theme.WikipediaThemeKt$$ExternalSyntheticLambda1;
import org.wikipedia.donate.DonateDialog$onCreateView$3;
import org.wikipedia.feed.ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda5;
import org.wikipedia.feed.FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda5;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda30;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda8;
import org.wikipedia.feed.HomeViewModel$loadCommunityContent$1;
import org.wikipedia.feed.news.NewsModuleKt$$ExternalSyntheticLambda2;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda6;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda12;
import org.wikipedia.search.HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda9;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda0;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda2;
import org.wikipedia.settings.LicenseActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TabsBoxKt {

    /* renamed from: lambda$-1241504182, reason: not valid java name */
    public static final ComposableLambdaImpl f25lambda$1241504182;

    /* renamed from: lambda$-1260496663, reason: not valid java name */
    public static final ComposableLambdaImpl f26lambda$1260496663;

    /* renamed from: lambda$-1520544837, reason: not valid java name */
    public static final ComposableLambdaImpl f27lambda$1520544837;
    public static final ComposableLambdaImpl lambda$1491806916;
    public static final ComposableLambdaImpl lambda$1588432780;
    public static final ComposableLambdaImpl lambda$1632420701;
    public static final ComposableLambdaImpl lambda$207530180;
    public static final ComposableLambdaImpl lambda$1812903265 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(10), false, 1812903265);
    public static final ComposableLambdaImpl lambda$1536430504 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(11), false, 1536430504);

    static {
        new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(12), false, -2052551004);
        new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(15), false, -1112028355);
        lambda$1632420701 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(13), false, 1632420701);
        new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(14), false, 1117938265);
        new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(16), false, 824158834);
        lambda$1491806916 = new ComposableLambdaImpl(new ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0(2), false, 1491806916);
        new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(17), false, -416663714);
        f27lambda$1520544837 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(15), false, -1520544837);
        lambda$1588432780 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(18), false, 1588432780);
        f26lambda$1260496663 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(16), false, -1260496663);
        f25lambda$1241504182 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(17), false, -1241504182);
        lambda$207530180 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(18), false, 207530180);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0064  */
    /* renamed from: AppButton-t6yy7ic, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m895AppButtont6yy7ic(final kotlin.jvm.functions.Function0 r22, androidx.compose.ui.Modifier r23, long r24, long r26, final kotlin.jvm.functions.Function2 r28, androidx.compose.runtime.GapComposer r29, final int r30, final int r31) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.compose.components.TabsBoxKt.m895AppButtont6yy7ic(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, long, long, kotlin.jvm.functions.Function2, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void ArticleCard(Modifier modifier, PageTitle pageTitle, boolean z, Function1 function1, GapComposer gapComposer, int i) {
        long j;
        modifier.getClass();
        pageTitle.getClass();
        gapComposer.startRestartGroup(319166966);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changedInstance(pageTitle) ? 32 : 16) | (gapComposer.changed(z) ? 256 : 128) | (gapComposer.changedInstance(function1) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(modifier, 1.0f);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            BorderStroke m45BorderStrokecXLIe8U = ImageKt.m45BorderStrokecXLIe8U(1.0f, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor);
            if (z) {
                gapComposer.startReplaceGroup(1776790275);
                j = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).additionColor;
            } else {
                gapComposer.startReplaceGroup(1776791584);
                j = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor;
            }
            gapComposer.end(false);
            CardColors m274cardColorsro_MJ88 = CardKt.m274cardColorsro_MJ88(j, 0L, gapComposer, 0, 14);
            RoundedCornerShape m177RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f);
            boolean changedInstance = gapComposer.changedInstance(pageTitle) | ((i2 & 7168) == 2048);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new ForYouCardKt$$ExternalSyntheticLambda5(function1, pageTitle, 2);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            m902WikiCardjfnsLPA(fillMaxWidth, RecyclerView.DECELERATION_RATE, m274cardColorsro_MJ88, m45BorderStrokecXLIe8U, (Function0) rememberedValue, m177RoundedCornerShape0680j_4, Expect_jvmKt.rememberComposableLambda(1995414307, new ArticleCardKt$$ExternalSyntheticLambda1(pageTitle, z), gapComposer), gapComposer, 1572912, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GamesHubScreenKt$$ExternalSyntheticLambda6(modifier, pageTitle, z, function1, i);
        }
    }

    /* renamed from: CircleWithNumber-FNF3uiM, reason: not valid java name */
    public static final void m896CircleWithNumberFNF3uiM(int i, Modifier modifier, long j, GapComposer gapComposer, int i2) {
        GapComposer gapComposer2;
        long j2;
        Modifier modifier2;
        long j3;
        gapComposer.startRestartGroup(-902314037);
        int i3 = i2 | (gapComposer.changed(i) ? 4 : 2) | 176;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            gapComposer.startDefaults();
            if ((i2 & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                long j4 = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).destructiveColor;
                modifier2 = Modifier.Companion.$$INSTANCE;
                j3 = j4;
            } else {
                gapComposer.skipToGroupEnd();
                modifier2 = modifier;
                j3 = j;
            }
            gapComposer.endDefaults();
            String valueOf = String.valueOf(Math.min(i, 99));
            Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(ClipKt.clip(SizeKt.m145size3ABfNKs(modifier2, 20.0f), RoundedCornerShapeKt.CircleShape), j3, ColorKt.RectangleShape);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j5 = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j5 ^ (j5 >>> 32));
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
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            modifier = modifier2;
            TextKt.m308TextNvy7gAk(valueOf, null, Color.White, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer, 384, 0, 131066);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
            j2 = j3;
        } else {
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
            j2 = j;
        }
        Modifier modifier3 = modifier;
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NotificationBellKt$$ExternalSyntheticLambda2(i, modifier3, j2, i2);
        }
    }

    public static final void FadeInAsyncImage(final Object obj, final String str, Modifier modifier, final ContentScale contentScale, final Painter painter, final Painter painter2, int i, int i2, GapComposer gapComposer, final int i3) {
        Modifier modifier2;
        final int i4;
        final int i5;
        gapComposer.startRestartGroup(-1402293610);
        int i6 = i3 | (gapComposer.changedInstance(obj) ? 4 : 2);
        if ((i3 & 48) == 0) {
            i6 |= gapComposer.changed(str) ? 32 : 16;
        }
        int i7 = i6 | (gapComposer.changedInstance(painter) ? 16384 : 8192) | (gapComposer.changedInstance(painter2) ? 131072 : 65536) | 14155776;
        if (gapComposer.shouldExecute(i7 & 1, (4793491 & i7) != 4793490)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new ParcelableSnapshotMutableFloatState(RecyclerView.DECELERATION_RATE);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = (ParcelableSnapshotMutableFloatState) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new ParcelableSnapshotMutableLongState(System.currentTimeMillis());
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            ParcelableSnapshotMutableLongState parcelableSnapshotMutableLongState = (ParcelableSnapshotMutableLongState) rememberedValue2;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            MutableState mutableState = (MutableState) rememberedValue3;
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            MutableState mutableState2 = (MutableState) rememberedValue4;
            Boolean bool = (Boolean) mutableState2.getValue();
            bool.getClass();
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (rememberedValue5 == neverEqualPolicy) {
                rememberedValue5 = new RealImageLoader$execute$2(mutableState2, mutableState, parcelableSnapshotMutableFloatState, null, 11);
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            Updater.LaunchedEffect(gapComposer, bool, (Function2) rememberedValue5);
            Object rememberedValue6 = gapComposer.rememberedValue();
            int i8 = 3;
            if (rememberedValue6 == neverEqualPolicy) {
                rememberedValue6 = new MainActivity$$ExternalSyntheticLambda1(i8, parcelableSnapshotMutableFloatState);
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            modifier2 = modifier;
            Modifier graphicsLayer = ColorKt.graphicsLayer(modifier2, (Function1) rememberedValue6);
            Object rememberedValue7 = gapComposer.rememberedValue();
            if (rememberedValue7 == neverEqualPolicy) {
                rememberedValue7 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda12(mutableState2, mutableState, 1);
                gapComposer.updateRememberedValue(rememberedValue7);
            }
            Function1 function1 = (Function1) rememberedValue7;
            Object rememberedValue8 = gapComposer.rememberedValue();
            if (rememberedValue8 == neverEqualPolicy) {
                rememberedValue8 = new UtilsKt$$ExternalSyntheticLambda1(mutableState2, parcelableSnapshotMutableLongState, mutableState, 19);
                gapComposer.updateRememberedValue(rememberedValue8);
            }
            int i9 = (i7 & 14) | 1572864 | (i7 & 112) | 4096;
            int i10 = i7 >> 3;
            AsyncImageKt.m774AsyncImagex1rPTaM(obj, str, graphicsLayer, painter, painter2, function1, (Function1) rememberedValue8, contentScale, gapComposer, (i10 & 57344) | i9 | (i10 & 7168) | 32768, 6, 31520);
            i4 = 500;
            i5 = 250;
        } else {
            modifier2 = modifier;
            gapComposer.skipToGroupEnd();
            i4 = i;
            i5 = i2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            final Modifier modifier3 = modifier2;
            endRestartGroup.block = new Function2() { // from class: org.wikipedia.compose.components.FadeInAsyncImageKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    TabsBoxKt.FadeInAsyncImage(obj, str, modifier3, contentScale, painter, painter2, i4, i5, (GapComposer) obj2, Updater.updateChangedFlags(i3 | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0137 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0160  */
    /* renamed from: HtmlText-KiACRJU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m897HtmlTextKiACRJU(final java.lang.String r52, androidx.compose.ui.Modifier r53, androidx.compose.ui.text.TextLinkStyles r54, androidx.compose.ui.text.TextStyle r55, long r56, int r58, int r59, long r60, androidx.compose.ui.text.LinkInteractionListener r62, kotlin.jvm.functions.Function2 r63, int r64, androidx.compose.runtime.GapComposer r65, final int r66, final int r67) {
        /*
            Method dump skipped, instructions count: 901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.compose.components.TabsBoxKt.m897HtmlTextKiACRJU(java.lang.String, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextLinkStyles, androidx.compose.ui.text.TextStyle, long, int, int, long, androidx.compose.ui.text.LinkInteractionListener, kotlin.jvm.functions.Function2, int, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v21, types: [androidx.compose.runtime.internal.ComposableLambdaImpl] */
    public static final void InstallWidgetScreen(String str, String str2, Function0 function0, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, ComposableLambdaImpl composableLambdaImpl2, GapComposer gapComposer, int i) {
        int i2;
        ComposableLambdaImpl composableLambdaImpl3;
        ComposableLambdaImpl composableLambdaImpl4;
        Modifier modifier2;
        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1;
        GapComposer gapComposer2 = gapComposer;
        str.getClass();
        str2.getClass();
        function0.getClass();
        gapComposer2.startRestartGroup(770855739);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(str2) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changedInstance(function0) ? 256 : 128;
        }
        int i3 = i2 | 24576;
        if (gapComposer2.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(OffsetKt.navigationBarsPadding(companion), 1.0f), 16.0f, 24.0f, 16.0f, RecyclerView.DECELERATION_RATE, 8);
            Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m136paddingqDBjuR0$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$12);
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
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            BiasAlignment biasAlignment = Alignment.Companion.TopStart;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, fillMaxWidth);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$12);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            Modifier m136paddingqDBjuR0$default2 = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 40.0f, RecyclerView.DECELERATION_RATE, 11);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
            TextStyle m647copyp1EtxEg$default = TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).titleLarge, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
            TextKt.m308TextNvy7gAk(str, m136paddingqDBjuR0$default2, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, m647copyp1EtxEg$default, gapComposer, (i3 & 14) | 48, 0, 131064);
            BiasAlignment biasAlignment2 = Alignment.Companion.TopEnd;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            CardKt.IconButton(function0, OffsetKt.m130offsetVpY3zN4(boxScopeInstance.align(companion, biasAlignment2), 10.0f, -12.0f), false, null, null, lambda$1812903265, gapComposer, ((i3 >> 6) & 14) | 1572864, 60);
            gapComposer.end(true);
            OffsetKt.Spacer(gapComposer, SizeKt.m140height3ABfNKs(companion, 8.0f));
            Modifier scroll$default = ImageKt.scroll$default(companion, ImageKt.rememberScrollState(gapComposer), true);
            ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer, 0);
            long j3 = gapComposer.compositeKeyHashCode;
            int i6 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, scroll$default);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i6, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = layoutNode$Companion$Constructor$1;
            TextKt.m308TextNvy7gAk(str2, SizeKt.fillMaxWidth(companion, 1.0f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal)).bodyLarge, gapComposer, ((i3 >> 3) & 14) | 48, 0, 131064);
            gapComposer2 = gapComposer;
            Modifier clip = ClipKt.clip(SizeKt.fillMaxWidth(SizeKt.m140height3ABfNKs(OffsetKt.m134paddingVpY3zN4$default(companion, RecyclerView.DECELERATION_RATE, 12.0f, 1), 190.0f), 1.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(12.0f));
            MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            long j4 = gapComposer2.compositeKeyHashCode;
            int i7 = (int) (j4 ^ (j4 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer2, clip);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$13);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i7, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier4, composeUiNode$Companion$SetModifier$14);
            ?? r1 = composableLambdaImpl2;
            r1.invoke(boxScopeInstance, gapComposer2, 54);
            gapComposer2.end(true);
            composableLambdaImpl3 = composableLambdaImpl;
            composableLambdaImpl3.invoke((Object) gapComposer2, (Object) 6);
            gapComposer2.end(true);
            gapComposer2.end(true);
            modifier2 = companion;
            composableLambdaImpl4 = r1;
        } else {
            composableLambdaImpl3 = composableLambdaImpl;
            composableLambdaImpl4 = composableLambdaImpl2;
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda3(str, str2, function0, composableLambdaImpl3, modifier2, composableLambdaImpl4, i);
        }
    }

    public static final void LicenseLinkText(int i, GapComposer gapComposer, Modifier modifier, List list) {
        int i2;
        Modifier modifier2;
        list.getClass();
        gapComposer.startRestartGroup(1538356510);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(list) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = i2 | 48;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            final Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            final AndroidUriHandler androidUriHandler = (AndroidUriHandler) gapComposer.consume(CompositionLocalsKt.LocalUriHandler);
            gapComposer.startReplaceGroup(891863639);
            AnnotatedString.Builder builder = new AnnotatedString.Builder();
            gapComposer.startReplaceGroup(891864780);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                final LinkTextData linkTextData = (LinkTextData) it.next();
                String str = linkTextData.url;
                if (str == null) {
                    str = "";
                }
                TextLinkStyles textLinkStyles = new TextLinkStyles(new SpanStyle(((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65534), null, null, null);
                boolean changed = gapComposer.changed(linkTextData) | gapComposer.changedInstance(context) | gapComposer.changedInstance(androidUriHandler);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == Composer$Companion.Empty) {
                    rememberedValue = new LinkInteractionListener() { // from class: org.wikipedia.compose.components.LicenseLinkTextKt$$ExternalSyntheticLambda0
                        @Override // androidx.compose.ui.text.LinkInteractionListener
                        public final void onClick(LinkAnnotation linkAnnotation) {
                            linkAnnotation.getClass();
                            LinkTextData linkTextData2 = LinkTextData.this;
                            String str2 = linkTextData2.asset;
                            if (str2 != null) {
                                Context context2 = context;
                                Intent intent = new Intent(context2, (Class<?>) LicenseActivity.class);
                                intent.putExtra("asset", str2);
                                context2.startActivity(intent);
                                return;
                            }
                            String str3 = linkTextData2.url;
                            if (str3 == null) {
                                str3 = "";
                            }
                            androidUriHandler.openUri(str3);
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                AnnotatedString.Builder.MutableRange mutableRange = new AnnotatedString.Builder.MutableRange(new LinkAnnotation.Url(str, textLinkStyles, (LinkInteractionListener) rememberedValue), builder.text.length(), 0, 12);
                ArrayList arrayList = builder.styleStack;
                arrayList.add(mutableRange);
                builder.annotations.add(mutableRange);
                int size = arrayList.size() - 1;
                try {
                    builder.append(linkTextData.text);
                    builder.pop(size);
                    builder.append(" ");
                } catch (Throwable th) {
                    builder.pop(size);
                    throw th;
                }
            }
            gapComposer.end(false);
            AnnotatedString annotatedString = builder.toAnnotatedString();
            gapComposer.end(false);
            modifier2 = Modifier.Companion.$$INSTANCE;
            TextKt.m309TextZ58ophY(annotatedString, modifier2, 0L, 0L, null, 0L, null, 0L, 0, false, 0, 0, null, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodyMedium, gapComposer, i3 & 112, 0, 262140);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda2(i, 1, modifier2, list);
        }
    }

    /* renamed from: LineChart-xfPyhaw, reason: not valid java name */
    public static final void m898LineChartxfPyhaw(Map map, Modifier modifier, int i, final float f, final long j, GapComposer gapComposer, int i2) {
        Modifier modifier2;
        int i3;
        RecomposeScopeImpl endRestartGroup;
        LineChartKt$$ExternalSyntheticLambda0 lineChartKt$$ExternalSyntheticLambda0;
        map.getClass();
        gapComposer.startRestartGroup(1514429854);
        int i4 = i2 | (gapComposer.changedInstance(map) ? 4 : 2) | (gapComposer.changed(j) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 9363) != 9362)) {
            gapComposer.startDefaults();
            if ((i2 & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            if (map.isEmpty()) {
                endRestartGroup = gapComposer.endRestartGroup();
                if (endRestartGroup != null) {
                    lineChartKt$$ExternalSyntheticLambda0 = new LineChartKt$$ExternalSyntheticLambda0(map, modifier, i, f, j, i2, 0);
                    endRestartGroup.block = lineChartKt$$ExternalSyntheticLambda0;
                }
                return;
            }
            i3 = i;
            List sortedWith = CollectionsKt.sortedWith(map.entrySet(), new DiffUtil.AnonymousClass1(20));
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(sortedWith, 10));
            Iterator it = sortedWith.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((Number) ((Map.Entry) it.next()).getValue()).intValue()));
            }
            if (arrayList.size() > i3) {
                int size = arrayList.size() / i3;
                ArrayList windowed = CollectionsKt.windowed(arrayList, size, size);
                arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(windowed, 10));
                Iterator it2 = windowed.iterator();
                while (it2.hasNext()) {
                    List list = (List) it2.next();
                    list.getClass();
                    Iterator it3 = list.iterator();
                    double d = 0.0d;
                    int i5 = 0;
                    while (it3.hasNext()) {
                        d += ((Number) it3.next()).intValue();
                        i5++;
                        if (i5 < 0) {
                            Room.throwCountOverflow();
                            throw null;
                        }
                    }
                    arrayList.add(Integer.valueOf((int) (i5 == 0 ? Double.NaN : d / i5)));
                }
            }
            Integer num = (Integer) CollectionsKt.maxOrNull(arrayList);
            final int max = Math.max(num != null ? num.intValue() : 1, 1);
            boolean changedInstance = gapComposer.changedInstance(arrayList) | gapComposer.changed(max) | ((((57344 & i4) ^ 24576) > 16384 && gapComposer.changed(j)) || (i4 & 24576) == 16384);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                final ArrayList arrayList2 = arrayList;
                Object obj = new Function1() { // from class: org.wikipedia.compose.components.LineChartKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        DrawScope drawScope = (DrawScope) obj2;
                        drawScope.getClass();
                        float intBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() >> 32));
                        float intBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() & 4294967295L));
                        ArrayList arrayList3 = arrayList2;
                        float size2 = intBitsToFloat / (arrayList3.size() - 1);
                        float f2 = intBitsToFloat2 / max;
                        AndroidPath Path = AndroidPath_androidKt.Path();
                        Path.internalPath.moveTo(RecyclerView.DECELERATION_RATE, intBitsToFloat2 - (((Number) CollectionsKt.first((List) arrayList3)).intValue() * f2));
                        Iterator it4 = arrayList3.iterator();
                        int i6 = 0;
                        while (it4.hasNext()) {
                            int intValue = ((Number) it4.next()).intValue();
                            if (i6 == 0) {
                                i6++;
                            } else {
                                Path.lineTo(i6 * size2, intBitsToFloat2 - (intValue * f2));
                                i6++;
                            }
                        }
                        Modifier.CC.m348drawPathLG529CI$default(drawScope, Path, j, RecyclerView.DECELERATION_RATE, new Stroke(drawScope.mo87toPx0680j_4(f), RecyclerView.DECELERATION_RATE, 1, 0, 26), 52);
                        return Unit.INSTANCE;
                    }
                };
                gapComposer.updateRememberedValue(obj);
                rememberedValue = obj;
            }
            modifier2 = modifier;
            ImageKt.Canvas(modifier2, (Function1) rememberedValue, gapComposer, 6);
        } else {
            modifier2 = modifier;
            i3 = i;
            gapComposer.skipToGroupEnd();
        }
        endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            lineChartKt$$ExternalSyntheticLambda0 = new LineChartKt$$ExternalSyntheticLambda0(map, modifier2, i3, f, j, i2, 1);
            endRestartGroup.block = lineChartKt$$ExternalSyntheticLambda0;
        }
    }

    public static final void ListItemSkeletonLoader(Modifier modifier, List list, InfiniteTransition infiniteTransition, GapComposer gapComposer, int i) {
        Modifier modifier2;
        gapComposer.startRestartGroup(-227461981);
        int i2 = i | (gapComposer.changedInstance(list) ? 32 : 16) | (gapComposer.changedInstance(infiniteTransition) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(12.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer, 6);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            modifier2 = modifier;
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier2);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            LayoutWeightElement m = ViewSizeResolver$CC.m(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14, 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer, 6);
            long j2 = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            BoxKt.Box(Jsoup.shimmerEffect$default(ClipKt.clip(SizeKt.fillMaxWidth(SizeKt.m140height3ABfNKs(companion, 16.0f), 0.5f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(4.0f)), list, infiniteTransition, 6), gapComposer, 0);
            BoxKt.Box(Jsoup.shimmerEffect$default(ClipKt.clip(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(4.0f)), list, infiniteTransition, 6), gapComposer, 0);
            gapComposer.end(true);
            BoxKt.Box(Jsoup.shimmerEffect$default(ClipKt.clip(SizeKt.m145size3ABfNKs(companion, 52.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f)), list, infiniteTransition, 6), gapComposer, 0);
            gapComposer.end(true);
        } else {
            modifier2 = modifier;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda9(modifier2, list, infiniteTransition, i, 1);
        }
    }

    public static final void NotificationBell(final int i, Function0 function0, Modifier modifier, int i2, GapComposer gapComposer, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        Object homeViewModel$loadCommunityContent$1;
        Animatable animatable;
        GapComposer gapComposer2 = gapComposer;
        function0.getClass();
        gapComposer2.startRestartGroup(-9298374);
        if ((i3 & 6) == 0) {
            i4 = (gapComposer2.changed(i) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposer2.changedInstance(function0) ? 32 : 16;
        }
        if ((i3 & 384) == 0) {
            i4 |= gapComposer2.changed(modifier) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= 1024;
        }
        if (gapComposer2.shouldExecute(i4 & 1, (i4 & 1171) != 1170)) {
            gapComposer2.startDefaults();
            if ((i3 & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                i6 = i4 & (-7169);
                i7 = R.drawable.ic_notifications_black_24dp;
            } else {
                gapComposer2.skipToGroupEnd();
                i6 = i4 & (-7169);
                i7 = i2;
            }
            gapComposer2.endDefaults();
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = ArcSplineKt.Animatable$default(1.0f);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            Animatable animatable2 = (Animatable) rememberedValue;
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new ParcelableSnapshotMutableIntState(i);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) rememberedValue2;
            Integer valueOf = Integer.valueOf(i);
            boolean changedInstance = ((i6 & 14) == 4) | gapComposer2.changedInstance(animatable2);
            Object rememberedValue3 = gapComposer2.rememberedValue();
            Continuation continuation = null;
            if (changedInstance || rememberedValue3 == neverEqualPolicy) {
                animatable = animatable2;
                homeViewModel$loadCommunityContent$1 = new HomeViewModel$loadCommunityContent$1(i, animatable, parcelableSnapshotMutableIntState, continuation, 2);
                gapComposer2.updateRememberedValue(homeViewModel$loadCommunityContent$1);
            } else {
                homeViewModel$loadCommunityContent$1 = rememberedValue3;
                animatable = animatable2;
            }
            Updater.LaunchedEffect(gapComposer2, valueOf, (Function2) homeViewModel$loadCommunityContent$1);
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(modifier, 48.0f);
            Object rememberedValue4 = gapComposer2.rememberedValue();
            if (rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = new MutableInteractionSourceImpl();
                gapComposer2.updateRememberedValue(rememberedValue4);
            }
            Modifier m439graphicsLayer_6ThJ44$default = ColorKt.m439graphicsLayer_6ThJ44$default(ImageKt.m50clickableO2vRcR0$default(m145size3ABfNKs, (MutableInteractionSourceImpl) rememberedValue4, RippleKt.m294rippleH2RKhps$default(RecyclerView.DECELERATION_RATE, 6, false), false, null, function0, 28), ((Number) animatable.getValue()).floatValue(), ((Number) animatable.getValue()).floatValue(), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, null, 524284);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j = gapComposer2.compositeKeyHashCode;
            int i8 = (int) ((j >>> 32) ^ j);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m439graphicsLayer_6ThJ44$default);
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
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Painter painterResource = UnsignedKt.painterResource(i7, 0, gapComposer2);
            long j2 = ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            int i9 = i7;
            IconKt.m286Iconww6aTOc(painterResource, null, SizeKt.m145size3ABfNKs(companion, 24.0f), j2, gapComposer2, 440, 0);
            CrossfadeKt.AnimatedVisibility(i > 0, OffsetKt.m130offsetVpY3zN4(BoxScopeInstance.INSTANCE.align(companion, Alignment.Companion.TopEnd), -6.0f, 6.0f), EnterExitTransitionKt.m17scaleInL8ZKhE$default(null, 7).plus(EnterExitTransitionKt.fadeIn$default(null, 3)), new ExitTransitionImpl(new TransitionData((Fade) null, (ChangeSize) null, new Scale(RecyclerView.DECELERATION_RATE, TransformOrigin.Center, ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, null, 5)), (LinkedHashMap) null, 119)).plus(EnterExitTransitionKt.fadeOut$default(null, 3)), null, Expect_jvmKt.rememberComposableLambda(-1323928548, new Function3() { // from class: org.wikipedia.compose.components.NotificationBellKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    ((AnimatedVisibilityScope) obj).getClass();
                    TabsBoxKt.m896CircleWithNumberFNF3uiM(i, null, 0L, (GapComposer) obj2, 0);
                    return Unit.INSTANCE;
                }
            }, gapComposer2), gapComposer2, 200064, 16);
            gapComposer2 = gapComposer2;
            gapComposer2.end(true);
            i5 = i9;
        } else {
            gapComposer2.skipToGroupEnd();
            i5 = i2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NotificationBellKt$$ExternalSyntheticLambda1(i, function0, modifier, i5, i3);
        }
    }

    public static final void OnboardingListItem(Modifier modifier, OnboardingItem onboardingItem, GapComposer gapComposer, int i, int i2) {
        Modifier modifier2;
        int i3;
        GapComposer gapComposer2 = gapComposer;
        onboardingItem.getClass();
        gapComposer2.startRestartGroup(1685717295);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = i | (gapComposer2.changed(modifier2) ? 4 : 2);
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        int i5 = i3 | (gapComposer2.changed(onboardingItem) ? 32 : 16);
        if (gapComposer2.shouldExecute(i5 & 1, (i5 & 19) != 18)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (i4 != 0) {
                modifier2 = companion;
            }
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.Top, gapComposer2, 48);
            long j = gapComposer2.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, modifier2);
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
            Integer valueOf = Integer.valueOf(i6);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 2.5f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
            Painter painterResource = UnsignedKt.painterResource(onboardingItem.icon, 0, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            Modifier modifier3 = modifier2;
            IconKt.m286Iconww6aTOc(painterResource, null, m136paddingqDBjuR0$default, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, gapComposer2, 440, 0);
            OffsetKt.Spacer(gapComposer2, SizeKt.m149width3ABfNKs(companion, 12.0f));
            LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(4.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer2, 6);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i7 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, layoutWeightElement);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i7, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            String stringResource = UtilsKt.stringResource(onboardingItem.title, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
            TextKt.m308TextNvy7gAk(stringResource, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).titleMedium, 0L, 0L, FontWeight.SemiBold, null, 0L, 0L, null, 16777211), gapComposer, 0, 0, 131066);
            String str = onboardingItem.subtitleString;
            if (str == null) {
                gapComposer.startReplaceGroup(1574623878);
                str = UtilsKt.stringResource(onboardingItem.subTitle, gapComposer);
            } else {
                gapComposer.startReplaceGroup(1574623165);
            }
            gapComposer.end(false);
            TextKt.m308TextNvy7gAk(str, null, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).bodyMedium, gapComposer, 0, 0, 131066);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
            gapComposer2.end(true);
            modifier2 = modifier3;
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new WikipediaThemeKt$$ExternalSyntheticLambda1(modifier2, onboardingItem, i, i2, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x006c  */
    /* renamed from: PageIndicator-X-DZ_kE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m899PageIndicatorXDZ_kE(final androidx.compose.ui.Modifier r18, final androidx.compose.foundation.pager.PagerState r19, int r20, float r21, float r22, long r23, long r25, androidx.compose.runtime.GapComposer r27, final int r28, final int r29) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.compose.components.TabsBoxKt.m899PageIndicatorXDZ_kE(androidx.compose.ui.Modifier, androidx.compose.foundation.pager.PagerState, int, float, float, long, long, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void SearchBarCard(Modifier modifier, String str, Function0 function0, GapComposer gapComposer, int i) {
        Modifier modifier2;
        GapComposer gapComposer2 = gapComposer;
        str.getClass();
        function0.getClass();
        gapComposer2.startRestartGroup(1946348843);
        int i2 = i | 6 | (gapComposer2.changed(str) ? 32 : 16) | (gapComposer2.changedInstance(function0) ? 256 : 128);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier clip = ClipKt.clip(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 56.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(28.0f));
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, ImageKt.m46backgroundbw27NRU(clip, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).backgroundColor, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(24.0f)), null, function0, false);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer2, 48);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m51clickableoSLSa3U$default);
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
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            OffsetKt.Spacer(gapComposer2, SizeKt.m149width3ABfNKs(companion, 16.0f));
            IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.outline_search_24, 0, gapComposer2), UtilsKt.stringResource(R.string.search_hint, gapComposer2), SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).secondaryColor, gapComposer2, 392, 0);
            TextKt.m308TextNvy7gAk(str, OffsetKt.m136paddingqDBjuR0$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, 10), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer, ((i2 >> 3) & 14) | 48, 0, 131064);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
            modifier2 = companion;
        } else {
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda18(modifier2, str, function0, i, 10);
        }
    }

    public static final void SearchEmptyView(int i, GapComposer gapComposer, Modifier modifier, String str) {
        String str2;
        int i2;
        GapComposer gapComposer2 = gapComposer;
        str.getClass();
        gapComposer2.startRestartGroup(-1204588289);
        int i3 = i | (gapComposer2.changed(str) ? 32 : 16);
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Center, Alignment.Companion.CenterHorizontally, gapComposer2, 54);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) ((j >>> 32) ^ j);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
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
            Modifier clip = ClipKt.clip(SizeKt.m142requiredSize3ABfNKs(companion, 96.0f), RoundedCornerShapeKt.CircleShape);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.outline_search_24, 0, gapComposer2), null, OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(clip, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).backgroundColor, ColorKt.RectangleShape), 20.0f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).placeholderColor, gapComposer2, 56, 0);
            i2 = 1;
            str2 = str;
            TextKt.m308TextNvy7gAk(str2, OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 4.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).placeholderColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer, ((i3 >> 3) & 14) | 48, 0, 131064);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
        } else {
            str2 = str;
            i2 = 1;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3(modifier, str2, i, i2);
        }
    }

    public static final void SearchTopAppBar(Modifier modifier, String str, String str2, Function1 function1, Function0 function0, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        Modifier modifier2;
        GapComposer gapComposer2 = gapComposer;
        str.getClass();
        str2.getClass();
        function1.getClass();
        function0.getClass();
        gapComposer2.startRestartGroup(1206320471);
        int i2 = i | 6 | (gapComposer2.changed(str) ? 32 : 16) | (gapComposer2.changed(str2) ? 256 : 128) | (gapComposer2.changedInstance(function1) ? 2048 : 1024) | (gapComposer2.changedInstance(function0) ? 16384 : 8192);
        int i3 = 1;
        if (gapComposer2.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new FocusRequester();
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            FocusRequester focusRequester = (FocusRequester) rememberedValue;
            Context context = (Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier focusRequester2 = FocusTraversalKt.focusRequester(SizeKt.fillMaxWidth(companion, 1.0f), focusRequester);
            float f = TopAppBarDefaults.TopAppBarExpandedHeight;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            AppBarKt.m257TopAppBarGHTll3U(Expect_jvmKt.rememberComposableLambda(1900221211, new RandomScreenKt$$ExternalSyntheticLambda18((Object) str, function1, (Serializable) str2, 11), gapComposer2), focusRequester2, Expect_jvmKt.rememberComposableLambda(-23029219, new WikiTopAppBarKt$$ExternalSyntheticLambda1(context, function0, i3), gapComposer2), composableLambdaImpl, RecyclerView.DECELERATION_RATE, null, TopAppBarDefaults.m311topAppBarColors5tl4gsc(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).paperColor, 0L, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, gapComposer2, 54), null, gapComposer, 3462, 176);
            gapComposer2 = gapComposer;
            boolean changedInstance = gapComposer2.changedInstance(context);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new DonateDialog$onCreateView$3.AnonymousClass1(context, focusRequester, null, 13);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(gapComposer2, Unit.INSTANCE, (Function2) rememberedValue2);
            modifier2 = companion;
        } else {
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NewsModuleKt$$ExternalSyntheticLambda2(modifier2, str, str2, function1, function0, composableLambdaImpl, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void SettingsRow(java.lang.String r57, androidx.compose.ui.Modifier r58, java.lang.String r59, kotlin.jvm.functions.Function0 r60, kotlin.jvm.functions.Function1 r61, kotlin.jvm.functions.Function2 r62, androidx.compose.runtime.GapComposer r63, int r64, int r65) {
        /*
            Method dump skipped, instructions count: 691
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.compose.components.TabsBoxKt.SettingsRow(java.lang.String, androidx.compose.ui.Modifier, java.lang.String, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function2, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void SettingsSection(String str, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        Function3 function3;
        GapComposer gapComposer2 = gapComposer;
        str.getClass();
        gapComposer2.startRestartGroup(2131575991);
        int i2 = i | (gapComposer2.changed(str) ? 4 : 2);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, fillMaxWidth);
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
            TextKt.m308TextNvy7gAk(str, OffsetKt.m134paddingVpY3zN4$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, 2), ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer, (i2 & 14) | 48, 0, 131064);
            gapComposer2 = gapComposer;
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 8.0f));
            function3 = composableLambdaImpl;
            function3.invoke(ColumnScopeInstance.INSTANCE, gapComposer2, 54);
            gapComposer2.end(true);
        } else {
            function3 = composableLambdaImpl;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda17(str, function3, i, 21);
        }
    }

    public static final void Snackbar(int i, GapComposer gapComposer, Modifier modifier, String str) {
        Modifier modifier2;
        str.getClass();
        gapComposer.startRestartGroup(1609835326);
        int i2 = (gapComposer.changed(str) ? 4 : 2) | i | 3504;
        byte b = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            CardKt.m272SnackbareQBnUkQ(OffsetKt.m133paddingVpY3zN4(companion, 16.0f, 8.0f), Expect_jvmKt.rememberComposableLambda(-1732221109, new CoroutineContextKt$$ExternalSyntheticLambda0(19), gapComposer), null, null, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor, 0L, 0L, 0L, Expect_jvmKt.rememberComposableLambda(2055930435, new HomeScreenKt$$ExternalSyntheticLambda30(str, 3, b), gapComposer), gapComposer, 805306416, 476);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3(str, modifier2, i, 2);
        }
    }

    /* renamed from: TabsBox-X34t5lA, reason: not valid java name */
    public static final void m900TabsBoxX34t5lA(final Modifier modifier, final int i, final long j, long j2, RoundedCornerShape roundedCornerShape, long j3, GapComposer gapComposer, final int i2) {
        GapComposer gapComposer2;
        final long j4;
        final RoundedCornerShape roundedCornerShape2;
        final long j5;
        long j6;
        RoundedCornerShape roundedCornerShape3;
        char c;
        long j7;
        gapComposer.startRestartGroup(1002468499);
        int i3 = i2 | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changed(i) ? 32 : 16) | 74752;
        if (gapComposer.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            gapComposer.startDefaults();
            if ((i2 & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                j6 = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor;
                RoundedCornerShape m177RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(5.0f);
                long j8 = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor;
                roundedCornerShape3 = m177RoundedCornerShape0680j_4;
                c = ' ';
                j7 = j8;
            } else {
                gapComposer.skipToGroupEnd();
                j6 = j2;
                roundedCornerShape3 = roundedCornerShape;
                c = ' ';
                j7 = j3;
            }
            gapComposer.endDefaults();
            Modifier m48borderxT4_qwU = ImageKt.m48borderxT4_qwU(ImageKt.m46backgroundbw27NRU(modifier, j, roundedCornerShape3), 1.5f, j6, roundedCornerShape3);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j9 = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j9 ^ (j9 >>> c));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m48borderxT4_qwU);
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
            Updater.m327setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            RoundedCornerShape roundedCornerShape4 = roundedCornerShape3;
            TextKt.m308TextNvy7gAk(String.valueOf(i), OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 3.0f, RecyclerView.DECELERATION_RATE, 4.0f, RecyclerView.DECELERATION_RATE, 10), j7, new AutoSizeStepBased(ContextsKt.getSp(5), ContextsKt.getSp(10), ContextsKt.getSp(1)), 0L, FontWeight.Bold, FontFamily.SansSerif, 0L, new TextAlign(3), ContextsKt.getSp(12), 0, false, 0, 0, null, null, gapComposer, 1572912, 48, 258864);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
            j5 = j7;
            roundedCornerShape2 = roundedCornerShape4;
            j4 = j6;
        } else {
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
            j4 = j2;
            roundedCornerShape2 = roundedCornerShape;
            j5 = j3;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(i, j, j4, roundedCornerShape2, j5, i2) { // from class: org.wikipedia.compose.components.TabsBoxKt$$ExternalSyntheticLambda0
                public final /* synthetic */ int f$1;
                public final /* synthetic */ long f$2;
                public final /* synthetic */ long f$3;
                public final /* synthetic */ RoundedCornerShape f$4;
                public final /* synthetic */ long f$5;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(385);
                    TabsBoxKt.m900TabsBoxX34t5lA(Modifier.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void TextWithInlineElement(String str, InlinePosition inlinePosition, Placeholder placeholder, TextStyle textStyle, GapComposer gapComposer, int i) {
        TextStyle textStyle2;
        TextStyle m647copyp1EtxEg$default;
        inlinePosition.getClass();
        gapComposer.startRestartGroup(2032180085);
        int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changed(placeholder) ? 256 : 128) | 1024;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                m647copyp1EtxEg$default = TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodyMedium, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, 0L, null, null, 0L, 0L, null, 16777214);
            } else {
                gapComposer.skipToGroupEnd();
                m647copyp1EtxEg$default = textStyle;
            }
            gapComposer.endDefaults();
            AnnotatedString.Builder builder = new AnnotatedString.Builder();
            int i3 = TextWithInlineElementKt$WhenMappings.$EnumSwitchMapping$0[inlinePosition.ordinal()];
            if (i3 == 1) {
                BasicTextKt.appendInlineContent(builder);
                builder.append(str);
            } else if (i3 != 2) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return;
            } else {
                builder.append(str);
                BasicTextKt.appendInlineContent(builder);
            }
            AnnotatedString annotatedString = builder.toAnnotatedString();
            Map singletonMap = Collections.singletonMap("element", new InlineTextContent(placeholder));
            singletonMap.getClass();
            TextKt.m309TextZ58ophY(annotatedString, null, 0L, 0L, null, 0L, null, 0L, 0, false, 0, 0, singletonMap, null, m647copyp1EtxEg$default, gapComposer, 0, 0, 196606);
            textStyle2 = m647copyp1EtxEg$default;
        } else {
            gapComposer.skipToGroupEnd();
            textStyle2 = textStyle;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda1(i, 5, str, inlinePosition, placeholder, textStyle2, false);
        }
    }

    /* renamed from: TinyBarChart-eaDK9VM, reason: not valid java name */
    public static final void m901TinyBarCharteaDK9VM(final List list, final Modifier modifier, final long j, final long j2, GapComposer gapComposer, final int i) {
        list.getClass();
        gapComposer.startRestartGroup(-1350418736);
        int i2 = i | (gapComposer.changedInstance(list) ? 4 : 2) | (gapComposer.changed(modifier) ? 32 : 16);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Integer num = (Integer) CollectionsKt.maxOrNull(list);
            final int intValue = num != null ? num.intValue() : 1;
            final int max = Math.max(intValue, 1);
            boolean changedInstance = gapComposer.changedInstance(list) | gapComposer.changed(intValue) | gapComposer.changed(max);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                Function1 function1 = new Function1() { // from class: org.wikipedia.compose.components.TinyBarChartKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        DrawScope drawScope = (DrawScope) obj;
                        drawScope.getClass();
                        char c = ' ';
                        float intBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() >> 32));
                        long j3 = 4294967295L;
                        float intBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() & 4294967295L));
                        float mo87toPx0680j_4 = drawScope.mo87toPx0680j_4(6.0f);
                        float size = (intBitsToFloat - ((r3.size() - 1) * mo87toPx0680j_4)) / r3.size();
                        int i3 = 0;
                        for (Object obj2 : list) {
                            int i4 = i3 + 1;
                            if (i3 < 0) {
                                Room.throwIndexOverflow();
                                throw null;
                            }
                            int intValue2 = ((Number) obj2).intValue();
                            int i5 = intValue;
                            float max2 = Math.max(i5 > 0 ? (intValue2 / i5) * intBitsToFloat2 : RecyclerView.DECELERATION_RATE, drawScope.mo87toPx0680j_4(4.0f));
                            int i6 = max;
                            float f = i6 > 0 ? intValue2 / i6 : 1.0f;
                            long j4 = j;
                            float m433getRedimpl = Color.m433getRedimpl(j4);
                            long j5 = j2;
                            char c2 = c;
                            long j6 = j3;
                            drawScope.mo474drawRoundRectuAw5IA(ColorKt.Color(((Color.m433getRedimpl(j5) - Color.m433getRedimpl(j4)) * f) + m433getRedimpl, ((Color.m432getGreenimpl(j5) - Color.m432getGreenimpl(j4)) * f) + Color.m432getGreenimpl(j4), ((Color.m430getBlueimpl(j5) - Color.m430getBlueimpl(j4)) * f) + Color.m430getBlueimpl(j4), ((Color.m429getAlphaimpl(j5) - Color.m429getAlphaimpl(j4)) * f) + Color.m429getAlphaimpl(j4), ColorSpaces.Srgb), (Float.floatToRawIntBits(intBitsToFloat2 - max2) & j6) | (Float.floatToRawIntBits((size + mo87toPx0680j_4) * i3) << c2), (Float.floatToRawIntBits(size) << c2) | (Float.floatToRawIntBits(max2) & j6), (Float.floatToRawIntBits(drawScope.mo87toPx0680j_4(2.0f)) << c2) | (Float.floatToRawIntBits(drawScope.mo87toPx0680j_4(2.0f)) & j6));
                            c = c2;
                            i3 = i4;
                            j3 = j6;
                        }
                        return Unit.INSTANCE;
                    }
                };
                gapComposer.updateRememberedValue(function1);
                rememberedValue = function1;
            }
            ImageKt.Canvas(modifier, (Function1) rememberedValue, gapComposer, (i2 >> 3) & 14);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(list, modifier, j, j2, i) { // from class: org.wikipedia.compose.components.TinyBarChartKt$$ExternalSyntheticLambda1
                public final /* synthetic */ List f$0;
                public final /* synthetic */ Modifier f$1;
                public final /* synthetic */ long f$2;
                public final /* synthetic */ long f$3;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(3457);
                    TabsBoxKt.m901TinyBarCharteaDK9VM(this.f$0, this.f$1, this.f$2, this.f$3, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ToggleListScreen(java.lang.String r23, java.lang.String r24, java.util.ArrayList r25, java.util.Set r26, kotlin.jvm.functions.Function2 r27, kotlin.jvm.functions.Function1 r28, kotlin.jvm.functions.Function0 r29, androidx.compose.runtime.GapComposer r30, int r31, int r32) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.compose.components.TabsBoxKt.ToggleListScreen(java.lang.String, java.lang.String, java.util.ArrayList, java.util.Set, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void TwoButtonBottomBar(Modifier modifier, String str, String str2, Function0 function0, Function0 function02, GapComposer gapComposer, int i) {
        int i2;
        GapComposer gapComposer2 = gapComposer;
        str.getClass();
        str2.getClass();
        function0.getClass();
        function02.getClass();
        gapComposer2.startRestartGroup(-538121467);
        if ((i & 48) == 0) {
            i2 = (gapComposer2.changed(str) ? 32 : 16) | i;
        } else {
            i2 = i;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changed(str2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changedInstance(function0) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changedInstance(function02) ? 16384 : 8192;
        }
        int i3 = 0;
        int i4 = 1;
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(24.0f, true, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(2, Alignment.Companion.CenterHorizontally)), Alignment.Companion.CenterVertically, gapComposer2, 54);
            long j = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j ^ (j >>> 32));
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
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            if (1.0f <= 0.0d) {
                InlineClassHelperKt.throwIllegalArgumentException("invalid weight; must be greater than zero");
            }
            LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f > Float.MAX_VALUE ? Float.MAX_VALUE : 1.0f, true);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            BorderStroke m45BorderStrokecXLIe8U = ImageKt.m45BorderStrokecXLIe8U(1.0f, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).borderColor);
            PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
            int i6 = i2;
            gapComposer2 = gapComposer2;
            CardKt.Button(function02, layoutWeightElement, false, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).paperColor, 0L, gapComposer2, 14), null, m45BorderStrokecXLIe8U, null, Expect_jvmKt.rememberComposableLambda(-413293775, new OnboardingKt$$ExternalSyntheticLambda0(i3, str2), gapComposer2), gapComposer2, ((i2 >> 12) & 14) | 805306368, 428);
            if (1.0f <= 0.0d) {
                InlineClassHelperKt.throwIllegalArgumentException("invalid weight; must be greater than zero");
            }
            CardKt.Button(function0, new LayoutWeightElement(1.0f > Float.MAX_VALUE ? Float.MAX_VALUE : 1.0f, true), false, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, 0L, gapComposer2, 14), null, null, null, Expect_jvmKt.rememberComposableLambda(1033848090, new OnboardingKt$$ExternalSyntheticLambda0(i4, str), gapComposer2), gapComposer2, ((i6 >> 9) & 14) | 805306368, 492);
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda18(modifier, str, str2, function0, function02, i);
        }
    }

    /* renamed from: WikiCard-jfnsLPA, reason: not valid java name */
    public static final void m902WikiCardjfnsLPA(Modifier modifier, float f, CardColors cardColors, BorderStroke borderStroke, Function0 function0, Shape shape, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i, int i2) {
        Modifier modifier2;
        int i3;
        CardColors cardColors2;
        BorderStroke borderStroke2;
        Function0 function02;
        Shape shape2;
        Shape shape3;
        Function0 function03;
        GapComposer gapComposer2;
        CardColors cardColors3;
        CardColors cardColors4;
        int i4;
        Function0 function04;
        Shape shape4;
        int i5;
        int i6;
        gapComposer.startRestartGroup(-1079339020);
        int i7 = i2 & 1;
        if (i7 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = (gapComposer.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer.changed(f) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            if ((i2 & 4) == 0) {
                cardColors2 = cardColors;
                if (gapComposer.changed(cardColors2)) {
                    i6 = 256;
                    i3 |= i6;
                }
            } else {
                cardColors2 = cardColors;
            }
            i6 = 128;
            i3 |= i6;
        } else {
            cardColors2 = cardColors;
        }
        int i8 = i2 & 8;
        if (i8 != 0) {
            i3 |= 3072;
            borderStroke2 = borderStroke;
        } else {
            borderStroke2 = borderStroke;
            if ((i & 3072) == 0) {
                i3 |= gapComposer.changed(borderStroke2) ? 2048 : 1024;
            }
        }
        int i9 = i2 & 16;
        if (i9 != 0) {
            i3 |= 24576;
            function02 = function0;
        } else {
            function02 = function0;
            if ((i & 24576) == 0) {
                i3 |= gapComposer.changedInstance(function02) ? 16384 : 8192;
            }
        }
        if ((i & 196608) == 0) {
            if ((i2 & 32) == 0) {
                shape2 = shape;
                if (gapComposer.changed(shape2)) {
                    i5 = 131072;
                    i3 |= i5;
                }
            } else {
                shape2 = shape;
            }
            i5 = 65536;
            i3 |= i5;
        } else {
            shape2 = shape;
        }
        if ((1572864 & i) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl) ? 1048576 : 524288;
        }
        if (gapComposer.shouldExecute(i3 & 1, (599187 & i3) != 599186)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                Modifier modifier3 = i7 != 0 ? Modifier.Companion.$$INSTANCE : modifier2;
                if ((i2 & 4) != 0) {
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    gapComposer2 = gapComposer;
                    cardColors3 = CardKt.m274cardColorsro_MJ88(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, gapComposer2, 0, 12);
                    i3 &= -897;
                } else {
                    gapComposer2 = gapComposer;
                    cardColors3 = cardColors2;
                }
                if (i8 != 0) {
                    borderStroke2 = null;
                }
                if (i9 != 0) {
                    function02 = null;
                }
                if ((i2 & 32) != 0) {
                    cardColors4 = cardColors3;
                    i4 = i3 & (-458753);
                    function04 = function02;
                    shape4 = RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(12.0f);
                    modifier2 = modifier3;
                } else {
                    cardColors4 = cardColors3;
                    i4 = i3;
                    function04 = function02;
                    modifier2 = modifier3;
                    shape4 = shape;
                }
            } else {
                gapComposer.skipToGroupEnd();
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                }
                if ((i2 & 32) != 0) {
                    i3 &= -458753;
                }
                cardColors4 = cardColors2;
                function04 = function02;
                i4 = i3;
                shape4 = shape2;
                gapComposer2 = gapComposer;
            }
            gapComposer2.endDefaults();
            boolean z = ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).isDarkTheme;
            boolean z2 = (i4 & 112) == 32;
            Object rememberedValue = gapComposer2.rememberedValue();
            if (z2 || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new Dp(z ? RecyclerView.DECELERATION_RATE : f);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            Shape shape5 = shape4;
            CardKt.Card(modifier2, shape5, cardColors4, CardKt.m275cardElevationaqJV_2Y(62, ((Dp) rememberedValue).value), borderStroke2, Expect_jvmKt.rememberComposableLambda(751870438, new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(7, function04, composableLambdaImpl), gapComposer2), gapComposer2, (i4 & 14) | 196608 | ((i4 >> 12) & 112) | (i4 & 896) | ((i4 << 3) & 57344), 0);
            function03 = function04;
            shape3 = shape5;
            cardColors2 = cardColors4;
        } else {
            gapComposer.skipToGroupEnd();
            shape3 = shape;
            function03 = function02;
        }
        BorderStroke borderStroke3 = borderStroke2;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ImageKt$$ExternalSyntheticLambda1(modifier2, f, cardColors2, borderStroke3, function03, shape3, composableLambdaImpl, i, i2);
        }
    }

    /* renamed from: WikiLangCodeBox-fdREj3A, reason: not valid java name */
    public static final void m903WikiLangCodeBoxfdREj3A(final Modifier modifier, final String str, long j, long j2, RoundedCornerShape roundedCornerShape, long j3, long j4, GapComposer gapComposer, final int i, final int i2) {
        int i3;
        long j5;
        long j6;
        long j7;
        GapComposer gapComposer2;
        final RoundedCornerShape roundedCornerShape2;
        final long j8;
        final long j9;
        long sp;
        RoundedCornerShape roundedCornerShape3;
        int i4;
        str.getClass();
        gapComposer.startRestartGroup(742925256);
        if ((i & 6) == 0) {
            i3 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer.changed(str) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            j5 = j;
            i3 |= ((i2 & 4) == 0 && gapComposer.changed(j5)) ? 256 : 128;
        } else {
            j5 = j;
        }
        if ((i & 3072) == 0) {
            j6 = j2;
            i3 |= ((i2 & 8) == 0 && gapComposer.changed(j6)) ? 2048 : 1024;
        } else {
            j6 = j2;
        }
        if ((i & 24576) == 0) {
            i3 |= 8192;
        }
        if ((196608 & i) == 0) {
            j7 = j3;
            i3 |= ((i2 & 32) == 0 && gapComposer.changed(j7)) ? 131072 : 65536;
        } else {
            j7 = j3;
        }
        int i5 = i3 | 1572864;
        if (gapComposer.shouldExecute(i5 & 1, (599187 & i5) != 599186)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                if ((i2 & 4) != 0) {
                    j5 = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor;
                    i5 &= -897;
                }
                if ((i2 & 8) != 0) {
                    j6 = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor;
                    i5 &= -7169;
                }
                RoundedCornerShape m177RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(4.0f);
                int i6 = i5 & (-57345);
                if ((i2 & 32) != 0) {
                    j7 = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor;
                    i6 = i5 & (-516097);
                }
                sp = ContextsKt.getSp(10);
                roundedCornerShape3 = m177RoundedCornerShape0680j_4;
                i4 = i6;
            } else {
                gapComposer.skipToGroupEnd();
                if ((i2 & 4) != 0) {
                    i5 &= -897;
                }
                if ((i2 & 8) != 0) {
                    i5 &= -7169;
                }
                i4 = i5 & (-57345);
                if ((i2 & 32) != 0) {
                    i4 = i5 & (-516097);
                }
                roundedCornerShape3 = roundedCornerShape;
                sp = j4;
            }
            gapComposer.endDefaults();
            Modifier m48borderxT4_qwU = ImageKt.m48borderxT4_qwU(ImageKt.m46backgroundbw27NRU(modifier, j5, roundedCornerShape3), 1.5f, j6, roundedCornerShape3);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j10 = j5;
            long j11 = gapComposer.compositeKeyHashCode;
            int i7 = (int) (j11 ^ (j11 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m48borderxT4_qwU);
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
            Updater.m327setimpl(gapComposer, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(Modifier.Companion.$$INSTANCE, 4.0f, RecyclerView.DECELERATION_RATE, 2);
            String upperCase = str.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            long j12 = j6;
            long j13 = j7;
            long j14 = sp;
            TextKt.m308TextNvy7gAk(upperCase, m134paddingVpY3zN4$default, j13, null, j14, FontWeight.Bold, FontFamily.Monospace, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer, ((i4 >> 9) & 896) | 1572912 | ((i4 >> 6) & 57344), 0, 261928);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
            j7 = j13;
            j9 = j14;
            roundedCornerShape2 = roundedCornerShape3;
            j8 = j12;
            j5 = j10;
        } else {
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
            roundedCornerShape2 = roundedCornerShape;
            j8 = j6;
            j9 = j4;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            final long j15 = j5;
            final long j16 = j7;
            endRestartGroup.block = new Function2() { // from class: org.wikipedia.compose.components.WikiLangCodeBoxKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i | 1);
                    TabsBoxKt.m903WikiLangCodeBoxfdREj3A(Modifier.this, str, j15, j8, roundedCornerShape2, j16, j9, (GapComposer) obj, updateChangedFlags, i2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x005d  */
    /* renamed from: WikiTopAppBar-WH-ejsw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m904WikiTopAppBarWHejsw(androidx.compose.ui.Modifier r26, java.lang.String r27, kotlin.jvm.functions.Function0 r28, androidx.compose.ui.text.TextStyle r29, kotlin.jvm.functions.Function3 r30, androidx.compose.runtime.GapComposer r31, int r32, int r33) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.compose.components.TabsBoxKt.m904WikiTopAppBarWHejsw(androidx.compose.ui.Modifier, java.lang.String, kotlin.jvm.functions.Function0, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function3, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void WikiTopAppBarWithSearch(final String str, final String str2, final String str3, final Function1 function1, final Function0 function0, GapComposer gapComposer, int i) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        function1.getClass();
        function0.getClass();
        gapComposer.startRestartGroup(2012818565);
        int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changed(str2) ? 32 : 16) | (gapComposer.changed(str3) ? 256 : 128) | (gapComposer.changedInstance(function1) ? 2048 : 1024) | (gapComposer.changedInstance(function0) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(TopAppBarState.NORMAL);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final MutableState mutableState = (MutableState) rememberedValue;
            EnterTransitionImpl fadeIn$default = EnterExitTransitionKt.fadeIn$default(ArcSplineKt.tween$default(200, 2, EasingKt.LinearEasing), 2);
            ExitTransitionImpl fadeOut$default = EnterExitTransitionKt.fadeOut$default(ArcSplineKt.tween$default(150, 2, EasingKt.FastOutSlowInEasing), 2);
            TopAppBarState topAppBarState = (TopAppBarState) mutableState.getValue();
            boolean changed = gapComposer.changed(fadeIn$default) | gapComposer.changed(fadeOut$default);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new GamesHubScreenKt$$ExternalSyntheticLambda8(12, fadeIn$default, fadeOut$default);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            CrossfadeKt.AnimatedContent(topAppBarState, null, (Function1) rememberedValue2, null, null, null, Expect_jvmKt.rememberComposableLambda(36700834, new Function4() { // from class: org.wikipedia.compose.components.WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    TopAppBarState topAppBarState2 = (TopAppBarState) obj2;
                    GapComposer gapComposer2 = (GapComposer) obj3;
                    ((Integer) obj4).getClass();
                    ((AnimatedContentScopeImpl) obj).getClass();
                    topAppBarState2.getClass();
                    int i3 = WikiTopAppBarWithSearchKt$WhenMappings.$EnumSwitchMapping$0[topAppBarState2.ordinal()];
                    MutableState mutableState2 = mutableState;
                    int i4 = 1;
                    if (i3 == 1) {
                        gapComposer2.startReplaceGroup(-1861991094);
                        Function1 function12 = function1;
                        boolean changed2 = gapComposer2.changed(function12);
                        Object rememberedValue3 = gapComposer2.rememberedValue();
                        Object obj5 = Composer$Companion.Empty;
                        if (changed2 || rememberedValue3 == obj5) {
                            rememberedValue3 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 8);
                            gapComposer2.updateRememberedValue(rememberedValue3);
                        }
                        Function1 function13 = (Function1) rememberedValue3;
                        boolean changed3 = gapComposer2.changed(function12);
                        Object rememberedValue4 = gapComposer2.rememberedValue();
                        if (changed3 || rememberedValue4 == obj5) {
                            rememberedValue4 = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function12, mutableState2, 1);
                            gapComposer2.updateRememberedValue(rememberedValue4);
                        }
                        Function0 function02 = (Function0) rememberedValue4;
                        String str4 = str3;
                        TabsBoxKt.SearchTopAppBar(null, str4, str2, function13, function02, Expect_jvmKt.rememberComposableLambda(-1268754205, new AboutActivityKt$$ExternalSyntheticLambda2(str4, function12, mutableState2, i4), gapComposer2), gapComposer2, 196608);
                        gapComposer2.end(false);
                    } else {
                        if (i3 != 2) {
                            throw Modifier.CC.m(gapComposer2, 909766340, false);
                        }
                        gapComposer2.startReplaceGroup(-1860515804);
                        TabsBoxKt.m904WikiTopAppBarWHejsw(null, str, function0, null, Expect_jvmKt.rememberComposableLambda(884181154, new WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda6(mutableState2, 0), gapComposer2), gapComposer2, 196608, 25);
                        gapComposer2.end(false);
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 1572864, 58);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedComponentsKt$$ExternalSyntheticLambda5(str, str2, str3, function1, function0, i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00df, code lost:
    
        if (r51.changedInstance(r50) == false) goto L66;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x006c  */
    /* renamed from: WikipediaAlertDialog-sK9R1Co, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m905WikipediaAlertDialogsK9R1Co(androidx.compose.ui.Modifier r34, final java.lang.String r35, androidx.compose.ui.Modifier r36, int r37, final java.lang.String r38, androidx.compose.ui.Modifier r39, int r40, kotlin.jvm.functions.Function2 r41, final java.lang.String r42, long r43, java.lang.String r45, long r46, final kotlin.jvm.functions.Function0 r48, final kotlin.jvm.functions.Function0 r49, kotlin.jvm.functions.Function0 r50, androidx.compose.runtime.GapComposer r51, final int r52, final int r53, final int r54) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.compose.components.TabsBoxKt.m905WikipediaAlertDialogsK9R1Co(androidx.compose.ui.Modifier, java.lang.String, androidx.compose.ui.Modifier, int, java.lang.String, androidx.compose.ui.Modifier, int, kotlin.jvm.functions.Function2, java.lang.String, long, java.lang.String, long, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, androidx.compose.runtime.GapComposer, int, int, int):void");
    }
}
