package org.wikipedia.settings;

import android.location.Location;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import java.util.Locale;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function2;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.search.NoSearchResultsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Prefs$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Prefs$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Location location = (Location) obj;
                Location location2 = (Location) obj2;
                Double valueOf = location != null ? Double.valueOf(location.getLatitude()) : null;
                Double valueOf2 = location2 != null ? Double.valueOf(location2.getLatitude()) : null;
                if (valueOf != null ? !(valueOf2 == null || valueOf.doubleValue() != valueOf2.doubleValue()) : valueOf2 == null) {
                    Double valueOf3 = location != null ? Double.valueOf(location.getLongitude()) : null;
                    Double valueOf4 = location2 != null ? Double.valueOf(location2.getLongitude()) : null;
                    if (valueOf3 != null ? !(valueOf4 == null || valueOf3.doubleValue() != valueOf4.doubleValue()) : valueOf4 == null) {
                        r3 = true;
                    }
                }
                break;
            case 1:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.notifications_24dp, 0, gapComposer), UtilsKt.stringResource(R.string.recommended_reading_list_settings_updates_base_title, gapComposer), SizeKt.m145size3ABfNKs(Modifier.Companion.$$INSTANCE, 24.0f), ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer, 392, 0);
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
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 58.0f, RecyclerView.DECELERATION_RATE, 32.0f, 5), 12.0f, RecyclerView.DECELERATION_RATE, 2);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                    long j = gapComposer2.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
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
                    Integer valueOf5 = Integer.valueOf(i2);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer2, valueOf5, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f)), 10.0f, 1.0f);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    long j2 = gapComposer2.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m133paddingVpY3zN4);
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i3, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    String upperCase = UtilsKt.stringResource(R.string.hybrid_search_beta_tag, gapComposer2).toUpperCase(Locale.ROOT);
                    upperCase.getClass();
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
                    TextKt.m308TextNvy7gAk(upperCase, null, Color.White, null, 0L, FontWeight.Normal, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).labelSmall, gapComposer2, 1573248, 0, 131002);
                    gapComposer2.end(true);
                    OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 8.0f));
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.hybrid_search_onboarding_screen_title, gapComposer2), null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).headlineLarge, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211), gapComposer2, 0, 0, 131066);
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
                    ComposableLambdaImpl composableLambdaImpl = NoSearchResultsKt.f60lambda$2047687325;
                    float f = TopAppBarDefaults.TopAppBarExpandedHeight;
                    AppBarKt.m257TopAppBarGHTll3U(composableLambdaImpl, null, null, null, RecyclerView.DECELERATION_RATE, null, TopAppBarDefaults.m311topAppBarColors5tl4gsc(((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, 0L, gapComposer3, 62), null, gapComposer3, 6, 190);
                    break;
                }
            case 4:
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.hybrid_search_onboarding_learn_more, gapComposer4), null, ((WikipediaColor) gapComposer4.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer4, 0, 0, 131066);
                    break;
                }
            case 5:
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.hybrid_search_turn_off_experiment_label, gapComposer5), null, ((WikipediaColor) gapComposer5.consume(WikipediaColorKt.LocalWikipediaColor)).destructiveColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer5.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer5, 0, 0, 131066);
                    break;
                }
            case 6:
                GapComposer gapComposer6 = (GapComposer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Delete All", null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer6, 6, 0, 262142);
                    break;
                }
            case 7:
                GapComposer gapComposer7 = (GapComposer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Add Entry", null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer7, 6, 0, 262142);
                    break;
                }
            case 8:
                GapComposer gapComposer8 = (GapComposer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if (!gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Number of Rows", null, ((WikipediaColor) gapComposer8.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer8, 6, 0, 262138);
                    break;
                }
            case 9:
                GapComposer gapComposer9 = (GapComposer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                if (!gapComposer9.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    gapComposer9.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Year", null, ((WikipediaColor) gapComposer9.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer9, 6, 0, 262138);
                    break;
                }
            case 10:
                GapComposer gapComposer10 = (GapComposer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                if (!gapComposer10.shouldExecute(intValue10 & 1, (intValue10 & 3) != 2)) {
                    gapComposer10.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Add Random Entries", null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer10, 6, 0, 262142);
                    break;
                }
            case 11:
                GapComposer gapComposer11 = (GapComposer) obj;
                int intValue11 = ((Integer) obj2).intValue();
                if (!gapComposer11.shouldExecute(intValue11 & 1, (intValue11 & 3) != 2)) {
                    gapComposer11.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Years before", null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer11, 6, 0, 262142);
                    break;
                }
            case 12:
                GapComposer gapComposer12 = (GapComposer) obj;
                int intValue12 = ((Integer) obj2).intValue();
                if (!gapComposer12.shouldExecute(intValue12 & 1, (intValue12 & 3) != 2)) {
                    gapComposer12.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Delete Before", null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer12, 6, 0, 262142);
                    break;
                }
            case IMAGE_VALUE:
                GapComposer gapComposer13 = (GapComposer) obj;
                int intValue13 = ((Integer) obj2).intValue();
                if (!gapComposer13.shouldExecute(intValue13 & 1, (intValue13 & 3) != 2)) {
                    gapComposer13.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Year", null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer13, 6, 0, 262142);
                    break;
                }
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                GapComposer gapComposer14 = (GapComposer) obj;
                int intValue14 = ((Integer) obj2).intValue();
                if (!gapComposer14.shouldExecute(intValue14 & 1, (intValue14 & 3) != 2)) {
                    gapComposer14.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Filter", null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer14, 6, 0, 262142);
                    break;
                }
            case 15:
                GapComposer gapComposer15 = (GapComposer) obj;
                int intValue15 = ((Integer) obj2).intValue();
                if (!gapComposer15.shouldExecute(intValue15 & 1, (intValue15 & 3) != 2)) {
                    gapComposer15.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Title", null, ((WikipediaColor) gapComposer15.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer15, 6, 0, 262138);
                    break;
                }
            case LAZY_VERTICAL_GRID_VALUE:
                GapComposer gapComposer16 = (GapComposer) obj;
                int intValue16 = ((Integer) obj2).intValue();
                if (!gapComposer16.shouldExecute(intValue16 & 1, (intValue16 & 3) != 2)) {
                    gapComposer16.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("language code", null, ((WikipediaColor) gapComposer16.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer16, 6, 0, 262138);
                    break;
                }
            case VERTICAL_GRID_ITEM_VALUE:
                GapComposer gapComposer17 = (GapComposer) obj;
                int intValue17 = ((Integer) obj2).intValue();
                if (!gapComposer17.shouldExecute(intValue17 & 1, (intValue17 & 3) != 2)) {
                    gapComposer17.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Year", null, ((WikipediaColor) gapComposer17.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer17, 6, 0, 262138);
                    break;
                }
            case RADIO_GROUP_VALUE:
                GapComposer gapComposer18 = (GapComposer) obj;
                int intValue18 = ((Integer) obj2).intValue();
                if (!gapComposer18.shouldExecute(intValue18 & 1, (intValue18 & 3) != 2)) {
                    gapComposer18.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_back_black_24dp, 0, gapComposer18), UtilsKt.stringResource(R.string.nav_item_back, gapComposer18), null, ((WikipediaColor) gapComposer18.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer18, 8, 4);
                    break;
                }
            case RADIO_BUTTON_VALUE:
                GapComposer gapComposer19 = (GapComposer) obj;
                int intValue19 = ((Integer) obj2).intValue();
                if (!gapComposer19.shouldExecute(intValue19 & 1, (intValue19 & 3) != 2)) {
                    gapComposer19.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Yesterday", null, ((WikipediaColor) gapComposer19.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer19, 6, 0, 262138);
                    break;
                }
            case RADIO_ROW_VALUE:
                GapComposer gapComposer20 = (GapComposer) obj;
                int intValue20 = ((Integer) obj2).intValue();
                if (!gapComposer20.shouldExecute(intValue20 & 1, (intValue20 & 3) != 2)) {
                    gapComposer20.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("3 Days Ago", null, ((WikipediaColor) gapComposer20.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer20, 6, 0, 262138);
                    break;
                }
            case RADIO_COLUMN_VALUE:
                GapComposer gapComposer21 = (GapComposer) obj;
                int intValue21 = ((Integer) obj2).intValue();
                if (!gapComposer21.shouldExecute(intValue21 & 1, (intValue21 & 3) != 2)) {
                    gapComposer21.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Clear", null, ((WikipediaColor) gapComposer21.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer21, 6, 0, 262138);
                    break;
                }
            case SIZE_BOX_VALUE:
                GapComposer gapComposer22 = (GapComposer) obj;
                int intValue22 = ((Integer) obj2).intValue();
                if (!gapComposer22.shouldExecute(intValue22 & 1, (intValue22 & 3) != 2)) {
                    gapComposer22.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("YYYY-MM-DD", null, ((WikipediaColor) gapComposer22.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer22, 6, 0, 262138);
                    break;
                }
            case 23:
                GapComposer gapComposer23 = (GapComposer) obj;
                int intValue23 = ((Integer) obj2).intValue();
                if (!gapComposer23.shouldExecute(intValue23 & 1, (intValue23 & 3) != 2)) {
                    gapComposer23.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("YYYY-MM-DD", null, ((WikipediaColor) gapComposer23.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer23, 6, 0, 262138);
                    break;
                }
            case 24:
                GapComposer gapComposer24 = (GapComposer) obj;
                int intValue24 = ((Integer) obj2).intValue();
                if (!gapComposer24.shouldExecute(intValue24 & 1, (intValue24 & 3) != 2)) {
                    gapComposer24.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("−", null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer24, 6, 0, 262142);
                    break;
                }
            case 25:
                GapComposer gapComposer25 = (GapComposer) obj;
                int intValue25 = ((Integer) obj2).intValue();
                if (!gapComposer25.shouldExecute(intValue25 & 1, (intValue25 & 3) != 2)) {
                    gapComposer25.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("+", null, ((WikipediaColor) gapComposer25.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer25, 6, 0, 262138);
                    break;
                }
            case 26:
                GapComposer gapComposer26 = (GapComposer) obj;
                int intValue26 = ((Integer) obj2).intValue();
                if (!gapComposer26.shouldExecute(intValue26 & 1, (intValue26 & 3) != 2)) {
                    gapComposer26.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("YYYY-MM-DD", null, ((WikipediaColor) gapComposer26.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer26, 6, 0, 262138);
                    break;
                }
            case 27:
                GapComposer gapComposer27 = (GapComposer) obj;
                int intValue27 = ((Integer) obj2).intValue();
                if (!gapComposer27.shouldExecute(intValue27 & 1, (intValue27 & 3) != 2)) {
                    gapComposer27.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Today", null, ((WikipediaColor) gapComposer27.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer27, 6, 0, 262138);
                    break;
                }
            case 28:
                GapComposer gapComposer28 = (GapComposer) obj;
                int intValue28 = ((Integer) obj2).intValue();
                if (!gapComposer28.shouldExecute(intValue28 & 1, (intValue28 & 3) != 2)) {
                    gapComposer28.skipToGroupEnd();
                    break;
                }
                break;
            default:
                GapComposer gapComposer29 = (GapComposer) obj;
                int intValue29 = ((Integer) obj2).intValue();
                if (!gapComposer29.shouldExecute(intValue29 & 1, (intValue29 & 3) != 2)) {
                    gapComposer29.skipToGroupEnd();
                    break;
                }
                break;
        }
        return unit;
    }
}
