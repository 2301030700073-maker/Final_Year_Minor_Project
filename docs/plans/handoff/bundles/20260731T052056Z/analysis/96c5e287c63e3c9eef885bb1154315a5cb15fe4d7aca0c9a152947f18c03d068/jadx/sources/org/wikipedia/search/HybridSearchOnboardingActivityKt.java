package org.wikipedia.search;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda3;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.wikipedia.R;
import org.wikipedia.compose.components.OnboardingItem;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda27;
import org.wikipedia.feed.wikigames.OnThisDayGameKt$$ExternalSyntheticLambda13;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class HybridSearchOnboardingActivityKt {
    public static final List onboardingItems = Room.listOf((Object[]) new OnboardingItem[]{new OnboardingItem(R.drawable.ic_chat_bubble_outline, R.string.hybrid_search_onboarding_search_title, R.string.hybrid_search_onboarding_search_description, 8, null), new OnboardingItem(R.drawable.ic_timer_black_24dp, R.string.hybrid_search_onboarding_opt_in_choice_title, R.string.hybrid_search_onboarding_opt_in_choice_description, 8, null)});
    public static final List defaultSuggestedQueries = Room.listOf((Object[]) new Integer[]{Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query_pluto_as_planet), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query_first_olympics), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query_rna_vs_dna), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query_pineapple_pizza), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query_biggest_cities_europe)});
    public static final Map suggestedQueriesPerLanguage = MapsKt__MapsKt.mapOf(new Pair("el", Room.listOf((Object[]) new Integer[]{Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query1_el), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query2_el), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query3_el), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query4_el), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query5_el)})), new Pair("fr", Room.listOf((Object[]) new Integer[]{Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query1_fr), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query2_fr), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query3_fr), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query4_fr), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query5_fr)})), new Pair("pt", Room.listOf((Object[]) new Integer[]{Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query1_pt), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query2_pt), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query3_pt), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query4_pt), Integer.valueOf(R.string.hybrid_search_onboarding_search_example_query5_pt)})));

    public static final void HybridSearchOnboardingScreen(Modifier modifier, String str, List list, Function0 function0, Function1 function1, Function0 function02, GapComposer gapComposer, int i) {
        Modifier modifier2;
        str.getClass();
        list.getClass();
        function0.getClass();
        function1.getClass();
        function02.getClass();
        gapComposer.startRestartGroup(1631950819);
        int i2 = i | 6;
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(str) ? 32 : 16;
        }
        int i3 = i2 | (gapComposer.changedInstance(list) ? 256 : 128);
        if ((i & 3072) == 0) {
            i3 |= gapComposer.changedInstance(function0) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer.changedInstance(function1) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= gapComposer.changedInstance(function02) ? 131072 : 65536;
        }
        byte b = 0;
        if (gapComposer.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            modifier2 = Modifier.Companion.$$INSTANCE;
            CardKt.m270ScaffoldTvnljyQ(OffsetKt.safeDrawingPadding(modifier2), NoSearchResultsKt.lambda$1726883487, Expect_jvmKt.rememberComposableLambda(1381967742, new HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0(function0, function02, b, b), gapComposer), null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(373674868, new AboutActivityKt$$ExternalSyntheticLambda2(list, str, function1, 10), gapComposer), gapComposer, 805306800, 440);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda3(modifier2, str, list, function0, function1, function02, i, 4);
        }
    }

    public static final void MainBottomBar(Function0 function0, Function0 function02, GapComposer gapComposer, int i) {
        Function0 function03;
        GapComposer gapComposer2 = gapComposer;
        function0.getClass();
        function02.getClass();
        gapComposer2.startRestartGroup(1781009854);
        int i2 = (gapComposer2.changedInstance(function0) ? 4 : 2) | i | (gapComposer2.changedInstance(function02) ? 32 : 16);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(SizeKt.fillMaxWidth(companion, 1.0f), 24.0f, 12.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(24.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer2, 54);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
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
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Modifier weight$default$1 = Animation.CC.weight$default$1(companion, 1.0f);
            PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            CardKt.TextButton(function02, weight$default$1, false, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).backgroundColor, 0L, gapComposer, 14), null, NoSearchResultsKt.f61lambda$2130079875, gapComposer, ((i2 >> 3) & 14) | 805306368, 492);
            function03 = function02;
            CardKt.Button(function0, Animation.CC.weight$default$1(companion, 1.0f), false, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor, 0L, gapComposer, 14), null, null, null, NoSearchResultsKt.lambda$994939882, gapComposer, (i2 & 14) | 805306368, 492);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
        } else {
            function03 = function02;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0(function0, function03, i);
        }
    }

    public static final void SearchExamplesView(Modifier modifier, List list, String str, Function1 function1, GapComposer gapComposer, int i) {
        list.getClass();
        str.getClass();
        function1.getClass();
        gapComposer.startRestartGroup(-1778028800);
        int i2 = (gapComposer.changed(modifier) ? 4 : 2) | i | (gapComposer.changedInstance(list) ? 32 : 16);
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(str) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) ((j >>> 32) ^ j);
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
            TabsBoxKt.OnboardingListItem(OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 12.0f, RecyclerView.DECELERATION_RATE, 4.0f, 5), new OnboardingItem(R.drawable.ic_light_bulb, R.string.hybrid_search_onboarding_search_example_title, R.string.hybrid_search_onboarding_search_example_description, 8, null), gapComposer, 6, 0);
            OffsetKt.FlowRow(OffsetKt.m136paddingqDBjuR0$default(companion, 36.0f, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 12), new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), null, 0, 0, Expect_jvmKt.rememberComposableLambda(-679124091, new OnThisDayGameKt$$ExternalSyntheticLambda13(list, context, str, function1), gapComposer), gapComposer, 1573302, 56);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda27(modifier, list, str, function1, i);
        }
    }
}
