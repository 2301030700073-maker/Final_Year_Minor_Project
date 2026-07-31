package org.jsoup;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.location.Location;
import android.util.TypedValue;
import android.view.View;
import androidx.activity.compose.LocalActivityKt;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.RepeatMode;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ChipKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.FilterChipDefaults;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.SelectableChipColors;
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
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.NestedScrollInteropConnection;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.network.NetworkHeaders;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.ExceptionsKt;
import kotlin.Function;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.AbstractCollection;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.Headers;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import okio.Options;
import org.jsoup.nodes.Document;
import org.jsoup.parser.CharacterReader;
import org.jsoup.parser.HtmlTreeBuilder;
import org.jsoup.parser.HtmlTreeBuilderState;
import org.jsoup.parser.Parser;
import org.jsoup.parser.TagSet;
import org.jsoup.parser.Token;
import org.jsoup.parser.Tokeniser;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.compose.theme.WikipediaThemeKt$$ExternalSyntheticLambda1;
import org.wikipedia.dataclient.restbase.RbDefinition$Definition;
import org.wikipedia.dataclient.restbase.RbDefinition$Usage;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda31;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda5;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.feed.announcement.GeoIPCookieUnmarshaller$Component;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.feed.wikigames.OnThisDayCardGameState;
import org.wikipedia.feed.wikigames.OnThisDayGameAction;
import org.wikipedia.feed.wikigames.WikiGame$OnThisDayGame;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda0;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda10;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda17;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda3;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda5;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda6;
import org.wikipedia.games.GamesHubViewModel;
import org.wikipedia.games.WikiGames;
import org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper;
import org.wikipedia.places.PlacesFragment;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda16;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UiState;
import org.wikipedia.util.log.L;
import org.wikipedia.wiktionary.WiktionaryViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Jsoup {
    public static final void DefinitionList(RbDefinition$Usage rbDefinition$Usage, Function1 function1, GapComposer gapComposer, int i) {
        GapComposer gapComposer2 = gapComposer;
        rbDefinition$Usage.getClass();
        function1.getClass();
        gapComposer2.startRestartGroup(296627426);
        int i2 = (i & 6) == 0 ? i | (gapComposer2.changedInstance(rbDefinition$Usage) ? 4 : 2) : i;
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(function1) ? 32 : 16;
        }
        int i3 = i2;
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 8.0f, 7);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m136paddingqDBjuR0$default);
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
            StringUtil stringUtil = StringUtil.INSTANCE;
            TextKt.m308TextNvy7gAk(StringUtil.removeStyleTags(rbDefinition$Usage.partOfSpeech), OffsetKt.m134paddingVpY3zN4$default(companion, RecyclerView.DECELERATION_RATE, 4.0f, 1), ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).placeholderColor, null, ContextsKt.getSp(14), null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer, 24624, 0, 262120);
            gapComposer2 = gapComposer;
            gapComposer2.startReplaceGroup(-1188845051);
            int i5 = 0;
            for (RbDefinition$Definition rbDefinition$Definition : rbDefinition$Usage.definitions) {
                if (rbDefinition$Definition.definition.length() > 0) {
                    gapComposer2.startReplaceGroup(-612956181);
                    i5++;
                    DefinitionWithExamples(rbDefinition$Definition, i5, function1, gapComposer2, (i3 << 3) & 896);
                    gapComposer2.end(false);
                } else {
                    gapComposer2.startReplaceGroup(-612759176);
                    gapComposer2.end(false);
                }
            }
            gapComposer2.end(false);
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ForYouCardKt$$ExternalSyntheticLambda31(rbDefinition$Usage, function1, i, 17);
        }
    }

    public static final void DefinitionWithExamples(RbDefinition$Definition rbDefinition$Definition, int i, Function1 function1, GapComposer gapComposer, int i2) {
        int i3;
        function1.getClass();
        gapComposer.startRestartGroup(-1871014644);
        if ((i2 & 6) == 0) {
            i3 = (gapComposer.changedInstance(rbDefinition$Definition) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer.changed(i) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= gapComposer.changedInstance(function1) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
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
            Updater.m327setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            SimpleLayoutKt.SelectionContainer(null, Expect_jvmKt.rememberComposableLambda(-1340747949, new AboutActivityKt$$ExternalSyntheticLambda9(i, rbDefinition$Definition, context, function1), gapComposer), gapComposer, 48);
            List list = rbDefinition$Definition.examples;
            if (list == null) {
                gapComposer.startReplaceGroup(-1984631494);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1984631493);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    SimpleLayoutKt.SelectionContainer(null, Expect_jvmKt.rememberComposableLambda(1027882376, new RandomScreenKt$$ExternalSyntheticLambda18((String) it.next(), context, function1), gapComposer), gapComposer, 48);
                }
                gapComposer.end(false);
            }
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new WikipediaThemeKt$$ExternalSyntheticLambda1(rbDefinition$Definition, i, function1, i2);
        }
    }

    public static final void GamesHubLanguageChip(boolean z, String str, Function1 function1, Function0 function0, GapComposer gapComposer, int i) {
        long j;
        str.getClass();
        function1.getClass();
        function0.getClass();
        gapComposer.startRestartGroup(-670605880);
        int i2 = i | (gapComposer.changed(z) ? 4 : 2) | (gapComposer.changed(str) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changedInstance(function0) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String appLanguageLocalizedName = getInstance().getLanguageState().getAppLanguageLocalizedName(str);
            if (appLanguageLocalizedName == null) {
                appLanguageLocalizedName = str;
            }
            boolean isLangSupported = WikiGames.WHICH_CAME_FIRST.isLangSupported(str);
            if (isLangSupported) {
                gapComposer.startReplaceGroup(-207142188);
                j = NodeTraversor.getColors(gapComposer).primaryColor;
            } else {
                gapComposer.startReplaceGroup(-207140907);
                j = NodeTraversor.getColors(gapComposer).inactiveColor;
            }
            gapComposer.end(false);
            String stringResource = UtilsKt.stringResource(R.string.games_hub_activity_games_unavailable_message, gapComposer);
            float f = FilterChipDefaults.Height;
            SelectableChipColors defaultFilterChipColors$material3 = FilterChipDefaults.getDefaultFilterChipColors$material3((ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme));
            long j2 = j;
            SelectableChipColors m296copydaRQuJA = defaultFilterChipColors$material3.m296copydaRQuJA(defaultFilterChipColors$material3.containerColor, defaultFilterChipColors$material3.labelColor, defaultFilterChipColors$material3.leadingIconColor, defaultFilterChipColors$material3.trailingIconColor, defaultFilterChipColors$material3.disabledContainerColor, defaultFilterChipColors$material3.disabledLabelColor, defaultFilterChipColors$material3.disabledLeadingIconColor, defaultFilterChipColors$material3.disabledTrailingIconColor, NodeTraversor.getColors(gapComposer).additionColor, defaultFilterChipColors$material3.disabledSelectedContainerColor, defaultFilterChipColors$material3.selectedLabelColor, defaultFilterChipColors$material3.selectedLeadingIconColor, defaultFilterChipColors$material3.selectedTrailingIconColor);
            BorderStroke m45BorderStrokecXLIe8U = ImageKt.m45BorderStrokecXLIe8U(1.0f, NodeTraversor.getColors(gapComposer).borderColor);
            boolean changed = gapComposer.changed(isLangSupported) | ((i2 & 896) == 256) | gapComposer.changed(stringResource) | ((i2 & 7168) == 2048);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new GamesHubScreenKt$$ExternalSyntheticLambda3(isLangSupported, function1, stringResource, function0);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ChipKt.FilterChip(z, (Function0) rememberedValue, Expect_jvmKt.rememberComposableLambda(1081969723, new GamesHubScreenKt$$ExternalSyntheticLambda4(appLanguageLocalizedName, j2), gapComposer), null, false, Expect_jvmKt.rememberComposableLambda(-340108226, new GamesHubScreenKt$$ExternalSyntheticLambda5(0, z), gapComposer), null, m296copydaRQuJA, null, m45BorderStrokecXLIe8U, gapComposer, (i2 & 14) | 196992);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GamesHubScreenKt$$ExternalSyntheticLambda6(z, str, function1, function0, i, 0);
        }
    }

    public static final void GamesHubLoadingShimmer(InfiniteTransition infiniteTransition, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-882439358);
        int i2 = (gapComposer.changedInstance(infiniteTransition) ? 4 : 2) | i;
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
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
            Updater.m327setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            BoxKt.Box(shimmerEffect$default(ClipKt.clip(SizeKt.m140height3ABfNKs(OffsetKt.m133paddingVpY3zN4(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, 8.0f), 48.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(4.0f)), null, infiniteTransition, 7), gapComposer, 0);
            BoxKt.Box(shimmerEffect$default(ClipKt.clip(SizeKt.m140height3ABfNKs(OffsetKt.m133paddingVpY3zN4(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, 16.0f), 350.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(4.0f)), null, infiniteTransition, 7), gapComposer, 0);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GamesHubScreenKt$$ExternalSyntheticLambda0(infiniteTransition, i, i3);
        }
    }

    public static final void GamesHubScreen(GamesHubViewModel gamesHubViewModel, UiState uiState, OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper, Function2 function2, Function0 function0, Function1 function1, List list, InfiniteTransition infiniteTransition, GapComposer gapComposer, int i) {
        gamesHubViewModel.getClass();
        uiState.getClass();
        onThisDayGameArchiveCalendarHelper.getClass();
        function2.getClass();
        function0.getClass();
        function1.getClass();
        list.getClass();
        gapComposer.startRestartGroup(469123500);
        int i2 = i | (gapComposer.changedInstance(gamesHubViewModel) ? 4 : 2) | (gapComposer.changed(uiState) ? 32 : 16) | (gapComposer.changedInstance(onThisDayGameArchiveCalendarHelper) ? 256 : 128) | (gapComposer.changedInstance(function2) ? 2048 : 1024) | (gapComposer.changedInstance(function0) ? 16384 : 8192) | (gapComposer.changedInstance(function1) ? 131072 : 65536) | (gapComposer.changedInstance(list) ? 1048576 : 524288) | (gapComposer.changedInstance(infiniteTransition) ? 8388608 : 4194304);
        if (gapComposer.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(gamesHubViewModel.selectedLanguage);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState2 = (MutableState) rememberedValue2;
            PullToRefreshStateImpl rememberPullToRefreshState = RegexKt.rememberPullToRefreshState(gapComposer);
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            CardKt.m270ScaffoldTvnljyQ(ImageKt.m46backgroundbw27NRU(fillElement, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ColorKt.RectangleShape), null, null, null, null, 0, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(-131630021, new GamesHubScreenKt$$ExternalSyntheticLambda18(gamesHubViewModel, rememberPullToRefreshState, mutableState2, mutableState, list, function1, onThisDayGameArchiveCalendarHelper, uiState, infiniteTransition, function0, function2), gapComposer), gapComposer, 805306368, 446);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeFragment$$ExternalSyntheticLambda5(gamesHubViewModel, uiState, onThisDayGameArchiveCalendarHelper, function2, function0, function1, list, infiniteTransition, i, 5);
        }
    }

    public static final void HomeFeedDefaultViewScreen(Modifier modifier, HomePreferenceType homePreferenceType, Function0 function0, Function1 function1, GapComposer gapComposer, int i) {
        Modifier modifier2;
        gapComposer.startRestartGroup(-1799161817);
        int i2 = i | 6 | (gapComposer.changed(homePreferenceType == null ? -1 : homePreferenceType.ordinal()) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | (gapComposer.changedInstance(function1) ? 2048 : 1024);
        byte b = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(homePreferenceType);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState2 = (MutableState) rememberedValue2;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            MutableState mutableState3 = (MutableState) rememberedValue3;
            if (!((Boolean) mutableState2.getValue()).booleanValue() || ((Boolean) mutableState3.getValue()).booleanValue()) {
                gapComposer.startReplaceGroup(-1932130885);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1932303865);
                mutableState3.setValue(Boolean.TRUE);
                Activity activity = (Activity) gapComposer.consume(LocalActivityKt.LocalActivity);
                if (activity != null) {
                    ShareUtil.showMessage(activity, R.string.home_feed_settings_default_view_confirm);
                }
                gapComposer.end(false);
            }
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1704229149, new RandomScreenKt$$ExternalSyntheticLambda16(function0, 7, b), gapComposer);
            long j = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor;
            ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(1237529528, new HybridSearchResultsScreenKt$$ExternalSyntheticLambda13(function1, mutableState2, mutableState), gapComposer);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            CardKt.m270ScaffoldTvnljyQ(companion, rememberComposableLambda, null, null, null, 0, j, 0L, null, rememberComposableLambda2, gapComposer, 805306422, 444);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda1(modifier2, homePreferenceType, function0, function1, i);
        }
    }

    public static final void OnThisDayGameCardContent(Modifier modifier, WikiGame$OnThisDayGame wikiGame$OnThisDayGame, String str, boolean z, final Function1 function1, final String str2, int i, GapComposer gapComposer, int i2) {
        Modifier modifier2;
        int i3;
        String str3;
        Function1 function12;
        boolean z2;
        boolean z3;
        boolean z4;
        GapComposer gapComposer2;
        GapComposer gapComposer3 = gapComposer;
        modifier.getClass();
        OnThisDayCardGameState onThisDayCardGameState = wikiGame$OnThisDayGame.state;
        function1.getClass();
        str2.getClass();
        gapComposer3.startRestartGroup(-49338192);
        if ((i2 & 6) == 0) {
            modifier2 = modifier;
            i3 = (gapComposer3.changed(modifier2) ? 4 : 2) | i2;
        } else {
            modifier2 = modifier;
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer3.changed(wikiGame$OnThisDayGame) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            str3 = str;
            i3 |= gapComposer3.changed(str3) ? 256 : 128;
        } else {
            str3 = str;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposer3.changed(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposer3.changedInstance(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposer3.changed(str2) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposer3.changed(i) ? 1048576 : 524288;
        }
        int i4 = i3;
        if (gapComposer3.shouldExecute(i4 & 1, (599187 & i4) != 599186)) {
            Integer valueOf = z ? Integer.valueOf(i + 1) : null;
            String str4 = z ? "archive" : "today";
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer3, 0);
            final String str5 = str4;
            long j = gapComposer3.compositeKeyHashCode;
            int i5 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, fillMaxWidth);
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
            Updater.m327setimpl(gapComposer3, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
            boolean z5 = onThisDayCardGameState instanceof OnThisDayCardGameState.Preview;
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (z5) {
                gapComposer3.startReplaceGroup(968102652);
                if (z) {
                    z2 = true;
                    gapComposer3.startReplaceGroup(968640378);
                    long j2 = ((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor;
                    boolean changed = ((57344 & i4) == 16384) | ((458752 & i4) == 131072) | gapComposer3.changed(valueOf);
                    Object rememberedValue = gapComposer3.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new HomeScreenKt$$ExternalSyntheticLambda29(str2, valueOf, function1);
                        gapComposer3.updateRememberedValue(rememberedValue);
                    }
                    z4 = false;
                    gapComposer2 = gapComposer3;
                    Options.Companion.m884OnThisDayGameCardSimpleT042LqI(modifier, R.drawable.ic_events_24dp, j2, str, (Function0) rememberedValue, gapComposer2, (i4 & 14) | ((i4 << 3) & 7168));
                    gapComposer2.end(false);
                } else {
                    gapComposer3.startReplaceGroup(968118648);
                    OnThisDayCardGameState.Preview preview = (OnThisDayCardGameState.Preview) onThisDayCardGameState;
                    boolean z6 = ((i4 & 458752) == 131072) | ((57344 & i4) == 16384);
                    Object rememberedValue2 = gapComposer3.rememberedValue();
                    if (z6 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new GamesHubScreenKt$$ExternalSyntheticLambda10(str2, function1);
                        gapComposer3.updateRememberedValue(rememberedValue2);
                    }
                    z2 = true;
                    Options.Companion.OnThisDayGameCardPreview(modifier2, preview, str3, (Function0) rememberedValue2, gapComposer3, i4 & 910);
                    gapComposer3.end(false);
                    z4 = false;
                    gapComposer2 = gapComposer3;
                }
                gapComposer2.end(z4);
                function12 = function1;
                gapComposer3 = gapComposer2;
            } else {
                z2 = true;
                if (onThisDayCardGameState instanceof OnThisDayCardGameState.InProgress) {
                    gapComposer3.startReplaceGroup(969342714);
                    OnThisDayCardGameState.InProgress inProgress = (OnThisDayCardGameState.InProgress) onThisDayCardGameState;
                    boolean changed2 = gapComposer3.changed(str5) | ((458752 & i4) == 131072) | gapComposer3.changed(valueOf) | ((57344 & i4) == 16384);
                    Object rememberedValue3 = gapComposer3.rememberedValue();
                    if (changed2 || rememberedValue3 == neverEqualPolicy) {
                        final int i6 = 0;
                        final Integer num = valueOf;
                        z3 = false;
                        Function0 function0 = new Function0() { // from class: org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda12
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i7 = i6;
                                OnThisDayGameAction.Play play = OnThisDayGameAction.Play.INSTANCE;
                                Unit unit = Unit.INSTANCE;
                                Function1 function13 = function1;
                                switch (i7) {
                                    case 0:
                                        WikiGamesEvent.submit$default(572, null, num, "continue_click", "games_hub", null, str2, str5);
                                        function13.invoke(play);
                                        break;
                                    case 1:
                                        WikiGamesEvent.submit$default(572, null, num, "review_click", "games_hub", null, str2, str5);
                                        function13.invoke(play);
                                        break;
                                    case 2:
                                        WikiGamesEvent.submit$default(572, null, num, "review_click", "games_hub", null, str2, str5);
                                        function13.invoke(OnThisDayGameAction.ReviewResults.INSTANCE);
                                        break;
                                    default:
                                        WikiGamesEvent.submit$default(572, null, num, "archive_click", "games_hub", null, str2, str5);
                                        function13.invoke(OnThisDayGameAction.PlayArchive.INSTANCE);
                                        break;
                                }
                                return unit;
                            }
                        };
                        gapComposer3.updateRememberedValue(function0);
                        rememberedValue3 = function0;
                    } else {
                        z3 = false;
                    }
                    gapComposer3 = gapComposer3;
                    Options.Companion.OnThisDayGameCardProgress(modifier, z, inProgress, str, (Function0) rememberedValue3, gapComposer3, (i4 & 14) | ((i4 >> 6) & 112) | ((i4 << 3) & 7168));
                    gapComposer3.end(z3);
                    function12 = function1;
                } else {
                    final Integer num2 = valueOf;
                    if (!(onThisDayCardGameState instanceof OnThisDayCardGameState.Completed)) {
                        throw Modifier.CC.m(gapComposer3, 308323650, false);
                    }
                    gapComposer3.startReplaceGroup(969991420);
                    OnThisDayCardGameState.Completed completed = (OnThisDayCardGameState.Completed) onThisDayCardGameState;
                    int i7 = 458752 & i4;
                    int i8 = 57344 & i4;
                    boolean changed3 = (i7 == 131072) | gapComposer3.changed(str5) | gapComposer3.changed(num2) | (i8 == 16384);
                    Object rememberedValue4 = gapComposer3.rememberedValue();
                    if (changed3 || rememberedValue4 == neverEqualPolicy) {
                        final int i9 = 1;
                        Function0 function02 = new Function0() { // from class: org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda12
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i72 = i9;
                                OnThisDayGameAction.Play play = OnThisDayGameAction.Play.INSTANCE;
                                Unit unit = Unit.INSTANCE;
                                Function1 function13 = function1;
                                switch (i72) {
                                    case 0:
                                        WikiGamesEvent.submit$default(572, null, num2, "continue_click", "games_hub", null, str2, str5);
                                        function13.invoke(play);
                                        break;
                                    case 1:
                                        WikiGamesEvent.submit$default(572, null, num2, "review_click", "games_hub", null, str2, str5);
                                        function13.invoke(play);
                                        break;
                                    case 2:
                                        WikiGamesEvent.submit$default(572, null, num2, "review_click", "games_hub", null, str2, str5);
                                        function13.invoke(OnThisDayGameAction.ReviewResults.INSTANCE);
                                        break;
                                    default:
                                        WikiGamesEvent.submit$default(572, null, num2, "archive_click", "games_hub", null, str2, str5);
                                        function13.invoke(OnThisDayGameAction.PlayArchive.INSTANCE);
                                        break;
                                }
                                return unit;
                            }
                        };
                        gapComposer3.updateRememberedValue(function02);
                        rememberedValue4 = function02;
                    }
                    Function0 function03 = (Function0) rememberedValue4;
                    boolean changed4 = (i7 == 131072) | gapComposer3.changed(str5) | gapComposer3.changed(num2) | (i8 == 16384);
                    Object rememberedValue5 = gapComposer3.rememberedValue();
                    if (changed4 || rememberedValue5 == neverEqualPolicy) {
                        final int i10 = 2;
                        Function0 function04 = new Function0() { // from class: org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda12
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i72 = i10;
                                OnThisDayGameAction.Play play = OnThisDayGameAction.Play.INSTANCE;
                                Unit unit = Unit.INSTANCE;
                                Function1 function13 = function1;
                                switch (i72) {
                                    case 0:
                                        WikiGamesEvent.submit$default(572, null, num2, "continue_click", "games_hub", null, str2, str5);
                                        function13.invoke(play);
                                        break;
                                    case 1:
                                        WikiGamesEvent.submit$default(572, null, num2, "review_click", "games_hub", null, str2, str5);
                                        function13.invoke(play);
                                        break;
                                    case 2:
                                        WikiGamesEvent.submit$default(572, null, num2, "review_click", "games_hub", null, str2, str5);
                                        function13.invoke(OnThisDayGameAction.ReviewResults.INSTANCE);
                                        break;
                                    default:
                                        WikiGamesEvent.submit$default(572, null, num2, "archive_click", "games_hub", null, str2, str5);
                                        function13.invoke(OnThisDayGameAction.PlayArchive.INSTANCE);
                                        break;
                                }
                                return unit;
                            }
                        };
                        gapComposer3.updateRememberedValue(function04);
                        rememberedValue5 = function04;
                    }
                    Function0 function05 = (Function0) rememberedValue5;
                    boolean changed5 = (i7 == 131072) | gapComposer3.changed(str5) | gapComposer3.changed(num2) | (i8 == 16384);
                    Object rememberedValue6 = gapComposer3.rememberedValue();
                    if (changed5 || rememberedValue6 == neverEqualPolicy) {
                        final int i11 = 3;
                        rememberedValue6 = new Function0() { // from class: org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda12
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i72 = i11;
                                OnThisDayGameAction.Play play = OnThisDayGameAction.Play.INSTANCE;
                                Unit unit = Unit.INSTANCE;
                                Function1 function13 = function1;
                                switch (i72) {
                                    case 0:
                                        WikiGamesEvent.submit$default(572, null, num2, "continue_click", "games_hub", null, str2, str5);
                                        function13.invoke(play);
                                        break;
                                    case 1:
                                        WikiGamesEvent.submit$default(572, null, num2, "review_click", "games_hub", null, str2, str5);
                                        function13.invoke(play);
                                        break;
                                    case 2:
                                        WikiGamesEvent.submit$default(572, null, num2, "review_click", "games_hub", null, str2, str5);
                                        function13.invoke(OnThisDayGameAction.ReviewResults.INSTANCE);
                                        break;
                                    default:
                                        WikiGamesEvent.submit$default(572, null, num2, "archive_click", "games_hub", null, str2, str5);
                                        function13.invoke(OnThisDayGameAction.PlayArchive.INSTANCE);
                                        break;
                                }
                                return unit;
                            }
                        };
                        function12 = function1;
                        gapComposer3.updateRememberedValue(rememberedValue6);
                    } else {
                        function12 = function1;
                    }
                    Function0 function06 = (Function0) rememberedValue6;
                    boolean z7 = i8 == 16384;
                    Object rememberedValue7 = gapComposer3.rememberedValue();
                    if (z7 || rememberedValue7 == neverEqualPolicy) {
                        rememberedValue7 = new HomeScreenKt$$ExternalSyntheticLambda4(function12, 28);
                        gapComposer3.updateRememberedValue(rememberedValue7);
                    }
                    Options.Companion.OnThisDayGameCardCompleted(modifier, z, completed, str, function03, function05, function06, (Function0) rememberedValue7, gapComposer3, (i4 & 14) | ((i4 >> 6) & 112) | ((i4 << 3) & 7168));
                    gapComposer3 = gapComposer3;
                    gapComposer3.end(false);
                }
            }
            gapComposer3.end(z2);
        } else {
            function12 = function1;
            gapComposer3.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer3.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GamesHubScreenKt$$ExternalSyntheticLambda17(modifier, wikiGame$OnThisDayGame, str, z, function12, str2, i, i2);
        }
    }

    public static final void OnThisDayGameCards(int i, String str, List list, Function2 function2, GapComposer gapComposer, int i2) {
        int i3;
        GapComposer gapComposer2 = gapComposer;
        str.getClass();
        list.getClass();
        function2.getClass();
        gapComposer2.startRestartGroup(1935637082);
        if ((i2 & 6) == 0) {
            i3 = (gapComposer2.changed(i) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer2.changed(str) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= gapComposer2.changedInstance(list) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposer2.changedInstance(function2) ? 2048 : 1024;
        }
        if (!gapComposer2.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            gapComposer2.skipToGroupEnd();
        } else if (WikiGames.WHICH_CAME_FIRST.isLangSupported(str)) {
            gapComposer2.startReplaceGroup(333738643);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(companion, 16.0f, 8.0f);
            int i4 = i3;
            TextKt.m308TextNvy7gAk(ContextKt.getString((Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext), str, ((WikiGames) ((EnumEntriesList) WikiGames.getEntries()).get(i)).getTitleRes(), new Object[0]), m133paddingVpY3zN4, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, FontWeight.Medium, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).headlineSmall, gapComposer, 1572912, 0, 131000);
            gapComposer2 = gapComposer;
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
            PaddingValuesImpl m125PaddingValuesYgX7TsA$default = OffsetKt.m125PaddingValuesYgX7TsA$default(2, 16.0f);
            boolean changedInstance = gapComposer2.changedInstance(list) | ((i4 & 7168) == 2048) | ((i4 & 112) == 32);
            Object rememberedValue = gapComposer2.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new UtilsKt$$ExternalSyntheticLambda1(list, function2, str, 24);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            ExceptionsKt.LazyRow(fillMaxWidth, null, m125PaddingValuesYgX7TsA$default, arrangement$SpacedAligned, vertical, null, false, null, (Function1) rememberedValue, gapComposer2, 221574, 458);
            gapComposer2.end(false);
        } else {
            gapComposer2.startReplaceGroup(336495752);
            gapComposer2.end(false);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GamesHubScreenKt$$ExternalSyntheticLambda2(i, str, list, function2, i2);
        }
    }

    public static final void WiktionaryDialogContent(String str, Resource resource, Function1 function1, GapComposer gapComposer, int i) {
        int i2;
        Function1 function12;
        Modifier then;
        Modifier then2;
        GapComposer gapComposer2 = gapComposer;
        resource.getClass();
        function1.getClass();
        gapComposer2.startRestartGroup(474334577);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(resource) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changedInstance(function1) ? 256 : 128;
        }
        int i3 = i2;
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            View view = (View) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalView);
            ViewConfiguration viewConfiguration = (ViewConfiguration) gapComposer2.consume(CompositionLocalsKt.LocalViewConfiguration);
            boolean changed = gapComposer2.changed(view) | gapComposer2.changed(viewConfiguration);
            Object rememberedValue = gapComposer2.rememberedValue();
            if (changed || rememberedValue == Composer$Companion.Empty) {
                viewConfiguration.getMinimumFlingVelocity();
                rememberedValue = new NestedScrollInteropConnection(view);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            then = OffsetKt.m134paddingVpY3zN4$default(ImageKt.scroll$default(NestedScrollModifierKt.nestedScroll(fillMaxWidth, (NestedScrollInteropConnection) rememberedValue, null), ImageKt.rememberScrollState(gapComposer2), true), 16.0f, RecyclerView.DECELERATION_RATE, 2).then(new SizeElement(RecyclerView.DECELERATION_RATE, ((Resources) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalResources)).getDimension(R.dimen.bottomSheetPeekHeight) / ((Density) gapComposer2.consume(CompositionLocalsKt.LocalDensity)).getDensity(), RecyclerView.DECELERATION_RATE, Float.NaN, 5));
            Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 0);
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
            then2 = SizeKt.fillMaxWidth(companion, 1.0f).then(new SizeElement(RecyclerView.DECELERATION_RATE, 64.0f, RecyclerView.DECELERATION_RATE, Float.NaN, 5));
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer2, 48);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, then2);
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
            ImageKt.Image(UnsignedKt.painterResource(R.drawable.ic_define, 0, gapComposer2), null, OffsetKt.m136paddingqDBjuR0$default(SizeKt.m145size3ABfNKs(companion, 36.0f), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 12.0f, RecyclerView.DECELERATION_RATE, 11), null, ContentScale.Companion.Fit, RecyclerView.DECELERATION_RATE, null, gapComposer2, 25016, 104);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            TextKt.m308TextNvy7gAk(str, OffsetKt.m132padding3ABfNKs(companion, 8.0f).then(new LayoutWeightElement(1.0f, true)), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, ContextsKt.getSp(20), null, null, 0L, null, 0L, 2, false, 1, 0, null, null, gapComposer, (i3 & 14) | 24576, 24960, 241640);
            gapComposer.end(true);
            CardKt.m266HorizontalDivider9IZ8Weo(SizeKt.fillMaxWidth(companion, 1.0f), 0.5f, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor, gapComposer, 54, 0);
            if (resource instanceof Resource.Loading) {
                gapComposer.startReplaceGroup(-479828487);
                Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 64.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                long j3 = gapComposer.compositeKeyHashCode;
                int i6 = (int) (j3 ^ (j3 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, m136paddingqDBjuR0$default);
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i6, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                ProgressIndicatorKt.m290CircularProgressIndicator4lLiAd8(null, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor, RecyclerView.DECELERATION_RATE, 0L, 0, RecyclerView.DECELERATION_RATE, gapComposer, 0, 61);
                gapComposer.end(true);
                gapComposer.end(false);
                function12 = function1;
                gapComposer2 = gapComposer;
            } else if (resource instanceof Resource.Error) {
                gapComposer.startReplaceGroup(-479387202);
                TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.wiktionary_no_definitions_found, gapComposer), OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer, 48, 0, 262136);
                gapComposer2 = gapComposer;
                gapComposer2.end(false);
                function12 = function1;
            } else {
                gapComposer2 = gapComposer;
                if (resource instanceof Resource.Success) {
                    gapComposer2.startReplaceGroup(-479102901);
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 4.0f, 1);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 0);
                    long j4 = gapComposer2.compositeKeyHashCode;
                    int i7 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default);
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i7, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer2, materializeModifier4, composeUiNode$Companion$SetModifier$14);
                    gapComposer2.startReplaceGroup(1683811074);
                    Iterator it = ((Iterable) ((Resource.Success) resource).data).iterator();
                    while (it.hasNext()) {
                        DefinitionList((RbDefinition$Usage) it.next(), function1, gapComposer2, (i3 >> 3) & 112);
                    }
                    function12 = function1;
                    Modifier.CC.m(gapComposer2, false, true, false);
                } else {
                    function12 = function1;
                    gapComposer2.startReplaceGroup(-478758553);
                    gapComposer2.end(false);
                }
            }
            gapComposer2.end(true);
        } else {
            function12 = function1;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9((Object) str, (Object) resource, (Function) function12, i, 21);
        }
    }

    public static final void WiktionaryDialogScreen(WiktionaryViewModel wiktionaryViewModel, Function1 function1, GapComposer gapComposer, int i) {
        wiktionaryViewModel.getClass();
        function1.getClass();
        gapComposer.startRestartGroup(-1904569508);
        int i2 = (gapComposer.changedInstance(wiktionaryViewModel) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16);
        int i3 = 18;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Resource resource = (Resource) Updater.collectAsState(wiktionaryViewModel.uiState, gapComposer).getValue();
            StringUtil stringUtil = StringUtil.INSTANCE;
            String str = wiktionaryViewModel.selectedText;
            if (str == null) {
                str = "";
            }
            WiktionaryDialogContent(StringsKt__StringsJVMKt.replace$default(StringsKt.substringBefore$default(str, '#'), "_", " "), resource, function1, gapComposer, (i2 << 3) & 896);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomActivity$$ExternalSyntheticLambda1(wiktionaryViewModel, function1, i, i3);
        }
    }

    public static final void commonAddLenient(Headers.Builder builder, String str, String str2) {
        builder.getClass();
        str.getClass();
        str2.getClass();
        ArrayList arrayList = builder.namesAndValues;
        arrayList.add(str);
        arrayList.add(StringsKt.trim(str2).toString());
    }

    public static final Headers commonBuild(Headers.Builder builder) {
        builder.getClass();
        return new Headers((String[]) builder.namesAndValues.toArray(new String[0]));
    }

    public static final String commonName(Headers headers, int i) {
        headers.getClass();
        String str = (String) ArraysKt___ArraysKt.getOrNull(i * 2, headers.namesAndValues);
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException("name[" + i + ']');
    }

    public static final Headers.Builder commonNewBuilder(Headers headers) {
        headers.getClass();
        Headers.Builder builder = new Headers.Builder(0, (byte) 0);
        ArrayList arrayList = builder.namesAndValues;
        String[] strArr = headers.namesAndValues;
        strArr.getClass();
        List asList = Arrays.asList(strArr);
        asList.getClass();
        arrayList.addAll(asList);
        return builder;
    }

    public static final String commonValue(Headers headers, int i) {
        headers.getClass();
        String str = (String) ArraysKt___ArraysKt.getOrNull((i * 2) + 1, headers.namesAndValues);
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException("value[" + i + ']');
    }

    public static void drawMarker(Canvas canvas, Rect rect, Paint paint, Paint paint2, Paint paint3, Bitmap bitmap) {
        rect.getClass();
        paint.getClass();
        paint2.getClass();
        paint3.getClass();
        float f = PlacesFragment.MARKER_SIZE / 2.0f;
        canvas.drawCircle(f, f, f, paint);
        canvas.drawBitmap(bitmap, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), rect, paint2);
        canvas.drawCircle(f, f, f - (PlacesFragment.MARKER_BORDER_SIZE / 2.0f), paint3);
    }

    public static WikipediaApp getInstance() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        if (wikipediaApp != null) {
            return wikipediaApp;
        }
        Intrinsics.throwUninitializedPropertyAccessException("instance");
        throw null;
    }

    public static Bitmap getMarkerBitmap(Bitmap bitmap, Rect rect, Paint paint, Paint paint2, Paint paint3) {
        rect.getClass();
        paint.getClass();
        paint2.getClass();
        paint3.getClass();
        int roundedDpToPx = Okio__OkioKt.roundedDpToPx(40.0f);
        Bitmap createBitmap = Bitmap.createBitmap(roundedDpToPx, roundedDpToPx, Bitmap.Config.ARGB_8888);
        createBitmap.getClass();
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
        drawMarker(canvas, rect, paint, paint2, paint3, bitmap);
        return createBitmap;
    }

    public static Bitmap getMarkerBitmapBase(Context context) {
        context.getClass();
        int i = PlacesFragment.MARKER_SIZE;
        Bitmap createBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
        createBitmap.getClass();
        Canvas canvas = new Canvas(createBitmap);
        Drawable drawable = TuplesKt.getDrawable(context, R.drawable.ic_w_logo_circle);
        drawable.getClass();
        Drawable mutate = drawable.mutate();
        mutate.getClass();
        drawMarker(canvas, new Rect(0, 0, i, i), getMarkerPaintSrc(context), getMarkerPaintSrcIn(), getMarkerBorderPaint(context), UnsignedKt.toBitmap$default(mutate));
        return createBitmap;
    }

    public static Paint getMarkerBorderPaint(Context context) {
        context.getClass();
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(PlacesFragment.MARKER_BORDER_SIZE);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
            return null;
        }
        paint.setColor(typedValue.data);
        paint.setAntiAlias(true);
        return paint;
    }

    public static Paint getMarkerPaintSrc(Context context) {
        context.getClass();
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.secondary_color, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969935");
            return null;
        }
        paint.setColor(typedValue.data);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        return paint;
    }

    public static Paint getMarkerPaintSrcIn() {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        return paint;
    }

    public static PaintDrawable getPowerGradient(int i, int i2) {
        final float f;
        final float f2;
        PaintDrawable paintDrawable = new PaintDrawable();
        paintDrawable.setShape(new RectShape());
        final int[] iArr = new int[8];
        int i3 = (i >> 24) & 255;
        int i4 = (i >> 16) & 255;
        int i5 = (i >> 8) & 255;
        int i6 = i & 255;
        int i7 = 0;
        while (true) {
            f = 1.0f;
            if (i7 >= 8) {
                break;
            }
            iArr[i7] = Color.argb((int) (i3 * RegexKt.coerceIn((float) Math.pow((i7 * 1.0f) / 7.0f, 3.0d), RecyclerView.DECELERATION_RATE, 1.0f)), i4, i5, i6);
            i7++;
        }
        int i8 = i2 & 112;
        if (i8 == 48) {
            f2 = 1.0f;
            f = 0.0f;
        } else if (i8 != 80) {
            f2 = 0.0f;
            f = 0.0f;
        } else {
            f2 = 0.0f;
        }
        final float f3 = RecyclerView.DECELERATION_RATE;
        final float f4 = RecyclerView.DECELERATION_RATE;
        paintDrawable.setShaderFactory(new ShapeDrawable.ShaderFactory() { // from class: org.wikipedia.util.GradientUtil$setPowerGradient$1
            @Override // android.graphics.drawable.ShapeDrawable.ShaderFactory
            public final Shader resize(int i9, int i10) {
                float f5 = i9;
                float f6 = i10;
                return new LinearGradient(f3 * f5, f2 * f6, f4 * f5, f6 * f, iArr, (float[]) null, Shader.TileMode.CLAMP);
            }
        });
        return paintDrawable;
    }

    public static final void headersCheckName(String str) {
        str.getClass();
        if (str.length() <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("name is empty");
            return;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ('!' > charAt || charAt >= 127) {
                StringBuilder sb = new StringBuilder("Unexpected char 0x");
                UtilsKt.checkRadix(16);
                String num = Integer.toString(charAt, 16);
                num.getClass();
                if (num.length() < 2) {
                    num = "0".concat(num);
                }
                sb.append(num);
                sb.append(" at ");
                sb.append(i);
                sb.append(" in header name: ");
                sb.append(str);
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
    }

    public static final void headersCheckValue(String str, String str2) {
        str.getClass();
        str2.getClass();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && (' ' > charAt || charAt >= 127)) {
                StringBuilder sb = new StringBuilder("Unexpected char 0x");
                UtilsKt.checkRadix(16);
                String num = Integer.toString(charAt, 16);
                num.getClass();
                if (num.length() < 2) {
                    num = "0".concat(num);
                }
                sb.append(num);
                sb.append(" at ");
                sb.append(i);
                sb.append(" in ");
                sb.append(str2);
                sb.append(" value");
                sb.append(_UtilCommonKt.isSensitiveHeader(str2) ? "" : ": ".concat(str));
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
    }

    public static Modifier noRippleClickable$default(Modifier modifier, Function0 function0) {
        modifier.getClass();
        function0.getClass();
        return ImageKt.m50clickableO2vRcR0$default(modifier, null, null, true, null, function0, 16);
    }

    public static Document parse(String str) {
        HtmlTreeBuilder htmlTreeBuilder = new HtmlTreeBuilder();
        StringReader stringReader = new StringReader(str);
        Parser parser = new Parser(htmlTreeBuilder);
        Document document = new Document();
        htmlTreeBuilder.doc = document;
        document.parser = parser;
        htmlTreeBuilder.parser = parser;
        htmlTreeBuilder.settings = parser.settings;
        CharacterReader characterReader = new CharacterReader(stringReader);
        htmlTreeBuilder.reader = characterReader;
        characterReader.newlinePositions = null;
        htmlTreeBuilder.tokeniser = new Tokeniser(htmlTreeBuilder);
        htmlTreeBuilder.stack = new ArrayList(32);
        TagSet tagSet = parser.tagSet;
        if (tagSet == null) {
            tagSet = new TagSet(TagSet.HtmlTagSet, null);
            parser.tagSet = tagSet;
        }
        htmlTreeBuilder.tagSet = tagSet;
        Token.StartTag startTag = new Token.StartTag(htmlTreeBuilder);
        htmlTreeBuilder.start = startTag;
        htmlTreeBuilder.currentToken = startTag;
        htmlTreeBuilder.baseUri = "";
        htmlTreeBuilder.state = HtmlTreeBuilderState.Initial;
        htmlTreeBuilder.originalState = null;
        htmlTreeBuilder.baseUriSetFromDoc = false;
        htmlTreeBuilder.headElement = null;
        htmlTreeBuilder.formElement = null;
        htmlTreeBuilder.formattingElements = new ArrayList();
        htmlTreeBuilder.tmplInsertMode = new ArrayList();
        htmlTreeBuilder.pendingTableCharacters = new ArrayList();
        htmlTreeBuilder.emptyEnd = new Token.EndTag(htmlTreeBuilder);
        htmlTreeBuilder.framesetOk = true;
        htmlTreeBuilder.fosterInserts = false;
        while (true) {
            if (((Token.TokenType) htmlTreeBuilder.currentToken.type) == Token.TokenType.EOF) {
                ArrayList arrayList = htmlTreeBuilder.stack;
                if (arrayList == null) {
                    break;
                }
                if (arrayList.isEmpty()) {
                    htmlTreeBuilder.stack = null;
                } else {
                    htmlTreeBuilder.pop();
                }
            } else {
                Tokeniser tokeniser = htmlTreeBuilder.tokeniser;
                Token.Character character = tokeniser.charPending;
                while (!tokeniser.isEmitPending) {
                    tokeniser.state.read(tokeniser, tokeniser.reader);
                }
                boolean hasData = character.data.hasData();
                Token token = character;
                if (!hasData) {
                    tokeniser.isEmitPending = false;
                    token = tokeniser.emitPending;
                }
                htmlTreeBuilder.currentToken = token;
                htmlTreeBuilder.process(token);
                token.mo889reset();
            }
        }
        CharacterReader characterReader2 = htmlTreeBuilder.reader;
        if (characterReader2 != null) {
            characterReader2.close();
            htmlTreeBuilder.reader = null;
            htmlTreeBuilder.tokeniser = null;
            htmlTreeBuilder.stack = null;
        }
        return htmlTreeBuilder.doc;
    }

    public static Modifier shimmerEffect$default(Modifier modifier, final List list, final InfiniteTransition infiniteTransition, int i) {
        Modifier then;
        if ((i & 1) != 0) {
            list = null;
        }
        final EasingKt$$ExternalSyntheticLambda0 easingKt$$ExternalSyntheticLambda0 = EasingKt.LinearEasing;
        final float f = (i & 8) != 0 ? 1.0f : RecyclerView.DECELERATION_RATE;
        modifier.getClass();
        easingKt$$ExternalSyntheticLambda0.getClass();
        then = modifier.then(new ComposedModifier(new Function3() { // from class: org.wikipedia.compose.extensions.ModifierKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                long Color;
                long Color2;
                long Color3;
                long Color4;
                long Color5;
                long Color6;
                Modifier modifier2 = (Modifier) obj;
                GapComposer gapComposer = (GapComposer) obj2;
                ((Integer) obj3).getClass();
                modifier2.getClass();
                gapComposer.startReplaceGroup(-1483480841);
                List list2 = list;
                if (list2 == null) {
                    gapComposer.startReplaceGroup(304055942);
                    WikipediaColor wikipediaColor = (WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor);
                    wikipediaColor.getClass();
                    long j = wikipediaColor.borderColor;
                    if (wikipediaColor.isDarkTheme) {
                        Color4 = ColorKt.Color(androidx.compose.ui.graphics.Color.m433getRedimpl(j), androidx.compose.ui.graphics.Color.m432getGreenimpl(j), androidx.compose.ui.graphics.Color.m430getBlueimpl(j), 0.3f, androidx.compose.ui.graphics.Color.m431getColorSpaceimpl(j));
                        androidx.compose.ui.graphics.Color color = new androidx.compose.ui.graphics.Color(Color4);
                        Color5 = ColorKt.Color(androidx.compose.ui.graphics.Color.m433getRedimpl(r11), androidx.compose.ui.graphics.Color.m432getGreenimpl(r11), androidx.compose.ui.graphics.Color.m430getBlueimpl(r11), 0.5f, androidx.compose.ui.graphics.Color.m431getColorSpaceimpl(wikipediaColor.inactiveColor));
                        androidx.compose.ui.graphics.Color color2 = new androidx.compose.ui.graphics.Color(Color5);
                        Color6 = ColorKt.Color(androidx.compose.ui.graphics.Color.m433getRedimpl(j), androidx.compose.ui.graphics.Color.m432getGreenimpl(j), androidx.compose.ui.graphics.Color.m430getBlueimpl(j), 0.3f, androidx.compose.ui.graphics.Color.m431getColorSpaceimpl(j));
                        list2 = Room.listOf((Object[]) new androidx.compose.ui.graphics.Color[]{color, color2, new androidx.compose.ui.graphics.Color(Color6)});
                    } else {
                        Color = ColorKt.Color(androidx.compose.ui.graphics.Color.m433getRedimpl(j), androidx.compose.ui.graphics.Color.m432getGreenimpl(j), androidx.compose.ui.graphics.Color.m430getBlueimpl(j), 0.6f, androidx.compose.ui.graphics.Color.m431getColorSpaceimpl(j));
                        androidx.compose.ui.graphics.Color color3 = new androidx.compose.ui.graphics.Color(Color);
                        Color2 = ColorKt.Color(androidx.compose.ui.graphics.Color.m433getRedimpl(r11), androidx.compose.ui.graphics.Color.m432getGreenimpl(r11), androidx.compose.ui.graphics.Color.m430getBlueimpl(r11), 0.8f, androidx.compose.ui.graphics.Color.m431getColorSpaceimpl(wikipediaColor.backgroundColor));
                        androidx.compose.ui.graphics.Color color4 = new androidx.compose.ui.graphics.Color(Color2);
                        Color3 = ColorKt.Color(androidx.compose.ui.graphics.Color.m433getRedimpl(j), androidx.compose.ui.graphics.Color.m432getGreenimpl(j), androidx.compose.ui.graphics.Color.m430getBlueimpl(j), 0.6f, androidx.compose.ui.graphics.Color.m431getColorSpaceimpl(j));
                        list2 = Room.listOf((Object[]) new androidx.compose.ui.graphics.Color[]{color3, color4, new androidx.compose.ui.graphics.Color(Color3)});
                    }
                } else {
                    gapComposer.startReplaceGroup(304054733);
                }
                gapComposer.end(false);
                List list3 = list2;
                Object rememberedValue = gapComposer.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = Updater.mutableStateOf$default(new IntSize(0L));
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                MutableState mutableState = (MutableState) rememberedValue;
                InfiniteTransition.TransitionAnimationState animateFloat = ArcSplineKt.animateFloat(infiniteTransition, (-2.0f) * ((int) (((IntSize) mutableState.getValue()).packedValue >> 32)), 2.0f * ((int) (((IntSize) mutableState.getValue()).packedValue >> 32)), ArcSplineKt.m24infiniteRepeatable9IiC70o$default(ArcSplineKt.tween$default(1200, 2, easingKt$$ExternalSyntheticLambda0), RepeatMode.Restart, 4), gapComposer, 4104);
                androidx.compose.ui.graphics.LinearGradient linearGradient = new androidx.compose.ui.graphics.LinearGradient(list3, null, (Float.floatToRawIntBits(((Number) animateFloat.value$delegate.getValue()).floatValue()) << 32) | (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) & 4294967295L), (Float.floatToRawIntBits(((Number) animateFloat.value$delegate.getValue()).floatValue() + ((int) (((IntSize) mutableState.getValue()).packedValue >> 32))) << 32) | (Float.floatToRawIntBits(((int) (((IntSize) mutableState.getValue()).packedValue & 4294967295L)) * f) & 4294967295L));
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState, 11);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Modifier background$default = ImageKt.background$default(RulerKt.onSizeChanged(modifier2, (Function1) rememberedValue2), linearGradient, null, 6);
                gapComposer.end(false);
                return background$default;
            }
        }));
        return then;
    }

    public static Symbol unmarshal() {
        List list;
        if (NetworkHeaders.Builder.INSTANCE == null) {
            try {
                Prefs prefs = Prefs.INSTANCE;
                NetworkHeaders.Builder.INSTANCE = new NetworkHeaders.Builder(new LinkedHashMap(Prefs.getCookies()));
            } catch (Exception e) {
                L.logRemoteErrorIfProd(e);
            }
        }
        NetworkHeaders.Builder builder = NetworkHeaders.Builder.INSTANCE;
        if (builder == null) {
            builder = new NetworkHeaders.Builder(new LinkedHashMap());
            NetworkHeaders.Builder.INSTANCE = builder;
        }
        String cookieValueByName = builder.getCookieValueByName("GeoIP");
        if (cookieValueByName == null || cookieValueByName.length() == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cookie is empty.");
            return null;
        }
        Pattern compile = Pattern.compile(":");
        compile.getClass();
        Matcher matcher = compile.matcher(cookieValueByName);
        if (matcher.find()) {
            ArrayList arrayList = new ArrayList(10);
            int i = 0;
            do {
                arrayList.add(cookieValueByName.subSequence(i, matcher.start()).toString());
                i = matcher.end();
            } while (matcher.find());
            arrayList.add(cookieValueByName.subSequence(i, cookieValueByName.length()).toString());
            list = arrayList;
        } else {
            list = Room.listOf(cookieValueByName.toString());
        }
        String[] strArr = (String[]) list.toArray(new String[0]);
        if (strArr.length < ((AbstractCollection) GeoIPCookieUnmarshaller$Component.getEntries()).getSize()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cookie is malformed.");
            return null;
        }
        if (!Intrinsics.areEqual(strArr[GeoIPCookieUnmarshaller$Component.VERSION.ordinal()], "v4")) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Incorrect cookie version.");
            return null;
        }
        GeoIPCookieUnmarshaller$Component geoIPCookieUnmarshaller$Component = GeoIPCookieUnmarshaller$Component.LATITUDE;
        if (strArr[geoIPCookieUnmarshaller$Component.ordinal()].length() > 0) {
            GeoIPCookieUnmarshaller$Component geoIPCookieUnmarshaller$Component2 = GeoIPCookieUnmarshaller$Component.LONGITUDE;
            if (strArr[geoIPCookieUnmarshaller$Component2.ordinal()].length() > 0) {
                Location location = new Location("");
                try {
                    location.setLatitude(Double.parseDouble(strArr[geoIPCookieUnmarshaller$Component.ordinal()]));
                    location.setLongitude(Double.parseDouble(strArr[geoIPCookieUnmarshaller$Component2.ordinal()]));
                } catch (NumberFormatException unused) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Location is malformed.");
                    return null;
                }
            }
        }
        return new Symbol(strArr[GeoIPCookieUnmarshaller$Component.COUNTRY.ordinal()], strArr[GeoIPCookieUnmarshaller$Component.REGION.ordinal()], strArr[GeoIPCookieUnmarshaller$Component.CITY.ordinal()]);
    }
}
