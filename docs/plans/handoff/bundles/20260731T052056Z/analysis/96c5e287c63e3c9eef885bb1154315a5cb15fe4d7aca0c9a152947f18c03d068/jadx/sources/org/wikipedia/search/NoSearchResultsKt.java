package org.wikipedia.search;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.CombinedClickableElement;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListScope$items$1;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.CardElevation;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.runtime.State;
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
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.painter.BrushPainter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda13;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadState;
import androidx.paging.compose.LazyPagingItems;
import androidx.paging.compose.LazyPagingItemsKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.compose.AsyncImageKt;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function6;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.ByteString;
import okio.Okio__JvmOkioKt;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.activitytab.ActivityTabFragment$onCreateView$2$1$1;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda5;
import org.wikipedia.feed.FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda26;
import org.wikipedia.feed.random.RandomModuleKt$$ExternalSyntheticLambda1;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda10;
import org.wikipedia.page.PageTitle;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.search.SearchResult;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda11;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda2;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda7;
import org.wikipedia.settings.Prefs$$ExternalSyntheticLambda0;
import org.wikipedia.util.SingleLiveData$$ExternalSyntheticLambda0;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UiState;
import org.wikipedia.yearinreview.YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NoSearchResultsKt {

    /* renamed from: lambda$-2047687325, reason: not valid java name */
    public static final ComposableLambdaImpl f60lambda$2047687325 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(2), false, -2047687325);
    public static final ComposableLambdaImpl lambda$1726883487 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(3), false, 1726883487);

    /* renamed from: lambda$-2130079875, reason: not valid java name */
    public static final ComposableLambdaImpl f61lambda$2130079875 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(4), false, -2130079875);
    public static final ComposableLambdaImpl lambda$994939882 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(5), false, 994939882);
    public static final ComposableLambdaImpl lambda$1173034519 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(4), false, 1173034519);

    /* renamed from: lambda$-847955058, reason: not valid java name */
    public static final ComposableLambdaImpl f62lambda$847955058 = new ComposableLambdaImpl(new Prefs$$ExternalSyntheticLambda0(5), false, -847955058);

    public static final void HorizontalHybridSearchListItemLoader(Modifier modifier, List list, InfiniteTransition infiniteTransition, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-1287108718);
        int i2 = i | (gapComposer.changedInstance(list) ? 256 : 128) | (gapComposer.changedInstance(infiniteTransition) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer, 6);
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
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            BoxKt.Box(Jsoup.shimmerEffect$default(ClipKt.clip(SizeKt.fillMaxWidth(SizeKt.m140height3ABfNKs(companion, 16.0f), 0.5f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(4.0f)), list, infiniteTransition, 6), gapComposer, 0);
            BoxKt.Box(Jsoup.shimmerEffect$default(ClipKt.clip(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 0.94f), 16.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(4.0f)), list, infiniteTransition, 6), gapComposer, 0);
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
            boolean changedInstance = gapComposer.changedInstance(list) | ((i2 & 7168) == 2048 || gapComposer.changedInstance(infiniteTransition));
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new SingleLiveData$$ExternalSyntheticLambda0(7, list, infiniteTransition);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ExceptionsKt.LazyRow(m136paddingqDBjuR0$default, null, null, arrangement$SpacedAligned, null, null, false, null, (Function1) rememberedValue, gapComposer, 24582, 494);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda9(modifier, list, infiniteTransition, i, 0);
        }
    }

    public static final void HybridSearchResultsList(final String str, final ArrayList arrayList, final ArrayList arrayList2, final String str2, final Function4 function4, final Function3 function3, final Function0 function0, final Function0 function02, final Function1 function1, final Function6 function6, final Function2 function2, GapComposer gapComposer, int i) {
        function4.getClass();
        function3.getClass();
        function0.getClass();
        function02.getClass();
        function1.getClass();
        function6.getClass();
        function2.getClass();
        gapComposer.startRestartGroup(-1123558127);
        int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changedInstance(arrayList) ? 32 : 16) | (gapComposer.changedInstance(arrayList2) ? 256 : 128) | (gapComposer.changed(str2) ? 2048 : 1024) | (gapComposer.changedInstance(function4) ? 16384 : 8192) | (gapComposer.changedInstance(function3) ? 131072 : 65536) | (gapComposer.changedInstance(function0) ? 1048576 : 524288) | (gapComposer.changedInstance(function02) ? 8388608 : 4194304) | (gapComposer.changedInstance(function1) ? 67108864 : 33554432) | (gapComposer.changedInstance(function6) ? 536870912 : 268435456);
        char c = gapComposer.changedInstance(function2) ? (char) 4 : (char) 2;
        if (gapComposer.shouldExecute(i2 & 1, ((i2 & 306783379) == 306783378 && (c & 3) == 2) ? false : true)) {
            boolean changedInstance = ((i2 & 1879048192) == 536870912) | ((i2 & 14) == 4) | gapComposer.changedInstance(arrayList) | ((i2 & 7168) == 2048) | ((57344 & i2) == 16384) | ((458752 & i2) == 131072) | gapComposer.changedInstance(arrayList2) | ((3670016 & i2) == 1048576) | ((29360128 & i2) == 8388608) | ((234881024 & i2) == 67108864) | ((c & 14) == 4);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                Function1 function12 = new Function1() { // from class: org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda22
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Function3 function32;
                        LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                        lazyListIntervalContent.getClass();
                        String str3 = str;
                        boolean equals = str3.equals("control");
                        final ArrayList arrayList3 = arrayList;
                        final String str4 = str2;
                        final Function4 function42 = function4;
                        final Function3 function33 = function3;
                        final ArrayList arrayList4 = arrayList2;
                        final int i3 = 1;
                        if (equals || str3.equals("lexicalsemantic")) {
                            final int i4 = 0;
                            function32 = function33;
                            lazyListIntervalContent.items(arrayList3.size(), null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new Function4() { // from class: org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda24
                                @Override // kotlin.jvm.functions.Function4
                                public final Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                                    int i5 = i4;
                                    Unit unit = Unit.INSTANCE;
                                    Object obj6 = Composer$Companion.Empty;
                                    Function3 function34 = function33;
                                    Function4 function43 = function42;
                                    ArrayList arrayList5 = arrayList3;
                                    switch (i5) {
                                        case 0:
                                            int intValue = ((Integer) obj3).intValue();
                                            GapComposer gapComposer2 = (GapComposer) obj4;
                                            int intValue2 = ((Integer) obj5).intValue();
                                            ((LazyItemScopeImpl) obj2).getClass();
                                            if ((intValue2 & 48) == 0) {
                                                intValue2 |= gapComposer2.changed(intValue) ? 32 : 16;
                                            }
                                            if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 145) != 144)) {
                                                gapComposer2.skipToGroupEnd();
                                                break;
                                            } else {
                                                SearchResult searchResult = (SearchResult) arrayList5.get(intValue);
                                                int i6 = intValue2 & 112;
                                                boolean changed = gapComposer2.changed(function43) | gapComposer2.changedInstance(searchResult) | (i6 == 32);
                                                Object rememberedValue2 = gapComposer2.rememberedValue();
                                                if (changed || rememberedValue2 == obj6) {
                                                    rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda14(function43, searchResult, intValue, 2);
                                                    gapComposer2.updateRememberedValue(rememberedValue2);
                                                }
                                                Function0 function03 = (Function0) rememberedValue2;
                                                boolean changed2 = gapComposer2.changed(function34) | gapComposer2.changedInstance(searchResult) | (i6 == 32);
                                                Object rememberedValue3 = gapComposer2.rememberedValue();
                                                if (changed2 || rememberedValue3 == obj6) {
                                                    rememberedValue3 = new SearchResultsScreenKt$$ExternalSyntheticLambda15(function34, searchResult, intValue, 2);
                                                    gapComposer2.updateRememberedValue(rememberedValue3);
                                                }
                                                NoSearchResultsKt.SearchResultPageItem(null, searchResult, str4, function03, (Function1) rememberedValue3, gapComposer2, 0, 1);
                                                break;
                                            }
                                        default:
                                            int intValue3 = ((Integer) obj3).intValue();
                                            GapComposer gapComposer3 = (GapComposer) obj4;
                                            int intValue4 = ((Integer) obj5).intValue();
                                            ((LazyItemScopeImpl) obj2).getClass();
                                            if ((intValue4 & 48) == 0) {
                                                intValue4 |= gapComposer3.changed(intValue3) ? 32 : 16;
                                            }
                                            if (!gapComposer3.shouldExecute(intValue4 & 1, (intValue4 & 145) != 144)) {
                                                gapComposer3.skipToGroupEnd();
                                                break;
                                            } else {
                                                SearchResult searchResult2 = (SearchResult) arrayList5.get(intValue3);
                                                int i7 = intValue4 & 112;
                                                boolean changed3 = gapComposer3.changed(function43) | gapComposer3.changedInstance(searchResult2) | (i7 == 32);
                                                Object rememberedValue4 = gapComposer3.rememberedValue();
                                                if (changed3 || rememberedValue4 == obj6) {
                                                    rememberedValue4 = new SearchResultsScreenKt$$ExternalSyntheticLambda14(function43, searchResult2, intValue3, 1);
                                                    gapComposer3.updateRememberedValue(rememberedValue4);
                                                }
                                                Function0 function04 = (Function0) rememberedValue4;
                                                boolean changed4 = gapComposer3.changed(function34) | gapComposer3.changedInstance(searchResult2) | (i7 == 32);
                                                Object rememberedValue5 = gapComposer3.rememberedValue();
                                                if (changed4 || rememberedValue5 == obj6) {
                                                    rememberedValue5 = new SearchResultsScreenKt$$ExternalSyntheticLambda15(function34, searchResult2, intValue3, 1);
                                                    gapComposer3.updateRememberedValue(rememberedValue5);
                                                }
                                                NoSearchResultsKt.SearchResultPageItem(null, searchResult2, str4, function04, (Function1) rememberedValue5, gapComposer3, 0, 1);
                                                break;
                                            }
                                    }
                                    return unit;
                                }
                            }, true, 845744330));
                            final int i5 = 0;
                            LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda25
                                @Override // kotlin.jvm.functions.Function3
                                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                                    int i6 = i5;
                                    Unit unit = Unit.INSTANCE;
                                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                                    ArrayList arrayList5 = arrayList4;
                                    ArrayList arrayList6 = arrayList3;
                                    switch (i6) {
                                        case 0:
                                            GapComposer gapComposer2 = (GapComposer) obj3;
                                            int intValue = ((Integer) obj4).intValue();
                                            ((LazyItemScopeImpl) obj2).getClass();
                                            if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                                gapComposer2.skipToGroupEnd();
                                                break;
                                            } else if (!arrayList6.isEmpty() && !arrayList5.isEmpty()) {
                                                gapComposer2.startReplaceGroup(-2099283400);
                                                CardKt.m266HorizontalDivider9IZ8Weo(OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, 12.0f, 16.0f, RecyclerView.DECELERATION_RATE, 8), 1.0f, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor, gapComposer2, 48, 0);
                                                gapComposer2.end(false);
                                                break;
                                            } else {
                                                gapComposer2.startReplaceGroup(-2098997983);
                                                gapComposer2.end(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            GapComposer gapComposer3 = (GapComposer) obj3;
                                            int intValue2 = ((Integer) obj4).intValue();
                                            ((LazyItemScopeImpl) obj2).getClass();
                                            if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                                gapComposer3.skipToGroupEnd();
                                                break;
                                            } else if (!arrayList6.isEmpty() && !arrayList5.isEmpty()) {
                                                gapComposer3.startReplaceGroup(1741682626);
                                                CardKt.m266HorizontalDivider9IZ8Weo(OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, 8.0f, 16.0f, RecyclerView.DECELERATION_RATE, 8), 1.0f, ((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor, gapComposer3, 48, 0);
                                                gapComposer3.end(false);
                                                break;
                                            } else {
                                                gapComposer3.startReplaceGroup(1741967082);
                                                gapComposer3.end(false);
                                                break;
                                            }
                                            break;
                                    }
                                    return unit;
                                }
                            }, true, 1252910657), 3);
                        } else {
                            function32 = function33;
                        }
                        LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new AboutActivityKt$$ExternalSyntheticLambda2(arrayList4, function0, function02, 11), true, -898330522), 3);
                        LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new HomeScreenKt$$ExternalSyntheticLambda26(arrayList4, function1, function6, function42, function2), true, -1412553187), 3);
                        if (str3.equals("semanticlexical")) {
                            LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda25
                                @Override // kotlin.jvm.functions.Function3
                                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                                    int i6 = i3;
                                    Unit unit = Unit.INSTANCE;
                                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                                    ArrayList arrayList5 = arrayList3;
                                    ArrayList arrayList6 = arrayList4;
                                    switch (i6) {
                                        case 0:
                                            GapComposer gapComposer2 = (GapComposer) obj3;
                                            int intValue = ((Integer) obj4).intValue();
                                            ((LazyItemScopeImpl) obj2).getClass();
                                            if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                                gapComposer2.skipToGroupEnd();
                                                break;
                                            } else if (!arrayList6.isEmpty() && !arrayList5.isEmpty()) {
                                                gapComposer2.startReplaceGroup(-2099283400);
                                                CardKt.m266HorizontalDivider9IZ8Weo(OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, 12.0f, 16.0f, RecyclerView.DECELERATION_RATE, 8), 1.0f, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor, gapComposer2, 48, 0);
                                                gapComposer2.end(false);
                                                break;
                                            } else {
                                                gapComposer2.startReplaceGroup(-2098997983);
                                                gapComposer2.end(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            GapComposer gapComposer3 = (GapComposer) obj3;
                                            int intValue2 = ((Integer) obj4).intValue();
                                            ((LazyItemScopeImpl) obj2).getClass();
                                            if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                                gapComposer3.skipToGroupEnd();
                                                break;
                                            } else if (!arrayList6.isEmpty() && !arrayList5.isEmpty()) {
                                                gapComposer3.startReplaceGroup(1741682626);
                                                CardKt.m266HorizontalDivider9IZ8Weo(OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, 8.0f, 16.0f, RecyclerView.DECELERATION_RATE, 8), 1.0f, ((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor, gapComposer3, 48, 0);
                                                gapComposer3.end(false);
                                                break;
                                            } else {
                                                gapComposer3.startReplaceGroup(1741967082);
                                                gapComposer3.end(false);
                                                break;
                                            }
                                            break;
                                    }
                                    return unit;
                                }
                            }, true, 50950456), 3);
                            final int i6 = 1;
                            final Function3 function34 = function32;
                            lazyListIntervalContent.items(arrayList3.size(), null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new Function4() { // from class: org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda24
                                @Override // kotlin.jvm.functions.Function4
                                public final Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                                    int i52 = i6;
                                    Unit unit = Unit.INSTANCE;
                                    Object obj6 = Composer$Companion.Empty;
                                    Function3 function342 = function34;
                                    Function4 function43 = function42;
                                    ArrayList arrayList5 = arrayList3;
                                    switch (i52) {
                                        case 0:
                                            int intValue = ((Integer) obj3).intValue();
                                            GapComposer gapComposer2 = (GapComposer) obj4;
                                            int intValue2 = ((Integer) obj5).intValue();
                                            ((LazyItemScopeImpl) obj2).getClass();
                                            if ((intValue2 & 48) == 0) {
                                                intValue2 |= gapComposer2.changed(intValue) ? 32 : 16;
                                            }
                                            if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 145) != 144)) {
                                                gapComposer2.skipToGroupEnd();
                                                break;
                                            } else {
                                                SearchResult searchResult = (SearchResult) arrayList5.get(intValue);
                                                int i62 = intValue2 & 112;
                                                boolean changed = gapComposer2.changed(function43) | gapComposer2.changedInstance(searchResult) | (i62 == 32);
                                                Object rememberedValue2 = gapComposer2.rememberedValue();
                                                if (changed || rememberedValue2 == obj6) {
                                                    rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda14(function43, searchResult, intValue, 2);
                                                    gapComposer2.updateRememberedValue(rememberedValue2);
                                                }
                                                Function0 function03 = (Function0) rememberedValue2;
                                                boolean changed2 = gapComposer2.changed(function342) | gapComposer2.changedInstance(searchResult) | (i62 == 32);
                                                Object rememberedValue3 = gapComposer2.rememberedValue();
                                                if (changed2 || rememberedValue3 == obj6) {
                                                    rememberedValue3 = new SearchResultsScreenKt$$ExternalSyntheticLambda15(function342, searchResult, intValue, 2);
                                                    gapComposer2.updateRememberedValue(rememberedValue3);
                                                }
                                                NoSearchResultsKt.SearchResultPageItem(null, searchResult, str4, function03, (Function1) rememberedValue3, gapComposer2, 0, 1);
                                                break;
                                            }
                                        default:
                                            int intValue3 = ((Integer) obj3).intValue();
                                            GapComposer gapComposer3 = (GapComposer) obj4;
                                            int intValue4 = ((Integer) obj5).intValue();
                                            ((LazyItemScopeImpl) obj2).getClass();
                                            if ((intValue4 & 48) == 0) {
                                                intValue4 |= gapComposer3.changed(intValue3) ? 32 : 16;
                                            }
                                            if (!gapComposer3.shouldExecute(intValue4 & 1, (intValue4 & 145) != 144)) {
                                                gapComposer3.skipToGroupEnd();
                                                break;
                                            } else {
                                                SearchResult searchResult2 = (SearchResult) arrayList5.get(intValue3);
                                                int i7 = intValue4 & 112;
                                                boolean changed3 = gapComposer3.changed(function43) | gapComposer3.changedInstance(searchResult2) | (i7 == 32);
                                                Object rememberedValue4 = gapComposer3.rememberedValue();
                                                if (changed3 || rememberedValue4 == obj6) {
                                                    rememberedValue4 = new SearchResultsScreenKt$$ExternalSyntheticLambda14(function43, searchResult2, intValue3, 1);
                                                    gapComposer3.updateRememberedValue(rememberedValue4);
                                                }
                                                Function0 function04 = (Function0) rememberedValue4;
                                                boolean changed4 = gapComposer3.changed(function342) | gapComposer3.changedInstance(searchResult2) | (i7 == 32);
                                                Object rememberedValue5 = gapComposer3.rememberedValue();
                                                if (changed4 || rememberedValue5 == obj6) {
                                                    rememberedValue5 = new SearchResultsScreenKt$$ExternalSyntheticLambda15(function342, searchResult2, intValue3, 1);
                                                    gapComposer3.updateRememberedValue(rememberedValue5);
                                                }
                                                NoSearchResultsKt.SearchResultPageItem(null, searchResult2, str4, function04, (Function1) rememberedValue5, gapComposer3, 0, 1);
                                                break;
                                            }
                                    }
                                    return unit;
                                }
                            }, true, -393865855));
                        }
                        return Unit.INSTANCE;
                    }
                };
                gapComposer.updateRememberedValue(function12);
                rememberedValue = function12;
            }
            ExceptionsKt.LazyColumn(null, null, null, null, null, null, false, null, (Function1) rememberedValue, gapComposer, 0, 511);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomModuleKt$$ExternalSyntheticLambda1(str, arrayList, arrayList2, str2, function4, function3, function0, function02, function1, function6, function2, i);
        }
    }

    public static final void HybridSearchResultsScreen(final Modifier modifier, final SearchResultsViewModel searchResultsViewModel, final Function4 function4, final Function1 function1, final Function6 function6, final Function3 function3, final Function0 function0, final Function1 function12, final Function2 function2, final Function0 function02, final Function0 function03, final Function1 function13, final Function0 function04, final Function0 function05, final Function1 function14, GapComposer gapComposer, final int i) {
        GapComposer gapComposer2;
        searchResultsViewModel.getClass();
        function4.getClass();
        function1.getClass();
        function6.getClass();
        function3.getClass();
        function0.getClass();
        function12.getClass();
        function2.getClass();
        function02.getClass();
        function03.getClass();
        function13.getClass();
        function04.getClass();
        function05.getClass();
        function14.getClass();
        gapComposer.startRestartGroup(2035427849);
        int i2 = i | (gapComposer.changedInstance(searchResultsViewModel) ? 32 : 16) | (gapComposer.changedInstance(function4) ? 256 : 128) | (gapComposer.changedInstance(function1) ? 2048 : 1024) | (gapComposer.changedInstance(function6) ? 16384 : 8192) | (gapComposer.changedInstance(function3) ? 131072 : 65536) | (gapComposer.changedInstance(function0) ? 1048576 : 524288) | (gapComposer.changedInstance(function12) ? 8388608 : 4194304) | (gapComposer.changedInstance(function2) ? 67108864 : 33554432) | (gapComposer.changedInstance(function02) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i2 & 1, ((i2 & 306783379) == 306783378 && ((((((gapComposer.changedInstance(function03) ? (char) 4 : (char) 2) | (gapComposer.changedInstance(function13) ? ' ' : (char) 16)) | (gapComposer.changedInstance(function04) ? 256 : 128)) | (gapComposer.changedInstance(function05) ? 2048 : 1024)) | (gapComposer.changedInstance(function14) ? 16384 : 8192)) & 9363) == 9362) ? false : true)) {
            final UiState uiState = (UiState) Updater.collectAsState(searchResultsViewModel.hybridSearchResultState, gapComposer).getValue();
            final MutableState collectAsState = Updater.collectAsState(searchResultsViewModel.searchTerm, gapComposer);
            String str = (String) Updater.collectAsState(searchResultsViewModel.languageCode, gapComposer).getValue();
            str.getClass();
            gapComposer2 = gapComposer;
            Updater.CompositionLocalProvider(CompositionLocalsKt.LocalLayoutDirection.defaultProvidedValue$runtime(TextUtils.getLayoutDirectionFromLocale(new Locale(str)) == 1 ? LayoutDirection.Rtl : LayoutDirection.Ltr), Expect_jvmKt.rememberComposableLambda(345804489, new Function2() { // from class: org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    GapComposer gapComposer3;
                    GapComposer gapComposer4 = (GapComposer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    if (gapComposer4.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                        long j = gapComposer4.compositeKeyHashCode;
                        int i3 = (int) (j ^ (j >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer4.currentCompositionLocalScope();
                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer4, Modifier.this);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                        gapComposer4.startReusableNode();
                        if (gapComposer4.inserting) {
                            gapComposer4.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer4.useNode();
                        }
                        Updater.m327setimpl(gapComposer4, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer4, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m327setimpl(gapComposer4, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m326reconcileimpl(gapComposer4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m327setimpl(gapComposer4, materializeModifier, ComposeUiNode.Companion.SetModifier);
                        UiState uiState2 = uiState;
                        boolean z = uiState2 instanceof UiState.Loading;
                        Function1 function15 = function13;
                        SearchResultsViewModel searchResultsViewModel2 = searchResultsViewModel;
                        if (z) {
                            gapComposer4.startReplaceGroup(-623076587);
                            function15.invoke(Boolean.TRUE);
                            searchResultsViewModel2.getClass();
                            NoSearchResultsKt.HybridSearchSkeletonLoader(0, gapComposer4, null, new HybridSearchAbCTest().getGroupName());
                            gapComposer4.end(false);
                            gapComposer3 = gapComposer4;
                        } else {
                            boolean z2 = uiState2 instanceof UiState.Success;
                            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                            if (z2) {
                                gapComposer4.startReplaceGroup(-622872080);
                                function15.invoke(Boolean.FALSE);
                                Iterable iterable = (Iterable) ((UiState.Success) uiState2).data;
                                ArrayList arrayList = new ArrayList();
                                for (Object obj3 : iterable) {
                                    if (((SearchResult) obj3).type == SearchResult.SearchResultType.SEMANTIC) {
                                        arrayList.add(obj3);
                                    }
                                }
                                ArrayList arrayList2 = new ArrayList();
                                for (Object obj4 : iterable) {
                                    SearchResult.SearchResultType searchResultType = ((SearchResult) obj4).type;
                                    if (searchResultType == SearchResult.SearchResultType.PREFIX || searchResultType == SearchResult.SearchResultType.FULL_TEXT) {
                                        arrayList2.add(obj4);
                                    }
                                }
                                if (arrayList2.isEmpty()) {
                                    function04.invoke();
                                } else if (arrayList.isEmpty()) {
                                    function05.invoke();
                                }
                                searchResultsViewModel2.getClass();
                                String groupName = new HybridSearchAbCTest().getGroupName();
                                State state = collectAsState;
                                String str2 = (String) state.getValue();
                                Function1 function16 = function12;
                                boolean changed = gapComposer4.changed(function16) | gapComposer4.changed(state);
                                Object rememberedValue = gapComposer4.rememberedValue();
                                if (changed || rememberedValue == neverEqualPolicy) {
                                    rememberedValue = new AboutActivityKt$$ExternalSyntheticLambda11(2, function16, state);
                                    gapComposer4.updateRememberedValue(rememberedValue);
                                }
                                Function0 function06 = (Function0) rememberedValue;
                                gapComposer3 = gapComposer4;
                                NoSearchResultsKt.HybridSearchResultsList(groupName, arrayList2, arrayList, str2, function4, function3, function0, function06, function1, function6, function2, gapComposer3, 0);
                                gapComposer3.end(false);
                            } else {
                                gapComposer3 = gapComposer4;
                                if (!(uiState2 instanceof UiState.Error)) {
                                    throw Modifier.CC.m(gapComposer3, 1919563459, false);
                                }
                                gapComposer3.startReplaceGroup(-621459906);
                                function15.invoke(Boolean.FALSE);
                                UiState.Error error = (UiState.Error) uiState2;
                                function14.invoke(error.error);
                                Modifier align = BoxScopeInstance.INSTANCE.align(SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f), Alignment.Companion.Center);
                                Throwable th = error.error;
                                Function0 function07 = function03;
                                boolean changed2 = gapComposer3.changed(function07);
                                Object rememberedValue2 = gapComposer3.rememberedValue();
                                if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                    rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda1(4, function07);
                                    gapComposer3.updateRememberedValue(rememberedValue2);
                                }
                                Function0 function08 = (Function0) rememberedValue2;
                                Function0 function09 = function02;
                                boolean changed3 = gapComposer3.changed(function09);
                                Object rememberedValue3 = gapComposer3.rememberedValue();
                                if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                    rememberedValue3 = new SearchResultsScreenKt$$ExternalSyntheticLambda1(5, function09);
                                    gapComposer3.updateRememberedValue(rememberedValue3);
                                }
                                Okio__JvmOkioKt.WikiErrorView(align, th, new WikiErrorClickEvents(function08, (Function0) rememberedValue3, null, 12), false, gapComposer3, 0, 20);
                                gapComposer3.end(false);
                            }
                        }
                        gapComposer3.end(true);
                    } else {
                        gapComposer4.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer2), gapComposer2, 56);
        } else {
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(searchResultsViewModel, function4, function1, function6, function3, function0, function12, function2, function02, function03, function13, function04, function05, function14, i) { // from class: org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda18
                public final /* synthetic */ SearchResultsViewModel f$1;
                public final /* synthetic */ Function0 f$10;
                public final /* synthetic */ Function1 f$11;
                public final /* synthetic */ Function0 f$12;
                public final /* synthetic */ Function0 f$13;
                public final /* synthetic */ Function1 f$14;
                public final /* synthetic */ Function4 f$2;
                public final /* synthetic */ Function1 f$3;
                public final /* synthetic */ Function6 f$4;
                public final /* synthetic */ Function3 f$5;
                public final /* synthetic */ Function0 f$6;
                public final /* synthetic */ Function1 f$7;
                public final /* synthetic */ Function2 f$8;
                public final /* synthetic */ Function0 f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(7);
                    NoSearchResultsKt.HybridSearchResultsScreen(Modifier.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, this.f$8, this.f$9, this.f$10, this.f$11, this.f$12, this.f$13, this.f$14, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void HybridSearchSkeletonLoader(int i, GapComposer gapComposer, Modifier modifier, String str) {
        Modifier modifier2;
        long Color;
        long Color2;
        long Color3;
        gapComposer.startRestartGroup(-70362231);
        int i2 = (gapComposer.changed(str) ? 4 : 2) | i | 48;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            WikipediaColor wikipediaColor = (WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal);
            Color = ColorKt.Color(Color.m433getRedimpl(r7), Color.m432getGreenimpl(r7), Color.m430getBlueimpl(r7), 0.7f, Color.m431getColorSpaceimpl(wikipediaColor.inactiveColor));
            Color color = new Color(Color);
            Color2 = ColorKt.Color(Color.m433getRedimpl(r7), Color.m432getGreenimpl(r7), Color.m430getBlueimpl(r7), 0.5f, Color.m431getColorSpaceimpl(wikipediaColor.borderColor));
            Color color2 = new Color(Color2);
            Color3 = ColorKt.Color(Color.m433getRedimpl(r7), Color.m432getGreenimpl(r7), Color.m430getBlueimpl(r7), 0.7f, Color.m431getColorSpaceimpl(wikipediaColor.inactiveColor));
            List listOf = Room.listOf((Object[]) new Color[]{color, color2, new Color(Color3)});
            InfiniteTransition rememberInfiniteTransition = ArcSplineKt.rememberInfiniteTransition(null, gapComposer, 1);
            Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(SizeKt.FillWholeMaxSize, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ColorKt.RectangleShape);
            PaddingValuesImpl paddingValuesImpl = new PaddingValuesImpl(16.0f, 12.0f, 16.0f, 12.0f);
            boolean changedInstance = gapComposer.changedInstance(listOf) | ((i2 & 14) == 4) | gapComposer.changedInstance(rememberInfiniteTransition);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new UtilsKt$$ExternalSyntheticLambda1(str, listOf, rememberInfiniteTransition, 28);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ExceptionsKt.LazyColumn(m46backgroundbw27NRU, null, paddingValuesImpl, null, null, null, false, null, (Function1) rememberedValue, gapComposer, 0, 506);
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3(str, modifier2, i, 5);
        }
    }

    public static final void HybridSearchSuggestionListView(Modifier modifier, LazyPagingItems lazyPagingItems, String str, Function1 function1, Function1 function12, GapComposer gapComposer, int i) {
        function1.getClass();
        function12.getClass();
        gapComposer.startRestartGroup(-1936311848);
        int i2 = i | (gapComposer.changedInstance(lazyPagingItems) ? 32 : 16) | (gapComposer.changed(str) ? 256 : 128) | (gapComposer.changedInstance(function1) ? 2048 : 1024) | (gapComposer.changedInstance(function12) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = SnapshotStateKt__DerivedStateKt.derivedStateOf(new AboutActivityKt$$ExternalSyntheticLambda11(4, str, lazyPagingItems));
                gapComposer.updateRememberedValue(rememberedValue);
            }
            State state = (State) rememberedValue;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
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
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            PaddingValuesImpl m126PaddingValuesa9UjIt4$default = OffsetKt.m126PaddingValuesa9UjIt4$default(RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, 64.0f, 5);
            int i4 = i2 & 896;
            boolean z = ((i2 & 112) == 32 || gapComposer.changedInstance(lazyPagingItems)) | ((i2 & 7168) == 2048) | (i4 == 256);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (z || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new HybridSearchViewsKt$$ExternalSyntheticLambda3(lazyPagingItems, function1, str, 0);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ExceptionsKt.LazyColumn(companion, null, m126PaddingValuesa9UjIt4$default, null, null, null, false, null, (Function1) rememberedValue2, gapComposer, 390, 506);
            if (((Boolean) state.getValue()).booleanValue()) {
                gapComposer.startReplaceGroup(-2008864624);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-2009276893);
                Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(BoxScopeInstance.INSTANCE.align(SizeKt.fillMaxWidth(companion, 1.0f), Alignment.Companion.BottomStart), ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, ColorKt.RectangleShape);
                boolean z2 = (i4 == 256) | ((i2 & 57344) == 16384);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (z2 || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new GamesHubScreenKt$$ExternalSyntheticLambda10(function12, str, 2);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                SearchResultTitleOnlyBottomContent((i2 >> 3) & 112, gapComposer, ImageKt.m51clickableoSLSa3U$default(15, m46backgroundbw27NRU, null, (Function0) rememberedValue3, false), str);
                gapComposer.end(false);
            }
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedComponentsKt$$ExternalSyntheticLambda5(modifier, lazyPagingItems, str, function1, function12, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void NoSearchResults(java.util.List r16, kotlin.jvm.functions.Function1 r17, org.wikipedia.Constants.InvokeSource r18, androidx.compose.ui.Modifier r19, androidx.compose.runtime.GapComposer r20, int r21) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.search.NoSearchResultsKt.NoSearchResults(java.util.List, kotlin.jvm.functions.Function1, org.wikipedia.Constants$InvokeSource, androidx.compose.ui.Modifier, androidx.compose.runtime.GapComposer, int):void");
    }

    public static final void SearchResultPageItem(Modifier modifier, SearchResult searchResult, String str, Function0 function0, Function1 function1, GapComposer gapComposer, int i, int i2) {
        Modifier modifier2;
        int i3;
        Modifier modifier3;
        Modifier then;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1;
        OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1;
        boolean z;
        PageTitle pageTitle;
        Modifier.Companion companion;
        boolean z2;
        Modifier.Companion companion2;
        int i4;
        GapComposer gapComposer2 = gapComposer;
        searchResult.getClass();
        function0.getClass();
        function1.getClass();
        gapComposer2.startRestartGroup(370054202);
        int i5 = i2 & 1;
        if (i5 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else {
            modifier2 = modifier;
            i3 = i | (gapComposer2.changed(modifier2) ? 4 : 2);
        }
        int i6 = i3 | (gapComposer2.changedInstance(searchResult) ? 32 : 16) | (gapComposer2.changed(str) ? 256 : 128) | (gapComposer2.changedInstance(function0) ? 2048 : 1024) | (gapComposer2.changedInstance(function1) ? 16384 : 8192);
        if (gapComposer2.shouldExecute(i6 & 1, (i6 & 9363) != 9362)) {
            Modifier.Companion companion3 = Modifier.Companion.$$INSTANCE;
            Modifier modifier4 = i5 != 0 ? companion3 : modifier2;
            PageTitle pageTitle2 = searchResult.pageTitle;
            String str2 = searchResult.redirectFrom;
            SearchResult.SearchResultType searchResultType = searchResult.type;
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(null);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            boolean z3 = str2 == null || str2.length() == 0;
            int i7 = SearchResultsScreenKt$WhenMappings.$EnumSwitchMapping$0[searchResultType.ordinal()];
            int i8 = i7 != 1 ? i7 != 2 ? R.drawable.ic_bookmark_border_white_24dp : R.drawable.ic_tab_one_24px : R.drawable.ic_history_24;
            String str3 = pageTitle2.thumbUrl;
            boolean z4 = str3 == null || str3.length() == 0;
            boolean changed = ((i6 & 896) == 256) | gapComposer2.changed(pageTitle2.getDisplayText());
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = NodeUtils.toAnnotatedStringWithBoldQuery(pageTitle2.getDisplayText(), str);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            AnnotatedString annotatedString = (AnnotatedString) rememberedValue2;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j = gapComposer2.compositeKeyHashCode;
            int i9 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, companion3);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$12);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$13);
            Integer valueOf = Integer.valueOf(i9);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$14);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$12);
            int i10 = i8;
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$15);
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(modifier4, 1.0f);
            Modifier modifier5 = modifier4;
            boolean z5 = (i6 & 57344) == 16384;
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (z5 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new SearchResultsScreenKt$$ExternalSyntheticLambda0(mutableState, function1);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            Function0 function02 = (Function0) rememberedValue3;
            boolean z6 = (i6 & 7168) == 2048;
            Object rememberedValue4 = gapComposer2.rememberedValue();
            if (z6 || rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = new SearchResultsScreenKt$$ExternalSyntheticLambda1(0, function0);
                gapComposer2.updateRememberedValue(rememberedValue4);
            }
            then = fillMaxWidth.then(new CombinedClickableElement(null, (Function0) rememberedValue4, function02, true));
            Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(then, 16.0f);
            BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), vertical, gapComposer2, 54);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i11 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m132padding3ABfNKs);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$12);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$13);
            Animation.CC.m(i11, gapComposer2, composeUiNode$Companion$SetModifier$14, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$12);
            LayoutWeightElement m = ViewSizeResolver$CC.m(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$15, 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j3 = gapComposer2.compositeKeyHashCode;
            int i12 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, m);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$12);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$13);
            Animation.CC.m(i12, gapComposer2, composeUiNode$Companion$SetModifier$14, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$12);
            Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$15);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
            long j4 = ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = TypographyKt.LocalTypography;
            TextKt.m309TextZ58ophY(annotatedString, null, j4, 0L, null, 0L, null, 0L, 0, false, 0, 0, null, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal3)).bodyLarge, gapComposer, 0, 0, 262138);
            gapComposer2 = gapComposer;
            if (z3) {
                staticProvidableCompositionLocal = staticProvidableCompositionLocal2;
                composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$15;
                ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                z = true;
                gapComposer2.startReplaceGroup(1669795471);
                String str4 = pageTitle2.description;
                if (str4 == null || str4.length() == 0) {
                    pageTitle = pageTitle2;
                    companion = companion3;
                    z2 = false;
                    gapComposer2.startReplaceGroup(1670447432);
                    gapComposer2.end(false);
                } else {
                    gapComposer2.startReplaceGroup(1669930693);
                    companion = companion3;
                    pageTitle = pageTitle2;
                    TextKt.m308TextNvy7gAk(str4, OffsetKt.m136paddingqDBjuR0$default(companion3, RecyclerView.DECELERATION_RATE, 2.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 2, false, 2, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal3)).bodyLarge, 0L, ContextsKt.getSp(14), null, null, 0L, 0L, null, 16777213), gapComposer, 48, 24960, 110584);
                    gapComposer2 = gapComposer;
                    z2 = false;
                    gapComposer2.end(false);
                }
                gapComposer2.end(z2);
            } else {
                gapComposer2.startReplaceGroup(1668750213);
                Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion3, RecyclerView.DECELERATION_RATE, 2.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.Top, gapComposer2, 0);
                long j5 = gapComposer2.compositeKeyHashCode;
                int i13 = (int) (j5 ^ (j5 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer2, m136paddingqDBjuR0$default);
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m327setimpl(gapComposer2, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$12);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$13);
                Animation.CC.m(i13, gapComposer2, composeUiNode$Companion$SetModifier$14, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$12);
                Updater.m327setimpl(gapComposer2, materializeModifier4, composeUiNode$Companion$SetModifier$15);
                composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$15;
                staticProvidableCompositionLocal = staticProvidableCompositionLocal2;
                ImageKt.Image(UnsignedKt.painterResource(R.drawable.ic_subdirectory_arrow_right_black_24dp, 0, gapComposer2), null, SizeKt.m145size3ABfNKs(companion3, 16.0f), null, null, RecyclerView.DECELERATION_RATE, new BlendModeColorFilter(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).placeholderColor, 5), gapComposer2, 440, 56);
                ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                z = true;
                TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.search_redirect_from, new Object[]{str2}, gapComposer2), null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 2, false, 2, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal3)).bodyLarge, 0L, ContextsKt.getSp(14), null, null, 0L, 0L, null, 16777213), gapComposer, 0, 24960, 110586);
                gapComposer2 = gapComposer;
                gapComposer2.end(true);
                gapComposer2.end(false);
                companion = companion3;
                pageTitle = pageTitle2;
            }
            gapComposer2.end(z);
            RowMeasurePolicy rowMeasurePolicy3 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, z, new EasingKt$$ExternalSyntheticLambda0(10)), vertical, gapComposer2, 54);
            long j6 = gapComposer2.compositeKeyHashCode;
            int i14 = (int) (j6 ^ (j6 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer2.currentCompositionLocalScope();
            Modifier.Companion companion4 = companion;
            Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer2, companion4);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy3, composeUiNode$Companion$SetModifier$12);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$13);
            Animation.CC.m(i14, gapComposer2, composeUiNode$Companion$SetModifier$14, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier5, composeUiNode$Companion$SetModifier$1);
            if (searchResultType == SearchResult.SearchResultType.PREFIX || searchResultType == SearchResult.SearchResultType.FULL_TEXT) {
                companion2 = companion4;
                gapComposer2.startReplaceGroup(107152986);
                gapComposer2.end(false);
            } else {
                gapComposer2.startReplaceGroup(106818000);
                companion2 = companion4;
                ImageKt.Image(UnsignedKt.painterResource(i10, 0, gapComposer2), null, SizeKt.m145size3ABfNKs(companion4, 20.0f), null, null, RecyclerView.DECELERATION_RATE, new BlendModeColorFilter(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).placeholderColor, 5), gapComposer2, 440, 56);
                gapComposer2.end(false);
            }
            if (z4) {
                i4 = 0;
                gapComposer2.startReplaceGroup(107951546);
                gapComposer2.end(false);
            } else {
                gapComposer2.startReplaceGroup(107209654);
                Context context = (Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext);
                String str5 = pageTitle.thumbUrl;
                Boolean bool = Boolean.FALSE;
                context.getClass();
                AsyncImageKt.m774AsyncImagex1rPTaM(Okio__OkioKt._implementation != null ? ByteString.Companion.getRequestBuilder(context, str5, bool, bool, null, null).build() : null, null, ClipKt.clip(SizeKt.m145size3ABfNKs(companion2, 56.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f)), new BrushPainter(new SolidColor(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).borderColor)), new BrushPainter(new SolidColor(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).borderColor)), null, null, ContentScale.Companion.Crop, gapComposer, 36912, 6, 31712);
                gapComposer2 = gapComposer;
                i4 = 0;
                gapComposer2.end(false);
            }
            gapComposer2.end(z);
            gapComposer2.end(z);
            Object rememberedValue5 = gapComposer2.rememberedValue();
            if (rememberedValue5 == neverEqualPolicy) {
                rememberedValue5 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState, i4);
                gapComposer2.updateRememberedValue(rememberedValue5);
            }
            AndroidView_androidKt.AndroidView((Function1) rememberedValue5, SizeKt.m145size3ABfNKs(SizeKt.fillMaxWidth(companion2, 1.0f), RecyclerView.DECELERATION_RATE), null, gapComposer2, 54, 4);
            gapComposer2.end(z);
            modifier3 = modifier5;
        } else {
            gapComposer2.skipToGroupEnd();
            modifier3 = modifier2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda18(modifier3, searchResult, str, function0, function1, i, i2);
        }
    }

    public static final void SearchResultTitleOnly(SearchResult searchResult, String str, Modifier modifier, GapComposer gapComposer, int i) {
        GapComposer gapComposer2;
        gapComposer.startRestartGroup(450427933);
        int i2 = i | (gapComposer.changedInstance(searchResult) ? 4 : 2) | (gapComposer.changed(str) ? 32 : 16) | (gapComposer.changed(modifier) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            PageTitle pageTitle = searchResult.pageTitle;
            boolean changed = ((i2 & 112) == 32) | gapComposer.changed(pageTitle.getDisplayText());
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = NodeUtils.toAnnotatedStringWithBoldQuery(pageTitle.getDisplayText(), str);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            AnnotatedString annotatedString = (AnnotatedString) rememberedValue;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
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
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            TextKt.m309TextZ58ophY(annotatedString, null, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, 0L, null, 0L, null, 0L, 0, false, 0, 0, null, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer, 0, 0, 262138);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
        } else {
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda18(searchResult, str, modifier, i, 20);
        }
    }

    public static final void SearchResultTitleOnlyBottomContent(int i, GapComposer gapComposer, Modifier modifier, String str) {
        int i2;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(-195754602);
        if ((i & 6) == 0) {
            i2 = i | (gapComposer.changed(modifier) ? 4 : 2);
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(str) ? 32 : 16;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            String stringResource = UtilsKt.stringResource(R.string.hybrid_search_suggestion_title, gapComposer2);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) ((j >>> 32) ^ j);
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
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            CardKt.m266HorizontalDivider9IZ8Weo(fillMaxWidth, RecyclerView.DECELERATION_RATE, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).borderColor, gapComposer2, 6, 2);
            Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f);
            gapComposer2.startReplaceGroup(1875529560);
            AnnotatedString.Builder builder = new AnnotatedString.Builder();
            builder.append(stringResource);
            int pushStyle = builder.pushStyle(new SpanStyle(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65534));
            try {
                builder.append(" ");
                builder.append((CharSequence) str);
                builder.pop(pushStyle);
                AnnotatedString annotatedString = builder.toAnnotatedString();
                gapComposer2.end(false);
                TextKt.m309TextZ58ophY(annotatedString, m132padding3ABfNKs, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, 0L, null, 0L, null, 0L, 0, false, 0, 0, null, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodySmall, 0L, 0L, FontWeight.Medium, null, 0L, ContextsKt.getSp(18), null, 16646139), gapComposer, 48, 0, 262136);
                gapComposer2 = gapComposer;
                gapComposer2.end(true);
            } catch (Throwable th) {
                builder.pop(pushStyle);
                throw th;
            }
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HybridSearchViewsKt$$ExternalSyntheticLambda1(modifier, str, i);
        }
    }

    public static final void SearchResultsList(LazyPagingItems lazyPagingItems, String str, Function4 function4, Function3 function3, Modifier modifier, GapComposer gapComposer, int i) {
        Modifier modifier2;
        function4.getClass();
        function3.getClass();
        gapComposer.startRestartGroup(-1969037656);
        int i2 = i | (gapComposer.changedInstance(lazyPagingItems) ? 4 : 2) | (gapComposer.changed(str) ? 32 : 16) | (gapComposer.changedInstance(function4) ? 256 : 128) | (gapComposer.changedInstance(function3) ? 2048 : 1024) | 24576;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier testTag = TestTagKt.testTag(companion, "search_list");
            boolean z = ((i2 & 14) == 4 || gapComposer.changedInstance(lazyPagingItems)) | ((i2 & 112) == 32) | ((i2 & 896) == 256) | ((i2 & 7168) == 2048);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new AboutActivityKt$$ExternalSyntheticLambda7(lazyPagingItems, str, function4, function3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ExceptionsKt.LazyColumn(testTag, null, null, null, null, null, false, null, (Function1) rememberedValue, gapComposer, 0, 510);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedComponentsKt$$ExternalSyntheticLambda5(lazyPagingItems, str, function4, function3, modifier2, i);
        }
    }

    public static final void SearchResultsScreen(final Modifier modifier, final SearchResultsViewModel searchResultsViewModel, final Function4 function4, final Function3 function3, final Function3 function32, final Function1 function1, final Function0 function0, final Function0 function02, Function1 function12, final Function0 function03, GapComposer gapComposer, int i) {
        searchResultsViewModel.getClass();
        function4.getClass();
        function3.getClass();
        function32.getClass();
        function1.getClass();
        function0.getClass();
        function02.getClass();
        function12.getClass();
        function03.getClass();
        gapComposer.startRestartGroup(1755855430);
        int i2 = i | (gapComposer.changedInstance(searchResultsViewModel) ? 32 : 16) | (gapComposer.changedInstance(function4) ? 256 : 128) | (gapComposer.changedInstance(function3) ? 2048 : 1024) | (gapComposer.changedInstance(function32) ? 16384 : 8192) | (gapComposer.changedInstance(function1) ? 131072 : 65536) | (gapComposer.changedInstance(function0) ? 1048576 : 524288) | (gapComposer.changedInstance(function02) ? 8388608 : 4194304) | (gapComposer.changedInstance(function12) ? 67108864 : 33554432) | (gapComposer.changedInstance(function03) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            final LazyPagingItems collectAsLazyPagingItems = LazyPagingItemsKt.collectAsLazyPagingItems(searchResultsViewModel.searchResultsFlow, gapComposer);
            final MutableState collectAsState = Updater.collectAsState(searchResultsViewModel.searchTerm, gapComposer);
            final CombinedLoadStates combinedLoadStates = (CombinedLoadStates) collectAsLazyPagingItems.loadState$delegate.getValue();
            final ArrayList arrayList = searchResultsViewModel.countsPerLanguageCode;
            String str = (String) Updater.collectAsState(searchResultsViewModel.languageCode, gapComposer).getValue();
            str.getClass();
            LayoutDirection layoutDirection = TextUtils.getLayoutDirectionFromLocale(new Locale(str)) == 1 ? LayoutDirection.Rtl : LayoutDirection.Ltr;
            boolean z = (combinedLoadStates.refresh instanceof LoadState.Loading) || (combinedLoadStates.append instanceof LoadState.Loading);
            Boolean valueOf = Boolean.valueOf(z);
            boolean changed = ((i2 & 234881024) == 67108864) | gapComposer.changed(z);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new ActivityTabFragment$onCreateView$2$1$1(function12, z, (Continuation) null);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Updater.LaunchedEffect(gapComposer, valueOf, (Function2) rememberedValue);
            Updater.CompositionLocalProvider(CompositionLocalsKt.LocalLayoutDirection.defaultProvidedValue$runtime(layoutDirection), Expect_jvmKt.rememberComposableLambda(1995599622, new Function2() { // from class: org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    CombinedLoadStates combinedLoadStates2 = combinedLoadStates;
                    LoadState loadState = combinedLoadStates2.refresh;
                    GapComposer gapComposer2 = (GapComposer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    final int i3 = 1;
                    final int i4 = 0;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                        long j = gapComposer2.compositeKeyHashCode;
                        int i5 = (int) (j ^ (j >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, Modifier.this);
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
                        if (loadState instanceof LoadState.Loading) {
                            gapComposer2.startReplaceGroup(-2098410412);
                            gapComposer2.end(false);
                        } else {
                            boolean z2 = loadState instanceof LoadState.Error;
                            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                            Object obj3 = Composer$Companion.Empty;
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                            if (z2) {
                                gapComposer2.startReplaceGroup(-2098283870);
                                loadState.getClass();
                                Exception exc = ((LoadState.Error) loadState).error;
                                Modifier align = boxScopeInstance.align(SizeKt.fillMaxWidth(companion, 1.0f), Alignment.Companion.Center);
                                Function0 function04 = function02;
                                boolean changed2 = gapComposer2.changed(function04);
                                Object rememberedValue2 = gapComposer2.rememberedValue();
                                if (changed2 || rememberedValue2 == obj3) {
                                    rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda1(7, function04);
                                    gapComposer2.updateRememberedValue(rememberedValue2);
                                }
                                Function0 function05 = (Function0) rememberedValue2;
                                Function0 function06 = function0;
                                boolean changed3 = gapComposer2.changed(function06);
                                Object rememberedValue3 = gapComposer2.rememberedValue();
                                if (changed3 || rememberedValue3 == obj3) {
                                    rememberedValue3 = new SearchResultsScreenKt$$ExternalSyntheticLambda1(8, function06);
                                    gapComposer2.updateRememberedValue(rememberedValue3);
                                }
                                Okio__JvmOkioKt.WikiErrorView(align, exc, new WikiErrorClickEvents(function05, (Function0) rememberedValue3, null, 12), false, gapComposer2, 0, 20);
                                gapComposer2.end(false);
                            } else {
                                LoadState loadState2 = combinedLoadStates2.append;
                                boolean z3 = loadState2 instanceof LoadState.NotLoading;
                                LazyPagingItems lazyPagingItems = collectAsLazyPagingItems;
                                SearchResultsViewModel searchResultsViewModel2 = searchResultsViewModel;
                                State state = collectAsState;
                                final Function3 function33 = function32;
                                if (z3 && loadState2.endOfPaginationReached && lazyPagingItems.getItemCount() == 0) {
                                    gapComposer2.startReplaceGroup(-2097569506);
                                    if (searchResultsViewModel2.isHybridSearchExperimentOn()) {
                                        gapComposer2.startReplaceGroup(-2097517860);
                                        Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(boxScopeInstance.align(SizeKt.fillMaxWidth(companion, 1.0f), Alignment.Companion.BottomStart), ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, ColorKt.RectangleShape);
                                        boolean changed4 = gapComposer2.changed(state) | gapComposer2.changed(function33);
                                        Object rememberedValue4 = gapComposer2.rememberedValue();
                                        if (changed4 || rememberedValue4 == obj3) {
                                            rememberedValue4 = new AboutActivityKt$$ExternalSyntheticLambda11(5, state, function33);
                                            gapComposer2.updateRememberedValue(rememberedValue4);
                                        }
                                        NoSearchResultsKt.SearchResultTitleOnlyBottomContent(0, gapComposer2, ImageKt.m51clickableoSLSa3U$default(15, m46backgroundbw27NRU, null, (Function0) rememberedValue4, false), (String) state.getValue());
                                        function03.invoke();
                                        gapComposer2.end(false);
                                    } else {
                                        gapComposer2.startReplaceGroup(-2096715456);
                                        NoSearchResultsKt.NoSearchResults(arrayList, function1, searchResultsViewModel2.getInvokeSource(), null, gapComposer2, 0);
                                        gapComposer2.end(false);
                                    }
                                    gapComposer2.end(false);
                                } else {
                                    gapComposer2.startReplaceGroup(-2096377153);
                                    if (searchResultsViewModel2.isHybridSearchExperimentOn()) {
                                        gapComposer2.startReplaceGroup(-2096326840);
                                        FillElement fillElement = SizeKt.FillWholeMaxSize;
                                        String str2 = (String) state.getValue();
                                        boolean changed5 = gapComposer2.changed(function33);
                                        Object rememberedValue5 = gapComposer2.rememberedValue();
                                        if (changed5 || rememberedValue5 == obj3) {
                                            rememberedValue5 = new Function1() { // from class: org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda9
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj4) {
                                                    int i6 = i4;
                                                    Unit unit = Unit.INSTANCE;
                                                    Function3 function34 = function33;
                                                    switch (i6) {
                                                        case 0:
                                                            SearchResult searchResult = (SearchResult) obj4;
                                                            searchResult.getClass();
                                                            function34.invoke(searchResult, searchResult.pageTitle.getDisplayText(), Boolean.FALSE);
                                                            break;
                                                        default:
                                                            String str3 = (String) obj4;
                                                            if (str3 != null) {
                                                                function34.invoke(null, str3, Boolean.TRUE);
                                                                break;
                                                            }
                                                            break;
                                                    }
                                                    return unit;
                                                }
                                            };
                                            gapComposer2.updateRememberedValue(rememberedValue5);
                                        }
                                        Function1 function13 = (Function1) rememberedValue5;
                                        boolean changed6 = gapComposer2.changed(function33);
                                        Object rememberedValue6 = gapComposer2.rememberedValue();
                                        if (changed6 || rememberedValue6 == obj3) {
                                            rememberedValue6 = new Function1() { // from class: org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda9
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj4) {
                                                    int i6 = i3;
                                                    Unit unit = Unit.INSTANCE;
                                                    Function3 function34 = function33;
                                                    switch (i6) {
                                                        case 0:
                                                            SearchResult searchResult = (SearchResult) obj4;
                                                            searchResult.getClass();
                                                            function34.invoke(searchResult, searchResult.pageTitle.getDisplayText(), Boolean.FALSE);
                                                            break;
                                                        default:
                                                            String str3 = (String) obj4;
                                                            if (str3 != null) {
                                                                function34.invoke(null, str3, Boolean.TRUE);
                                                                break;
                                                            }
                                                            break;
                                                    }
                                                    return unit;
                                                }
                                            };
                                            gapComposer2.updateRememberedValue(rememberedValue6);
                                        }
                                        NoSearchResultsKt.HybridSearchSuggestionListView(fillElement, lazyPagingItems, str2, function13, (Function1) rememberedValue6, gapComposer2, 70);
                                        gapComposer2 = gapComposer2;
                                        gapComposer2.end(false);
                                    } else {
                                        gapComposer2.startReplaceGroup(-2095589691);
                                        NoSearchResultsKt.SearchResultsList(lazyPagingItems, (String) state.getValue(), function4, function3, null, gapComposer2, 8);
                                        gapComposer2 = gapComposer2;
                                        gapComposer2.end(false);
                                    }
                                    gapComposer2.end(false);
                                }
                            }
                        }
                        gapComposer2.end(true);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NavHostKt$$ExternalSyntheticLambda13(modifier, searchResultsViewModel, function4, function3, function32, function1, function0, function02, function12, function03, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0070  */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void SemanticSearchResultHeader(androidx.compose.ui.Modifier r53, java.lang.String r54, kotlin.jvm.functions.Function0 r55, kotlin.jvm.functions.Function0 r56, androidx.compose.runtime.GapComposer r57, int r58, int r59) {
        /*
            Method dump skipped, instructions count: 1011
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.search.NoSearchResultsKt.SemanticSearchResultHeader(androidx.compose.ui.Modifier, java.lang.String, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void SemanticSearchResultPageItem(SearchResult searchResult, Function0 function0, Function1 function1, Function1 function12, Function1 function13, GapComposer gapComposer, int i) {
        searchResult.getClass();
        function0.getClass();
        function1.getClass();
        function12.getClass();
        function13.getClass();
        gapComposer.startRestartGroup(-483210164);
        int i2 = i | (gapComposer.changedInstance(searchResult) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changedInstance(function12) ? 2048 : 1024) | (gapComposer.changedInstance(function13) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(SizeKt.m149width3ABfNKs(Modifier.Companion.$$INSTANCE, 292.0f), RecyclerView.DECELERATION_RATE, 4.0f, RecyclerView.DECELERATION_RATE, 8.0f, 5);
            RoundedCornerShape m177RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(24.0f);
            CardElevation m275cardElevationaqJV_2Y = CardKt.m275cardElevationaqJV_2Y(62, RecyclerView.DECELERATION_RATE);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            CardKt.Card(m136paddingqDBjuR0$default, m177RoundedCornerShape0680j_4, CardKt.m274cardColorsro_MJ88(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).backgroundColor, 0L, gapComposer, 0, 14), m275cardElevationaqJV_2Y, ImageKt.m45BorderStrokecXLIe8U(1.0f, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor), Expect_jvmKt.rememberComposableLambda(1972508862, new HomeScreenKt$$ExternalSyntheticLambda26(function0, function1, searchResult, function12, function13), gapComposer), gapComposer, 196608, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedComponentsKt$$ExternalSyntheticLambda5(searchResult, function0, function1, function12, function13, i);
        }
    }

    public static ArrayList buildList(SemanticSearchResults semanticSearchResults, WikiSite wikiSite, SearchResult.SearchResultType searchResultType) {
        semanticSearchResults.getClass();
        wikiSite.getClass();
        searchResultType.getClass();
        List list = semanticSearchResults.results;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            SemanticSearchResult semanticSearchResult = (SemanticSearchResult) obj;
            PageTitle.Companion companion = PageTitle.Companion;
            Uri parse = Uri.parse(semanticSearchResult.url);
            parse.getClass();
            companion.getClass();
            PageTitle titleForUri = PageTitle.Companion.titleForUri(parse, wikiSite);
            String str = semanticSearchResult.sectionText;
            str.getClass();
            RegexOption regexOption = RegexOption.DOT_MATCHES_ALL;
            regexOption.getClass();
            int value = regexOption.getValue();
            if ((value & 2) != 0) {
                value |= 64;
            }
            Pattern compile = Pattern.compile("'''(.*?)'''", value);
            compile.getClass();
            int value2 = regexOption.getValue();
            if ((value2 & 2) != 0) {
                value2 |= 64;
            }
            Pattern compile2 = Pattern.compile("''(.*?)''", value2);
            compile2.getClass();
            Pattern compile3 = Pattern.compile("\\([\\s,.;]*\\)");
            compile3.getClass();
            String replaceAll = compile3.matcher(str).replaceAll("");
            replaceAll.getClass();
            String replaceAll2 = compile.matcher(replaceAll).replaceAll("<b>$1</b>");
            replaceAll2.getClass();
            String replaceAll3 = compile2.matcher(replaceAll2).replaceAll("<i>$1</i>");
            replaceAll3.getClass();
            arrayList.add(new SearchResult(titleForUri, null, searchResultType, null, replaceAll3, i2));
            i = i2;
        }
        return arrayList;
    }

    public static List buildList(MwQueryResponse mwQueryResponse, Constants.InvokeSource invokeSource, WikiSite wikiSite, SearchResult.SearchResultType searchResultType) {
        MwQueryResult mwQueryResult;
        List list;
        invokeSource.getClass();
        wikiSite.getClass();
        searchResultType.getClass();
        if (mwQueryResponse != null && (mwQueryResult = mwQueryResponse.query) != null && (list = mwQueryResult.pages) != null) {
            if (invokeSource == Constants.InvokeSource.PLACES) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (((MwQueryPage) obj).coordinates != null) {
                        arrayList.add(obj);
                    }
                }
                list = arrayList;
            }
            List<MwQueryPage> sortedWith = CollectionsKt.sortedWith(list, new SearchResultsViewModel$Companion$buildList$lambda$0$$inlined$sortedBy$1(0));
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(sortedWith, 10));
            for (MwQueryPage mwQueryPage : sortedWith) {
                List list2 = mwQueryPage.coordinates;
                int i = mwQueryPage.index;
                PageTitle pageTitle = new PageTitle(mwQueryPage.title, wikiSite, mwQueryPage.thumbUrl(), mwQueryPage.description, mwQueryPage.displayTitle(wikiSite.languageCode));
                String str = mwQueryPage.sectionTitle;
                if (str != null && str.length() != 0) {
                    StringUtil stringUtil = StringUtil.INSTANCE;
                    pageTitle.fragment = StringsKt__StringsJVMKt.replace$default(str, " ", "_");
                }
                arrayList2.add(new SearchResult(pageTitle, mwQueryPage.redirectFrom, searchResultType, list2, mwQueryPage.snippet, i));
            }
            return arrayList2;
        }
        return EmptyList.INSTANCE;
    }
}
