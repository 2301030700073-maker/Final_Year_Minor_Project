package org.wikipedia.feed.wikigames;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuPopupPositionProviderKt;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FlowRowScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.material3.internal.TextFieldImplKt$$ExternalSyntheticLambda9;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.LazyWindowInfo;
import androidx.compose.ui.platform.WindowInfo;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.TextAlign;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.UtilsKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.wikigames.OnThisDayCardGameState;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda10;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda23;
import org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda33;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.util.UiState;
import org.wikipedia.yearinreview.YearInReviewDialog;
import org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda11;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnThisDayGameKt$$ExternalSyntheticLambda13 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ OnThisDayGameKt$$ExternalSyntheticLambda13(Context context, String str, UiState uiState, Function0 function0) {
        this.$r8$classId = 5;
        this.f$2 = context;
        this.f$1 = str;
        this.f$3 = uiState;
        this.f$0 = function0;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean z;
        int i = this.$r8$classId;
        float f = 1.0f;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Modifier modifier = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$0;
        Object obj5 = this.f$3;
        Object obj6 = this.f$1;
        Object obj7 = this.f$2;
        switch (i) {
            case 0:
                Function0 function0 = (Function0) obj4;
                Function0 function02 = (Function0) obj6;
                final Context context = (Context) obj7;
                final OnThisDayCardGameState.Completed completed = (OnThisDayCardGameState.Completed) obj5;
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((FlowRowScopeInstance) obj).getClass();
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    final int i2 = 0;
                    CardKt.FilledTonalButton(function0, null, false, null, ButtonDefaults.m261filledTonalButtonColorsro_MJ88(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).backgroundColor, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor, gapComposer), null, null, Expect_jvmKt.rememberComposableLambda(-1994841129, new Function3() { // from class: org.wikipedia.feed.wikigames.OnThisDayGameKt$$ExternalSyntheticLambda15
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj8, Object obj9, Object obj10) {
                            int i3 = i2;
                            Unit unit2 = Unit.INSTANCE;
                            OnThisDayCardGameState.Completed completed2 = completed;
                            Context context2 = context;
                            switch (i3) {
                                case 0:
                                    GapComposer gapComposer2 = (GapComposer) obj9;
                                    int intValue2 = ((Integer) obj10).intValue();
                                    ((RowScope) obj8).getClass();
                                    if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                        gapComposer2.skipToGroupEnd();
                                        break;
                                    } else {
                                        TextKt.m308TextNvy7gAk(ContextKt.getString(context2, completed2.langCode, R.string.on_this_day_game_review_results_btn_text, new Object[0]), null, 0L, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyLarge, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211), gapComposer2, 0, 0, 130046);
                                        break;
                                    }
                                default:
                                    GapComposer gapComposer3 = (GapComposer) obj9;
                                    int intValue3 = ((Integer) obj10).intValue();
                                    ((RowScope) obj8).getClass();
                                    if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                        gapComposer3.skipToGroupEnd();
                                        break;
                                    } else {
                                        TextKt.m308TextNvy7gAk(ContextKt.getString(context2, completed2.langCode, R.string.on_this_day_game_archive_btn_text, new Object[0]), null, 0L, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer3.consume(TypographyKt.LocalTypography)).bodyLarge, ((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777210), gapComposer3, 0, 0, 130046);
                                        break;
                                    }
                            }
                            return unit2;
                        }
                    }, gapComposer), gapComposer, 805306368, 494);
                    final int i3 = 1;
                    CardKt.TextButton(function02, null, false, null, null, null, Expect_jvmKt.rememberComposableLambda(-1494099444, new Function3() { // from class: org.wikipedia.feed.wikigames.OnThisDayGameKt$$ExternalSyntheticLambda15
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj8, Object obj9, Object obj10) {
                            int i32 = i3;
                            Unit unit2 = Unit.INSTANCE;
                            OnThisDayCardGameState.Completed completed2 = completed;
                            Context context2 = context;
                            switch (i32) {
                                case 0:
                                    GapComposer gapComposer2 = (GapComposer) obj9;
                                    int intValue2 = ((Integer) obj10).intValue();
                                    ((RowScope) obj8).getClass();
                                    if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                        gapComposer2.skipToGroupEnd();
                                        break;
                                    } else {
                                        TextKt.m308TextNvy7gAk(ContextKt.getString(context2, completed2.langCode, R.string.on_this_day_game_review_results_btn_text, new Object[0]), null, 0L, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyLarge, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211), gapComposer2, 0, 0, 130046);
                                        break;
                                    }
                                default:
                                    GapComposer gapComposer3 = (GapComposer) obj9;
                                    int intValue3 = ((Integer) obj10).intValue();
                                    ((RowScope) obj8).getClass();
                                    if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                        gapComposer3.skipToGroupEnd();
                                        break;
                                    } else {
                                        TextKt.m308TextNvy7gAk(ContextKt.getString(context2, completed2.langCode, R.string.on_this_day_game_archive_btn_text, new Object[0]), null, 0L, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer3.consume(TypographyKt.LocalTypography)).bodyLarge, ((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777210), gapComposer3, 0, 0, 130046);
                                        break;
                                    }
                            }
                            return unit2;
                        }
                    }, gapComposer), gapComposer, 805306368, 510);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 1:
                Function2 function2 = (Function2) obj6;
                ContextMenuScope contextMenuScope = (ContextMenuScope) obj7;
                Function3 function3 = (Function3) obj5;
                Function0 function03 = (Function0) obj4;
                ContextMenuColors contextMenuColors = (ContextMenuColors) obj;
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= gapComposer2.changed(contextMenuColors) ? 4 : 2;
                }
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    String str = (String) function2.invoke(gapComposer2, 0);
                    if (StringsKt.isBlank(str)) {
                        InlineClassHelperKt.throwIllegalStateException("Label must not be blank");
                    }
                    contextMenuScope.getClass();
                    ContextMenuPopupPositionProviderKt.f1lambda$1571120048.invoke(str, Boolean.TRUE, contextMenuColors, function3, function03, gapComposer2, Integer.valueOf((intValue2 << 9) & 7168));
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 2:
                SolidColor solidColor = (SolidColor) obj4;
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj6;
                TextFieldValue textFieldValue = (TextFieldValue) obj7;
                long j = textFieldValue.selection;
                OffsetMapping offsetMapping = (OffsetMapping) obj5;
                Modifier modifier2 = (Modifier) obj;
                GapComposer gapComposer3 = (GapComposer) obj2;
                ((Integer) obj3).getClass();
                gapComposer3.startReplaceGroup(-84507373);
                boolean booleanValue = ((Boolean) gapComposer3.consume(CompositionLocalsKt.LocalCursorBlinkEnabled)).booleanValue();
                boolean changed = gapComposer3.changed(booleanValue);
                Object rememberedValue = gapComposer3.rememberedValue();
                if (changed || rememberedValue == neverEqualPolicy) {
                    rememberedValue = new CursorAnimationState(booleanValue);
                    gapComposer3.updateRememberedValue(rememberedValue);
                }
                CursorAnimationState cursorAnimationState = (CursorAnimationState) rememberedValue;
                boolean z2 = solidColor.value != 16;
                if (((Boolean) ((LazyWindowInfo) ((WindowInfo) gapComposer3.consume(CompositionLocalsKt.LocalWindowInfo))).isWindowFocused$delegate.getValue()).booleanValue() && legacyTextFieldState.getHasFocus() && TextRange.m641getCollapsedimpl(j) && z2) {
                    gapComposer3.startReplaceGroup(-707487962);
                    AnnotatedString annotatedString = textFieldValue.annotatedString;
                    TextRange textRange = new TextRange(j);
                    boolean changedInstance = gapComposer3.changedInstance(cursorAnimationState);
                    Object rememberedValue2 = gapComposer3.rememberedValue();
                    if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new ThumbNode$onAttach$1(9, cursorAnimationState, null);
                        gapComposer3.updateRememberedValue(rememberedValue2);
                    }
                    Updater.LaunchedEffect(annotatedString, textRange, (Function2) rememberedValue2, gapComposer3);
                    boolean changedInstance2 = gapComposer3.changedInstance(cursorAnimationState) | gapComposer3.changedInstance(offsetMapping) | gapComposer3.changed(textFieldValue) | gapComposer3.changedInstance(legacyTextFieldState) | gapComposer3.changed(solidColor);
                    Object rememberedValue3 = gapComposer3.rememberedValue();
                    if (changedInstance2 || rememberedValue3 == neverEqualPolicy) {
                        GamesHubScreenKt$$ExternalSyntheticLambda23 gamesHubScreenKt$$ExternalSyntheticLambda23 = new GamesHubScreenKt$$ExternalSyntheticLambda23(cursorAnimationState, offsetMapping, textFieldValue, legacyTextFieldState, solidColor, 3);
                        gapComposer3.updateRememberedValue(gamesHubScreenKt$$ExternalSyntheticLambda23);
                        rememberedValue3 = gamesHubScreenKt$$ExternalSyntheticLambda23;
                    }
                    modifier = ClipKt.drawWithContent(modifier2, (Function1) rememberedValue3);
                    z = false;
                    gapComposer3.end(false);
                } else {
                    z = false;
                    gapComposer3.startReplaceGroup(-705473241);
                    gapComposer3.end(false);
                }
                gapComposer3.end(z);
                return modifier;
            case 3:
                List list = (List) obj4;
                Context context2 = (Context) obj7;
                String str2 = (String) obj6;
                Function1 function1 = (Function1) obj5;
                GapComposer gapComposer4 = (GapComposer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((FlowRowScopeInstance) obj).getClass();
                if (gapComposer4.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    Iterator it = list.iterator();
                    int i4 = 0;
                    while (it.hasNext()) {
                        Object next = it.next();
                        int i5 = i4 + 1;
                        if (i4 < 0) {
                            Room.throwIndexOverflow();
                            throw null;
                        }
                        String string = ContextKt.getString(context2, str2, ((Number) next).intValue(), new Object[0]);
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
                        Modifier clip = ClipKt.clip(ImageKt.m48borderxT4_qwU(modifier, f, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal2)).borderColor, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f)), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f));
                        boolean changed2 = gapComposer4.changed(function1) | gapComposer4.changed(string);
                        Object rememberedValue4 = gapComposer4.rememberedValue();
                        if (changed2 || rememberedValue4 == neverEqualPolicy) {
                            rememberedValue4 = new GamesHubScreenKt$$ExternalSyntheticLambda10(function1, string, 1);
                            gapComposer4.updateRememberedValue(rememberedValue4);
                        }
                        Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, clip, null, (Function0) rememberedValue4, false);
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                        Context context3 = context2;
                        Iterator it2 = it;
                        long j2 = gapComposer4.compositeKeyHashCode;
                        int i6 = (int) (j2 ^ (j2 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer4.currentCompositionLocalScope();
                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer4, m51clickableoSLSa3U$default);
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
                        Updater.m327setimpl(gapComposer4, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m326reconcileimpl(gapComposer4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m327setimpl(gapComposer4, materializeModifier, ComposeUiNode.Companion.SetModifier);
                        GapComposer gapComposer5 = gapComposer4;
                        TextKt.m308TextNvy7gAk(string, OffsetKt.m133paddingVpY3zN4(modifier, 16.0f, 6.0f), ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal2)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).bodyMedium, gapComposer5, 48, 0, 131064);
                        gapComposer5.end(true);
                        it = it2;
                        gapComposer4 = gapComposer5;
                        context2 = context3;
                        i4 = i5;
                        f = 1.0f;
                    }
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 4:
                Function0 function04 = (Function0) obj4;
                Function0 function05 = (Function0) obj6;
                Function0 function06 = (Function0) obj7;
                Function0 function07 = (Function0) obj5;
                PaddingValues paddingValues = (PaddingValues) obj;
                GapComposer gapComposer6 = (GapComposer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue4 & 6) == 0) {
                    intValue4 |= gapComposer6.changed(paddingValues) ? 4 : 2;
                }
                if (gapComposer6.shouldExecute(intValue4 & 1, (intValue4 & 19) != 18)) {
                    Modifier scroll$default = ImageKt.scroll$default(OffsetKt.m136paddingqDBjuR0$default(OffsetKt.padding(modifier, paddingValues), RecyclerView.DECELERATION_RATE, 24.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), ImageKt.rememberScrollState(gapComposer6), true);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(34.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer6, 6);
                    long j3 = gapComposer6.compositeKeyHashCode;
                    int i7 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer6.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer6, scroll$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer6.startReusableNode();
                    if (gapComposer6.inserting) {
                        gapComposer6.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer6.useNode();
                    }
                    Updater.m327setimpl(gapComposer6, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer6, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer6, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer6, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer6, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    TabsBoxKt.SettingsRow(UtilsKt.stringResource(R.string.home_feed_settings_default_view_title, gapComposer6), null, UtilsKt.stringResource(R.string.home_feed_settings_default_view_subtitle, gapComposer6), function04, null, null, gapComposer6, 0, 50);
                    TabsBoxKt.SettingsSection(UtilsKt.stringResource(R.string.explore_feed_community_tab_label, gapComposer6), Expect_jvmKt.rememberComposableLambda(-915837959, new TextFieldImplKt$$ExternalSyntheticLambda9(r7, function05), gapComposer6), gapComposer6, 48);
                    TabsBoxKt.SettingsSection(UtilsKt.stringResource(R.string.explore_feed_for_you_tab_label, gapComposer6), Expect_jvmKt.rememberComposableLambda(1845199842, new HybridSearchResultsScreenKt$$ExternalSyntheticLambda33(function06, function07, 1), gapComposer6), gapComposer6, 48);
                    gapComposer6.end(true);
                } else {
                    gapComposer6.skipToGroupEnd();
                }
                return unit;
            default:
                Context context4 = (Context) obj7;
                String str3 = (String) obj6;
                UiState uiState = (UiState) obj5;
                Function0 function08 = (Function0) obj4;
                GapComposer gapComposer7 = (GapComposer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (gapComposer7.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                    Arrangement$End$1 arrangement$End$1 = OffsetKt.SpaceBetween;
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(modifier, 1.0f), 10.0f, RecyclerView.DECELERATION_RATE, 2);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$End$1, Alignment.Companion.Top, gapComposer7, 6);
                    long j4 = gapComposer7.compositeKeyHashCode;
                    int i8 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer7.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer7, m134paddingVpY3zN4$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                    gapComposer7.startReusableNode();
                    if (gapComposer7.inserting) {
                        gapComposer7.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer7.useNode();
                    }
                    Updater.m327setimpl(gapComposer7, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer7, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer7, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer7, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer7, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                    PaddingValuesImpl paddingValuesImpl2 = ButtonDefaults.ContentPadding;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
                    ButtonColors m260buttonColorsro_MJ88 = ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer7.consume(staticProvidableCompositionLocal3)).paperColor, ((WikipediaColor) gapComposer7.consume(staticProvidableCompositionLocal3)).progressiveColor, gapComposer7, 12);
                    Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(Animation.CC.weight$default$1(modifier, 1.0f), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 12.0f, RecyclerView.DECELERATION_RATE, 11);
                    boolean changedInstance3 = gapComposer7.changedInstance(context4) | gapComposer7.changed(str3);
                    Object rememberedValue5 = gapComposer7.rememberedValue();
                    if (changedInstance3 || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new YearInReviewGeoSlideKt$$ExternalSyntheticLambda11(1, context4, str3);
                        gapComposer7.updateRememberedValue(rememberedValue5);
                    }
                    CardKt.OutlinedButton((Function0) rememberedValue5, m136paddingqDBjuR0$default, false, null, m260buttonColorsro_MJ88, null, null, YearInReviewDialog.f83lambda$1777779794, gapComposer7, 805306368, 492);
                    ButtonColors m260buttonColorsro_MJ882 = ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer7.consume(staticProvidableCompositionLocal3)).progressiveColor, ((WikipediaColor) gapComposer7.consume(staticProvidableCompositionLocal3)).paperColor, gapComposer7, 12);
                    boolean z3 = !(uiState instanceof UiState.Loading);
                    Modifier m136paddingqDBjuR0$default2 = OffsetKt.m136paddingqDBjuR0$default(Animation.CC.weight$default$1(modifier, 1.0f), 12.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14);
                    boolean changed3 = gapComposer7.changed(function08);
                    Object rememberedValue6 = gapComposer7.rememberedValue();
                    if (changed3 || rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new SearchResultsScreenKt$$ExternalSyntheticLambda1(15, function08);
                        gapComposer7.updateRememberedValue(rememberedValue6);
                    }
                    CardKt.Button((Function0) rememberedValue6, m136paddingqDBjuR0$default2, z3, null, m260buttonColorsro_MJ882, null, null, null, YearInReviewDialog.f86lambda$878426452, gapComposer7, 805306368, 488);
                    gapComposer7.end(true);
                } else {
                    gapComposer7.skipToGroupEnd();
                }
                return unit;
        }
    }

    public /* synthetic */ OnThisDayGameKt$$ExternalSyntheticLambda13(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
    }

    public /* synthetic */ OnThisDayGameKt$$ExternalSyntheticLambda13(List list, Context context, String str, Function1 function1) {
        this.$r8$classId = 3;
        this.f$0 = list;
        this.f$2 = context;
        this.f$1 = str;
        this.f$3 = function1;
    }

    public /* synthetic */ OnThisDayGameKt$$ExternalSyntheticLambda13(Function2 function2, ContextMenuScope contextMenuScope, Function3 function3, Function0 function0) {
        this.$r8$classId = 1;
        this.f$1 = function2;
        this.f$2 = contextMenuScope;
        this.f$3 = function3;
        this.f$0 = function0;
    }
}
