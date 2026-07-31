package org.wikipedia.random;

import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonElevation;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.material3.tokens.ElevatedButtonTokens;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.yearinreview.YearInReviewDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RandomScreenKt$$ExternalSyntheticLambda16 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda16(int i, Function0 function0) {
        this.$r8$classId = 0;
        this.f$0 = function0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = 10;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Function0 function0 = this.f$0;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                RandomScreenKt.ShakeToAdvance(function0, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 1:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.m904WikiTopAppBarWHejsw(null, UtilsKt.stringResource(R.string.activity_tab_menu_customize, gapComposer), this.f$0, null, null, gapComposer, 0, 57);
                    break;
                }
            case 2:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, 24.0f, 5);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.CenterHorizontally, gapComposer2, 48);
                    long j = gapComposer2.compositeKeyHashCode;
                    int i3 = (int) (j ^ (j >>> 32));
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
                    Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    String stringResource = UtilsKt.stringResource(R.string.on_this_day_game_stats_log_in_prompt_card_title, gapComposer2);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    long j2 = ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
                    TextKt.m308TextNvy7gAk(stringResource, null, j2, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).titleSmall, 0L, 0L, FontWeight.SemiBold, null, 0L, 0L, null, 16777211), gapComposer2, 0, 0, 131066);
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.on_this_day_game_stats_log_in_prompt_card_description, gapComposer2), OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).bodyMedium, gapComposer2, 48, 0, 131064);
                    Modifier m136paddingqDBjuR0$default2 = OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                    PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                    CardKt.ElevatedButton(this.f$0, m136paddingqDBjuR0$default2, false, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, Color.White, gapComposer2, 12), new ButtonElevation((30 & 1) != 0 ? ElevatedButtonTokens.ContainerElevation : 2.0f, ElevatedButtonTokens.PressedContainerElevation, ElevatedButtonTokens.FocusedContainerElevation, ElevatedButtonTokens.HoveredContainerElevation), null, gapComposer2, 805306416);
                    gapComposer2.end(true);
                    break;
                }
            case 3:
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.m904WikiTopAppBarWHejsw(null, UtilsKt.stringResource(R.string.recommended_reading_list_settings_title, gapComposer3), this.f$0, null, null, gapComposer3, 0, 57);
                    break;
                }
            case 4:
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.m904WikiTopAppBarWHejsw(null, UtilsKt.stringResource(R.string.about_activity_title, gapComposer4), this.f$0, null, null, gapComposer4, 0, 57);
                    break;
                }
            case 5:
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.m904WikiTopAppBarWHejsw(null, "Category Playground", this.f$0, null, null, gapComposer5, 48, 57);
                    break;
                }
            case 6:
                GapComposer gapComposer6 = (GapComposer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.m904WikiTopAppBarWHejsw(null, UtilsKt.stringResource(R.string.home_feed_settings_whats_driving_title, gapComposer6), this.f$0, null, null, gapComposer6, 0, 57);
                    break;
                }
            case 7:
                GapComposer gapComposer7 = (GapComposer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    String stringResource2 = UtilsKt.stringResource(R.string.home_feed_settings_default_view_title, gapComposer7);
                    boolean changed = gapComposer7.changed(function0);
                    Object rememberedValue = gapComposer7.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda1(i2, function0);
                        gapComposer7.updateRememberedValue(rememberedValue);
                    }
                    TabsBoxKt.m904WikiTopAppBarWHejsw(null, stringResource2, (Function0) rememberedValue, null, null, gapComposer7, 0, 57);
                    break;
                }
            case 8:
                GapComposer gapComposer8 = (GapComposer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if (!gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else {
                    String stringResource3 = UtilsKt.stringResource(R.string.home_feed_settings_title, gapComposer8);
                    boolean changed2 = gapComposer8.changed(function0);
                    Object rememberedValue2 = gapComposer8.rememberedValue();
                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda1(12, function0);
                        gapComposer8.updateRememberedValue(rememberedValue2);
                    }
                    TabsBoxKt.m904WikiTopAppBarWHejsw(null, stringResource3, (Function0) rememberedValue2, null, null, gapComposer8, 0, 57);
                    break;
                }
            case 9:
                GapComposer gapComposer9 = (GapComposer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                if (!gapComposer9.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    gapComposer9.skipToGroupEnd();
                    break;
                } else {
                    float f = TopAppBarDefaults.TopAppBarExpandedHeight;
                    AppBarKt.m257TopAppBarGHTll3U(YearInReviewDialog.lambda$375127261, null, Expect_jvmKt.rememberComposableLambda(-1592677665, new RandomScreenKt$$ExternalSyntheticLambda16(function0, i2, r7 ? (byte) 1 : (byte) 0), gapComposer9), null, RecyclerView.DECELERATION_RATE, null, TopAppBarDefaults.m311topAppBarColors5tl4gsc(((WikipediaColor) gapComposer9.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, 0L, gapComposer9, 62), null, gapComposer9, 390, 186);
                    break;
                }
            default:
                GapComposer gapComposer10 = (GapComposer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                if (!gapComposer10.shouldExecute(intValue10 & 1, (intValue10 & 3) != 2)) {
                    gapComposer10.skipToGroupEnd();
                    break;
                } else {
                    boolean changed3 = gapComposer10.changed(function0);
                    Object rememberedValue3 = gapComposer10.rememberedValue();
                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new SearchResultsScreenKt$$ExternalSyntheticLambda1(16, function0);
                        gapComposer10.updateRememberedValue(rememberedValue3);
                    }
                    CardKt.IconButton((Function0) rememberedValue3, null, false, null, null, YearInReviewDialog.f85lambda$692359811, gapComposer10, 1572864, 62);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda16(Function0 function0, int i, byte b) {
        this.$r8$classId = i;
        this.f$0 = function0;
    }
}
