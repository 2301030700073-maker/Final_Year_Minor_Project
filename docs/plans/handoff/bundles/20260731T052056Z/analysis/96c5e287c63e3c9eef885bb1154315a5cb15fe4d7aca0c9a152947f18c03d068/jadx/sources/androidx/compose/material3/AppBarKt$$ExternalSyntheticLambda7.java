package androidx.compose.material3;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemScopeImpl;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.wikipedia.R;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.compose.components.OnboardingItem;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.onboarding.ExploreFeedUpdatePromptActivityKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AppBarKt$$ExternalSyntheticLambda7 implements Function3 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ AppBarKt$$ExternalSyntheticLambda7(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        float f = RecyclerView.DECELERATION_RATE;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        final int i2 = 1;
        switch (i) {
            case 0:
                MeasureScope measureScope = (MeasureScope) obj;
                Placeable mo512measureBRTryo0 = ((Measurable) obj2).mo512measureBRTryo0(((Constraints) obj3).value);
                float f2 = mo512measureBRTryo0.height + RecyclerView.DECELERATION_RATE;
                if (f2 >= RecyclerView.DECELERATION_RATE) {
                    f = f2;
                }
                return measureScope.layout(mo512measureBRTryo0.width, UnsignedKt.roundToInt(f), emptyMap, new AppBarKt$$ExternalSyntheticLambda12(mo512measureBRTryo0, 0));
            case 1:
                ContextMenuColors contextMenuColors = (ContextMenuColors) obj;
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                if ((intValue & 6) == 0) {
                    intValue |= gapComposer.changed(contextMenuColors) ? 4 : 2;
                }
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    BoxKt.Box(ImageKt.m46backgroundbw27NRU(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(OffsetKt.m134paddingVpY3zN4$default(companion, RecyclerView.DECELERATION_RATE, ContextMenuSpec.DividerVerticalPadding, 1), 1.0f), ContextMenuSpec.DividerHeight), contextMenuColors.iconColor, ColorKt.RectangleShape), gapComposer, 0);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 2:
                MeasureScope measureScope2 = (MeasureScope) obj;
                final int mo81roundToPx0680j_4 = measureScope2.mo81roundToPx0680j_4(10.0f);
                int i3 = mo81roundToPx0680j_4 * 2;
                final Placeable mo512measureBRTryo02 = ((Measurable) obj2).mo512measureBRTryo0(ConstraintsKt.m690offsetNN6EwU(i3, 0, ((Constraints) obj3).value));
                return measureScope2.layout(mo512measureBRTryo02.width - i3, mo512measureBRTryo02.height, emptyMap, new Function1() { // from class: androidx.compose.material3.internal.AccessibilityUtilKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        int i4 = i2;
                        Unit unit2 = Unit.INSTANCE;
                        int i5 = mo81roundToPx0680j_4;
                        Placeable placeable = mo512measureBRTryo02;
                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj4;
                        switch (i4) {
                            case 0:
                                Placeable.PlacementScope.place$default(placementScope, placeable, 0, -i5);
                                break;
                            default:
                                Placeable.PlacementScope.place$default(placementScope, placeable, -i5, 0);
                                break;
                        }
                        return unit2;
                    }
                });
            case 3:
                MeasureScope measureScope3 = (MeasureScope) obj;
                final int mo81roundToPx0680j_42 = measureScope3.mo81roundToPx0680j_4(10.0f);
                int i4 = mo81roundToPx0680j_42 * 2;
                final Placeable mo512measureBRTryo03 = ((Measurable) obj2).mo512measureBRTryo0(ConstraintsKt.m690offsetNN6EwU(0, i4, ((Constraints) obj3).value));
                int i5 = mo512measureBRTryo03.height - i4;
                int i6 = mo512measureBRTryo03.width;
                final int i7 = r4 ? 1 : 0;
                return measureScope3.layout(i6, i5, emptyMap, new Function1() { // from class: androidx.compose.material3.internal.AccessibilityUtilKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        int i42 = i7;
                        Unit unit2 = Unit.INSTANCE;
                        int i52 = mo81roundToPx0680j_42;
                        Placeable placeable = mo512measureBRTryo03;
                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj4;
                        switch (i42) {
                            case 0:
                                Placeable.PlacementScope.place$default(placementScope, placeable, 0, -i52);
                                break;
                            default:
                                Placeable.PlacementScope.place$default(placementScope, placeable, -i52, 0);
                                break;
                        }
                        return unit2;
                    }
                });
            case 4:
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.activity_tab_menu_customize_description, gapComposer2), OffsetKt.m136paddingqDBjuR0$default(OffsetKt.m134paddingVpY3zN4$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 16.0f, 7), ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodySmall, gapComposer2, 48, 0, 131064);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 5:
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_user_avatar, 0, gapComposer3), null, SizeKt.m145size3ABfNKs(companion2, 20.0f), Color.White, gapComposer3, 3512, 0);
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.create_account_button, gapComposer3), OffsetKt.m136paddingqDBjuR0$default(companion2, 6.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer3.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer3, 48, 0, 131068);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 6:
                GapComposer gapComposer4 = (GapComposer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.menu_login, gapComposer4), OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 6.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer4, 48, 0, 131068);
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 7:
                GapComposer gapComposer5 = (GapComposer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                    ImpactModuleKt.m893ActivityTabShimmerViewkHDZbjc(RecyclerView.DECELERATION_RATE, gapComposer5, 0, 1);
                } else {
                    gapComposer5.skipToGroupEnd();
                }
                return unit;
            case 8:
                GapComposer gapComposer6 = (GapComposer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 17) != 16)) {
                    ImpactModuleKt.m893ActivityTabShimmerViewkHDZbjc(RecyclerView.DECELERATION_RATE, gapComposer6, 0, 1);
                } else {
                    gapComposer6.skipToGroupEnd();
                }
                return unit;
            case 9:
                GapComposer gapComposer7 = (GapComposer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 17) != 16)) {
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 16.0f, 1);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                    long j = gapComposer7.compositeKeyHashCode;
                    int i8 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer7.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer7, m134paddingVpY3zN4$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer7.startReusableNode();
                    if (gapComposer7.inserting) {
                        gapComposer7.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer7.useNode();
                    }
                    Updater.m327setimpl(gapComposer7, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer7, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer7, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer7, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer7, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    ProgressIndicatorKt.m290CircularProgressIndicator4lLiAd8(null, ((WikipediaColor) gapComposer7.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, RecyclerView.DECELERATION_RATE, 0L, 0, RecyclerView.DECELERATION_RATE, gapComposer7, 0, 61);
                    gapComposer7.end(true);
                } else {
                    gapComposer7.skipToGroupEnd();
                }
                return unit;
            case 10:
                GapComposer gapComposer8 = (GapComposer) obj2;
                int intValue8 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 17) != 16)) {
                    Modifier.Companion companion3 = Modifier.Companion.$$INSTANCE;
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_mode_edit_white_24dp, 0, gapComposer8), null, SizeKt.m145size3ABfNKs(companion3, 20.0f), Color.White, gapComposer8, 3512, 0);
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.activity_tab_impact_suggested_edits_button, gapComposer8), OffsetKt.m136paddingqDBjuR0$default(companion3, 6.0f, 4.0f, RecyclerView.DECELERATION_RATE, 4.0f, 4), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer8.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer8, 48, 0, 131068);
                } else {
                    gapComposer8.skipToGroupEnd();
                }
                return unit;
            case 11:
                GapComposer gapComposer9 = (GapComposer) obj2;
                int intValue9 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (gapComposer9.shouldExecute(intValue9 & 1, (intValue9 & 17) != 16)) {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.activity_tab_explore_wikipedia, gapComposer9), null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer9.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer9, 0, 0, 131070);
                } else {
                    gapComposer9.skipToGroupEnd();
                }
                return unit;
            case 12:
                GapComposer gapComposer10 = (GapComposer) obj2;
                int intValue10 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (gapComposer10.shouldExecute(intValue10 & 1, (intValue10 & 17) != 16)) {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.activity_tab_play_wiki_games, gapComposer10), OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 6.0f, 4.0f, RecyclerView.DECELERATION_RATE, 4.0f, 4), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer10.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer10, 48, 0, 131068);
                } else {
                    gapComposer10.skipToGroupEnd();
                }
                return unit;
            case IMAGE_VALUE:
                GapComposer gapComposer11 = (GapComposer) obj2;
                int intValue11 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (gapComposer11.shouldExecute(intValue11 & 1, (intValue11 & 17) != 16)) {
                    Modifier.Companion companion4 = Modifier.Companion.$$INSTANCE;
                    Modifier m134paddingVpY3zN4$default2 = OffsetKt.m134paddingVpY3zN4$default(companion4, 16.0f, RecyclerView.DECELERATION_RATE, 2);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer11, 48);
                    long j2 = gapComposer11.compositeKeyHashCode;
                    int i9 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer11.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer11, m134paddingVpY3zN4$default2);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer11.startReusableNode();
                    if (gapComposer11.inserting) {
                        gapComposer11.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer11.useNode();
                    }
                    Updater.m327setimpl(gapComposer11, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer11, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer11, Integer.valueOf(i9), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer11, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer11, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_person_filled_24, 0, gapComposer11), null, SizeKt.m145size3ABfNKs(companion4, 18.0f), 0L, gapComposer11, 440, 8);
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.on_this_day_game_stats_log_in_prompt_card_button, gapComposer11), OffsetKt.m136paddingqDBjuR0$default(companion4, 6.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer11.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer11, 48, 0, 131068);
                    gapComposer11.end(true);
                } else {
                    gapComposer11.skipToGroupEnd();
                }
                return unit;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                GapComposer gapComposer12 = (GapComposer) obj2;
                int intValue12 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (gapComposer12.shouldExecute(intValue12 & 1, (intValue12 & 17) != 16)) {
                    Modifier.Companion companion5 = Modifier.Companion.$$INSTANCE;
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.filled_difference_24, 0, gapComposer12), null, SizeKt.m145size3ABfNKs(companion5, 20.0f), ((WikipediaColor) gapComposer12.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, gapComposer12, 440, 0);
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.activity_tab_timeline_view_changes_button, gapComposer12), OffsetKt.m136paddingqDBjuR0$default(companion5, 6.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer12, 48, 0, 262140);
                } else {
                    gapComposer12.skipToGroupEnd();
                }
                return unit;
            case 15:
                GapComposer gapComposer13 = (GapComposer) obj2;
                int intValue13 = ((Integer) obj3).intValue();
                ((BoxScope) obj).getClass();
                if (gapComposer13.shouldExecute(intValue13 & 1, (intValue13 & 17) != 16)) {
                    ImageKt.Image(UnsignedKt.painterResource(R.drawable.reading_challenge_blur_background, 0, gapComposer13), null, SizeKt.FillWholeMaxSize, null, ContentScale.Companion.FillWidth, RecyclerView.DECELERATION_RATE, null, gapComposer13, 25016, 104);
                } else {
                    gapComposer13.skipToGroupEnd();
                }
                return unit;
            case LAZY_VERTICAL_GRID_VALUE:
                GapComposer gapComposer14 = (GapComposer) obj2;
                int intValue14 = ((Integer) obj3).intValue();
                ((BoxScope) obj).getClass();
                if (gapComposer14.shouldExecute(intValue14 & 1, (intValue14 & 17) != 16)) {
                    ImageKt.Image(UnsignedKt.painterResource(R.drawable.reading_challenge_blur_background, 0, gapComposer14), null, SizeKt.FillWholeMaxSize, null, ContentScale.Companion.FillWidth, RecyclerView.DECELERATION_RATE, null, gapComposer14, 25016, 104);
                } else {
                    gapComposer14.skipToGroupEnd();
                }
                return unit;
            case VERTICAL_GRID_ITEM_VALUE:
                GapComposer gapComposer15 = (GapComposer) obj2;
                int intValue15 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer15.shouldExecute(intValue15 & 1, (intValue15 & 17) != 16)) {
                    gapComposer15.skipToGroupEnd();
                }
                return unit;
            case RADIO_GROUP_VALUE:
                GapComposer gapComposer16 = (GapComposer) obj2;
                int intValue16 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer16.shouldExecute(intValue16 & 1, (intValue16 & 17) != 16)) {
                    gapComposer16.skipToGroupEnd();
                }
                return unit;
            case RADIO_BUTTON_VALUE:
                GapComposer gapComposer17 = (GapComposer) obj2;
                int intValue17 = ((Integer) obj3).intValue();
                ((String) obj).getClass();
                if (gapComposer17.shouldExecute(intValue17 & 1, (intValue17 & 17) != 16)) {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_heart_24, 0, gapComposer17), null, OffsetKt.m136paddingqDBjuR0$default(SizeKt.m145size3ABfNKs(companion, 20.0f), 4.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14), ((WikipediaColor) gapComposer17.consume(WikipediaColorKt.LocalWikipediaColor)).destructiveColor, gapComposer17, 440, 0);
                } else {
                    gapComposer17.skipToGroupEnd();
                }
                return unit;
            case RADIO_ROW_VALUE:
                GapComposer gapComposer18 = (GapComposer) obj2;
                int intValue18 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (gapComposer18.shouldExecute(intValue18 & 1, (intValue18 & 17) != 16)) {
                    TextKt.m308TextNvy7gAk("Done", null, ((WikipediaColor) gapComposer18.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer18, 6, 0, 262138);
                } else {
                    gapComposer18.skipToGroupEnd();
                }
                return unit;
            case RADIO_COLUMN_VALUE:
                GapComposer gapComposer19 = (GapComposer) obj2;
                int intValue19 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (gapComposer19.shouldExecute(intValue19 & 1, (intValue19 & 17) != 16)) {
                    OffsetKt.Spacer(gapComposer19, SizeKt.m140height3ABfNKs(companion, 16.0f));
                } else {
                    gapComposer19.skipToGroupEnd();
                }
                return unit;
            case SIZE_BOX_VALUE:
                GapComposer gapComposer20 = (GapComposer) obj2;
                int intValue20 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (gapComposer20.shouldExecute(intValue20 & 1, (intValue20 & 17) != 16)) {
                    OffsetKt.Spacer(gapComposer20, SizeKt.m140height3ABfNKs(companion, 16.0f));
                } else {
                    gapComposer20.skipToGroupEnd();
                }
                return unit;
            case 23:
                GapComposer gapComposer21 = (GapComposer) obj2;
                int intValue21 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (!gapComposer21.shouldExecute(intValue21 & 1, (intValue21 & 17) != 16)) {
                    gapComposer21.skipToGroupEnd();
                }
                return unit;
            case 24:
                PaddingValues paddingValues = (PaddingValues) obj;
                GapComposer gapComposer22 = (GapComposer) obj2;
                int intValue22 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue22 & 6) == 0) {
                    intValue22 |= gapComposer22.changed(paddingValues) ? 4 : 2;
                }
                if (gapComposer22.shouldExecute(intValue22 & 1, (intValue22 & 19) != 18)) {
                    float f3 = 24.0f;
                    Modifier scroll$default = ImageKt.scroll$default(OffsetKt.m134paddingVpY3zN4$default(OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues), 24.0f, RecyclerView.DECELERATION_RATE, 2), ImageKt.rememberScrollState(gapComposer22), true);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer22, 0);
                    long j3 = gapComposer22.compositeKeyHashCode;
                    int i10 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer22.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer22, scroll$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                    gapComposer22.startReusableNode();
                    if (gapComposer22.inserting) {
                        gapComposer22.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer22.useNode();
                    }
                    Updater.m327setimpl(gapComposer22, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer22, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer22, Integer.valueOf(i10), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer22, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer22, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                    Modifier.Companion companion6 = Modifier.Companion.$$INSTANCE;
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.explore_feed_new_update_prompt_title, gapComposer22), OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion6, 1.0f), RecyclerView.DECELERATION_RATE, 58.0f, RecyclerView.DECELERATION_RATE, 32.0f, 5), ((WikipediaColor) gapComposer22.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer22.consume(TypographyKt.LocalTypography)).headlineLarge, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211), gapComposer22, 48, 0, 130040);
                    gapComposer22.startReplaceGroup(968188596);
                    Iterator it = ExploreFeedUpdatePromptActivityKt.onboardingItems.iterator();
                    while (it.hasNext()) {
                        Modifier.Companion companion7 = companion6;
                        float f4 = f3;
                        TabsBoxKt.OnboardingListItem(OffsetKt.m136paddingqDBjuR0$default(companion7, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, f4, 7), (OnboardingItem) it.next(), gapComposer22, 6, 0);
                        companion6 = companion7;
                        f3 = f4;
                    }
                    gapComposer22.end(false);
                    gapComposer22.end(true);
                } else {
                    gapComposer22.skipToGroupEnd();
                }
                return unit;
            case 25:
                GapComposer gapComposer23 = (GapComposer) obj2;
                int intValue23 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (gapComposer23.shouldExecute(intValue23 & 1, (intValue23 & 17) != 16)) {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.onboarding_skip, gapComposer23), null, ((WikipediaColor) gapComposer23.consume(WikipediaColorKt.LocalWikipediaColor)).placeholderColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer23, 0, 0, 262138);
                } else {
                    gapComposer23.skipToGroupEnd();
                }
                return unit;
            case 26:
                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj;
                GapComposer gapComposer24 = (GapComposer) obj2;
                int intValue24 = ((Integer) obj3).intValue();
                lazyItemScopeImpl.getClass();
                if ((intValue24 & 6) == 0) {
                    intValue24 |= gapComposer24.changed(lazyItemScopeImpl) ? 4 : 2;
                }
                if (gapComposer24.shouldExecute(intValue24 & 1, (intValue24 & 19) != 18)) {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.explore_feed_personalized_preference_empty_state_text, gapComposer24), LazyItemScope$CC.fillParentMaxWidth$default(lazyItemScopeImpl), ((WikipediaColor) gapComposer24.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer24.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer24, 0, 0, 131064);
                } else {
                    gapComposer24.skipToGroupEnd();
                }
                return unit;
            case 27:
                GapComposer gapComposer25 = (GapComposer) obj2;
                int intValue25 = ((Integer) obj3).intValue();
                ((LazyStaggeredGridItemScopeImpl) obj).getClass();
                if (gapComposer25.shouldExecute(intValue25 & 1, (intValue25 & 17) != 16)) {
                    OffsetKt.Spacer(gapComposer25, SizeKt.m140height3ABfNKs(companion, 64.0f));
                } else {
                    gapComposer25.skipToGroupEnd();
                }
                return unit;
            case 28:
                GapComposer gapComposer26 = (GapComposer) obj2;
                int intValue26 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (gapComposer26.shouldExecute(intValue26 & 1, (intValue26 & 17) != 16)) {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.explore_feed_deselect_all_button_label, gapComposer26), ClipKt.clip(companion, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f)), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer26.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer26, 0, 0, 131068);
                } else {
                    gapComposer26.skipToGroupEnd();
                }
                return unit;
            default:
                MeasureScope measureScope4 = (MeasureScope) obj;
                Measurable measurable = (Measurable) obj2;
                Constraints constraints = (Constraints) obj3;
                measureScope4.getClass();
                measurable.getClass();
                int mo81roundToPx0680j_43 = measureScope4.mo81roundToPx0680j_4(16.0f) * 2;
                long j4 = constraints.value;
                Placeable mo512measureBRTryo04 = measurable.mo512measureBRTryo0(Constraints.m674copyZbe2FdA$default(j4, Constraints.m683getMinWidthimpl(j4) + mo81roundToPx0680j_43, Constraints.m681getMaxWidthimpl(constraints.value) + mo81roundToPx0680j_43, 0, 0, 12));
                return measureScope4.layout(mo512measureBRTryo04.width, mo512measureBRTryo04.height, emptyMap, new AppBarKt$$ExternalSyntheticLambda12(mo512measureBRTryo04, 15));
        }
    }
}
