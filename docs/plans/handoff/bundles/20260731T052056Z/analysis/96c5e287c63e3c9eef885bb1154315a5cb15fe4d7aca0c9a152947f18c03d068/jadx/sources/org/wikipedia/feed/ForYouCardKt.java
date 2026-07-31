package org.wikipedia.feed;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.DateFormat;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
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
import androidx.compose.foundation.layout.SizeElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda7;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
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
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.painter.BrushPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
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
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.navigation.NavGraphNavigator$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import coil3.compose.AsyncImageKt;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import j$.time.LocalDate;
import j$.time.format.DateTimeFormatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlin.text.RegexKt;
import kotlinx.coroutines.CoroutineContextKt$$ExternalSyntheticLambda0;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import okhttp3.Headers;
import okio.Okio__JvmOkioKt;
import okio.Okio__OkioKt;
import org.jsoup.nodes.NodeUtils;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.R;
import org.wikipedia.compose.components.NotificationBellState;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.HomeAction;
import org.wikipedia.feed.model.EmptyCommunityCard;
import org.wikipedia.feed.model.EmptyForYouCard;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda25;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.main.MainActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ForYouCardKt {

    /* renamed from: lambda$-1008921578, reason: not valid java name */
    public static final ComposableLambdaImpl f32lambda$1008921578;

    /* renamed from: lambda$-1677717949, reason: not valid java name */
    public static final ComposableLambdaImpl f34lambda$1677717949;

    /* renamed from: lambda$-168430649, reason: not valid java name */
    public static final ComposableLambdaImpl f35lambda$168430649;

    /* renamed from: lambda$-490872536, reason: not valid java name */
    public static final ComposableLambdaImpl f39lambda$490872536;

    /* renamed from: lambda$-970361085, reason: not valid java name */
    public static final ComposableLambdaImpl f40lambda$970361085;
    public static final ComposableLambdaImpl lambda$1459791436;
    public static final ComposableLambdaImpl lambda$159733169;
    public static final ComposableLambdaImpl lambda$1655693929;

    /* renamed from: lambda$-1859074208, reason: not valid java name */
    public static final ComposableLambdaImpl f36lambda$1859074208 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(21), false, -1859074208);
    public static final ComposableLambdaImpl lambda$1595655198 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(22), false, 1595655198);

    /* renamed from: lambda$-429809904, reason: not valid java name */
    public static final ComposableLambdaImpl f38lambda$429809904 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(27), false, -429809904);

    /* renamed from: lambda$-2108534547, reason: not valid java name */
    public static final ComposableLambdaImpl f37lambda$2108534547 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(28), false, -2108534547);
    public static final ComposableLambdaImpl lambda$1540276921 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(29), false, 1540276921);

    /* renamed from: lambda$-1101369002, reason: not valid java name */
    public static final ComposableLambdaImpl f33lambda$1101369002 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(1), false, -1101369002);

    static {
        new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(23), false, -1738560199);
        f34lambda$1677717949 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(2), false, -1677717949);
        lambda$1459791436 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(3), false, 1459791436);
        f40lambda$970361085 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(4), false, -970361085);
        lambda$159733169 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(5), false, 159733169);
        f39lambda$490872536 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(6), false, -490872536);
        lambda$1655693929 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(7), false, 1655693929);
        f32lambda$1008921578 = new ComposableLambdaImpl(new ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0(0), false, -1008921578);
        f35lambda$168430649 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(8), false, -168430649);
    }

    public static final void CommunityContentTab(Modifier modifier, WikiSite wikiSite, CommunityContentState communityContentState, PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState, Function1 function1, GapComposer gapComposer, int i) {
        WikiSite wikiSite2;
        Function1 function12;
        GapComposer gapComposer2;
        boolean z;
        wikiSite.getClass();
        communityContentState.getClass();
        Throwable th = communityContentState.error;
        gapComposer.startRestartGroup(-765300056);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changedInstance(wikiSite) ? 32 : 16) | (gapComposer.changedInstance(communityContentState) ? 256 : 128) | (gapComposer.changedInstance(pageOverflowMenuState) ? 2048 : 1024) | (gapComposer.changedInstance(function1) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            if (communityContentState.isInitialLoading) {
                gapComposer.startReplaceGroup(-1367274035);
                LoadingIndicator(SizeKt.fillMaxHeight(modifier, 1.0f), gapComposer, 0, 0);
                gapComposer.end(false);
            } else {
                FeedEmptyState feedEmptyState = communityContentState.emptyState;
                FeedEmptyState feedEmptyState2 = FeedEmptyState.ALL_MODULES_HIDDEN;
                NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                if (feedEmptyState == feedEmptyState2 || feedEmptyState == FeedEmptyState.NO_DATA) {
                    wikiSite2 = wikiSite;
                    function12 = function1;
                    gapComposer.startReplaceGroup(-1367060972);
                    Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
                    function12.invoke(new HomeAction.CardImpression(new EmptyCommunityCard(), 0));
                    Modifier scroll$default = ImageKt.scroll$default(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(SizeKt.FillWholeMaxSize, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, ColorKt.RectangleShape), 16.0f), ImageKt.rememberScrollState(gapComposer), true);
                    String string = ContextKt.getString(context, wikiSite2.languageCode, R.string.home_feed_screen_empty_state_label, new Object[0]);
                    String string2 = ContextKt.getString(context, wikiSite2.languageCode, R.string.home_feed_community_screen_all_modules_disabled_description, new Object[0]);
                    String string3 = ContextKt.getString(context, wikiSite2.languageCode, R.string.home_feed_screen_all_modules_disabled_btn_label, new Object[0]);
                    z = (i2 & 57344) == 16384;
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (z || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new HomeScreenKt$$ExternalSyntheticLambda4(function12, 10);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    gapComposer2 = gapComposer;
                    FeedEmptyStateView(scroll$default, string, string2, string3, (Function0) rememberedValue, gapComposer2, 0);
                    gapComposer2.end(false);
                } else if (th == null || !communityContentState.cards.isEmpty()) {
                    gapComposer.startReplaceGroup(-1365578056);
                    String str = wikiSite.languageCode;
                    str.getClass();
                    wikiSite2 = wikiSite;
                    function12 = function1;
                    Updater.CompositionLocalProvider(CompositionLocalsKt.LocalLayoutDirection.defaultProvidedValue$runtime(TextUtils.getLayoutDirectionFromLocale(new Locale(str)) == 1 ? LayoutDirection.Rtl : LayoutDirection.Ltr), Expect_jvmKt.rememberComposableLambda(-1668240215, new CommunityContentTabKt$$ExternalSyntheticLambda44(modifier, wikiSite, communityContentState, function1, pageOverflowMenuState), gapComposer), gapComposer, 56);
                    gapComposer.end(false);
                    gapComposer2 = gapComposer;
                } else {
                    gapComposer.startReplaceGroup(-1366133266);
                    z = (i2 & 57344) == 16384;
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (z || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda4(function1, 11);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    ErrorState(th, (Function0) rememberedValue2, gapComposer, 0);
                    gapComposer.end(false);
                }
            }
            wikiSite2 = wikiSite;
            function12 = function1;
            gapComposer2 = gapComposer;
        } else {
            wikiSite2 = wikiSite;
            function12 = function1;
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CommunityContentTabKt$$ExternalSyntheticLambda44(modifier, wikiSite2, communityContentState, pageOverflowMenuState, function12, i);
        }
    }

    public static final void CommunityDisclaimer(Modifier modifier, WikiSite wikiSite, GapComposer gapComposer, int i) {
        GapComposer gapComposer2 = gapComposer;
        modifier.getClass();
        wikiSite.getClass();
        gapComposer2.startRestartGroup(2126898821);
        int i2 = i | (gapComposer2.changedInstance(wikiSite) ? 32 : 16);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
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
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(fillElement, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).borderColor, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(24.0f)), 16.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(10.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer2, 54);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m132padding3ABfNKs);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i4, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            TextKt.m308TextNvy7gAk(ContextKt.getString((Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext), wikiSite.languageCode, R.string.explore_feed_community_disclaimer, new Object[0]), ViewSizeResolver$CC.m(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14, 1.0f, true), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyMedium, gapComposer, 0, 0, 131064);
            gapComposer2 = gapComposer;
            ImageKt.Image(UnsignedKt.painterResource(R.drawable.w_nav_mark, 0, gapComposer2), null, SizeKt.m145size3ABfNKs(Modifier.Companion.$$INSTANCE, 45.0f), null, null, RecyclerView.DECELERATION_RATE, null, gapComposer2, 440, 120);
            gapComposer2.end(true);
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda17(modifier, wikiSite, i, 26);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0529  */
    /* JADX WARN: Removed duplicated region for block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0516  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x045e  */
    /* renamed from: CommunityModuleContainer-Yod850M, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m906CommunityModuleContainerYod850M(androidx.compose.ui.Modifier r48, final org.wikipedia.dataclient.WikiSite r49, final int r50, int r51, java.lang.Integer r52, long r53, kotlin.jvm.functions.Function0 r55, kotlin.jvm.functions.Function0 r56, kotlin.jvm.functions.Function0 r57, final androidx.compose.runtime.internal.ComposableLambdaImpl r58, androidx.compose.runtime.GapComposer r59, final int r60, final int r61) {
        /*
            Method dump skipped, instructions count: 1338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.ForYouCardKt.m906CommunityModuleContainerYod850M(androidx.compose.ui.Modifier, org.wikipedia.dataclient.WikiSite, int, int, java.lang.Integer, long, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void DayHeader(LocalDate localDate, boolean z, GapComposer gapComposer, int i, int i2) {
        boolean z2;
        int i3;
        String format;
        gapComposer.startRestartGroup(670859511);
        int i4 = i | (gapComposer.changedInstance(localDate) ? 4 : 2);
        int i5 = i2 & 2;
        if (i5 != 0) {
            i3 = i4 | 48;
            z2 = z;
        } else {
            z2 = z;
            i3 = i4 | (gapComposer.changed(z2) ? 32 : 16);
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            boolean z3 = i5 != 0 ? true : z2;
            DateTimeFormatter ofPattern = DateTimeFormatter.ofPattern(DateFormat.getBestDateTimePattern(((androidx.compose.ui.text.intl.Locale) gapComposer.consume(CompositionLocalsKt.LocalLocale)).platformLocale, "MMM dd, yyyy"));
            if (LocalDate.now().getDayOfYear() == localDate.getDayOfYear()) {
                gapComposer.startReplaceGroup(450904419);
                String format2 = localDate.format(ofPattern);
                format2.getClass();
                format = UtilsKt.stringResource(R.string.explore_feed_date_today, new Object[]{format2}, gapComposer);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(450907148);
                gapComposer.end(false);
                format = localDate.format(ofPattern);
            }
            format.getClass();
            TextKt.m308TextNvy7gAk(format, OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 16.0f, z3 ? 16.0f : 24.0f, 16.0f, RecyclerView.DECELERATION_RATE, 8), ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, null, ContextsKt.getSp(14), FontWeight.Bold, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer, 1597440, 0, 262056);
            z2 = z3;
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedComponentsKt$$ExternalSyntheticLambda1(localDate, z2, i, i2);
        }
    }

    public static final void EmptyStateActionRow(int i, String str, Function0 function0, Modifier modifier, GapComposer gapComposer, int i2) {
        int i3;
        Modifier modifier2;
        GapComposer gapComposer2 = gapComposer;
        function0.getClass();
        gapComposer2.startRestartGroup(313164750);
        if ((i2 & 6) == 0) {
            i3 = (gapComposer2.changed(i) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer2.changed(str) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= gapComposer2.changedInstance(function0) ? 256 : 128;
        }
        int i4 = i3 | 3072;
        int i5 = 0;
        if (gapComposer2.shouldExecute(i4 & 1, (i4 & 1171) != 1170)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer2, 54);
            long j = gapComposer2.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
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
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Painter painterResource = UnsignedKt.painterResource(i, i4 & 14, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            IconKt.m286Iconww6aTOc(painterResource, null, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, gapComposer2, 56, 4);
            TextLinkStyles textLinkStyles = new TextLinkStyles(new SpanStyle(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, ContextsKt.getSp(14), (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.Underline, (Shadow) null, 61436), null, null, null);
            long j2 = ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor;
            TextStyle textStyle = ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyMedium;
            boolean z = (i4 & 896) == 256;
            Object rememberedValue = gapComposer2.rememberedValue();
            if (z || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new ForYouContentTabKt$$ExternalSyntheticLambda75(i5, function0);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            TabsBoxKt.m897HtmlTextKiACRJU(str, null, textLinkStyles, textStyle, j2, 0, 0, 0L, (LinkInteractionListener) rememberedValue, null, 0, gapComposer, (i4 >> 3) & 14, 3810);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
            modifier2 = companion;
        } else {
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ForYouContentTabKt$$ExternalSyntheticLambda76(i, str, function0, modifier2, i2);
        }
    }

    public static final void ErrorState(Throwable th, Function0 function0, GapComposer gapComposer, int i) {
        th.getClass();
        function0.getClass();
        gapComposer.startRestartGroup(-1784486940);
        int i2 = (gapComposer.changedInstance(th) ? 4 : 2) | i | (gapComposer.changedInstance(function0) ? 32 : 16);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 32.0f);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.CenterHorizontally, gapComposer, 48);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m132padding3ABfNKs);
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
            boolean z = (i2 & 112) == 32;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new Handshake$$ExternalSyntheticLambda0(12, function0);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Okio__JvmOkioKt.WikiErrorView(companion, th, new WikiErrorClickEvents((Function0) rememberedValue, null, null, 14), true, gapComposer, ((i2 << 3) & 112) | 24582, 4);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda17(th, function0, i, 27);
        }
    }

    public static final void FeedEmptyStateView(Modifier modifier, String str, String str2, String str3, Function0 function0, GapComposer gapComposer, int i) {
        GapComposer gapComposer2 = gapComposer;
        function0.getClass();
        gapComposer2.startRestartGroup(1053636160);
        int i2 = i | (gapComposer2.changed(modifier) ? 4 : 2) | (gapComposer2.changed(str) ? 32 : 16) | (gapComposer2.changed(str2) ? 256 : 128) | (gapComposer2.changed(str3) ? 2048 : 1024) | (gapComposer2.changedInstance(function0) ? 16384 : 8192);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, false, new EasingKt$$ExternalSyntheticLambda0(11)), Alignment.Companion.CenterHorizontally, gapComposer2, 54);
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
            ImageKt.Image(UnsignedKt.painterResource(R.drawable.empty_feed_illustration, 0, gapComposer2), null, OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 16.0f, 7), null, null, RecyclerView.DECELERATION_RATE, null, gapComposer2, 440, 120);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
            TextStyle m647copyp1EtxEg$default = TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).titleMedium, 0L, 0L, FontWeight.SemiBold, null, ContextsKt.getSp(0.15d), 0L, null, 16777083);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
            TextKt.m308TextNvy7gAk(str, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, m647copyp1EtxEg$default, gapComposer, (i2 >> 3) & 14, 0, 131066);
            TabsBoxKt.m897HtmlTextKiACRJU(str2, null, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(staticProvidableCompositionLocal)).bodyMedium, 0L, 0L, null, null, ContextsKt.getSp(0.25d), 0L, null, 16777087), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).secondaryColor, 0, 0, 0L, null, null, 3, gapComposer, (i2 >> 6) & 14, 3046);
            gapComposer2 = gapComposer;
            TabsBoxKt.m895AppButtont6yy7ic(function0, null, 0L, 0L, Expect_jvmKt.rememberComposableLambda(-1779616070, new HomeScreenKt$$ExternalSyntheticLambda30(str3, 9, (byte) 0), gapComposer2), gapComposer2, ((i2 >> 12) & 14) | 24576, 14);
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedComponentsKt$$ExternalSyntheticLambda5(modifier, str, str2, str3, function0, i, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00b8  */
    /* renamed from: FeedFeatureTeaserModule-0vH8DBg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m907FeedFeatureTeaserModule0vH8DBg(java.lang.String r34, java.lang.String r35, java.lang.String r36, androidx.compose.ui.graphics.painter.Painter r37, java.util.List r38, androidx.compose.ui.Modifier r39, float r40, kotlin.jvm.functions.Function0 r41, androidx.compose.runtime.GapComposer r42, int r43, int r44) {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.ForYouCardKt.m907FeedFeatureTeaserModule0vH8DBg(java.lang.String, java.lang.String, java.lang.String, androidx.compose.ui.graphics.painter.Painter, java.util.List, androidx.compose.ui.Modifier, float, kotlin.jvm.functions.Function0, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0fd6  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:200:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0fb3  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:426:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:434:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:439:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:453:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ForYouCardContent(final org.wikipedia.dataclient.WikiSite r95, final org.wikipedia.page.PageTitle r96, org.wikipedia.feed.CardVariation r97, int r98, org.wikipedia.feed.ForYouModule r99, org.wikipedia.feed.model.ForYouCard r100, androidx.compose.ui.graphics.painter.Painter r101, final java.lang.String r102, kotlin.jvm.functions.Function2 r103, kotlin.jvm.functions.Function1 r104, kotlin.jvm.functions.Function1 r105, kotlin.jvm.functions.Function1 r106, kotlin.jvm.functions.Function2 r107, kotlin.jvm.functions.Function0 r108, int r109, kotlin.jvm.functions.Function0 r110, androidx.compose.runtime.GapComposer r111, final int r112, final int r113) {
        /*
            Method dump skipped, instructions count: 4077
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.ForYouCardKt.ForYouCardContent(org.wikipedia.dataclient.WikiSite, org.wikipedia.page.PageTitle, org.wikipedia.feed.CardVariation, int, org.wikipedia.feed.ForYouModule, org.wikipedia.feed.model.ForYouCard, androidx.compose.ui.graphics.painter.Painter, java.lang.String, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function0, int, kotlin.jvm.functions.Function0, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void ForYouCardDropdownMenu(final boolean z, final WikiSite wikiSite, final Function0 function0, final Function0 function02, final Function0 function03, final Function0 function04, final Function0 function05, int i, final Function0 function06, GapComposer gapComposer, final int i2, final int i3) {
        boolean z2;
        int i4;
        WikiSite wikiSite2;
        Function0 function07;
        Function0 function08;
        Function0 function09;
        Function0 function010;
        int i5;
        Function0 function011;
        final int i6;
        int i7;
        wikiSite.getClass();
        function06.getClass();
        gapComposer.startRestartGroup(1313501411);
        if ((i2 & 6) == 0) {
            z2 = z;
            i4 = (gapComposer.changed(z2) ? 4 : 2) | i2;
        } else {
            z2 = z;
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            wikiSite2 = wikiSite;
            i4 |= gapComposer.changedInstance(wikiSite2) ? 32 : 16;
        } else {
            wikiSite2 = wikiSite;
        }
        if ((i2 & 384) == 0) {
            i4 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function07 = function02;
            i4 |= gapComposer.changedInstance(function07) ? 2048 : 1024;
        } else {
            function07 = function02;
        }
        if ((i2 & 24576) == 0) {
            function08 = function03;
            i4 |= gapComposer.changedInstance(function08) ? 16384 : 8192;
        } else {
            function08 = function03;
        }
        if ((196608 & i2) == 0) {
            function09 = function04;
            i4 |= gapComposer.changedInstance(function09) ? 131072 : 65536;
        } else {
            function09 = function04;
        }
        if ((1572864 & i2) == 0) {
            function010 = function05;
            i4 |= gapComposer.changedInstance(function010) ? 1048576 : 524288;
        } else {
            function010 = function05;
        }
        if ((12582912 & i2) == 0) {
            if ((i3 & 128) == 0) {
                i5 = i;
                if (gapComposer.changed(i5)) {
                    i7 = 8388608;
                    i4 |= i7;
                }
            } else {
                i5 = i;
            }
            i7 = 4194304;
            i4 |= i7;
        } else {
            i5 = i;
        }
        if ((100663296 & i2) == 0) {
            function011 = function06;
            i4 |= gapComposer.changedInstance(function011) ? 67108864 : 33554432;
        } else {
            function011 = function06;
        }
        if (gapComposer.shouldExecute(i4 & 1, (38347923 & i4) != 38347922)) {
            gapComposer.startDefaults();
            if ((i2 & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
                if ((i3 & 128) != 0) {
                    i4 &= -29360129;
                }
            } else if ((i3 & 128) != 0) {
                i4 &= -29360129;
                i5 = R.string.explore_feed_customize_interests;
            }
            final int i8 = i5;
            gapComposer.endDefaults();
            final Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            final WikiSite wikiSite3 = wikiSite2;
            final Function0 function012 = function07;
            final Function0 function013 = function08;
            final Function0 function014 = function09;
            final Function0 function015 = function010;
            final Function0 function016 = function011;
            AndroidMenu_androidKt.m252DropdownMenuIlH_yew(z2, function0, null, (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) & 4294967295L) | (Float.floatToRawIntBits(-16.0f) << 32), null, null, null, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, RecyclerView.DECELERATION_RATE, Expect_jvmKt.rememberComposableLambda(1737961054, new Function3() { // from class: org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda21
                /* JADX WARN: Code restructure failed: missing block: B:17:0x00b9, code lost:
                
                    if (r6 == r5) goto L24;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:22:0x0112, code lost:
                
                    if (r5 == r4) goto L33;
                 */
                @Override // kotlin.jvm.functions.Function3
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invoke(java.lang.Object r22, java.lang.Object r23, java.lang.Object r24) {
                    /*
                        Method dump skipped, instructions count: 433
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda21.invoke(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
                }
            }, gapComposer), gapComposer, ((i4 >> 3) & 112) | (i4 & 14) | 3072, 1908);
            i6 = i8;
        } else {
            gapComposer.skipToGroupEnd();
            i6 = i5;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda22
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    ForYouCardKt.ForYouCardDropdownMenu(z, wikiSite, function0, function02, function03, function04, function05, i6, function06, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1), i3);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void ForYouContentTab(ForYouContentState forYouContentState, int i, WikiSite wikiSite, Function1 function1, GapComposer gapComposer, int i2) {
        int i3;
        WikiSite wikiSite2;
        GapComposer gapComposer2 = gapComposer;
        BiasAlignment biasAlignment = Alignment.Companion.Center;
        forYouContentState.getClass();
        Throwable th = forYouContentState.error;
        wikiSite.getClass();
        gapComposer2.startRestartGroup(761225898);
        int i4 = i2 | (gapComposer2.changedInstance(forYouContentState) ? 4 : 2) | (gapComposer2.changed(i) ? 32 : 16) | (gapComposer2.changedInstance(wikiSite) ? 256 : 128) | (gapComposer2.changedInstance(function1) ? 2048 : 1024);
        if (gapComposer2.shouldExecute(i4 & 1, (i4 & 1171) != 1170)) {
            boolean z = forYouContentState.isInitialLoading;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
            if (z) {
                gapComposer2.startReplaceGroup(253598221);
                Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(SizeKt.FillWholeMaxSize, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).backgroundColor, rectangleShapeKt$RectangleShape$1);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                long j = gapComposer2.compositeKeyHashCode;
                int i5 = (int) (j ^ (j >>> 32));
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
                Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m327setimpl(gapComposer2, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                LoadingIndicator(SizeKt.fillMaxHeight(Modifier.Companion.$$INSTANCE, 1.0f), gapComposer2, 6, 0);
                gapComposer2.end(true);
                gapComposer2.end(false);
                i3 = i;
                wikiSite2 = wikiSite;
            } else {
                FeedEmptyState feedEmptyState = forYouContentState.emptyState;
                FeedEmptyState feedEmptyState2 = FeedEmptyState.NO_DATA;
                Object obj = Composer$Companion.Empty;
                if (feedEmptyState == feedEmptyState2) {
                    gapComposer2.startReplaceGroup(254007359);
                    EmptyForYouCard emptyForYouCard = new EmptyForYouCard();
                    function1.invoke(new HomeAction.CardImpression(emptyForYouCard, 0));
                    Modifier scroll$default = ImageKt.scroll$default(OffsetKt.m136paddingqDBjuR0$default(OffsetKt.m134paddingVpY3zN4$default(ImageKt.m46backgroundbw27NRU(SizeKt.FillWholeMaxSize, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, rectangleShapeKt$RectangleShape$1), 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, (i * 2) + 64, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), ImageKt.rememberScrollState(gapComposer), true);
                    boolean z2 = !forYouContentState.isInterestModuleHidden;
                    int i6 = i4 & 7168;
                    gapComposer2 = gapComposer;
                    boolean changed = (i6 == 2048) | gapComposer2.changed(emptyForYouCard);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changed || rememberedValue == obj) {
                        rememberedValue = new ForYouContentTabKt$$ExternalSyntheticLambda3(function1, emptyForYouCard, 2);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changed2 = (i6 == 2048) | gapComposer2.changed(emptyForYouCard);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changed2 || rememberedValue2 == obj) {
                        rememberedValue2 = new ForYouContentTabKt$$ExternalSyntheticLambda3(function1, emptyForYouCard, 3);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    ForYouFeedMessageView(scroll$default, wikiSite, R.drawable.empty_feed_illustration, R.string.home_feed_for_you_screen_empty_title, R.string.home_feed_for_you_screen_empty_description, R.string.home_feed_for_you_screen_empty_ways_to_start, R.string.home_feed_for_you_screen_empty_add_interests, 0, z2, function0, (Function0) rememberedValue2, gapComposer2, (i4 >> 3) & 112, 0, 128);
                    wikiSite2 = wikiSite;
                    gapComposer2.end(false);
                } else {
                    wikiSite2 = wikiSite;
                    if (feedEmptyState == FeedEmptyState.ALL_MODULES_HIDDEN) {
                        gapComposer2.startReplaceGroup(255230929);
                        Context context = (Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext);
                        Modifier scroll$default2 = ImageKt.scroll$default(OffsetKt.m136paddingqDBjuR0$default(OffsetKt.m134paddingVpY3zN4$default(ImageKt.m46backgroundbw27NRU(SizeKt.FillWholeMaxSize, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, rectangleShapeKt$RectangleShape$1), 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, (i * 2) + 64, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), ImageKt.rememberScrollState(gapComposer2), true);
                        String string = ContextKt.getString(context, wikiSite2.languageCode, R.string.home_feed_screen_empty_state_label, new Object[0]);
                        String string2 = ContextKt.getString(context, wikiSite2.languageCode, R.string.home_feed_for_you_screen_all_modules_disabled_description, new Object[0]);
                        String string3 = ContextKt.getString(context, wikiSite2.languageCode, R.string.home_feed_screen_all_modules_disabled_btn_label, new Object[0]);
                        boolean z3 = (i4 & 7168) == 2048;
                        Object rememberedValue3 = gapComposer2.rememberedValue();
                        if (z3 || rememberedValue3 == obj) {
                            rememberedValue3 = new HomeScreenKt$$ExternalSyntheticLambda4(function1, 19);
                            gapComposer2.updateRememberedValue(rememberedValue3);
                        }
                        FeedEmptyStateView(scroll$default2, string, string2, string3, (Function0) rememberedValue3, gapComposer2, 0);
                        gapComposer2.end(false);
                    } else if (th == null || !forYouContentState.modules.isEmpty()) {
                        gapComposer2.startReplaceGroup(256655162);
                        String str = wikiSite2.languageCode;
                        str.getClass();
                        i3 = i;
                        Updater.CompositionLocalProvider(CompositionLocalsKt.LocalLayoutDirection.defaultProvidedValue$runtime(TextUtils.getLayoutDirectionFromLocale(new Locale(str)) == 1 ? LayoutDirection.Rtl : LayoutDirection.Ltr), Expect_jvmKt.rememberComposableLambda(743901483, new ForYouContentTabKt$$ExternalSyntheticLambda70(forYouContentState, i3, wikiSite2, function1), gapComposer2), gapComposer2, 56);
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(256137617);
                        Modifier m46backgroundbw27NRU2 = ImageKt.m46backgroundbw27NRU(SizeKt.FillWholeMaxSize, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).backgroundColor, rectangleShapeKt$RectangleShape$1);
                        MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                        long j2 = gapComposer2.compositeKeyHashCode;
                        int i7 = (int) (j2 ^ (j2 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m46backgroundbw27NRU2);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m327setimpl(gapComposer2, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                        boolean z4 = (i4 & 7168) == 2048;
                        Object rememberedValue4 = gapComposer2.rememberedValue();
                        if (z4 || rememberedValue4 == obj) {
                            rememberedValue4 = new HomeScreenKt$$ExternalSyntheticLambda4(function1, 20);
                            gapComposer2.updateRememberedValue(rememberedValue4);
                        }
                        ErrorState(th, (Function0) rememberedValue4, gapComposer2, 0);
                        gapComposer2.end(true);
                        gapComposer2.end(false);
                    }
                }
                i3 = i;
            }
        } else {
            i3 = i;
            wikiSite2 = wikiSite;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ForYouContentTabKt$$ExternalSyntheticLambda70(forYouContentState, i3, wikiSite2, function1, i2);
        }
    }

    public static final void ForYouFeedMessageView(final Modifier modifier, final WikiSite wikiSite, final int i, final int i2, final int i3, final int i4, final int i5, int i6, boolean z, final Function0 function0, final Function0 function02, GapComposer gapComposer, final int i7, final int i8, final int i9) {
        int i10;
        int i11;
        int i12;
        final boolean z2;
        int i13;
        boolean z3;
        int i14;
        int i15;
        int i16;
        GapComposer gapComposer2 = gapComposer;
        wikiSite.getClass();
        function0.getClass();
        function02.getClass();
        gapComposer2.startRestartGroup(966044941);
        if ((i7 & 6) == 0) {
            i10 = (gapComposer2.changed(modifier) ? 4 : 2) | i7;
        } else {
            i10 = i7;
        }
        if ((i7 & 48) == 0) {
            i10 |= gapComposer2.changedInstance(wikiSite) ? 32 : 16;
        }
        if ((i7 & 384) == 0) {
            i10 |= gapComposer2.changed(i) ? 256 : 128;
        }
        if ((i7 & 3072) == 0) {
            i10 |= gapComposer2.changed(i2) ? 2048 : 1024;
        }
        if ((i7 & 24576) == 0) {
            i10 |= gapComposer2.changed(i3) ? 16384 : 8192;
        }
        if ((196608 & i7) == 0) {
            i10 |= gapComposer2.changed(i4) ? 131072 : 65536;
        }
        if ((1572864 & i7) == 0) {
            i10 |= gapComposer2.changed(i5) ? 1048576 : 524288;
        }
        if ((12582912 & i7) == 0) {
            if ((i9 & 128) == 0) {
                i11 = i6;
                if (gapComposer2.changed(i11)) {
                    i16 = 8388608;
                    i10 |= i16;
                }
            } else {
                i11 = i6;
            }
            i16 = 4194304;
            i10 |= i16;
        } else {
            i11 = i6;
        }
        int i17 = i9 & 256;
        if (i17 != 0) {
            i10 |= 100663296;
        } else if ((i7 & 100663296) == 0) {
            i10 |= gapComposer2.changed(z) ? 67108864 : 33554432;
        }
        if ((i7 & 805306368) == 0) {
            i10 |= gapComposer2.changedInstance(function0) ? 536870912 : 268435456;
        }
        if ((i8 & 6) == 0) {
            i12 = i8 | (gapComposer2.changedInstance(function02) ? 4 : 2);
        } else {
            i12 = i8;
        }
        if (gapComposer2.shouldExecute(i10 & 1, ((i10 & 306783379) == 306783378 && (i12 & 3) == 2) ? false : true)) {
            gapComposer2.startDefaults();
            if ((i7 & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                if ((i9 & 128) != 0) {
                    i10 &= -29360129;
                    i13 = R.string.home_feed_for_you_screen_empty_see_community;
                } else {
                    i13 = i11;
                }
                if (i17 != 0) {
                    i14 = i10;
                    z3 = true;
                } else {
                    z3 = z;
                    i14 = i10;
                }
            } else {
                gapComposer2.skipToGroupEnd();
                if ((i9 & 128) != 0) {
                    i10 &= -29360129;
                }
                z3 = z;
                i14 = i10;
                i13 = i11;
            }
            gapComposer2.endDefaults();
            Context context = (Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(16.0f, false, new EasingKt$$ExternalSyntheticLambda0(11)), Alignment.Companion.CenterHorizontally, gapComposer2, 54);
            long j = gapComposer2.compositeKeyHashCode;
            int i18 = (int) (j ^ (j >>> 32));
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
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i18), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(companion, 125.0f);
            ImageRequest.Builder builder = new ImageRequest.Builder(context);
            builder.data = Integer.valueOf(i);
            ImageRequests_androidKt.allowHardware(builder);
            int i19 = i13;
            AsyncImageKt.m776SubcomposeAsyncImagenc27qi8(builder.build(), null, m145size3ABfNKs, null, f32lambda$1008921578, null, gapComposer, 197040, 65496);
            OffsetKt.Spacer(gapComposer, SizeKt.m140height3ABfNKs(companion, 16.0f));
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            String string = ContextKt.getString(context, wikiSite.languageCode, i2, new Object[0]);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
            TextStyle m647copyp1EtxEg$default = TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(staticProvidableCompositionLocal)).headlineSmall, 0L, 0L, null, FontFamily.Serif, 0L, 0L, null, 16777183);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
            TextKt.m308TextNvy7gAk(string, fillMaxWidth, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, m647copyp1EtxEg$default, gapComposer, 48, 0, 131064);
            TextKt.m308TextNvy7gAk(ContextKt.getString(context, wikiSite.languageCode, i3, new Object[0]), SizeKt.fillMaxWidth(companion, 1.0f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal)).bodyMedium, gapComposer, 48, 0, 131064);
            TextKt.m308TextNvy7gAk(ContextKt.getString(context, wikiSite.languageCode, i4, new Object[0]), SizeKt.fillMaxWidth(companion, 1.0f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(staticProvidableCompositionLocal)).bodyMedium, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211), gapComposer, 48, 0, 131064);
            gapComposer2 = gapComposer;
            if (z3) {
                gapComposer2.startReplaceGroup(80004714);
                i15 = 0;
                EmptyStateActionRow(R.drawable.ic_baseline_tune_24, ContextKt.getString(context, wikiSite.languageCode, i5, new Object[0]), function0, null, gapComposer2, (i14 >> 21) & 896);
                gapComposer2.end(false);
            } else {
                i15 = 0;
                gapComposer2.startReplaceGroup(80251691);
                gapComposer2.end(false);
            }
            i11 = i19;
            EmptyStateActionRow(R.drawable.ic_diversity_3_24dp, ContextKt.getString(context, wikiSite.languageCode, i11, new Object[i15]), function02, null, gapComposer2, (i12 << 6) & 896);
            gapComposer2.end(true);
            z2 = z3;
        } else {
            gapComposer2.skipToGroupEnd();
            z2 = z;
        }
        final int i20 = i11;
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: org.wikipedia.feed.ForYouContentTabKt$$ExternalSyntheticLambda73
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i7 | 1);
                    int updateChangedFlags2 = Updater.updateChangedFlags(i8);
                    ForYouCardKt.ForYouFeedMessageView(Modifier.this, wikiSite, i, i2, i3, i4, i5, i20, z2, function0, function02, (GapComposer) obj, updateChangedFlags, updateChangedFlags2, i9);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void ForYouModulePager(Modifier modifier, ForYouModule forYouModule, Function1 function1, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        Function1 function12;
        ComposableLambdaImpl composableLambdaImpl2;
        long Color;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(720773417);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(forYouModule) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            function12 = function1;
            i2 |= gapComposer2.changedInstance(function12) ? 256 : 128;
        } else {
            function12 = function1;
        }
        if ((i & 3072) == 0) {
            composableLambdaImpl2 = composableLambdaImpl;
            i2 |= gapComposer2.changedInstance(composableLambdaImpl2) ? 2048 : 1024;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            int i3 = i2;
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = null;
                gapComposer2.updateRememberedValue(null);
            }
            ref$ObjectRef.element = (Rect) rememberedValue;
            Modifier onGloballyPositioned = RulerKt.onGloballyPositioned(modifier, new NavGraphNavigator$$ExternalSyntheticLambda0(ref$ObjectRef, 2));
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, onGloballyPositioned);
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
            boolean z = (i3 & 112) == 32;
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (z || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new WikiGames$$ExternalSyntheticLambda0(9, forYouModule);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            DefaultPagerState rememberPagerState = PagerStateKt.rememberPagerState((Function0) rememberedValue2, gapComposer2, 0, 3);
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new SnapshotStateMap();
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            DpKt.m696HorizontalPager8jOkeI(rememberPagerState, SizeKt.fillMaxWidth(companion, 1.0f), null, null, 0, null, null, false, null, null, null, Expect_jvmKt.rememberComposableLambda(1260728752, new GamesHubScreenKt$$ExternalSyntheticLambda25(ref$ObjectRef, (SnapshotStateMap) rememberedValue3, function12, forYouModule, composableLambdaImpl2), gapComposer2), gapComposer, 48, 16380);
            gapComposer2 = gapComposer;
            if (forYouModule.getCards().size() > 1) {
                gapComposer2.startReplaceGroup(-14782334);
                Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(BoxScopeInstance.INSTANCE.align(SizeKt.fillMaxWidth(companion, 1.0f), Alignment.Companion.BottomCenter), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 16.0f, 7);
                long j2 = Color.White;
                Color = ColorKt.Color(Color.m433getRedimpl(j2), Color.m432getGreenimpl(j2), Color.m430getBlueimpl(j2), 0.5f, Color.m431getColorSpaceimpl(j2));
                TabsBoxKt.m899PageIndicatorXDZ_kE(m136paddingqDBjuR0$default, rememberPagerState, 0, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, j2, Color, gapComposer2, 1769472, 28);
                gapComposer2.end(false);
            } else {
                gapComposer2.startReplaceGroup(-14489229);
                gapComposer2.end(false);
            }
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda27(modifier, (Object) forYouModule, function1, composableLambdaImpl, i, 7);
        }
    }

    public static final void HomeScreen(WikiSite wikiSite, AppLanguageState appLanguageState, HomeTab homeTab, CommunityContentState communityContentState, ForYouContentState forYouContentState, PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState, TabsState tabsState, NotificationBellState notificationBellState, Function1 function1, GapComposer gapComposer, int i) {
        int i2;
        HomeTab homeTab2;
        wikiSite.getClass();
        homeTab.getClass();
        communityContentState.getClass();
        forYouContentState.getClass();
        tabsState.getClass();
        notificationBellState.getClass();
        gapComposer.startRestartGroup(-1755384597);
        int i3 = i | (gapComposer.changedInstance(wikiSite) ? 4 : 2) | (gapComposer.changedInstance(appLanguageState) ? 32 : 16) | (gapComposer.changed(homeTab.ordinal()) ? 256 : 128) | (gapComposer.changedInstance(communityContentState) ? 2048 : 1024) | (gapComposer.changedInstance(forYouContentState) ? 16384 : 8192) | (gapComposer.changedInstance(pageOverflowMenuState) ? 131072 : 65536) | (gapComposer.changed(tabsState) ? 1048576 : 524288) | (gapComposer.changed(notificationBellState) ? 8388608 : 4194304) | (gapComposer.changedInstance(function1) ? 67108864 : 33554432);
        if (gapComposer.shouldExecute(i3 & 1, (38347923 & i3) != 38347922)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            if (context instanceof MainActivity) {
                i2 = Okio__OkioKt.roundedPxToDp(((MainActivity) context).statusBarInsets != null ? r8.top : 0);
            } else {
                i2 = 64;
            }
            PullToRefreshStateImpl rememberPullToRefreshState = RegexKt.rememberPullToRefreshState(gapComposer);
            boolean z = rememberPullToRefreshState.anim.isRunning() && (communityContentState.isInitialLoading || forYouContentState.isInitialLoading);
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            boolean z2 = ((i3 & 234881024) == 67108864) | ((i3 & 896) == 256);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z2 || rememberedValue == Composer$Companion.Empty) {
                homeTab2 = homeTab;
                rememberedValue = new Regex$$ExternalSyntheticLambda0(15, function1, homeTab2);
                gapComposer.updateRememberedValue(rememberedValue);
            } else {
                homeTab2 = homeTab;
            }
            RegexKt.PullToRefreshBox(z, (Function0) rememberedValue, fillElement, rememberPullToRefreshState, null, Expect_jvmKt.rememberComposableLambda(-390120334, new HomeScreenKt$$ExternalSyntheticLambda1(rememberPullToRefreshState, z, 0), gapComposer), Expect_jvmKt.rememberComposableLambda(-1994124207, new HomeScreenKt$$ExternalSyntheticLambda2(i2, function1, notificationBellState, pageOverflowMenuState, wikiSite, communityContentState, forYouContentState, homeTab2, tabsState, appLanguageState), gapComposer), gapComposer, 1769856, 16);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda3(i, function1, notificationBellState, pageOverflowMenuState, wikiSite, communityContentState, forYouContentState, homeTab, tabsState, appLanguageState);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r15v19 */
    public static final void HomeTabBar(Modifier modifier, WikiSite wikiSite, HomeTab homeTab, AppLanguageState appLanguageState, Function2 function2, Function1 function1, Function0 function0, GapComposer gapComposer, int i) {
        GapComposer gapComposer2;
        String string;
        boolean z;
        long j;
        boolean z2;
        long j2;
        GapComposer gapComposer3 = gapComposer;
        modifier.getClass();
        wikiSite.getClass();
        homeTab.getClass();
        function1.getClass();
        function0.getClass();
        gapComposer3.startRestartGroup(1922282966);
        int i2 = i | (gapComposer3.changedInstance(wikiSite) ? 32 : 16) | (gapComposer3.changed(homeTab.ordinal()) ? 256 : 128) | (gapComposer3.changedInstance(appLanguageState) ? 2048 : 1024) | (gapComposer3.changedInstance(function2) ? 16384 : 8192) | (gapComposer3.changedInstance(function1) ? 131072 : 65536) | (gapComposer3.changedInstance(function0) ? 1048576 : 524288);
        if (gapComposer3.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
            Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(SizeKt.fillMaxWidth(modifier, 1.0f), 8.0f, 8.0f);
            Arrangement$End$1 arrangement$End$1 = OffsetKt.f5Start;
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$End$1, Alignment.Companion.CenterVertically, gapComposer3, 54);
            long j3 = gapComposer3.compositeKeyHashCode;
            int i3 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, m133paddingVpY3zN4);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer3.startReusableNode();
            if (gapComposer3.inserting) {
                gapComposer3.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer3.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer3, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer3, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            LayoutWeightElement m = ViewSizeResolver$CC.m(gapComposer3, materializeModifier, composeUiNode$Companion$SetModifier$14, 1.0f, true);
            RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(arrangement$End$1, Alignment.Companion.Top, gapComposer3, 0);
            long j4 = gapComposer3.compositeKeyHashCode;
            int i4 = (int) (j4 ^ (j4 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer3.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer3, m);
            gapComposer3.startReusableNode();
            if (gapComposer3.inserting) {
                gapComposer3.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer3.useNode();
            }
            Updater.m327setimpl(gapComposer3, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i4, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer3, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            gapComposer3.startReplaceGroup(-1112475570);
            Iterator it = HomeTab.getEntries().iterator();
            GapComposer gapComposer4 = gapComposer3;
            while (true) {
                boolean hasNext = it.hasNext();
                NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                if (hasNext) {
                    HomeTab homeTab2 = (HomeTab) it.next();
                    boolean z3 = homeTab2 == homeTab;
                    int i5 = HomeScreenKt$WhenMappings.$EnumSwitchMapping$0[homeTab2.ordinal()];
                    if (i5 == 1) {
                        gapComposer4.startReplaceGroup(2068531674);
                        string = ContextKt.getString((Context) gapComposer4.consume(AndroidCompositionLocals_androidKt.LocalContext), wikiSite.languageCode, R.string.explore_feed_community_tab_label, new Object[0]);
                        gapComposer4.end(false);
                    } else {
                        if (i5 != 2) {
                            throw Modifier.CC.m(gapComposer4, 2068529501, false);
                        }
                        gapComposer4.startReplaceGroup(2068536024);
                        string = ContextKt.getString((Context) gapComposer4.consume(AndroidCompositionLocals_androidKt.LocalContext), wikiSite.languageCode, R.string.explore_feed_for_you_tab_label, new Object[0]);
                        gapComposer4.end(false);
                    }
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.CenterHorizontally;
                    IntrinsicSize intrinsicSize = IntrinsicSize.Max;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    Modifier width = OffsetKt.width(companion, intrinsicSize);
                    boolean changed = gapComposer4.changed(homeTab2.ordinal()) | ((i2 & 57344) == 16384);
                    Object rememberedValue = gapComposer4.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new Regex$$ExternalSyntheticLambda0(16, function2, homeTab2);
                        gapComposer4.updateRememberedValue(rememberedValue);
                    }
                    Modifier m133paddingVpY3zN42 = OffsetKt.m133paddingVpY3zN4(ImageKt.m51clickableoSLSa3U$default(15, width, null, (Function0) rememberedValue, false), 12.0f, 8.0f);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, horizontal, gapComposer4, 48);
                    long j5 = gapComposer4.compositeKeyHashCode;
                    int i6 = (int) (j5 ^ (j5 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer4.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer4, m133paddingVpY3zN42);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer4.startReusableNode();
                    if (gapComposer4.inserting) {
                        gapComposer4.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer4.useNode();
                    }
                    Updater.m327setimpl(gapComposer4, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer4, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer4, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer4, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                    HomeTab homeTab3 = HomeTab.FOR_YOU;
                    if (homeTab == homeTab3) {
                        gapComposer4.startReplaceGroup(557661541);
                        j = NodeTraversor.getColors(gapComposer4).primaryColor;
                        z = false;
                    } else {
                        z = false;
                        if (z3) {
                            gapComposer4.startReplaceGroup(557663337);
                            j = NodeTraversor.getColors(gapComposer4).progressiveColor;
                        } else {
                            gapComposer4.startReplaceGroup(557664741);
                            j = NodeTraversor.getColors(gapComposer4).primaryColor;
                        }
                    }
                    gapComposer4.end(z);
                    Iterator it2 = it;
                    TextKt.m308TextNvy7gAk(string, null, j, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).titleSmall, gapComposer, 0, 0, 131066);
                    GapComposer gapComposer5 = gapComposer;
                    OffsetKt.Spacer(gapComposer5, SizeKt.m140height3ABfNKs(companion, 4.0f));
                    Modifier clip = ClipKt.clip(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 3.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(1.5f));
                    if (z3) {
                        gapComposer5.startReplaceGroup(108211531);
                        if (homeTab == homeTab3) {
                            gapComposer5.startReplaceGroup(557682885);
                            j2 = NodeTraversor.getColors(gapComposer5).primaryColor;
                            z2 = 0;
                            gapComposer5.end(false);
                        } else {
                            z2 = 0;
                            gapComposer5.startReplaceGroup(557685321);
                            j2 = NodeTraversor.getColors(gapComposer5).progressiveColor;
                            gapComposer5.end(false);
                        }
                        gapComposer5.end(z2);
                    } else {
                        z2 = 0;
                        gapComposer5.startReplaceGroup(557687300);
                        gapComposer5.end(false);
                        j2 = Color.Transparent;
                    }
                    BoxKt.Box(ImageKt.m46backgroundbw27NRU(clip, j2, ColorKt.RectangleShape), gapComposer5, z2);
                    gapComposer5.end(true);
                    it = it2;
                    gapComposer4 = gapComposer5;
                } else {
                    gapComposer4.end(false);
                    gapComposer4.end(true);
                    String str = wikiSite.languageCode;
                    boolean z4 = (i2 & 458752) == 131072;
                    Object rememberedValue2 = gapComposer4.rememberedValue();
                    if (z4 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda8(function1, 23);
                        gapComposer4.updateRememberedValue(rememberedValue2);
                    }
                    Function1 function12 = (Function1) rememberedValue2;
                    boolean z5 = (i2 & 3670016) == 1048576;
                    Object rememberedValue3 = gapComposer4.rememberedValue();
                    if (z5 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new Handshake$$ExternalSyntheticLambda0(14, function0);
                        gapComposer4.updateRememberedValue(rememberedValue3);
                    }
                    LanguageDropDownMenu(str, function12, (Function0) rememberedValue3, appLanguageState, gapComposer4, i2 & 7168);
                    gapComposer4.end(true);
                    gapComposer2 = gapComposer4;
                }
            }
        } else {
            gapComposer3.skipToGroupEnd();
            gapComposer2 = gapComposer3;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda22(modifier, wikiSite, homeTab, appLanguageState, function2, function1, function0, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void HomeToolbar(int i, TabsState tabsState, NotificationBellState notificationBellState, Function0 function0, Function0 function02, Function0 function03, GapComposer gapComposer, int i2) {
        NotificationBellState notificationBellState2;
        Modifier modifier;
        int i3;
        boolean z;
        GapComposer gapComposer2 = gapComposer;
        tabsState.getClass();
        int i4 = tabsState.count;
        notificationBellState.getClass();
        boolean z2 = notificationBellState.canShow;
        function0.getClass();
        function02.getClass();
        function03.getClass();
        gapComposer2.startRestartGroup(1139851665);
        int i5 = i2 | (gapComposer2.changed(i) ? 4 : 2) | (gapComposer2.changed(tabsState) ? 32 : 16) | (gapComposer2.changed(notificationBellState) ? 256 : 128) | (gapComposer2.changedInstance(function0) ? 2048 : 1024) | (gapComposer2.changedInstance(function02) ? 16384 : 8192) | (gapComposer2.changedInstance(function03) ? 131072 : 65536);
        if (gapComposer2.shouldExecute(i5 & 1, (74899 & i5) != 74898)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.Top, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
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
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            ImageKt.Image(UnsignedKt.painterResource(R.drawable.feed_header_wordmark, 0, gapComposer2), null, SizeKt.m149width3ABfNKs(OffsetKt.m136paddingqDBjuR0$default(OffsetKt.statusBarsPadding(companion), 20.0f, i + 16, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 12), 128.0f), null, ContentScale.Companion.FillWidth, RecyclerView.DECELERATION_RATE, new BlendModeColorFilter(((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, 5), gapComposer, 24632, 40);
            gapComposer2 = gapComposer;
            OffsetKt.Spacer(gapComposer2, new LayoutWeightElement(1.0f, true));
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(OffsetKt.m136paddingqDBjuR0$default(OffsetKt.statusBarsPadding(companion), RecyclerView.DECELERATION_RATE, i, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), 48.0f);
            if (i4 > 0) {
                gapComposer2.startReplaceGroup(-1778958051);
                i3 = i5;
                boolean z3 = (i3 & 7168) == 2048;
                Object rememberedValue = gapComposer2.rememberedValue();
                if (z3 || rememberedValue == Composer$Companion.Empty) {
                    rememberedValue = new Handshake$$ExternalSyntheticLambda0(13, function0);
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                z = false;
                modifier = m145size3ABfNKs;
                CardKt.IconButton((Function0) rememberedValue, modifier, false, null, null, Expect_jvmKt.rememberComposableLambda(-1238555436, new HomeScreenKt$$ExternalSyntheticLambda17((int) (0 == true ? 1 : 0), (Object) tabsState, (Object) function02), gapComposer2), gapComposer, 1572864, 60);
                gapComposer2 = gapComposer;
                gapComposer2.end(false);
            } else {
                modifier = m145size3ABfNKs;
                i3 = i5;
                z = false;
                gapComposer2.startReplaceGroup(-1778043179);
                gapComposer2.end(false);
            }
            if (z2) {
                gapComposer2.startReplaceGroup(-1777979722);
                notificationBellState2 = notificationBellState;
                Modifier modifier2 = modifier;
                TabsBoxKt.NotificationBell(notificationBellState2.unreadCount, function03, modifier2, 0, gapComposer2, (i3 >> 12) & 112);
                modifier = modifier2;
                gapComposer2.end(z);
            } else {
                notificationBellState2 = notificationBellState;
                gapComposer2.startReplaceGroup(-1777786251);
                gapComposer2.end(z);
            }
            if (i4 != 0 || z2) {
                gapComposer2.startReplaceGroup(-1777655307);
                gapComposer2.end(z);
            } else {
                gapComposer2.startReplaceGroup(-1777715850);
                OffsetKt.Spacer(gapComposer2, modifier);
                gapComposer2.end(z);
            }
            gapComposer2.end(true);
        } else {
            notificationBellState2 = notificationBellState;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda18(i, tabsState, notificationBellState2, function0, function02, function03, i2);
        }
    }

    public static final void LanguageDropDownMenu(String str, Function1 function1, Function0 function0, AppLanguageState appLanguageState, GapComposer gapComposer, int i) {
        int i2;
        long Color;
        Modifier then;
        long Color2;
        MutableState mutableState;
        GapComposer gapComposer2 = gapComposer;
        str.getClass();
        function1.getClass();
        function0.getClass();
        gapComposer2.startRestartGroup(897632640);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changedInstance(appLanguageState) ? 2048 : 1024;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState2 = (MutableState) rememberedValue;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier clip = ClipKt.clip(OffsetKt.m134paddingVpY3zN4$default(companion, 8.0f, RecyclerView.DECELERATION_RATE, 2), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f));
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new ForYouCardKt$$ExternalSyntheticLambda2(mutableState2, 23);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, clip, null, (Function0) rememberedValue2, false);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
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
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            int i4 = i2;
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            Color = ColorKt.Color(Color.m433getRedimpl(r4), Color.m432getGreenimpl(r4), Color.m430getBlueimpl(r4), 0.8f, Color.m431getColorSpaceimpl(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor));
            Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(ImageKt.m48borderxT4_qwU(companion, 1.0f, Color, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f)), 4.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.Center, Alignment.Companion.CenterVertically, gapComposer2, 54);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m132padding3ABfNKs);
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
            then = SizeKt.m140height3ABfNKs(companion, 20.0f).then(new SizeElement((r10 & 1) != 0 ? Float.NaN : 20.0f, RecyclerView.DECELERATION_RATE, (r10 & 2) == 0 ? 600.0f : Float.NaN, RecyclerView.DECELERATION_RATE, 10));
            Color2 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), 0.8f, Color.m431getColorSpaceimpl(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor));
            TabsBoxKt.m903WikiLangCodeBoxfdREj3A(then, str, Color2, Color.Transparent, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).paperColor, 0L, gapComposer2, ((i4 << 3) & 112) | 3078, 80);
            IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_down_24, 0, gapComposer2), null, SizeKt.m145size3ABfNKs(companion, 16.0f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, gapComposer2, 440, 0);
            gapComposer2.end(true);
            boolean booleanValue = ((Boolean) mutableState2.getValue()).booleanValue();
            long j3 = ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).paperColor;
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                mutableState = mutableState2;
                rememberedValue3 = new ForYouCardKt$$ExternalSyntheticLambda2(mutableState, 24);
                gapComposer2.updateRememberedValue(rememberedValue3);
            } else {
                mutableState = mutableState2;
            }
            AndroidMenu_androidKt.m252DropdownMenuIlH_yew(booleanValue, (Function0) rememberedValue3, null, 0L, null, null, null, j3, RecyclerView.DECELERATION_RATE, Expect_jvmKt.rememberComposableLambda(-604463829, new HomeScreenKt$$ExternalSyntheticLambda26(appLanguageState, function0, function1, mutableState, str, 0), gapComposer2), gapComposer, 48, 1916);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda27(str, function1, function0, appLanguageState, i, 0);
        }
    }

    public static final void LoadMoreButton(WikiSite wikiSite, Function0 function0, GapComposer gapComposer, int i) {
        wikiSite.getClass();
        function0.getClass();
        gapComposer.startRestartGroup(362908115);
        int i2 = (gapComposer.changedInstance(wikiSite) ? 4 : 2) | i;
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, fillMaxWidth);
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
            gapComposer.startReplaceGroup(1458127597);
            TabsBoxKt.m895AppButtont6yy7ic(function0, OffsetKt.m133paddingVpY3zN4(companion, 24.0f, 16.0f), 0L, 0L, Expect_jvmKt.rememberComposableLambda(643634830, new FeedComponentsKt$$ExternalSyntheticLambda2(i3, wikiSite), gapComposer), gapComposer, ((i2 >> 6) & 14) | 24624, 12);
            gapComposer.end(false);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ForYouCardKt$$ExternalSyntheticLambda31(wikiSite, function0, i);
        }
    }

    public static final void LoadingIndicator(Modifier modifier, GapComposer gapComposer, int i, int i2) {
        Modifier modifier2;
        int i3;
        Modifier modifier3;
        gapComposer.startRestartGroup(-533906111);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = (gapComposer.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        int i5 = 0;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 3) != 2)) {
            modifier3 = i4 != 0 ? Modifier.Companion.$$INSTANCE : modifier2;
            Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(SizeKt.fillMaxWidth(modifier3, 1.0f), 32.0f);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j = gapComposer.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m132padding3ABfNKs);
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
            ProgressIndicatorKt.m290CircularProgressIndicator4lLiAd8(null, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, RecyclerView.DECELERATION_RATE, 0L, 0, RecyclerView.DECELERATION_RATE, gapComposer, 0, 61);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
            modifier3 = modifier2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedComponentsKt$$ExternalSyntheticLambda6(modifier3, i, i2, i5);
        }
    }

    public static final void PlaceholderImageGrid(int i, GapComposer gapComposer, Modifier modifier, List list) {
        int i2;
        int i3;
        gapComposer.startRestartGroup(2005213888);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(list) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(modifier, 1.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer, 6);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, fillMaxWidth);
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
            Integer valueOf = Integer.valueOf(i4);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier fillMaxHeight = SizeKt.fillMaxHeight(Animation.CC.weight$default$1(companion, 1.0f), 1.0f);
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
            BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$SpacedAligned, horizontal, gapComposer, 6);
            long j2 = gapComposer.compositeKeyHashCode;
            int i5 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, fillMaxHeight);
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
            PlaceholderTile(0, gapComposer, Animation.CC.weight$default(companion, 100.0f), (String) CollectionsKt.getOrNull(list, 0));
            PlaceholderTile(0, gapComposer, Animation.CC.weight$default(companion, 171.0f), (String) CollectionsKt.getOrNull(list, 1));
            gapComposer.end(true);
            Modifier fillMaxHeight2 = SizeKt.fillMaxHeight(Animation.CC.weight$default$1(companion, 1.0f), 1.0f);
            ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), horizontal, gapComposer, 6);
            long j3 = gapComposer.compositeKeyHashCode;
            int i6 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, fillMaxHeight2);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i6, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            i3 = 0;
            PlaceholderTile(0, gapComposer, Animation.CC.weight$default(companion, 171.0f), (String) CollectionsKt.getOrNull(list, 2));
            PlaceholderTile(0, gapComposer, Animation.CC.weight$default(companion, 100.0f), (String) CollectionsKt.getOrNull(list, 3));
            gapComposer.end(true);
            gapComposer.end(true);
        } else {
            i3 = 0;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda2(i, i3, modifier, list);
        }
    }

    public static final void PlaceholderTile(int i, GapComposer gapComposer, Modifier modifier, String str) {
        gapComposer.startRestartGroup(1480048568);
        int i2 = (gapComposer.changed(modifier) ? 4 : 2) | i | (gapComposer.changed(str) ? 32 : 16);
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Modifier clip = ClipKt.clip(SizeKt.fillMaxWidth(modifier, 1.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f));
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, clip);
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
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            AsyncImageKt.m774AsyncImagex1rPTaM(str, null, SizeKt.FillWholeMaxSize, new BrushPainter(new SolidColor(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor)), new BrushPainter(new SolidColor(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor)), null, null, ContentScale.Companion.Crop, gapComposer, ((i2 >> 3) & 14) | 37296, 6, 31712);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3(modifier, str, i, i3);
        }
    }

    /* renamed from: forYouModuleItem-FJfuzF0, reason: not valid java name */
    public static final void m908forYouModuleItemFJfuzF0(LazyListIntervalContent lazyListIntervalContent, final ForYouModule forYouModule, final int i, int i2, final float f, final WikiSite wikiSite, final Function1 function1, final Function2 function2) {
        String str = forYouModule.getClass().getSimpleName() + "-" + forYouModule.getAge() + "-" + i;
        if (forYouModule instanceof ForYouModule.BasedOnInterest) {
            final int i3 = 0;
            LazyItemScope$CC.item$default(lazyListIntervalContent, str, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.feed.ForYouContentTabKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    int i4 = i3;
                    Unit unit = Unit.INSTANCE;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    int i5 = i;
                    Function2 function22 = function2;
                    Function1 function12 = function1;
                    ForYouModule forYouModule2 = forYouModule;
                    float f2 = f;
                    switch (i4) {
                        case 0:
                            GapComposer gapComposer = (GapComposer) obj2;
                            int intValue = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                gapComposer.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.BasedOnInterest basedOnInterest = (ForYouModule.BasedOnInterest) forYouModule2;
                                boolean changed = gapComposer.changed(function12);
                                Object rememberedValue = gapComposer.rememberedValue();
                                if (changed || rememberedValue == neverEqualPolicy) {
                                    rememberedValue = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 15);
                                    gapComposer.updateRememberedValue(rememberedValue);
                                }
                                Function2 function23 = (Function2) rememberedValue;
                                boolean changed2 = gapComposer.changed(function12);
                                Object rememberedValue2 = gapComposer.rememberedValue();
                                if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                    rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 16);
                                    gapComposer.updateRememberedValue(rememberedValue2);
                                }
                                Function2 function24 = (Function2) rememberedValue2;
                                boolean changed3 = gapComposer.changed(function12);
                                Object rememberedValue3 = gapComposer.rememberedValue();
                                if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                    rememberedValue3 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 17);
                                    gapComposer.updateRememberedValue(rememberedValue3);
                                }
                                Function2 function25 = (Function2) rememberedValue3;
                                boolean changed4 = gapComposer.changed(function12);
                                Object rememberedValue4 = gapComposer.rememberedValue();
                                if (changed4 || rememberedValue4 == neverEqualPolicy) {
                                    rememberedValue4 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 18);
                                    gapComposer.updateRememberedValue(rememberedValue4);
                                }
                                Function2 function26 = (Function2) rememberedValue4;
                                boolean changed5 = gapComposer.changed(function12) | gapComposer.changed(forYouModule2);
                                Object rememberedValue5 = gapComposer.rememberedValue();
                                if (changed5 || rememberedValue5 == neverEqualPolicy) {
                                    rememberedValue5 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 3);
                                    gapComposer.updateRememberedValue(rememberedValue5);
                                }
                                Function0 function0 = (Function0) rememberedValue5;
                                boolean changed6 = gapComposer.changed(function22) | gapComposer.changed(i5);
                                Object rememberedValue6 = gapComposer.rememberedValue();
                                if (changed6 || rememberedValue6 == neverEqualPolicy) {
                                    rememberedValue6 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i5, 3, function22);
                                    gapComposer.updateRememberedValue(rememberedValue6);
                                }
                                Function1 function13 = (Function1) rememberedValue6;
                                boolean changed7 = gapComposer.changed(function12);
                                Object rememberedValue7 = gapComposer.rememberedValue();
                                if (changed7 || rememberedValue7 == neverEqualPolicy) {
                                    rememberedValue7 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 17);
                                    gapComposer.updateRememberedValue(rememberedValue7);
                                }
                                Headers.Companion.BasedOnInterestModule(m140height3ABfNKs, wikiSite, basedOnInterest, function23, function24, function25, function26, function0, function13, (Function1) rememberedValue7, gapComposer, 0);
                                break;
                            }
                        case 1:
                            GapComposer gapComposer2 = (GapComposer) obj2;
                            int intValue2 = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                gapComposer2.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs2 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.Random random = (ForYouModule.Random) forYouModule2;
                                boolean changed8 = gapComposer2.changed(function12);
                                Object rememberedValue8 = gapComposer2.rememberedValue();
                                if (changed8 || rememberedValue8 == neverEqualPolicy) {
                                    rememberedValue8 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 11);
                                    gapComposer2.updateRememberedValue(rememberedValue8);
                                }
                                Function2 function27 = (Function2) rememberedValue8;
                                boolean changed9 = gapComposer2.changed(function12);
                                Object rememberedValue9 = gapComposer2.rememberedValue();
                                if (changed9 || rememberedValue9 == neverEqualPolicy) {
                                    rememberedValue9 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 12);
                                    gapComposer2.updateRememberedValue(rememberedValue9);
                                }
                                Function2 function28 = (Function2) rememberedValue9;
                                boolean changed10 = gapComposer2.changed(function12);
                                Object rememberedValue10 = gapComposer2.rememberedValue();
                                if (changed10 || rememberedValue10 == neverEqualPolicy) {
                                    rememberedValue10 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 13);
                                    gapComposer2.updateRememberedValue(rememberedValue10);
                                }
                                Function2 function29 = (Function2) rememberedValue10;
                                boolean changed11 = gapComposer2.changed(function12);
                                Object rememberedValue11 = gapComposer2.rememberedValue();
                                if (changed11 || rememberedValue11 == neverEqualPolicy) {
                                    rememberedValue11 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 14);
                                    gapComposer2.updateRememberedValue(rememberedValue11);
                                }
                                Function2 function210 = (Function2) rememberedValue11;
                                boolean changed12 = gapComposer2.changed(function12) | gapComposer2.changed(forYouModule2);
                                Object rememberedValue12 = gapComposer2.rememberedValue();
                                if (changed12 || rememberedValue12 == neverEqualPolicy) {
                                    rememberedValue12 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 2);
                                    gapComposer2.updateRememberedValue(rememberedValue12);
                                }
                                Function0 function02 = (Function0) rememberedValue12;
                                boolean changed13 = gapComposer2.changed(function22) | gapComposer2.changed(i5);
                                Object rememberedValue13 = gapComposer2.rememberedValue();
                                if (changed13 || rememberedValue13 == neverEqualPolicy) {
                                    rememberedValue13 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i5, 2, function22);
                                    gapComposer2.updateRememberedValue(rememberedValue13);
                                }
                                Function1 function14 = (Function1) rememberedValue13;
                                boolean changed14 = gapComposer2.changed(function12);
                                Object rememberedValue14 = gapComposer2.rememberedValue();
                                if (changed14 || rememberedValue14 == neverEqualPolicy) {
                                    rememberedValue14 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 16);
                                    gapComposer2.updateRememberedValue(rememberedValue14);
                                }
                                Function1 function15 = (Function1) rememberedValue14;
                                boolean changed15 = gapComposer2.changed(function12);
                                Object rememberedValue15 = gapComposer2.rememberedValue();
                                if (changed15 || rememberedValue15 == neverEqualPolicy) {
                                    rememberedValue15 = new HomeScreenKt$$ExternalSyntheticLambda4(function12, 16);
                                    gapComposer2.updateRememberedValue(rememberedValue15);
                                }
                                Okio__JvmOkioKt.RandomModule(m140height3ABfNKs2, wikiSite, random, function27, function28, function29, function210, function02, function14, function15, (Function0) rememberedValue15, gapComposer2, 0);
                                break;
                            }
                        case 2:
                            GapComposer gapComposer3 = (GapComposer) obj2;
                            int intValue3 = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                gapComposer3.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs3 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.ContinueReading continueReading = (ForYouModule.ContinueReading) forYouModule2;
                                boolean changed16 = gapComposer3.changed(function12);
                                Object rememberedValue16 = gapComposer3.rememberedValue();
                                if (changed16 || rememberedValue16 == neverEqualPolicy) {
                                    rememberedValue16 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 3);
                                    gapComposer3.updateRememberedValue(rememberedValue16);
                                }
                                Function2 function211 = (Function2) rememberedValue16;
                                boolean changed17 = gapComposer3.changed(function12);
                                Object rememberedValue17 = gapComposer3.rememberedValue();
                                if (changed17 || rememberedValue17 == neverEqualPolicy) {
                                    rememberedValue17 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 4);
                                    gapComposer3.updateRememberedValue(rememberedValue17);
                                }
                                Function2 function212 = (Function2) rememberedValue17;
                                boolean changed18 = gapComposer3.changed(function12);
                                Object rememberedValue18 = gapComposer3.rememberedValue();
                                if (changed18 || rememberedValue18 == neverEqualPolicy) {
                                    rememberedValue18 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 5);
                                    gapComposer3.updateRememberedValue(rememberedValue18);
                                }
                                Function2 function213 = (Function2) rememberedValue18;
                                boolean changed19 = gapComposer3.changed(function12);
                                Object rememberedValue19 = gapComposer3.rememberedValue();
                                if (changed19 || rememberedValue19 == neverEqualPolicy) {
                                    rememberedValue19 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 6);
                                    gapComposer3.updateRememberedValue(rememberedValue19);
                                }
                                Function2 function214 = (Function2) rememberedValue19;
                                boolean changed20 = gapComposer3.changed(function12) | gapComposer3.changed(forYouModule2);
                                Object rememberedValue20 = gapComposer3.rememberedValue();
                                if (changed20 || rememberedValue20 == neverEqualPolicy) {
                                    rememberedValue20 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 0);
                                    gapComposer3.updateRememberedValue(rememberedValue20);
                                }
                                Function0 function03 = (Function0) rememberedValue20;
                                boolean changed21 = gapComposer3.changed(function22) | gapComposer3.changed(i5);
                                Object rememberedValue21 = gapComposer3.rememberedValue();
                                if (changed21 || rememberedValue21 == neverEqualPolicy) {
                                    rememberedValue21 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i5, 0, function22);
                                    gapComposer3.updateRememberedValue(rememberedValue21);
                                }
                                Function1 function16 = (Function1) rememberedValue21;
                                boolean changed22 = gapComposer3.changed(function12);
                                Object rememberedValue22 = gapComposer3.rememberedValue();
                                if (changed22 || rememberedValue22 == neverEqualPolicy) {
                                    rememberedValue22 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 14);
                                    gapComposer3.updateRememberedValue(rememberedValue22);
                                }
                                NodeTraversor.ContinueReadingModule(m140height3ABfNKs3, wikiSite, continueReading, function211, function212, function213, function214, function03, function16, (Function1) rememberedValue22, gapComposer3, 0);
                                break;
                            }
                        default:
                            GapComposer gapComposer4 = (GapComposer) obj2;
                            int intValue4 = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                                gapComposer4.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs4 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.BecauseYouRead becauseYouRead = (ForYouModule.BecauseYouRead) forYouModule2;
                                boolean changed23 = gapComposer4.changed(function12);
                                Object rememberedValue23 = gapComposer4.rememberedValue();
                                if (changed23 || rememberedValue23 == neverEqualPolicy) {
                                    rememberedValue23 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 24);
                                    gapComposer4.updateRememberedValue(rememberedValue23);
                                }
                                Function2 function215 = (Function2) rememberedValue23;
                                boolean changed24 = gapComposer4.changed(function12);
                                Object rememberedValue24 = gapComposer4.rememberedValue();
                                if (changed24 || rememberedValue24 == neverEqualPolicy) {
                                    rememberedValue24 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 25);
                                    gapComposer4.updateRememberedValue(rememberedValue24);
                                }
                                Function2 function216 = (Function2) rememberedValue24;
                                boolean changed25 = gapComposer4.changed(function12);
                                Object rememberedValue25 = gapComposer4.rememberedValue();
                                if (changed25 || rememberedValue25 == neverEqualPolicy) {
                                    rememberedValue25 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 26);
                                    gapComposer4.updateRememberedValue(rememberedValue25);
                                }
                                Function2 function217 = (Function2) rememberedValue25;
                                boolean changed26 = gapComposer4.changed(function12);
                                Object rememberedValue26 = gapComposer4.rememberedValue();
                                if (changed26 || rememberedValue26 == neverEqualPolicy) {
                                    rememberedValue26 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 27);
                                    gapComposer4.updateRememberedValue(rememberedValue26);
                                }
                                Function2 function218 = (Function2) rememberedValue26;
                                boolean changed27 = gapComposer4.changed(function12) | gapComposer4.changed(forYouModule2);
                                Object rememberedValue27 = gapComposer4.rememberedValue();
                                if (changed27 || rememberedValue27 == neverEqualPolicy) {
                                    rememberedValue27 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 6);
                                    gapComposer4.updateRememberedValue(rememberedValue27);
                                }
                                Function0 function04 = (Function0) rememberedValue27;
                                boolean changed28 = gapComposer4.changed(function22) | gapComposer4.changed(i5);
                                Object rememberedValue28 = gapComposer4.rememberedValue();
                                if (changed28 || rememberedValue28 == neverEqualPolicy) {
                                    rememberedValue28 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i5, 6, function22);
                                    gapComposer4.updateRememberedValue(rememberedValue28);
                                }
                                Function1 function17 = (Function1) rememberedValue28;
                                boolean changed29 = gapComposer4.changed(function12);
                                Object rememberedValue29 = gapComposer4.rememberedValue();
                                if (changed29 || rememberedValue29 == neverEqualPolicy) {
                                    rememberedValue29 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 21);
                                    gapComposer4.updateRememberedValue(rememberedValue29);
                                }
                                NodeUtils.BecauseYouReadModule(m140height3ABfNKs4, wikiSite, becauseYouRead, function215, function216, function217, function218, function04, function17, (Function1) rememberedValue29, gapComposer4, 0);
                                break;
                            }
                    }
                    return unit;
                }
            }, true, -1794408703), 2);
            return;
        }
        if (forYouModule instanceof ForYouModule.ContinueReading) {
            final int i4 = 2;
            LazyItemScope$CC.item$default(lazyListIntervalContent, str, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.feed.ForYouContentTabKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    int i42 = i4;
                    Unit unit = Unit.INSTANCE;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    int i5 = i;
                    Function2 function22 = function2;
                    Function1 function12 = function1;
                    ForYouModule forYouModule2 = forYouModule;
                    float f2 = f;
                    switch (i42) {
                        case 0:
                            GapComposer gapComposer = (GapComposer) obj2;
                            int intValue = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                gapComposer.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.BasedOnInterest basedOnInterest = (ForYouModule.BasedOnInterest) forYouModule2;
                                boolean changed = gapComposer.changed(function12);
                                Object rememberedValue = gapComposer.rememberedValue();
                                if (changed || rememberedValue == neverEqualPolicy) {
                                    rememberedValue = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 15);
                                    gapComposer.updateRememberedValue(rememberedValue);
                                }
                                Function2 function23 = (Function2) rememberedValue;
                                boolean changed2 = gapComposer.changed(function12);
                                Object rememberedValue2 = gapComposer.rememberedValue();
                                if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                    rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 16);
                                    gapComposer.updateRememberedValue(rememberedValue2);
                                }
                                Function2 function24 = (Function2) rememberedValue2;
                                boolean changed3 = gapComposer.changed(function12);
                                Object rememberedValue3 = gapComposer.rememberedValue();
                                if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                    rememberedValue3 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 17);
                                    gapComposer.updateRememberedValue(rememberedValue3);
                                }
                                Function2 function25 = (Function2) rememberedValue3;
                                boolean changed4 = gapComposer.changed(function12);
                                Object rememberedValue4 = gapComposer.rememberedValue();
                                if (changed4 || rememberedValue4 == neverEqualPolicy) {
                                    rememberedValue4 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 18);
                                    gapComposer.updateRememberedValue(rememberedValue4);
                                }
                                Function2 function26 = (Function2) rememberedValue4;
                                boolean changed5 = gapComposer.changed(function12) | gapComposer.changed(forYouModule2);
                                Object rememberedValue5 = gapComposer.rememberedValue();
                                if (changed5 || rememberedValue5 == neverEqualPolicy) {
                                    rememberedValue5 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 3);
                                    gapComposer.updateRememberedValue(rememberedValue5);
                                }
                                Function0 function0 = (Function0) rememberedValue5;
                                boolean changed6 = gapComposer.changed(function22) | gapComposer.changed(i5);
                                Object rememberedValue6 = gapComposer.rememberedValue();
                                if (changed6 || rememberedValue6 == neverEqualPolicy) {
                                    rememberedValue6 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i5, 3, function22);
                                    gapComposer.updateRememberedValue(rememberedValue6);
                                }
                                Function1 function13 = (Function1) rememberedValue6;
                                boolean changed7 = gapComposer.changed(function12);
                                Object rememberedValue7 = gapComposer.rememberedValue();
                                if (changed7 || rememberedValue7 == neverEqualPolicy) {
                                    rememberedValue7 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 17);
                                    gapComposer.updateRememberedValue(rememberedValue7);
                                }
                                Headers.Companion.BasedOnInterestModule(m140height3ABfNKs, wikiSite, basedOnInterest, function23, function24, function25, function26, function0, function13, (Function1) rememberedValue7, gapComposer, 0);
                                break;
                            }
                        case 1:
                            GapComposer gapComposer2 = (GapComposer) obj2;
                            int intValue2 = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                gapComposer2.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs2 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.Random random = (ForYouModule.Random) forYouModule2;
                                boolean changed8 = gapComposer2.changed(function12);
                                Object rememberedValue8 = gapComposer2.rememberedValue();
                                if (changed8 || rememberedValue8 == neverEqualPolicy) {
                                    rememberedValue8 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 11);
                                    gapComposer2.updateRememberedValue(rememberedValue8);
                                }
                                Function2 function27 = (Function2) rememberedValue8;
                                boolean changed9 = gapComposer2.changed(function12);
                                Object rememberedValue9 = gapComposer2.rememberedValue();
                                if (changed9 || rememberedValue9 == neverEqualPolicy) {
                                    rememberedValue9 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 12);
                                    gapComposer2.updateRememberedValue(rememberedValue9);
                                }
                                Function2 function28 = (Function2) rememberedValue9;
                                boolean changed10 = gapComposer2.changed(function12);
                                Object rememberedValue10 = gapComposer2.rememberedValue();
                                if (changed10 || rememberedValue10 == neverEqualPolicy) {
                                    rememberedValue10 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 13);
                                    gapComposer2.updateRememberedValue(rememberedValue10);
                                }
                                Function2 function29 = (Function2) rememberedValue10;
                                boolean changed11 = gapComposer2.changed(function12);
                                Object rememberedValue11 = gapComposer2.rememberedValue();
                                if (changed11 || rememberedValue11 == neverEqualPolicy) {
                                    rememberedValue11 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 14);
                                    gapComposer2.updateRememberedValue(rememberedValue11);
                                }
                                Function2 function210 = (Function2) rememberedValue11;
                                boolean changed12 = gapComposer2.changed(function12) | gapComposer2.changed(forYouModule2);
                                Object rememberedValue12 = gapComposer2.rememberedValue();
                                if (changed12 || rememberedValue12 == neverEqualPolicy) {
                                    rememberedValue12 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 2);
                                    gapComposer2.updateRememberedValue(rememberedValue12);
                                }
                                Function0 function02 = (Function0) rememberedValue12;
                                boolean changed13 = gapComposer2.changed(function22) | gapComposer2.changed(i5);
                                Object rememberedValue13 = gapComposer2.rememberedValue();
                                if (changed13 || rememberedValue13 == neverEqualPolicy) {
                                    rememberedValue13 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i5, 2, function22);
                                    gapComposer2.updateRememberedValue(rememberedValue13);
                                }
                                Function1 function14 = (Function1) rememberedValue13;
                                boolean changed14 = gapComposer2.changed(function12);
                                Object rememberedValue14 = gapComposer2.rememberedValue();
                                if (changed14 || rememberedValue14 == neverEqualPolicy) {
                                    rememberedValue14 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 16);
                                    gapComposer2.updateRememberedValue(rememberedValue14);
                                }
                                Function1 function15 = (Function1) rememberedValue14;
                                boolean changed15 = gapComposer2.changed(function12);
                                Object rememberedValue15 = gapComposer2.rememberedValue();
                                if (changed15 || rememberedValue15 == neverEqualPolicy) {
                                    rememberedValue15 = new HomeScreenKt$$ExternalSyntheticLambda4(function12, 16);
                                    gapComposer2.updateRememberedValue(rememberedValue15);
                                }
                                Okio__JvmOkioKt.RandomModule(m140height3ABfNKs2, wikiSite, random, function27, function28, function29, function210, function02, function14, function15, (Function0) rememberedValue15, gapComposer2, 0);
                                break;
                            }
                        case 2:
                            GapComposer gapComposer3 = (GapComposer) obj2;
                            int intValue3 = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                gapComposer3.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs3 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.ContinueReading continueReading = (ForYouModule.ContinueReading) forYouModule2;
                                boolean changed16 = gapComposer3.changed(function12);
                                Object rememberedValue16 = gapComposer3.rememberedValue();
                                if (changed16 || rememberedValue16 == neverEqualPolicy) {
                                    rememberedValue16 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 3);
                                    gapComposer3.updateRememberedValue(rememberedValue16);
                                }
                                Function2 function211 = (Function2) rememberedValue16;
                                boolean changed17 = gapComposer3.changed(function12);
                                Object rememberedValue17 = gapComposer3.rememberedValue();
                                if (changed17 || rememberedValue17 == neverEqualPolicy) {
                                    rememberedValue17 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 4);
                                    gapComposer3.updateRememberedValue(rememberedValue17);
                                }
                                Function2 function212 = (Function2) rememberedValue17;
                                boolean changed18 = gapComposer3.changed(function12);
                                Object rememberedValue18 = gapComposer3.rememberedValue();
                                if (changed18 || rememberedValue18 == neverEqualPolicy) {
                                    rememberedValue18 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 5);
                                    gapComposer3.updateRememberedValue(rememberedValue18);
                                }
                                Function2 function213 = (Function2) rememberedValue18;
                                boolean changed19 = gapComposer3.changed(function12);
                                Object rememberedValue19 = gapComposer3.rememberedValue();
                                if (changed19 || rememberedValue19 == neverEqualPolicy) {
                                    rememberedValue19 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 6);
                                    gapComposer3.updateRememberedValue(rememberedValue19);
                                }
                                Function2 function214 = (Function2) rememberedValue19;
                                boolean changed20 = gapComposer3.changed(function12) | gapComposer3.changed(forYouModule2);
                                Object rememberedValue20 = gapComposer3.rememberedValue();
                                if (changed20 || rememberedValue20 == neverEqualPolicy) {
                                    rememberedValue20 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 0);
                                    gapComposer3.updateRememberedValue(rememberedValue20);
                                }
                                Function0 function03 = (Function0) rememberedValue20;
                                boolean changed21 = gapComposer3.changed(function22) | gapComposer3.changed(i5);
                                Object rememberedValue21 = gapComposer3.rememberedValue();
                                if (changed21 || rememberedValue21 == neverEqualPolicy) {
                                    rememberedValue21 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i5, 0, function22);
                                    gapComposer3.updateRememberedValue(rememberedValue21);
                                }
                                Function1 function16 = (Function1) rememberedValue21;
                                boolean changed22 = gapComposer3.changed(function12);
                                Object rememberedValue22 = gapComposer3.rememberedValue();
                                if (changed22 || rememberedValue22 == neverEqualPolicy) {
                                    rememberedValue22 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 14);
                                    gapComposer3.updateRememberedValue(rememberedValue22);
                                }
                                NodeTraversor.ContinueReadingModule(m140height3ABfNKs3, wikiSite, continueReading, function211, function212, function213, function214, function03, function16, (Function1) rememberedValue22, gapComposer3, 0);
                                break;
                            }
                        default:
                            GapComposer gapComposer4 = (GapComposer) obj2;
                            int intValue4 = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                                gapComposer4.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs4 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.BecauseYouRead becauseYouRead = (ForYouModule.BecauseYouRead) forYouModule2;
                                boolean changed23 = gapComposer4.changed(function12);
                                Object rememberedValue23 = gapComposer4.rememberedValue();
                                if (changed23 || rememberedValue23 == neverEqualPolicy) {
                                    rememberedValue23 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 24);
                                    gapComposer4.updateRememberedValue(rememberedValue23);
                                }
                                Function2 function215 = (Function2) rememberedValue23;
                                boolean changed24 = gapComposer4.changed(function12);
                                Object rememberedValue24 = gapComposer4.rememberedValue();
                                if (changed24 || rememberedValue24 == neverEqualPolicy) {
                                    rememberedValue24 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 25);
                                    gapComposer4.updateRememberedValue(rememberedValue24);
                                }
                                Function2 function216 = (Function2) rememberedValue24;
                                boolean changed25 = gapComposer4.changed(function12);
                                Object rememberedValue25 = gapComposer4.rememberedValue();
                                if (changed25 || rememberedValue25 == neverEqualPolicy) {
                                    rememberedValue25 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 26);
                                    gapComposer4.updateRememberedValue(rememberedValue25);
                                }
                                Function2 function217 = (Function2) rememberedValue25;
                                boolean changed26 = gapComposer4.changed(function12);
                                Object rememberedValue26 = gapComposer4.rememberedValue();
                                if (changed26 || rememberedValue26 == neverEqualPolicy) {
                                    rememberedValue26 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 27);
                                    gapComposer4.updateRememberedValue(rememberedValue26);
                                }
                                Function2 function218 = (Function2) rememberedValue26;
                                boolean changed27 = gapComposer4.changed(function12) | gapComposer4.changed(forYouModule2);
                                Object rememberedValue27 = gapComposer4.rememberedValue();
                                if (changed27 || rememberedValue27 == neverEqualPolicy) {
                                    rememberedValue27 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 6);
                                    gapComposer4.updateRememberedValue(rememberedValue27);
                                }
                                Function0 function04 = (Function0) rememberedValue27;
                                boolean changed28 = gapComposer4.changed(function22) | gapComposer4.changed(i5);
                                Object rememberedValue28 = gapComposer4.rememberedValue();
                                if (changed28 || rememberedValue28 == neverEqualPolicy) {
                                    rememberedValue28 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i5, 6, function22);
                                    gapComposer4.updateRememberedValue(rememberedValue28);
                                }
                                Function1 function17 = (Function1) rememberedValue28;
                                boolean changed29 = gapComposer4.changed(function12);
                                Object rememberedValue29 = gapComposer4.rememberedValue();
                                if (changed29 || rememberedValue29 == neverEqualPolicy) {
                                    rememberedValue29 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 21);
                                    gapComposer4.updateRememberedValue(rememberedValue29);
                                }
                                NodeUtils.BecauseYouReadModule(m140height3ABfNKs4, wikiSite, becauseYouRead, function215, function216, function217, function218, function04, function17, (Function1) rememberedValue29, gapComposer4, 0);
                                break;
                            }
                    }
                    return unit;
                }
            }, true, -1926335944), 2);
            return;
        }
        if (forYouModule instanceof ForYouModule.BecauseYouRead) {
            final int i5 = 3;
            LazyItemScope$CC.item$default(lazyListIntervalContent, str, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.feed.ForYouContentTabKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    int i42 = i5;
                    Unit unit = Unit.INSTANCE;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    int i52 = i;
                    Function2 function22 = function2;
                    Function1 function12 = function1;
                    ForYouModule forYouModule2 = forYouModule;
                    float f2 = f;
                    switch (i42) {
                        case 0:
                            GapComposer gapComposer = (GapComposer) obj2;
                            int intValue = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                gapComposer.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.BasedOnInterest basedOnInterest = (ForYouModule.BasedOnInterest) forYouModule2;
                                boolean changed = gapComposer.changed(function12);
                                Object rememberedValue = gapComposer.rememberedValue();
                                if (changed || rememberedValue == neverEqualPolicy) {
                                    rememberedValue = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 15);
                                    gapComposer.updateRememberedValue(rememberedValue);
                                }
                                Function2 function23 = (Function2) rememberedValue;
                                boolean changed2 = gapComposer.changed(function12);
                                Object rememberedValue2 = gapComposer.rememberedValue();
                                if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                    rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 16);
                                    gapComposer.updateRememberedValue(rememberedValue2);
                                }
                                Function2 function24 = (Function2) rememberedValue2;
                                boolean changed3 = gapComposer.changed(function12);
                                Object rememberedValue3 = gapComposer.rememberedValue();
                                if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                    rememberedValue3 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 17);
                                    gapComposer.updateRememberedValue(rememberedValue3);
                                }
                                Function2 function25 = (Function2) rememberedValue3;
                                boolean changed4 = gapComposer.changed(function12);
                                Object rememberedValue4 = gapComposer.rememberedValue();
                                if (changed4 || rememberedValue4 == neverEqualPolicy) {
                                    rememberedValue4 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 18);
                                    gapComposer.updateRememberedValue(rememberedValue4);
                                }
                                Function2 function26 = (Function2) rememberedValue4;
                                boolean changed5 = gapComposer.changed(function12) | gapComposer.changed(forYouModule2);
                                Object rememberedValue5 = gapComposer.rememberedValue();
                                if (changed5 || rememberedValue5 == neverEqualPolicy) {
                                    rememberedValue5 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 3);
                                    gapComposer.updateRememberedValue(rememberedValue5);
                                }
                                Function0 function0 = (Function0) rememberedValue5;
                                boolean changed6 = gapComposer.changed(function22) | gapComposer.changed(i52);
                                Object rememberedValue6 = gapComposer.rememberedValue();
                                if (changed6 || rememberedValue6 == neverEqualPolicy) {
                                    rememberedValue6 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i52, 3, function22);
                                    gapComposer.updateRememberedValue(rememberedValue6);
                                }
                                Function1 function13 = (Function1) rememberedValue6;
                                boolean changed7 = gapComposer.changed(function12);
                                Object rememberedValue7 = gapComposer.rememberedValue();
                                if (changed7 || rememberedValue7 == neverEqualPolicy) {
                                    rememberedValue7 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 17);
                                    gapComposer.updateRememberedValue(rememberedValue7);
                                }
                                Headers.Companion.BasedOnInterestModule(m140height3ABfNKs, wikiSite, basedOnInterest, function23, function24, function25, function26, function0, function13, (Function1) rememberedValue7, gapComposer, 0);
                                break;
                            }
                        case 1:
                            GapComposer gapComposer2 = (GapComposer) obj2;
                            int intValue2 = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                gapComposer2.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs2 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.Random random = (ForYouModule.Random) forYouModule2;
                                boolean changed8 = gapComposer2.changed(function12);
                                Object rememberedValue8 = gapComposer2.rememberedValue();
                                if (changed8 || rememberedValue8 == neverEqualPolicy) {
                                    rememberedValue8 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 11);
                                    gapComposer2.updateRememberedValue(rememberedValue8);
                                }
                                Function2 function27 = (Function2) rememberedValue8;
                                boolean changed9 = gapComposer2.changed(function12);
                                Object rememberedValue9 = gapComposer2.rememberedValue();
                                if (changed9 || rememberedValue9 == neverEqualPolicy) {
                                    rememberedValue9 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 12);
                                    gapComposer2.updateRememberedValue(rememberedValue9);
                                }
                                Function2 function28 = (Function2) rememberedValue9;
                                boolean changed10 = gapComposer2.changed(function12);
                                Object rememberedValue10 = gapComposer2.rememberedValue();
                                if (changed10 || rememberedValue10 == neverEqualPolicy) {
                                    rememberedValue10 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 13);
                                    gapComposer2.updateRememberedValue(rememberedValue10);
                                }
                                Function2 function29 = (Function2) rememberedValue10;
                                boolean changed11 = gapComposer2.changed(function12);
                                Object rememberedValue11 = gapComposer2.rememberedValue();
                                if (changed11 || rememberedValue11 == neverEqualPolicy) {
                                    rememberedValue11 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 14);
                                    gapComposer2.updateRememberedValue(rememberedValue11);
                                }
                                Function2 function210 = (Function2) rememberedValue11;
                                boolean changed12 = gapComposer2.changed(function12) | gapComposer2.changed(forYouModule2);
                                Object rememberedValue12 = gapComposer2.rememberedValue();
                                if (changed12 || rememberedValue12 == neverEqualPolicy) {
                                    rememberedValue12 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 2);
                                    gapComposer2.updateRememberedValue(rememberedValue12);
                                }
                                Function0 function02 = (Function0) rememberedValue12;
                                boolean changed13 = gapComposer2.changed(function22) | gapComposer2.changed(i52);
                                Object rememberedValue13 = gapComposer2.rememberedValue();
                                if (changed13 || rememberedValue13 == neverEqualPolicy) {
                                    rememberedValue13 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i52, 2, function22);
                                    gapComposer2.updateRememberedValue(rememberedValue13);
                                }
                                Function1 function14 = (Function1) rememberedValue13;
                                boolean changed14 = gapComposer2.changed(function12);
                                Object rememberedValue14 = gapComposer2.rememberedValue();
                                if (changed14 || rememberedValue14 == neverEqualPolicy) {
                                    rememberedValue14 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 16);
                                    gapComposer2.updateRememberedValue(rememberedValue14);
                                }
                                Function1 function15 = (Function1) rememberedValue14;
                                boolean changed15 = gapComposer2.changed(function12);
                                Object rememberedValue15 = gapComposer2.rememberedValue();
                                if (changed15 || rememberedValue15 == neverEqualPolicy) {
                                    rememberedValue15 = new HomeScreenKt$$ExternalSyntheticLambda4(function12, 16);
                                    gapComposer2.updateRememberedValue(rememberedValue15);
                                }
                                Okio__JvmOkioKt.RandomModule(m140height3ABfNKs2, wikiSite, random, function27, function28, function29, function210, function02, function14, function15, (Function0) rememberedValue15, gapComposer2, 0);
                                break;
                            }
                        case 2:
                            GapComposer gapComposer3 = (GapComposer) obj2;
                            int intValue3 = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                gapComposer3.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs3 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.ContinueReading continueReading = (ForYouModule.ContinueReading) forYouModule2;
                                boolean changed16 = gapComposer3.changed(function12);
                                Object rememberedValue16 = gapComposer3.rememberedValue();
                                if (changed16 || rememberedValue16 == neverEqualPolicy) {
                                    rememberedValue16 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 3);
                                    gapComposer3.updateRememberedValue(rememberedValue16);
                                }
                                Function2 function211 = (Function2) rememberedValue16;
                                boolean changed17 = gapComposer3.changed(function12);
                                Object rememberedValue17 = gapComposer3.rememberedValue();
                                if (changed17 || rememberedValue17 == neverEqualPolicy) {
                                    rememberedValue17 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 4);
                                    gapComposer3.updateRememberedValue(rememberedValue17);
                                }
                                Function2 function212 = (Function2) rememberedValue17;
                                boolean changed18 = gapComposer3.changed(function12);
                                Object rememberedValue18 = gapComposer3.rememberedValue();
                                if (changed18 || rememberedValue18 == neverEqualPolicy) {
                                    rememberedValue18 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 5);
                                    gapComposer3.updateRememberedValue(rememberedValue18);
                                }
                                Function2 function213 = (Function2) rememberedValue18;
                                boolean changed19 = gapComposer3.changed(function12);
                                Object rememberedValue19 = gapComposer3.rememberedValue();
                                if (changed19 || rememberedValue19 == neverEqualPolicy) {
                                    rememberedValue19 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 6);
                                    gapComposer3.updateRememberedValue(rememberedValue19);
                                }
                                Function2 function214 = (Function2) rememberedValue19;
                                boolean changed20 = gapComposer3.changed(function12) | gapComposer3.changed(forYouModule2);
                                Object rememberedValue20 = gapComposer3.rememberedValue();
                                if (changed20 || rememberedValue20 == neverEqualPolicy) {
                                    rememberedValue20 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 0);
                                    gapComposer3.updateRememberedValue(rememberedValue20);
                                }
                                Function0 function03 = (Function0) rememberedValue20;
                                boolean changed21 = gapComposer3.changed(function22) | gapComposer3.changed(i52);
                                Object rememberedValue21 = gapComposer3.rememberedValue();
                                if (changed21 || rememberedValue21 == neverEqualPolicy) {
                                    rememberedValue21 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i52, 0, function22);
                                    gapComposer3.updateRememberedValue(rememberedValue21);
                                }
                                Function1 function16 = (Function1) rememberedValue21;
                                boolean changed22 = gapComposer3.changed(function12);
                                Object rememberedValue22 = gapComposer3.rememberedValue();
                                if (changed22 || rememberedValue22 == neverEqualPolicy) {
                                    rememberedValue22 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 14);
                                    gapComposer3.updateRememberedValue(rememberedValue22);
                                }
                                NodeTraversor.ContinueReadingModule(m140height3ABfNKs3, wikiSite, continueReading, function211, function212, function213, function214, function03, function16, (Function1) rememberedValue22, gapComposer3, 0);
                                break;
                            }
                        default:
                            GapComposer gapComposer4 = (GapComposer) obj2;
                            int intValue4 = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                                gapComposer4.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs4 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.BecauseYouRead becauseYouRead = (ForYouModule.BecauseYouRead) forYouModule2;
                                boolean changed23 = gapComposer4.changed(function12);
                                Object rememberedValue23 = gapComposer4.rememberedValue();
                                if (changed23 || rememberedValue23 == neverEqualPolicy) {
                                    rememberedValue23 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 24);
                                    gapComposer4.updateRememberedValue(rememberedValue23);
                                }
                                Function2 function215 = (Function2) rememberedValue23;
                                boolean changed24 = gapComposer4.changed(function12);
                                Object rememberedValue24 = gapComposer4.rememberedValue();
                                if (changed24 || rememberedValue24 == neverEqualPolicy) {
                                    rememberedValue24 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 25);
                                    gapComposer4.updateRememberedValue(rememberedValue24);
                                }
                                Function2 function216 = (Function2) rememberedValue24;
                                boolean changed25 = gapComposer4.changed(function12);
                                Object rememberedValue25 = gapComposer4.rememberedValue();
                                if (changed25 || rememberedValue25 == neverEqualPolicy) {
                                    rememberedValue25 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 26);
                                    gapComposer4.updateRememberedValue(rememberedValue25);
                                }
                                Function2 function217 = (Function2) rememberedValue25;
                                boolean changed26 = gapComposer4.changed(function12);
                                Object rememberedValue26 = gapComposer4.rememberedValue();
                                if (changed26 || rememberedValue26 == neverEqualPolicy) {
                                    rememberedValue26 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 27);
                                    gapComposer4.updateRememberedValue(rememberedValue26);
                                }
                                Function2 function218 = (Function2) rememberedValue26;
                                boolean changed27 = gapComposer4.changed(function12) | gapComposer4.changed(forYouModule2);
                                Object rememberedValue27 = gapComposer4.rememberedValue();
                                if (changed27 || rememberedValue27 == neverEqualPolicy) {
                                    rememberedValue27 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 6);
                                    gapComposer4.updateRememberedValue(rememberedValue27);
                                }
                                Function0 function04 = (Function0) rememberedValue27;
                                boolean changed28 = gapComposer4.changed(function22) | gapComposer4.changed(i52);
                                Object rememberedValue28 = gapComposer4.rememberedValue();
                                if (changed28 || rememberedValue28 == neverEqualPolicy) {
                                    rememberedValue28 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i52, 6, function22);
                                    gapComposer4.updateRememberedValue(rememberedValue28);
                                }
                                Function1 function17 = (Function1) rememberedValue28;
                                boolean changed29 = gapComposer4.changed(function12);
                                Object rememberedValue29 = gapComposer4.rememberedValue();
                                if (changed29 || rememberedValue29 == neverEqualPolicy) {
                                    rememberedValue29 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 21);
                                    gapComposer4.updateRememberedValue(rememberedValue29);
                                }
                                NodeUtils.BecauseYouReadModule(m140height3ABfNKs4, wikiSite, becauseYouRead, function215, function216, function217, function218, function04, function17, (Function1) rememberedValue29, gapComposer4, 0);
                                break;
                            }
                    }
                    return unit;
                }
            }, true, -960773127), 2);
            return;
        }
        if (forYouModule instanceof ForYouModule.PlacesOfInterest) {
            LazyItemScope$CC.item$default(lazyListIntervalContent, str, new ComposableLambdaImpl(new ForYouContentTabKt$$ExternalSyntheticLambda8(forYouModule, f, function2, i, i2, wikiSite, function1, 0), true, 4789690), 2);
            return;
        }
        if (forYouModule instanceof ForYouModule.Discover) {
            LazyItemScope$CC.item$default(lazyListIntervalContent, str, new ComposableLambdaImpl(new ForYouContentTabKt$$ExternalSyntheticLambda8(forYouModule, f, function2, i, i2, wikiSite, function1, 2), true, 970352507), 2);
            return;
        }
        if (forYouModule instanceof ForYouModule.Games) {
            LazyItemScope$CC.item$default(lazyListIntervalContent, str, new ComposableLambdaImpl(new ForYouContentTabKt$$ExternalSyntheticLambda8(f, i2, i, function1, function2, wikiSite, forYouModule), true, 1935915324), 2);
        } else if (!(forYouModule instanceof ForYouModule.Random)) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
        } else {
            final int i6 = 1;
            LazyItemScope$CC.item$default(lazyListIntervalContent, str, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.feed.ForYouContentTabKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    int i42 = i6;
                    Unit unit = Unit.INSTANCE;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    int i52 = i;
                    Function2 function22 = function2;
                    Function1 function12 = function1;
                    ForYouModule forYouModule2 = forYouModule;
                    float f2 = f;
                    switch (i42) {
                        case 0:
                            GapComposer gapComposer = (GapComposer) obj2;
                            int intValue = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                gapComposer.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.BasedOnInterest basedOnInterest = (ForYouModule.BasedOnInterest) forYouModule2;
                                boolean changed = gapComposer.changed(function12);
                                Object rememberedValue = gapComposer.rememberedValue();
                                if (changed || rememberedValue == neverEqualPolicy) {
                                    rememberedValue = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 15);
                                    gapComposer.updateRememberedValue(rememberedValue);
                                }
                                Function2 function23 = (Function2) rememberedValue;
                                boolean changed2 = gapComposer.changed(function12);
                                Object rememberedValue2 = gapComposer.rememberedValue();
                                if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                    rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 16);
                                    gapComposer.updateRememberedValue(rememberedValue2);
                                }
                                Function2 function24 = (Function2) rememberedValue2;
                                boolean changed3 = gapComposer.changed(function12);
                                Object rememberedValue3 = gapComposer.rememberedValue();
                                if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                    rememberedValue3 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 17);
                                    gapComposer.updateRememberedValue(rememberedValue3);
                                }
                                Function2 function25 = (Function2) rememberedValue3;
                                boolean changed4 = gapComposer.changed(function12);
                                Object rememberedValue4 = gapComposer.rememberedValue();
                                if (changed4 || rememberedValue4 == neverEqualPolicy) {
                                    rememberedValue4 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 18);
                                    gapComposer.updateRememberedValue(rememberedValue4);
                                }
                                Function2 function26 = (Function2) rememberedValue4;
                                boolean changed5 = gapComposer.changed(function12) | gapComposer.changed(forYouModule2);
                                Object rememberedValue5 = gapComposer.rememberedValue();
                                if (changed5 || rememberedValue5 == neverEqualPolicy) {
                                    rememberedValue5 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 3);
                                    gapComposer.updateRememberedValue(rememberedValue5);
                                }
                                Function0 function0 = (Function0) rememberedValue5;
                                boolean changed6 = gapComposer.changed(function22) | gapComposer.changed(i52);
                                Object rememberedValue6 = gapComposer.rememberedValue();
                                if (changed6 || rememberedValue6 == neverEqualPolicy) {
                                    rememberedValue6 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i52, 3, function22);
                                    gapComposer.updateRememberedValue(rememberedValue6);
                                }
                                Function1 function13 = (Function1) rememberedValue6;
                                boolean changed7 = gapComposer.changed(function12);
                                Object rememberedValue7 = gapComposer.rememberedValue();
                                if (changed7 || rememberedValue7 == neverEqualPolicy) {
                                    rememberedValue7 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 17);
                                    gapComposer.updateRememberedValue(rememberedValue7);
                                }
                                Headers.Companion.BasedOnInterestModule(m140height3ABfNKs, wikiSite, basedOnInterest, function23, function24, function25, function26, function0, function13, (Function1) rememberedValue7, gapComposer, 0);
                                break;
                            }
                        case 1:
                            GapComposer gapComposer2 = (GapComposer) obj2;
                            int intValue2 = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                gapComposer2.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs2 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.Random random = (ForYouModule.Random) forYouModule2;
                                boolean changed8 = gapComposer2.changed(function12);
                                Object rememberedValue8 = gapComposer2.rememberedValue();
                                if (changed8 || rememberedValue8 == neverEqualPolicy) {
                                    rememberedValue8 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 11);
                                    gapComposer2.updateRememberedValue(rememberedValue8);
                                }
                                Function2 function27 = (Function2) rememberedValue8;
                                boolean changed9 = gapComposer2.changed(function12);
                                Object rememberedValue9 = gapComposer2.rememberedValue();
                                if (changed9 || rememberedValue9 == neverEqualPolicy) {
                                    rememberedValue9 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 12);
                                    gapComposer2.updateRememberedValue(rememberedValue9);
                                }
                                Function2 function28 = (Function2) rememberedValue9;
                                boolean changed10 = gapComposer2.changed(function12);
                                Object rememberedValue10 = gapComposer2.rememberedValue();
                                if (changed10 || rememberedValue10 == neverEqualPolicy) {
                                    rememberedValue10 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 13);
                                    gapComposer2.updateRememberedValue(rememberedValue10);
                                }
                                Function2 function29 = (Function2) rememberedValue10;
                                boolean changed11 = gapComposer2.changed(function12);
                                Object rememberedValue11 = gapComposer2.rememberedValue();
                                if (changed11 || rememberedValue11 == neverEqualPolicy) {
                                    rememberedValue11 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 14);
                                    gapComposer2.updateRememberedValue(rememberedValue11);
                                }
                                Function2 function210 = (Function2) rememberedValue11;
                                boolean changed12 = gapComposer2.changed(function12) | gapComposer2.changed(forYouModule2);
                                Object rememberedValue12 = gapComposer2.rememberedValue();
                                if (changed12 || rememberedValue12 == neverEqualPolicy) {
                                    rememberedValue12 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 2);
                                    gapComposer2.updateRememberedValue(rememberedValue12);
                                }
                                Function0 function02 = (Function0) rememberedValue12;
                                boolean changed13 = gapComposer2.changed(function22) | gapComposer2.changed(i52);
                                Object rememberedValue13 = gapComposer2.rememberedValue();
                                if (changed13 || rememberedValue13 == neverEqualPolicy) {
                                    rememberedValue13 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i52, 2, function22);
                                    gapComposer2.updateRememberedValue(rememberedValue13);
                                }
                                Function1 function14 = (Function1) rememberedValue13;
                                boolean changed14 = gapComposer2.changed(function12);
                                Object rememberedValue14 = gapComposer2.rememberedValue();
                                if (changed14 || rememberedValue14 == neverEqualPolicy) {
                                    rememberedValue14 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 16);
                                    gapComposer2.updateRememberedValue(rememberedValue14);
                                }
                                Function1 function15 = (Function1) rememberedValue14;
                                boolean changed15 = gapComposer2.changed(function12);
                                Object rememberedValue15 = gapComposer2.rememberedValue();
                                if (changed15 || rememberedValue15 == neverEqualPolicy) {
                                    rememberedValue15 = new HomeScreenKt$$ExternalSyntheticLambda4(function12, 16);
                                    gapComposer2.updateRememberedValue(rememberedValue15);
                                }
                                Okio__JvmOkioKt.RandomModule(m140height3ABfNKs2, wikiSite, random, function27, function28, function29, function210, function02, function14, function15, (Function0) rememberedValue15, gapComposer2, 0);
                                break;
                            }
                        case 2:
                            GapComposer gapComposer3 = (GapComposer) obj2;
                            int intValue3 = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                gapComposer3.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs3 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.ContinueReading continueReading = (ForYouModule.ContinueReading) forYouModule2;
                                boolean changed16 = gapComposer3.changed(function12);
                                Object rememberedValue16 = gapComposer3.rememberedValue();
                                if (changed16 || rememberedValue16 == neverEqualPolicy) {
                                    rememberedValue16 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 3);
                                    gapComposer3.updateRememberedValue(rememberedValue16);
                                }
                                Function2 function211 = (Function2) rememberedValue16;
                                boolean changed17 = gapComposer3.changed(function12);
                                Object rememberedValue17 = gapComposer3.rememberedValue();
                                if (changed17 || rememberedValue17 == neverEqualPolicy) {
                                    rememberedValue17 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 4);
                                    gapComposer3.updateRememberedValue(rememberedValue17);
                                }
                                Function2 function212 = (Function2) rememberedValue17;
                                boolean changed18 = gapComposer3.changed(function12);
                                Object rememberedValue18 = gapComposer3.rememberedValue();
                                if (changed18 || rememberedValue18 == neverEqualPolicy) {
                                    rememberedValue18 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 5);
                                    gapComposer3.updateRememberedValue(rememberedValue18);
                                }
                                Function2 function213 = (Function2) rememberedValue18;
                                boolean changed19 = gapComposer3.changed(function12);
                                Object rememberedValue19 = gapComposer3.rememberedValue();
                                if (changed19 || rememberedValue19 == neverEqualPolicy) {
                                    rememberedValue19 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 6);
                                    gapComposer3.updateRememberedValue(rememberedValue19);
                                }
                                Function2 function214 = (Function2) rememberedValue19;
                                boolean changed20 = gapComposer3.changed(function12) | gapComposer3.changed(forYouModule2);
                                Object rememberedValue20 = gapComposer3.rememberedValue();
                                if (changed20 || rememberedValue20 == neverEqualPolicy) {
                                    rememberedValue20 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 0);
                                    gapComposer3.updateRememberedValue(rememberedValue20);
                                }
                                Function0 function03 = (Function0) rememberedValue20;
                                boolean changed21 = gapComposer3.changed(function22) | gapComposer3.changed(i52);
                                Object rememberedValue21 = gapComposer3.rememberedValue();
                                if (changed21 || rememberedValue21 == neverEqualPolicy) {
                                    rememberedValue21 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i52, 0, function22);
                                    gapComposer3.updateRememberedValue(rememberedValue21);
                                }
                                Function1 function16 = (Function1) rememberedValue21;
                                boolean changed22 = gapComposer3.changed(function12);
                                Object rememberedValue22 = gapComposer3.rememberedValue();
                                if (changed22 || rememberedValue22 == neverEqualPolicy) {
                                    rememberedValue22 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 14);
                                    gapComposer3.updateRememberedValue(rememberedValue22);
                                }
                                NodeTraversor.ContinueReadingModule(m140height3ABfNKs3, wikiSite, continueReading, function211, function212, function213, function214, function03, function16, (Function1) rememberedValue22, gapComposer3, 0);
                                break;
                            }
                        default:
                            GapComposer gapComposer4 = (GapComposer) obj2;
                            int intValue4 = ((Integer) obj3).intValue();
                            ((LazyItemScopeImpl) obj).getClass();
                            if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                                gapComposer4.skipToGroupEnd();
                                break;
                            } else {
                                Modifier m140height3ABfNKs4 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f2);
                                ForYouModule.BecauseYouRead becauseYouRead = (ForYouModule.BecauseYouRead) forYouModule2;
                                boolean changed23 = gapComposer4.changed(function12);
                                Object rememberedValue23 = gapComposer4.rememberedValue();
                                if (changed23 || rememberedValue23 == neverEqualPolicy) {
                                    rememberedValue23 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 24);
                                    gapComposer4.updateRememberedValue(rememberedValue23);
                                }
                                Function2 function215 = (Function2) rememberedValue23;
                                boolean changed24 = gapComposer4.changed(function12);
                                Object rememberedValue24 = gapComposer4.rememberedValue();
                                if (changed24 || rememberedValue24 == neverEqualPolicy) {
                                    rememberedValue24 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 25);
                                    gapComposer4.updateRememberedValue(rememberedValue24);
                                }
                                Function2 function216 = (Function2) rememberedValue24;
                                boolean changed25 = gapComposer4.changed(function12);
                                Object rememberedValue25 = gapComposer4.rememberedValue();
                                if (changed25 || rememberedValue25 == neverEqualPolicy) {
                                    rememberedValue25 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 26);
                                    gapComposer4.updateRememberedValue(rememberedValue25);
                                }
                                Function2 function217 = (Function2) rememberedValue25;
                                boolean changed26 = gapComposer4.changed(function12);
                                Object rememberedValue26 = gapComposer4.rememberedValue();
                                if (changed26 || rememberedValue26 == neverEqualPolicy) {
                                    rememberedValue26 = new HomeScreenKt$$ExternalSyntheticLambda7(function12, 27);
                                    gapComposer4.updateRememberedValue(rememberedValue26);
                                }
                                Function2 function218 = (Function2) rememberedValue26;
                                boolean changed27 = gapComposer4.changed(function12) | gapComposer4.changed(forYouModule2);
                                Object rememberedValue27 = gapComposer4.rememberedValue();
                                if (changed27 || rememberedValue27 == neverEqualPolicy) {
                                    rememberedValue27 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function12, forYouModule2, 6);
                                    gapComposer4.updateRememberedValue(rememberedValue27);
                                }
                                Function0 function04 = (Function0) rememberedValue27;
                                boolean changed28 = gapComposer4.changed(function22) | gapComposer4.changed(i52);
                                Object rememberedValue28 = gapComposer4.rememberedValue();
                                if (changed28 || rememberedValue28 == neverEqualPolicy) {
                                    rememberedValue28 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i52, 6, function22);
                                    gapComposer4.updateRememberedValue(rememberedValue28);
                                }
                                Function1 function17 = (Function1) rememberedValue28;
                                boolean changed29 = gapComposer4.changed(function12);
                                Object rememberedValue29 = gapComposer4.rememberedValue();
                                if (changed29 || rememberedValue29 == neverEqualPolicy) {
                                    rememberedValue29 = new HomeScreenKt$$ExternalSyntheticLambda8(function12, 21);
                                    gapComposer4.updateRememberedValue(rememberedValue29);
                                }
                                NodeUtils.BecauseYouReadModule(m140height3ABfNKs4, wikiSite, becauseYouRead, function215, function216, function217, function218, function04, function17, (Function1) rememberedValue29, gapComposer4, 0);
                                break;
                            }
                    }
                    return unit;
                }
            }, true, -1393489155), 2);
        }
    }
}
