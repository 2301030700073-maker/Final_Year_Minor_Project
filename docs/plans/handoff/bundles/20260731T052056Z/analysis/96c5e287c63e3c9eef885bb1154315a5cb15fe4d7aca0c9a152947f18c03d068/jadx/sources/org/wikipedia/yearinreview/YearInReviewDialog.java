package org.wikipedia.yearinreview;

import android.content.Context;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.ScrollView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.collection.internal.Lock;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.AspectRatioElement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.GraphicsLayerScopeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.AnnotatedString;
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
import androidx.paging.CachedPagingDataKt$cachedIn$4;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.compose.AsyncImageKt;
import coil3.compose.AsyncImageKt$$ExternalSyntheticLambda0;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textfield.TextInputLayout;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Handshake$Companion$$ExternalSyntheticLambda0;
import okio.Okio__JvmOkioKt;
import org.wikipedia.R;
import org.wikipedia.activitytab.ImpactModuleKt$$ExternalSyntheticLambda3;
import org.wikipedia.compose.ComposeColors;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.feed.ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda31;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.feed.news.NewsModuleKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.wikigames.OnThisDayGameKt$$ExternalSyntheticLambda13;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda24;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda16;
import org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;
import org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda10;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda2;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.StringUtil$$ExternalSyntheticLambda0;
import org.wikipedia.util.UiState;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.PlainPasteEditText;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda1;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda3;
import org.wikipedia.views.ViewUtil$$ExternalSyntheticLambda0;
import org.wikipedia.yearinreview.YearInReviewCaptureRequest;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class YearInReviewDialog {

    /* renamed from: lambda$-1400472173, reason: not valid java name */
    public static final ComposableLambdaImpl f82lambda$1400472173;
    public static final ComposableLambdaImpl lambda$1080360887;
    public static final ComposableLambdaImpl lambda$375127261;

    /* renamed from: lambda$-692359811, reason: not valid java name */
    public static final ComposableLambdaImpl f85lambda$692359811 = new ComposableLambdaImpl(new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(9, 0), false, -692359811);
    public static final ComposableLambdaImpl lambda$822070854 = new ComposableLambdaImpl(new ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0(10), false, 822070854);

    /* renamed from: lambda$-947382240, reason: not valid java name */
    public static final ComposableLambdaImpl f87lambda$947382240 = new ComposableLambdaImpl(new ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0(11), false, -947382240);

    /* renamed from: lambda$-1777779794, reason: not valid java name */
    public static final ComposableLambdaImpl f83lambda$1777779794 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(16), false, -1777779794);

    /* renamed from: lambda$-878426452, reason: not valid java name */
    public static final ComposableLambdaImpl f86lambda$878426452 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(17), false, -878426452);

    /* renamed from: lambda$-1286324730, reason: not valid java name */
    public static final ComposableLambdaImpl f80lambda$1286324730 = new ComposableLambdaImpl(new ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0(12), false, -1286324730);
    public static final ComposableLambdaImpl lambda$770360989 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(18), false, 770360989);
    public static final ComposableLambdaImpl lambda$2085340557 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(19), false, 2085340557);
    public static final ComposableLambdaImpl lambda$972779059 = new ComposableLambdaImpl(new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(11, 0), false, 972779059);
    public static final ComposableLambdaImpl lambda$1080941151 = new ComposableLambdaImpl(new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(12, 0), false, 1080941151);

    /* renamed from: lambda$-1326661030, reason: not valid java name */
    public static final ComposableLambdaImpl f81lambda$1326661030 = new ComposableLambdaImpl(new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(13, 0), false, -1326661030);

    /* renamed from: lambda$-284643966, reason: not valid java name */
    public static final ComposableLambdaImpl f84lambda$284643966 = new ComposableLambdaImpl(new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(14, 0), false, -284643966);

    static {
        byte b = 0;
        lambda$1080360887 = new ComposableLambdaImpl(new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(7, b), false, 1080360887);
        lambda$375127261 = new ComposableLambdaImpl(new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(8, b), false, 375127261);
        f82lambda$1400472173 = new ComposableLambdaImpl(new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(10, b), false, -1400472173);
    }

    public static final void CreateScreenShotBitmap(YearInReviewScreenData yearInReviewScreenData, Function2 function2, Function1 function1, GapComposer gapComposer, int i) {
        GapComposer gapComposer2 = gapComposer;
        yearInReviewScreenData.getClass();
        function1.getClass();
        gapComposer2.startRestartGroup(1934946420);
        int i2 = (gapComposer2.changed(yearInReviewScreenData) ? 4 : 2) | i;
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(function2) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changedInstance(function1) ? 256 : 128;
        }
        int i3 = 0;
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            GraphicsLayer rememberGraphicsLayer = GraphicsLayerScopeKt.rememberGraphicsLayer(gapComposer2);
            Object rememberedValue = gapComposer2.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (rememberedValue == obj) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            if (((Boolean) mutableState.getValue()).booleanValue()) {
                gapComposer2.startReplaceGroup(1233018035);
                boolean changedInstance = ((i2 & 896) == 256) | gapComposer2.changedInstance(rememberGraphicsLayer);
                Object rememberedValue2 = gapComposer2.rememberedValue();
                if (changedInstance || rememberedValue2 == obj) {
                    rememberedValue2 = new YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1(rememberGraphicsLayer, function1, null, i3);
                    gapComposer2.updateRememberedValue(rememberedValue2);
                }
                Updater.LaunchedEffect(gapComposer2, Unit.INSTANCE, (Function2) rememberedValue2);
                gapComposer2.end(false);
            } else {
                gapComposer2.startReplaceGroup(1233166990);
                gapComposer2.end(false);
            }
            ScrollState rememberScrollState = ImageKt.rememberScrollState(gapComposer2);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier scroll$default = ImageKt.scroll$default(companion, rememberScrollState, true);
            boolean changedInstance2 = gapComposer2.changedInstance(rememberGraphicsLayer);
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (changedInstance2 || rememberedValue3 == obj) {
                rememberedValue3 = new YearInReviewScreenDeckKt$$ExternalSyntheticLambda24(rememberGraphicsLayer, i3);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            Modifier drawWithContent = ClipKt.drawWithContent(scroll$default, (Function1) rememberedValue3);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(ImageKt.m46backgroundbw27NRU(drawWithContent, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).paperColor, ColorKt.RectangleShape), RecyclerView.DECELERATION_RATE, 8.0f, 1);
            Arrangement$End$1 arrangement$End$1 = OffsetKt.Center;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, Alignment.Companion.CenterHorizontally, gapComposer2, 54);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default);
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
            int i5 = i2;
            Modifier m134paddingVpY3zN4$default2 = OffsetKt.m134paddingVpY3zN4$default(SizeKt.wrapContentHeight$default(SizeKt.fillMaxWidth(companion, 1.0f), 3), RecyclerView.DECELERATION_RATE, 12.0f, 1);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$End$1, Alignment.Companion.CenterVertically, gapComposer2, 54);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i6 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default2);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i6, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_wikipedia_b, 0, gapComposer2), UtilsKt.stringResource(R.string.app_name_prod, gapComposer2), SizeKt.m149width3ABfNKs(SizeKt.m140height3ABfNKs(companion, 20.0f), 31.0f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, gapComposer2, 392, 0);
            gapComposer2.end(true);
            Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(companion, RecyclerView.DECELERATION_RATE);
            Object rememberedValue4 = gapComposer2.rememberedValue();
            if (rememberedValue4 == obj) {
                rememberedValue4 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState, 25);
                gapComposer2.updateRememberedValue(rememberedValue4);
            }
            int i7 = i5 << 3;
            YearInReviewScreenContent(m132padding3ABfNKs, yearInReviewScreenData, function2, true, (Function1) rememberedValue4, gapComposer2, (i7 & 112) | 199686 | (i7 & 896), 16);
            TextKt.m308TextNvy7gAk(processString(Integer.valueOf(R.string.year_in_review_hashtag), gapComposer2, 0), OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 32.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyLarge, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211), gapComposer, 48, 0, 131064);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9((Object) yearInReviewScreenData, (Object) function2, (Object) function1, i, 24);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0246, code lost:
    
        if (r10 == r6) goto L91;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void GeoScreenContent(androidx.compose.ui.Modifier r44, org.wikipedia.yearinreview.YearInReviewScreenData.GeoScreen r45, kotlin.jvm.functions.Function2 r46, boolean r47, kotlin.jvm.functions.Function1 r48, androidx.compose.runtime.GapComposer r49, int r50) {
        /*
            Method dump skipped, instructions count: 1377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.yearinreview.YearInReviewDialog.GeoScreenContent(androidx.compose.ui.Modifier, org.wikipedia.yearinreview.YearInReviewScreenData$GeoScreen, kotlin.jvm.functions.Function2, boolean, kotlin.jvm.functions.Function1, androidx.compose.runtime.GapComposer, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Header$default(final android.content.Context r20, final boolean r21, kotlin.jvm.functions.Function1 r22, final float r23, final org.wikipedia.yearinreview.YearInReviewScreenData.StandardScreen r24, androidx.compose.runtime.GapComposer r25, final int r26, final int r27) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.yearinreview.YearInReviewDialog.Header$default(android.content.Context, boolean, kotlin.jvm.functions.Function1, float, org.wikipedia.yearinreview.YearInReviewScreenData$StandardScreen, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void HighlightsContent(Modifier modifier, YearInReviewScreenData.HighlightItem highlightItem, GapComposer gapComposer, int i) {
        boolean z;
        GapComposer gapComposer2 = gapComposer;
        highlightItem.getClass();
        gapComposer2.startRestartGroup(367473380);
        int i2 = i | (gapComposer2.changed(modifier) ? 4 : 2) | (gapComposer2.changedInstance(highlightItem) ? 32 : 16);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(modifier, 1.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer2, 6);
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
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
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
            TextKt.m308TextNvy7gAk(highlightItem.title, SizeKt.m149width3ABfNKs(companion, 98.0f), 0L, null, ContextsKt.getSp(14), FontWeight.Bold, null, 0L, null, ContextsKt.getSp(21), 0, false, 0, 0, null, null, gapComposer, 1597488, 48, 260012);
            gapComposer2 = gapComposer;
            if (highlightItem.singleValue != null) {
                gapComposer2.startReplaceGroup(-1373788629);
                TextKt.m308TextNvy7gAk(highlightItem.singleValue, null, Color.Black, null, ContextsKt.getSp(14), null, null, 0L, null, ContextsKt.getSp(21), 0, false, 0, 0, null, null, gapComposer, 24960, 48, 260074);
                gapComposer2 = gapComposer;
                gapComposer2.end(false);
                z = true;
            } else {
                gapComposer2.startReplaceGroup(-1373583750);
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                long j2 = gapComposer2.compositeKeyHashCode;
                int i4 = (int) (j2 ^ (j2 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, companion);
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i4, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                gapComposer2.startReplaceGroup(1715237231);
                List list = highlightItem.items;
                int size = list.size();
                int i5 = 0;
                while (i5 < size) {
                    String str = (String) list.get(i5);
                    AnnotatedString.Builder builder = new AnnotatedString.Builder();
                    int i6 = i5 + 1;
                    builder.append(i6 + ". ");
                    int pushStyle = builder.pushStyle(new SpanStyle(highlightItem.highlightColor, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65534));
                    try {
                        builder.append(str);
                        builder.pop(pushStyle);
                        TextKt.m309TextZ58ophY(builder.toAnnotatedString(), null, 0L, 0L, null, 0L, null, ContextsKt.getSp(21), 0, false, 0, 0, null, null, null, gapComposer, 0, 48, 522238);
                        gapComposer2 = gapComposer;
                        list = list;
                        size = size;
                        i5 = i6;
                    } catch (Throwable th) {
                        builder.pop(pushStyle);
                        throw th;
                    }
                }
                z = true;
                Modifier.CC.m(gapComposer2, false, true, false);
            }
            gapComposer2.end(z);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomActivity$$ExternalSyntheticLambda1(modifier, highlightItem, i, 20);
        }
    }

    public static final void LoadingIndicator(int i, GapComposer gapComposer) {
        gapComposer.startRestartGroup(865205537);
        if (gapComposer.shouldExecute(i & 1, i != 0)) {
            Arrangement$End$1 arrangement$End$1 = OffsetKt.Center;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.CenterHorizontally;
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(fillElement, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ColorKt.RectangleShape);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer, 54);
            long j = gapComposer.compositeKeyHashCode;
            int i2 = (int) (j ^ (j >>> 32));
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
            Updater.m327setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            ProgressIndicatorKt.m290CircularProgressIndicator4lLiAd8(OffsetKt.m132padding3ABfNKs(Modifier.Companion.$$INSTANCE, 24.0f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor, RecyclerView.DECELERATION_RATE, 0L, 0, RecyclerView.DECELERATION_RATE, gapComposer, 6, 60);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(i);
        }
    }

    public static final void MainBottomBar(List list, PagerState pagerState, int i, Function0 function0, Function0 function02, Function1 function1, GapComposer gapComposer, int i2) {
        Function0 function03;
        Modifier.Companion companion;
        boolean z;
        int i3;
        int i4;
        GapComposer gapComposer2 = gapComposer;
        list.getClass();
        pagerState.getClass();
        function0.getClass();
        function02.getClass();
        function1.getClass();
        gapComposer2.startRestartGroup(896070923);
        int i5 = i2 | (gapComposer2.changedInstance(list) ? 4 : 2) | (gapComposer2.changed(pagerState) ? 32 : 16) | (gapComposer2.changedInstance(function0) ? 2048 : 1024) | (gapComposer2.changedInstance(function02) ? 16384 : 8192) | (gapComposer2.changedInstance(function1) ? 131072 : 65536);
        if (gapComposer2.shouldExecute(i5 & 1, (74771 & i5) != 74770)) {
            Context context = (Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext);
            YearInReviewScreenData yearInReviewScreenData = (YearInReviewScreenData) list.get(pagerState.getCurrentPage());
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, companion2);
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
            Integer valueOf = Integer.valueOf(i6);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
            CardKt.m266HorizontalDivider9IZ8Weo(SizeKt.fillMaxWidth(SizeKt.m140height3ABfNKs(companion2, 1.0f), 1.0f), RecyclerView.DECELERATION_RATE, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor, gapComposer, 6, 2);
            BiasAlignment biasAlignment = Alignment.Companion.TopStart;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            long j2 = gapComposer.compositeKeyHashCode;
            int i7 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, companion2);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i7, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            int i8 = i5 >> 12;
            ((YearInReviewScreenData) list.get(pagerState.getCurrentPage())).BottomButton(context, function1, gapComposer, i8 & 112);
            gapComposer.end(true);
            Modifier wrapContentHeight$default = SizeKt.wrapContentHeight$default(SizeKt.fillMaxWidth(companion2, 1.0f), 3);
            MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            long j3 = gapComposer.compositeKeyHashCode;
            int i9 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, wrapContentHeight$default);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i9, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            if (yearInReviewScreenData instanceof YearInReviewScreenData.HighlightsScreen) {
                companion = companion2;
                z = true;
                i3 = 2048;
                i4 = 3;
                gapComposer.startReplaceGroup(-990931446);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-991382155);
                companion = companion2;
                z = true;
                i3 = 2048;
                i4 = 3;
                CardKt.IconButton(function02, OffsetKt.m136paddingqDBjuR0$default(companion2, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, 11), false, null, null, lambda$1080941151, gapComposer, (i8 & 14) | 1572912, 60);
                gapComposer.end(false);
            }
            Modifier wrapContentWidth$default = SizeKt.wrapContentWidth$default(SizeKt.wrapContentHeight$default(companion, i4), null, i4);
            BiasAlignment biasAlignment2 = Alignment.Companion.Center;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            TabsBoxKt.m899PageIndicatorXDZ_kE(boxScopeInstance.align(wrapContentWidth$default, biasAlignment2), pagerState, 0, 2.0f, RecyclerView.DECELERATION_RATE, 0L, 0L, gapComposer, (i5 & 112) | 3072, 116);
            gapComposer2 = gapComposer;
            boolean z2 = (i5 & 7168) == i3 ? z : false;
            Object rememberedValue = gapComposer2.rememberedValue();
            if (z2 || rememberedValue == Composer$Companion.Empty) {
                function03 = function0;
                rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda1(17, function03);
                gapComposer2.updateRememberedValue(rememberedValue);
            } else {
                function03 = function0;
            }
            CardKt.IconButton((Function0) rememberedValue, boxScopeInstance.align(OffsetKt.m132padding3ABfNKs(companion, RecyclerView.DECELERATION_RATE), Alignment.Companion.CenterEnd), false, null, null, f81lambda$1326661030, gapComposer2, 1572864, 60);
            gapComposer2.end(z);
            gapComposer2.end(z);
        } else {
            function03 = function0;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda18(list, pagerState, i, function03, function02, function1, i2);
        }
    }

    public static final void ReadingPatternsItem(String str, int i, GapComposer gapComposer, int i2) {
        GapComposer gapComposer2 = gapComposer;
        str.getClass();
        gapComposer2.startRestartGroup(1974509888);
        int i3 = i2 | (gapComposer2.changed(str) ? 4 : 2) | (gapComposer2.changed(i) ? 32 : 16);
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(companion, 16.0f, 12.0f);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m133paddingVpY3zN4);
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
            IntrinsicSize intrinsicSize = IntrinsicSize.Min;
            Modifier height = OffsetKt.height(companion, intrinsicSize);
            String processString = processString(str, gapComposer2, i3 & 14);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            long j2 = ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
            TextKt.m308TextNvy7gAk(processString, height, j2, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).bodyLarge, gapComposer, 48, 0, 131064);
            TextKt.m308TextNvy7gAk(processString(Integer.valueOf(i), gapComposer, (i3 >> 3) & 14), OffsetKt.height(companion, intrinsicSize), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).bodyMedium, gapComposer, 48, 0, 131064);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ImpactModuleKt$$ExternalSyntheticLambda3(str, i, i2, 8);
        }
    }

    public static final void ShareHighlightsScreenCapture(YearInReviewScreenData.HighlightsScreen highlightsScreen, Function1 function1, GapComposer gapComposer, int i) {
        int i2;
        function1.getClass();
        gapComposer.startRestartGroup(357537212);
        int i3 = i | (gapComposer.changedInstance(highlightsScreen) ? 4 : 2) | (gapComposer.changedInstance(function1) ? 32 : 16);
        int i4 = 1;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            GraphicsLayer rememberGraphicsLayer = GraphicsLayerScopeKt.rememberGraphicsLayer(gapComposer);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (rememberedValue == obj) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            if (((Boolean) mutableState.getValue()).booleanValue()) {
                gapComposer.startReplaceGroup(-127545685);
                boolean changedInstance = gapComposer.changedInstance(rememberGraphicsLayer) | ((i3 & 112) == 32);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue2 == obj) {
                    rememberedValue2 = new YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1(rememberGraphicsLayer, function1, null, i4);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue2);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-127396730);
                gapComposer.end(false);
            }
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == obj) {
                rememberedValue3 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState, 24);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Modifier onGloballyPositioned = RulerKt.onGloballyPositioned(fillElement, (Function1) rememberedValue3);
            boolean changedInstance2 = gapComposer.changedInstance(rememberGraphicsLayer);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue4 == obj) {
                rememberedValue4 = new YearInReviewScreenDeckKt$$ExternalSyntheticLambda24(rememberGraphicsLayer, i4);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Modifier drawWithContent = ClipKt.drawWithContent(onGloballyPositioned, (Function1) rememberedValue4);
            long j = ComposeColors.White;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
            Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(drawWithContent, j, rectangleShapeKt$RectangleShape$1);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j2 = gapComposer.compositeKeyHashCode;
            int i5 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m46backgroundbw27NRU);
            ComposeUiNode.Companion.getClass();
            Function0 function0 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(function0);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            BiasAlignment biasAlignment = Alignment.Companion.Center;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ShareableHighlightsCard(OffsetKt.m132padding3ABfNKs(ImageKt.m48borderxT4_qwU(ImageKt.m46backgroundbw27NRU(OffsetKt.m134paddingVpY3zN4$default(boxScopeInstance.align(companion, biasAlignment), 34.0f, RecyclerView.DECELERATION_RATE, 2), ComposeColors.Gray100, rectangleShapeKt$RectangleShape$1), 1.0f, ComposeColors.Gray300, rectangleShapeKt$RectangleShape$1), 8.0f), null, 0, null, highlightsScreen, gapComposer, (i3 << 12) & 57344);
            i2 = i;
            TextKt.m308TextNvy7gAk(highlightsScreen.screenshotUrl, OffsetKt.m136paddingqDBjuR0$default(boxScopeInstance.align(companion, Alignment.Companion.BottomCenter), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 16.0f, 7), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer, 0, 0, 131068);
            gapComposer.end(true);
        } else {
            i2 = i;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomActivity$$ExternalSyntheticLambda1(highlightsScreen, function1, i2, 21);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v17 */
    public static final void ShareableHighlightsCard(Modifier modifier, String str, int i, String str2, YearInReviewScreenData.HighlightsScreen highlightsScreen, GapComposer gapComposer, int i2) {
        String str3;
        int i3;
        String str4;
        GapComposer gapComposer2;
        String stringResource;
        String stringResource2;
        int i4;
        boolean z;
        ?? r10;
        Object obj;
        GapComposer gapComposer3 = gapComposer;
        BiasAlignment biasAlignment = Alignment.Companion.TopStart;
        List list = highlightsScreen.highlights;
        gapComposer3.startRestartGroup(1226294461);
        int i5 = (i2 & 6) == 0 ? (gapComposer3.changed(modifier) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i5 |= 16;
        }
        if ((i2 & 384) == 0) {
            i5 |= 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= 1024;
        }
        if ((i2 & 24576) == 0) {
            i5 |= gapComposer3.changedInstance(highlightsScreen) ? 16384 : 8192;
        }
        if (gapComposer3.shouldExecute(i5 & 1, (i5 & 9363) != 9362)) {
            gapComposer3.startDefaults();
            if ((i2 & 1) == 0 || gapComposer3.getDefaultsInvalid()) {
                stringResource = UtilsKt.stringResource(R.string.year_in_review_hashtag, gapComposer3);
                stringResource2 = UtilsKt.stringResource(R.string.year_in_review_highlights_logo_description, gapComposer3);
                i4 = R.drawable.w_nav_mark;
            } else {
                gapComposer3.skipToGroupEnd();
                stringResource = str;
                i4 = i;
                stringResource2 = str2;
            }
            gapComposer3.endDefaults();
            ScrollState rememberScrollState = ImageKt.rememberScrollState(gapComposer3);
            ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = rememberScrollState.value$delegate;
            ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState2 = rememberScrollState.viewportSize$delegate;
            ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState3 = rememberScrollState._maxValueState;
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(modifier, RecyclerView.DECELERATION_RATE, parcelableSnapshotMutableIntState.getIntValue() > 0 ? RecyclerView.DECELERATION_RATE : 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            long j = gapComposer3.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, m136paddingqDBjuR0$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer3.startReusableNode();
            if (gapComposer3.inserting) {
                gapComposer3.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer3.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer3, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i6);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer3, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer3, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier scroll$default = ImageKt.scroll$default(companion, rememberScrollState, true);
            String str5 = stringResource;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.CenterHorizontally, gapComposer3, 48);
            int i7 = i4;
            long j2 = gapComposer3.compositeKeyHashCode;
            int i8 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer3.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer3, scroll$default);
            gapComposer3.startReusableNode();
            if (gapComposer3.inserting) {
                gapComposer3.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer3.useNode();
            }
            Updater.m327setimpl(gapComposer3, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i8, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer3, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            FontWeight fontWeight = FontWeight.Bold;
            long sp = ContextsKt.getSp(18);
            long sp2 = ContextsKt.getSp(21);
            long j3 = ComposeColors.Gray700;
            Modifier.Companion companion2 = companion;
            TextKt.m308TextNvy7gAk(str5, null, j3, null, sp, fontWeight, null, 0L, null, sp2, 0, false, 0, 0, null, null, gapComposer, 1597824, 48, 260010);
            String str6 = stringResource2;
            ImageKt.Image(UnsignedKt.painterResource(i7, 0, gapComposer), str6, OffsetKt.m134paddingVpY3zN4$default(SizeKt.m145size3ABfNKs(companion2, 163.0f), RecyclerView.DECELERATION_RATE, 4.0f, 1), null, null, RecyclerView.DECELERATION_RATE, null, gapComposer, 392, 120);
            TextKt.m308TextNvy7gAk(str6, OffsetKt.m132padding3ABfNKs(companion2, 4.0f), j3, null, ContextsKt.getSp(12), null, null, 0L, null, ContextsKt.getSp(16), 0, false, 0, 0, null, null, gapComposer, 25008, 48, 260072);
            GapComposer gapComposer4 = gapComposer;
            gapComposer4.startReplaceGroup(-1253529803);
            int i9 = 0;
            for (Object obj2 : list) {
                int i10 = i9 + 1;
                if (i9 < 0) {
                    Room.throwIndexOverflow();
                    throw null;
                }
                Modifier.Companion companion3 = companion2;
                HighlightsContent(OffsetKt.m136paddingqDBjuR0$default(companion3, RecyclerView.DECELERATION_RATE, 12.0f, RecyclerView.DECELERATION_RATE, i9 == list.size() + (-1) ? 4.0f : RecyclerView.DECELERATION_RATE, 5), (YearInReviewScreenData.HighlightItem) obj2, gapComposer4, 0);
                i9 = i10;
                companion2 = companion3;
            }
            Modifier.Companion companion4 = companion2;
            gapComposer4.end(false);
            gapComposer4.end(true);
            if (parcelableSnapshotMutableIntState3.getIntValue() > 0) {
                gapComposer4.startReplaceGroup(-1893270300);
                BiasAlignment biasAlignment2 = Alignment.Companion.CenterEnd;
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                Modifier m136paddingqDBjuR0$default2 = OffsetKt.m136paddingqDBjuR0$default(OffsetKt.m134paddingVpY3zN4$default(SizeKt.m149width3ABfNKs(SizeKt.fillMaxHeight(boxScopeInstance.align(companion4, biasAlignment2), 1.0f), 8.0f), 2.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 4.0f, 7);
                MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                long j4 = gapComposer4.compositeKeyHashCode;
                int i11 = (int) (j4 ^ (j4 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer4.currentCompositionLocalScope();
                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer4, m136paddingqDBjuR0$default2);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                gapComposer4.startReusableNode();
                if (gapComposer4.inserting) {
                    gapComposer4.createNode(layoutNode$Companion$Constructor$12);
                } else {
                    gapComposer4.useNode();
                }
                Updater.m327setimpl(gapComposer4, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m327setimpl(gapComposer4, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m327setimpl(gapComposer4, Integer.valueOf(i11), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m326reconcileimpl(gapComposer4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m327setimpl(gapComposer4, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                float intValue = (parcelableSnapshotMutableIntState2.getIntValue() / (parcelableSnapshotMutableIntState2.getIntValue() + parcelableSnapshotMutableIntState3.getIntValue())) * 0.5f;
                float intValue2 = (1.0f - intValue) * (rememberScrollState.value$delegate.getIntValue() / parcelableSnapshotMutableIntState3.getIntValue());
                Modifier align = boxScopeInstance.align(SizeKt.fillMaxHeight(SizeKt.fillMaxWidth(companion4, 1.0f), intValue), Alignment.Companion.TopEnd);
                boolean changed = gapComposer4.changed(rememberScrollState) | gapComposer4.changed(intValue2);
                Object rememberedValue = gapComposer4.rememberedValue();
                if (changed || rememberedValue == Composer$Companion.Empty) {
                    r10 = 0;
                    YearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4 yearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4 = new YearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4(rememberScrollState, intValue2, false ? 1 : 0);
                    gapComposer4.updateRememberedValue(yearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4);
                    obj = yearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4;
                } else {
                    r10 = 0;
                    obj = rememberedValue;
                }
                BoxKt.Box(ImageKt.m46backgroundbw27NRU(OffsetKt.offset(align, (Function1) obj), ComposeColors.Gray300, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(2.0f)), gapComposer4, r10);
                z = true;
                gapComposer4.end(true);
                gapComposer4.end(r10);
            } else {
                z = true;
                gapComposer4.startReplaceGroup(-1892094997);
                gapComposer4.end(false);
            }
            gapComposer4.end(z);
            i3 = i7;
            str4 = str6;
            str3 = str5;
            gapComposer2 = gapComposer4;
        } else {
            gapComposer3.skipToGroupEnd();
            str3 = str;
            i3 = i;
            str4 = str2;
            gapComposer2 = gapComposer3;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda34(modifier, str3, i3, str4, highlightsScreen, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v17 */
    public static final void StandardScreenContent(Modifier modifier, YearInReviewScreenData.StandardScreen standardScreen, boolean z, Function1 function1, GapComposer gapComposer, int i) {
        GapComposer gapComposer2;
        ?? r0;
        int i2;
        GapComposer gapComposer3 = gapComposer;
        gapComposer3.startRestartGroup(871471851);
        int i3 = (i & 6) == 0 ? (gapComposer3.changed(modifier) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i3 |= gapComposer3.changedInstance(standardScreen) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i3 |= gapComposer3.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer3.changed(false) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer3.changedInstance(function1) ? 16384 : 8192;
        }
        if (gapComposer3.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            Context context = (Context) gapComposer3.consume(AndroidCompositionLocals_androidKt.LocalContext);
            String stringResource = UtilsKt.stringResource(R.string.year_in_review_media_wiki_faq_url, gapComposer3);
            Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer3, 6);
            long j = gapComposer3.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, modifier);
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
            Integer valueOf = Integer.valueOf(i4);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer3, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer3, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Header$default(context, z, function1, 1.5f, standardScreen, gapComposer3, ((i3 >> 6) & 896) | ((i3 >> 3) & 112) | 3072 | ((i3 << 9) & 57344), 0);
            ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer3, 0);
            long j2 = gapComposer3.compositeKeyHashCode;
            int i5 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer3.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer3, companion);
            gapComposer3.startReusableNode();
            if (gapComposer3.inserting) {
                gapComposer3.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer3.useNode();
            }
            Updater.m327setimpl(gapComposer3, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i5, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer3, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            Arrangement$End$1 arrangement$End$12 = OffsetKt.SpaceBetween;
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$End$12, Alignment.Companion.Top, gapComposer3, 6);
            long j3 = gapComposer3.compositeKeyHashCode;
            int i6 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer3.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer3, fillMaxWidth);
            gapComposer3.startReusableNode();
            if (gapComposer3.inserting) {
                gapComposer3.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer3.useNode();
            }
            Updater.m327setimpl(gapComposer3, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i6, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer3, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion, 16.0f, 10.0f, 8.0f, RecyclerView.DECELERATION_RATE, 8);
            IntrinsicSize intrinsicSize = IntrinsicSize.Min;
            Modifier then = OffsetKt.height(m136paddingqDBjuR0$default, intrinsicSize).then(new LayoutWeightElement(1.0f, true));
            String processString = processString(standardScreen.headlineText, gapComposer3, 0);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            long j4 = ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal)).primaryColor;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
            TextKt.m308TextNvy7gAk(processString, then, j4, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer3.consume(staticProvidableCompositionLocal2)).headlineMedium, gapComposer, 0, 0, 131064);
            GapComposer gapComposer4 = gapComposer;
            if (z) {
                r0 = 0;
                i2 = 2;
                gapComposer4.startReplaceGroup(-1562678105);
                gapComposer4.end(false);
            } else {
                gapComposer4.startReplaceGroup(-1563306599);
                boolean changedInstance = gapComposer4.changedInstance(context) | gapComposer4.changed(stringResource);
                Object rememberedValue = gapComposer4.rememberedValue();
                if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                    i2 = 2;
                    rememberedValue = new YearInReviewGeoSlideKt$$ExternalSyntheticLambda11(i2, context, stringResource);
                    gapComposer4.updateRememberedValue(rememberedValue);
                } else {
                    i2 = 2;
                }
                CardKt.IconButton((Function0) rememberedValue, null, false, null, null, f84lambda$284643966, gapComposer4, 1572864, 62);
                r0 = 0;
                gapComposer4.end(false);
            }
            gapComposer4.end(true);
            if (standardScreen instanceof YearInReviewScreenData.ReadingPatterns) {
                gapComposer4.startReplaceGroup(-1639312317);
                YearInReviewScreenData.ReadingPatterns readingPatterns = (YearInReviewScreenData.ReadingPatterns) standardScreen;
                Pair pair = new Pair(readingPatterns.favoriteTimeText, Integer.valueOf(R.string.year_in_review_slide_reading_patterns_body_favorite_time));
                Pair pair2 = new Pair(readingPatterns.favoriteDayText, Integer.valueOf(R.string.year_in_review_slide_reading_patterns_body_favorite_day));
                Pair pair3 = new Pair(readingPatterns.favoriteMonthText, Integer.valueOf(R.string.year_in_review_slide_reading_patterns_body_favorite_month));
                Pair[] pairArr = new Pair[3];
                pairArr[r0] = pair;
                pairArr[1] = pair2;
                pairArr[i2] = pair3;
                for (Map.Entry entry : MapsKt__MapsKt.mapOf(pairArr).entrySet()) {
                    ReadingPatternsItem((String) entry.getKey(), ((Number) entry.getValue()).intValue(), gapComposer4, r0);
                }
                gapComposer4.end(r0);
            } else {
                gapComposer4.startReplaceGroup(-1638622257);
                TabsBoxKt.m897HtmlTextKiACRJU(processString(standardScreen.bodyText, gapComposer4, r0), OffsetKt.height(OffsetKt.m135paddingqDBjuR0(companion, 16.0f, 10.0f, 16.0f, 16.0f), intrinsicSize), new TextLinkStyles(new SpanStyle(((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal)).progressiveColor, ContextsKt.getSp(16), (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65532), null, null, null), ((Typography) gapComposer4.consume(staticProvidableCompositionLocal2)).bodyLarge, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal)).primaryColor, 0, 0, 0L, null, null, 0, gapComposer4, 0, 4064);
                gapComposer4.end(r0);
            }
            gapComposer4.end(true);
            gapComposer4.end(true);
            gapComposer2 = gapComposer4;
        } else {
            gapComposer3.skipToGroupEnd();
            gapComposer2 = gapComposer3;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new YearInReviewScreenDeckKt$$ExternalSyntheticLambda30(modifier, standardScreen, z, function1, i);
        }
    }

    public static final void YearInReviewHighlightsScreen(Modifier modifier, YearInReviewScreenData.HighlightsScreen highlightsScreen, GapComposer gapComposer, int i) {
        int i2;
        int i3;
        int i4;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(-687174329);
        if ((i & 6) == 0) {
            i2 = i | (gapComposer2.changed(modifier) ? 4 : 2);
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(highlightsScreen) ? 32 : 16;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
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
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 60.0f, RecyclerView.DECELERATION_RATE, 16.0f, 5);
            gapComposer2.startReplaceGroup(-465954565);
            AnnotatedString.Builder builder = new AnnotatedString.Builder();
            builder.append(UtilsKt.stringResource(R.string.year_in_review_highlights_thank_you_message, gapComposer2));
            gapComposer2.startReplaceGroup(-465950487);
            int pushStyle = builder.pushStyle(new SpanStyle(0L, 0L, FontWeight.Normal, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531));
            try {
                builder.append(" ");
                builder.append(UtilsKt.stringResource(R.string.year_in_review_highlights_looking_forward_message, gapComposer2));
                builder.pop(pushStyle);
                gapComposer2.end(false);
                AnnotatedString annotatedString = builder.toAnnotatedString();
                gapComposer2.end(false);
                TextKt.m309TextZ58ophY(annotatedString, m136paddingqDBjuR0$default, ComposeColors.White, 0L, FontWeight.Medium, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer, 1573296, 0, 261048);
                Modifier then = SizeKt.fillMaxWidth(companion, 1.0f).then(new LayoutWeightElement(1.0f, false));
                long j2 = ComposeColors.Gray100;
                RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
                gapComposer2 = gapComposer;
                i3 = i;
                i4 = 18;
                ShareableHighlightsCard(OffsetKt.m134paddingVpY3zN4$default(ImageKt.m48borderxT4_qwU(ImageKt.m46backgroundbw27NRU(then, j2, rectangleShapeKt$RectangleShape$1), 1.0f, ComposeColors.Gray300, rectangleShapeKt$RectangleShape$1), 8.0f, RecyclerView.DECELERATION_RATE, 2), null, 0, null, highlightsScreen, gapComposer2, (i2 << 9) & 57344);
                gapComposer2.end(true);
            } catch (Throwable th) {
                builder.pop(pushStyle);
                throw th;
            }
        } else {
            i3 = i;
            i4 = 18;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ForYouCardKt$$ExternalSyntheticLambda31(modifier, highlightsScreen, i3, i4);
        }
    }

    public static final void YearInReviewOnboardingBottomBar(Function0 function0, UiState uiState, GapComposer gapComposer, int i) {
        function0.getClass();
        uiState.getClass();
        gapComposer.startRestartGroup(1191763280);
        int i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i | (gapComposer.changed(uiState) ? 32 : 16);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            AppBarKt.m253BottomAppBar1oL4kX8(null, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, null, Expect_jvmKt.rememberComposableLambda(808304728, new OnThisDayGameKt$$ExternalSyntheticLambda13((Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext), UtilsKt.stringResource(R.string.year_in_review_media_wiki_url, gapComposer), uiState, function0), gapComposer), gapComposer, 1572864);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1(function0, uiState, i);
        }
    }

    public static final void YearInReviewOnboardingContent(Modifier modifier, GapComposer gapComposer, int i) {
        Modifier then;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(293216781);
        int i2 = i | (gapComposer2.changed(modifier) ? 4 : 2);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
            Modifier fillMaxHeight = SizeKt.fillMaxHeight(modifier, 1.0f);
            BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 6);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, fillMaxHeight);
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
            Modifier scroll$default = ImageKt.scroll$default(ViewSizeResolver$CC.m(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14, 1.0f, true), ImageKt.rememberScrollState(gapComposer2), true);
            ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 0);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, scroll$default);
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
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            then = SizeKt.fillMaxWidth(companion, 1.0f).then(new AspectRatioElement(1.5f));
            Modifier clip = ClipKt.clip(then, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f));
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j3 = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, clip);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            ImageRequest.Builder builder = new ImageRequest.Builder((Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext));
            builder.data = Integer.valueOf(R.drawable.yir_puzzle_pinch);
            ImageRequests_androidKt.allowHardware(builder);
            AsyncImageKt.m776SubcomposeAsyncImagenc27qi8(builder.build(), UtilsKt.stringResource(R.string.year_in_review_screendeck_image_content_description, gapComposer2), SizeKt.FillWholeMaxSize, lambda$822070854, f87lambda$947382240, null, gapComposer2, 221568, 65480);
            gapComposer2.end(true);
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion, 16.0f, 16.0f, 8.0f, RecyclerView.DECELERATION_RATE, 8);
            String stringResource = UtilsKt.stringResource(R.string.year_in_review_get_started_headline, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            long j4 = ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
            TextKt.m308TextNvy7gAk(stringResource, m136paddingqDBjuR0$default, j4, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).headlineMedium, gapComposer, 0, 0, 130040);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.year_in_review_get_started_bodytext, gapComposer), OffsetKt.m135paddingqDBjuR0(companion, 16.0f, 10.0f, 16.0f, 16.0f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).bodyLarge, gapComposer, 0, 0, 130040);
            gapComposer.end(true);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.year_in_review_get_started_info, gapComposer), OffsetKt.m136paddingqDBjuR0$default(companion, 16.0f, 10.0f, 16.0f, RecyclerView.DECELERATION_RATE, 8), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).secondaryColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).bodySmall, gapComposer, 0, 0, 130040);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda10(modifier, i, 4);
        }
    }

    public static final void YearInReviewOnboardingScreen(Modifier modifier, UiState uiState, Function0 function0, Function0 function02, GapComposer gapComposer, int i, int i2) {
        UiState uiState2;
        int i3;
        Modifier modifier2;
        UiState uiState3;
        function0.getClass();
        function02.getClass();
        gapComposer.startRestartGroup(1897656157);
        int i4 = i | 6;
        int i5 = i2 & 2;
        if (i5 != 0) {
            i3 = i | 54;
            uiState2 = uiState;
        } else {
            uiState2 = uiState;
            i3 = i4 | (gapComposer.changed(uiState2) ? 32 : 16);
        }
        if ((i & 384) == 0) {
            i3 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer.changedInstance(function02) ? 2048 : 1024;
        }
        byte b = 0;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            uiState3 = i5 != 0 ? UiState.Loading.INSTANCE : uiState2;
            long j = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor;
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1708623591, new RandomScreenKt$$ExternalSyntheticLambda16(function0, 9, b), gapComposer);
            ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(-658754376, new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1(function02, uiState3), gapComposer);
            ComposableLambdaImpl rememberComposableLambda3 = Expect_jvmKt.rememberComposableLambda(898972718, new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(b), gapComposer);
            modifier2 = Modifier.Companion.$$INSTANCE;
            CardKt.m270ScaffoldTvnljyQ(modifier2, rememberComposableLambda, rememberComposableLambda2, null, null, 0, j, 0L, null, rememberComposableLambda3, gapComposer, 805306806, 440);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            uiState3 = uiState2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda34(modifier2, uiState3, function0, function02, i, i2, 2);
        }
    }

    public static final void YearInReviewScreenCaptureHandler(YearInReviewCaptureRequest yearInReviewCaptureRequest, Function0 function0, GapComposer gapComposer, int i) {
        function0.getClass();
        gapComposer.startRestartGroup(-938710322);
        int i2 = (gapComposer.changed(yearInReviewCaptureRequest) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (rememberedValue == obj) {
                rememberedValue = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CoroutineScope coroutineScope = (CoroutineScope) rememberedValue;
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            String stringResource = UtilsKt.stringResource(R.string.year_in_review_share_url, gapComposer);
            String stringResource2 = UtilsKt.stringResource(R.string.year_in_review_share_body, gapComposer);
            String stringResource3 = UtilsKt.stringResource(R.string.year_in_review_hashtag, gapComposer);
            String stringResource4 = UtilsKt.stringResource(R.string.year_in_review_share_subject, gapComposer);
            boolean changed = gapComposer.changed(stringResource) | gapComposer.changed(stringResource2) | gapComposer.changed(stringResource3) | gapComposer.changedInstance(coroutineScope) | gapComposer.changedInstance(context) | gapComposer.changed(stringResource4);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == obj) {
                Object gamesHubScreenKt$$ExternalSyntheticLambda24 = new GamesHubScreenKt$$ExternalSyntheticLambda24(stringResource, stringResource2, stringResource3, coroutineScope, context, stringResource4, function0);
                gapComposer.updateRememberedValue(gamesHubScreenKt$$ExternalSyntheticLambda24);
                rememberedValue2 = gamesHubScreenKt$$ExternalSyntheticLambda24;
            }
            Function1 function1 = (Function1) rememberedValue2;
            if (yearInReviewCaptureRequest instanceof YearInReviewCaptureRequest.StandardScreen) {
                gapComposer.startReplaceGroup(-586048360);
                CreateScreenShotBitmap(((YearInReviewCaptureRequest.StandardScreen) yearInReviewCaptureRequest).screenData, null, function1, gapComposer, 48);
                gapComposer.end(false);
            } else if (yearInReviewCaptureRequest instanceof YearInReviewCaptureRequest.GeoScreen) {
                gapComposer.startReplaceGroup(-585785635);
                YearInReviewCaptureRequest.GeoScreen geoScreen = (YearInReviewCaptureRequest.GeoScreen) yearInReviewCaptureRequest;
                CreateScreenShotBitmap(geoScreen.screenData, geoScreen.requestScreenshotBitmap, function1, gapComposer, 0);
                gapComposer.end(false);
            } else {
                if (!(yearInReviewCaptureRequest instanceof YearInReviewCaptureRequest.HighlightsScreen)) {
                    throw Modifier.CC.m(gapComposer, -157454293, false);
                }
                gapComposer.startReplaceGroup(-585504775);
                ShareHighlightsScreenCapture(((YearInReviewCaptureRequest.HighlightsScreen) yearInReviewCaptureRequest).data, function1, gapComposer, 0);
                gapComposer.end(false);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomActivity$$ExternalSyntheticLambda1(yearInReviewCaptureRequest, function0, i, 22);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void YearInReviewScreenContent(final androidx.compose.ui.Modifier r14, final org.wikipedia.yearinreview.YearInReviewScreenData r15, final kotlin.jvm.functions.Function2 r16, boolean r17, kotlin.jvm.functions.Function1 r18, androidx.compose.runtime.GapComposer r19, final int r20, final int r21) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.yearinreview.YearInReviewDialog.YearInReviewScreenContent(androidx.compose.ui.Modifier, org.wikipedia.yearinreview.YearInReviewScreenData, kotlin.jvm.functions.Function2, boolean, kotlin.jvm.functions.Function1, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void YearInReviewScreenDeck(Modifier modifier, UiState uiState, Function2 function2, Function1 function1, Function2 function22, Function0 function0, Function0 function02, GapComposer gapComposer, int i, int i2) {
        Function1 function12;
        int i3;
        int i4;
        int i5;
        Function0 function03;
        int i6;
        Modifier modifier2;
        Function0 function04;
        Function1 function13;
        Function2 function23;
        Function1 function14;
        Function2 function24;
        Function0 function05;
        Function2 function25;
        Function1 function15;
        Function0 function06;
        uiState.getClass();
        gapComposer.startRestartGroup(-1754286828);
        int i7 = i | 6 | (gapComposer.changed(uiState) ? 32 : 16);
        if ((i & 384) == 0) {
            i7 |= gapComposer.changedInstance(function2) ? 256 : 128;
        }
        int i8 = i2 & 8;
        if (i8 != 0) {
            i3 = i7 | 3072;
            function12 = function1;
        } else {
            function12 = function1;
            i3 = i7 | (gapComposer.changedInstance(function12) ? 2048 : 1024);
        }
        int i9 = i2 & 16;
        if (i9 != 0) {
            i4 = i3 | 24576;
        } else {
            i4 = i3 | (gapComposer.changedInstance(function22) ? 16384 : 8192);
        }
        int i10 = i2 & 32;
        if (i10 != 0) {
            i5 = i4 | 196608;
        } else {
            i5 = i4 | (gapComposer.changedInstance(function0) ? 131072 : 65536);
        }
        int i11 = i2 & 64;
        if (i11 != 0) {
            i6 = i5 | 1572864;
            function03 = function02;
        } else {
            function03 = function02;
            i6 = i5 | (gapComposer.changedInstance(function03) ? 1048576 : 524288);
        }
        final byte b = 0;
        final int i12 = 1;
        if (gapComposer.shouldExecute(i6 & 1, (i6 & 599187) != 599186)) {
            int i13 = 7;
            Object obj = Composer$Companion.Empty;
            if (i8 != 0) {
                Object rememberedValue = gapComposer.rememberedValue();
                if (rememberedValue == obj) {
                    rememberedValue = new StringUtil$$ExternalSyntheticLambda0(i13);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                function14 = (Function1) rememberedValue;
            } else {
                function14 = function12;
            }
            if (i9 != 0) {
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (rememberedValue2 == obj) {
                    rememberedValue2 = new YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(b, b);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                function24 = (Function2) rememberedValue2;
            } else {
                function24 = function22;
            }
            if (i10 != 0) {
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (rememberedValue3 == obj) {
                    rememberedValue3 = new Function0() { // from class: org.wikipedia.yearinreview.YearInReviewScreenDeckKt$$ExternalSyntheticLambda6
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i14 = b;
                            return Unit.INSTANCE;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                function05 = (Function0) rememberedValue3;
            } else {
                function05 = function0;
            }
            if (i11 != 0) {
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (rememberedValue4 == obj) {
                    rememberedValue4 = new Function0() { // from class: org.wikipedia.yearinreview.YearInReviewScreenDeckKt$$ExternalSyntheticLambda6
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i14 = i12;
                            return Unit.INSTANCE;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue4);
                }
                function03 = (Function0) rememberedValue4;
            }
            boolean z = uiState instanceof UiState.Loading;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (z) {
                gapComposer.startReplaceGroup(-796417276);
                LoadingIndicator(0, gapComposer);
                gapComposer.end(false);
                function25 = function24;
                function06 = function05;
                function15 = function14;
                modifier2 = companion;
            } else {
                Continuation continuation = null;
                if (uiState instanceof UiState.Success) {
                    gapComposer.startReplaceGroup(-796134370);
                    Object rememberedValue5 = gapComposer.rememberedValue();
                    if (rememberedValue5 == obj) {
                        rememberedValue5 = new CachedPagingDataKt$cachedIn$4(2, i13, continuation);
                        gapComposer.updateRememberedValue(rememberedValue5);
                    }
                    Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue5);
                    List list = (List) ((UiState.Success) uiState).data;
                    boolean changedInstance = gapComposer.changedInstance(list);
                    Object rememberedValue6 = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue6 == obj) {
                        rememberedValue6 = new Handshake$Companion$$ExternalSyntheticLambda0(list, 6);
                        gapComposer.updateRememberedValue(rememberedValue6);
                    }
                    DefaultPagerState rememberPagerState = PagerStateKt.rememberPagerState((Function0) rememberedValue6, gapComposer, 0, 3);
                    Object rememberedValue7 = gapComposer.rememberedValue();
                    if (rememberedValue7 == obj) {
                        rememberedValue7 = Updater.mutableStateOf$default(null);
                        gapComposer.updateRememberedValue(rememberedValue7);
                    }
                    MutableState mutableState = (MutableState) rememberedValue7;
                    YearInReviewCaptureRequest yearInReviewCaptureRequest = (YearInReviewCaptureRequest) mutableState.getValue();
                    if (yearInReviewCaptureRequest == null) {
                        gapComposer.startReplaceGroup(-795933987);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(-795933986);
                        Object rememberedValue8 = gapComposer.rememberedValue();
                        if (rememberedValue8 == obj) {
                            rememberedValue8 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda32(mutableState, 13);
                            gapComposer.updateRememberedValue(rememberedValue8);
                        }
                        YearInReviewScreenCaptureHandler(yearInReviewCaptureRequest, (Function0) rememberedValue8, gapComposer, 48);
                        gapComposer.end(false);
                    }
                    Modifier safeDrawingPadding = OffsetKt.safeDrawingPadding(companion);
                    long j = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor;
                    ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-34403889, new RandomScreenKt$$ExternalSyntheticLambda1(list, rememberPagerState, function05, function14), gapComposer);
                    Function2 function26 = function24;
                    function25 = function26;
                    function15 = function14;
                    ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(-271021714, new NewsModuleKt$$ExternalSyntheticLambda2(list, rememberPagerState, function26, function2, function14, mutableState), gapComposer);
                    ComposableLambdaImpl rememberComposableLambda3 = Expect_jvmKt.rememberComposableLambda(-1874446108, new AboutActivityKt$$ExternalSyntheticLambda2(rememberPagerState, list, function2, 12), gapComposer);
                    modifier2 = companion;
                    CardKt.m270ScaffoldTvnljyQ(safeDrawingPadding, rememberComposableLambda, rememberComposableLambda2, null, null, 0, j, 0L, null, rememberComposableLambda3, gapComposer, 805306800, 440);
                    gapComposer.end(false);
                    function06 = function05;
                    function03 = function03;
                } else {
                    function25 = function24;
                    function15 = function14;
                    Function0 function07 = function03;
                    int i14 = i6;
                    function06 = function05;
                    modifier2 = companion;
                    if (!(uiState instanceof UiState.Error)) {
                        throw Modifier.CC.m(gapComposer, 2052525130, false);
                    }
                    gapComposer.startReplaceGroup(-789552605);
                    FillElement fillElement = SizeKt.FillWholeMaxSize;
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    long j2 = gapComposer.compositeKeyHashCode;
                    int i15 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, fillElement);
                    ComposeUiNode.Companion.getClass();
                    Function0 function08 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(function08);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer, Integer.valueOf(i15), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Modifier align = BoxScopeInstance.INSTANCE.align(modifier2, Alignment.Companion.Center);
                    Throwable th = ((UiState.Error) uiState).error;
                    boolean z2 = (3670016 & i14) == 1048576;
                    Object rememberedValue9 = gapComposer.rememberedValue();
                    if (z2 || rememberedValue9 == obj) {
                        function03 = function07;
                        rememberedValue9 = new SearchResultsScreenKt$$ExternalSyntheticLambda1(18, function03);
                        gapComposer.updateRememberedValue(rememberedValue9);
                    } else {
                        function03 = function07;
                    }
                    Function0 function09 = (Function0) rememberedValue9;
                    boolean z3 = (i14 & 458752) == 131072;
                    Object rememberedValue10 = gapComposer.rememberedValue();
                    if (z3 || rememberedValue10 == obj) {
                        rememberedValue10 = new SearchResultsScreenKt$$ExternalSyntheticLambda1(19, function06);
                        gapComposer.updateRememberedValue(rememberedValue10);
                    }
                    Okio__JvmOkioKt.WikiErrorView(align, th, new WikiErrorClickEvents(function09, (Function0) rememberedValue10, null, 12), false, gapComposer, 0, 20);
                    gapComposer.end(true);
                    gapComposer.end(false);
                }
            }
            function04 = function06;
            function13 = function15;
            function23 = function25;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            function04 = function0;
            function13 = function12;
            function23 = function22;
        }
        Function0 function010 = function03;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AsyncImageKt$$ExternalSyntheticLambda0(modifier2, uiState, function2, function13, function23, function04, function010, i, i2);
        }
    }

    public static void maybeShowYearInReviewFeedbackDialog(AppCompatActivity appCompatActivity) {
        Prefs prefs = Prefs.INSTANCE;
        if (Prefs.getYearInReviewSurveyState() != YearInReviewSurveyState.SHOULD_SHOW) {
            return;
        }
        UriUtil.submit$default(238, null, "impression", null, "feedback_choice", null);
        ActivityTalkReplyBinding inflate = ActivityTalkReplyBinding.inflate(appCompatActivity.getLayoutInflater());
        TextInputLayout textInputLayout = (TextInputLayout) inflate.replySubjectLayout;
        inflate.replyNextButton.setText(appCompatActivity.getString(R.string.year_in_review_survey_title));
        inflate.learnMoreButton.setText(appCompatActivity.getString(R.string.year_in_review_survey_subtitle));
        textInputLayout.setVisibility(0);
        ((RadioButton) inflate.replyInputView).setVisibility(0);
        ((RadioButton) inflate.replyToolbar).setVisibility(0);
        textInputLayout.setHint(appCompatActivity.getString(R.string.year_in_review_survey_placeholder_text));
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(appCompatActivity, 0);
        ScrollView scrollView = (ScrollView) inflate.talkScrollContainer;
        AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
        alertParams.mView = scrollView;
        alertParams.mCancelable = false;
        AlertDialog create = materialAlertDialogBuilder.create();
        ((Button) inflate.rootView).setOnClickListener(new ViewUtil$$ExternalSyntheticLambda0(9, create));
        ((Button) inflate.threadItemView).setOnClickListener(new SurveyDialog$$ExternalSyntheticLambda1(inflate, appCompatActivity, create, 7));
        ((PlainPasteEditText) inflate.replySubjectText).setOnFocusChangeListener(new SurveyDialog$$ExternalSyntheticLambda3(1, appCompatActivity, inflate));
        create.show();
        Prefs.setYearInReviewSurveyState(YearInReviewSurveyState.SHOWN);
    }

    public static final String processString(Object obj, GapComposer gapComposer, int i) {
        if (!(obj instanceof Integer)) {
            gapComposer.startReplaceGroup(1086942185);
            gapComposer.end(false);
            return String.valueOf(obj);
        }
        gapComposer.startReplaceGroup(1086940599);
        String stringResource = UtilsKt.stringResource(((Number) obj).intValue(), gapComposer);
        gapComposer.end(false);
        return stringResource;
    }

    public static final Modifier yearInReviewHeaderBackground(Modifier modifier) {
        modifier.getClass();
        return ImageKt.background$default(modifier, Lock.m12linearGradientmHitzGk$default(new Pair[]{new Pair(Float.valueOf(0.125f), new Color(ColorKt.Color(4279703319L))), new Pair(Float.valueOf(0.225f), new Color(ColorKt.Color(4278206277L))), new Pair(Float.valueOf(0.285f), new Color(ColorKt.Color(4278222970L))), new Pair(Float.valueOf(0.44f), new Color(ColorKt.Color(4281003174L))), new Pair(Float.valueOf(0.525f), new Color(ColorKt.Color(4287037356L))), new Pair(Float.valueOf(0.65f), new Color(ColorKt.Color(4294967295L)))}, (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) & 4294967295L), (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (Float.floatToRawIntBits(Float.POSITIVE_INFINITY) & 4294967295L), 8), null, 6);
    }
}
