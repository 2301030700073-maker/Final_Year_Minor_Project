package org.wikipedia.yearinreview;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemScopeImpl;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.SimpleDropShadowElement;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.shadow.Shadow;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Fit$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.DpKt;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.appwidget.lazy.LazyListKt$applyListScope$1$1$2$1;
import androidx.glance.layout.HeightModifier;
import androidx.glance.layout.RowScopeImplInstance;
import androidx.glance.unit.Dimension;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function3;
import org.wikipedia.R;
import org.wikipedia.compose.ComposeColors;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2 implements Function3 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                PaddingValues paddingValues = (PaddingValues) obj;
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= gapComposer.changed(paddingValues) ? 4 : 2;
                }
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    YearInReviewDialog.YearInReviewOnboardingContent(OffsetKt.padding(companion, paddingValues), gapComposer, 0);
                    break;
                }
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.recommended_reading_list_interest_pick_title, gapComposer2), null, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).titleLarge, 0L, ContextsKt.getSp(20), FontWeight.Bold, null, 0L, 0L, null, 16777209), gapComposer2, 0, 0, 131066);
                break;
            case 2:
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((LazyStaggeredGridItemScopeImpl) obj).getClass();
                if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.recommended_reading_list_interest_pick_title, gapComposer3), OffsetKt.m135paddingqDBjuR0(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, 48.0f, 16.0f, 4.0f), ((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer3.consume(TypographyKt.LocalTypography)).titleLarge, gapComposer3, 0, 0, 130040);
                    break;
                }
            case 3:
                GapComposer gapComposer4 = (GapComposer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((LazyStaggeredGridItemScopeImpl) obj).getClass();
                if (!gapComposer4.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    OffsetKt.Spacer(gapComposer4, SizeKt.m140height3ABfNKs(companion, 64.0f));
                    break;
                }
            case 4:
                GapComposer gapComposer5 = (GapComposer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer5.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.hybrid_search_onboarding_learn_more, gapComposer5), null, ((WikipediaColor) gapComposer5.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer5.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer5, 0, 0, 130042);
                    break;
                }
            case 5:
                GapComposer gapComposer6 = (GapComposer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer6.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.onboarding_get_started, gapComposer6), null, ((WikipediaColor) gapComposer6.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer6.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer6, 0, 0, 130042);
                    break;
                }
            case 6:
                SnackbarHostState.SnackbarDataImpl snackbarDataImpl = (SnackbarHostState.SnackbarDataImpl) obj;
                GapComposer gapComposer7 = (GapComposer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                snackbarDataImpl.getClass();
                if ((intValue6 & 6) == 0) {
                    intValue6 |= gapComposer7.changed(snackbarDataImpl) ? 4 : 2;
                }
                if (!gapComposer7.shouldExecute(intValue6 & 1, (intValue6 & 19) != 18)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.Snackbar(0, gapComposer7, null, snackbarDataImpl.visuals.message);
                    break;
                }
            case 7:
                GapComposer gapComposer8 = (GapComposer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer8.shouldExecute(intValue7 & 1, (intValue7 & 17) != 16)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Save", null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer8, 6, 0, 262142);
                    break;
                }
            case 8:
                GapComposer gapComposer9 = (GapComposer) obj2;
                int intValue8 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer9.shouldExecute(intValue8 & 1, (intValue8 & 17) != 16)) {
                    gapComposer9.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Save", null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer9, 6, 0, 262142);
                    break;
                }
            case 9:
                GapComposer gapComposer10 = (GapComposer) obj2;
                int intValue9 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer10.shouldExecute(intValue9 & 1, (intValue9 & 17) != 16)) {
                    gapComposer10.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Reset All", null, ((WikipediaColor) gapComposer10.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer10, 6, 0, 262138);
                    break;
                }
            case 10:
                GapComposer gapComposer11 = (GapComposer) obj2;
                int intValue10 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer11.shouldExecute(intValue10 & 1, (intValue10 & 17) != 16)) {
                    gapComposer11.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Save", null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer11, 6, 0, 262142);
                    break;
                }
            case 11:
                BoxScope boxScope = (BoxScope) obj;
                GapComposer gapComposer12 = (GapComposer) obj2;
                int intValue11 = ((Integer) obj3).intValue();
                boxScope.getClass();
                if ((intValue11 & 6) == 0) {
                    intValue11 |= gapComposer12.changed(boxScope) ? 4 : 2;
                }
                if (!gapComposer12.shouldExecute(intValue11 & 1, (intValue11 & 19) != 18)) {
                    gapComposer12.skipToGroupEnd();
                    break;
                } else {
                    FillElement fillElement = SizeKt.FillWholeMaxSize;
                    Painter painterResource = UnsignedKt.painterResource(R.drawable.reading_challenge_blur_background, 0, gapComposer12);
                    ContentScale$Companion$Fit$1 contentScale$Companion$Fit$1 = ContentScale.Companion.FillWidth;
                    ImageKt.Image(painterResource, null, fillElement, null, contentScale$Companion$Fit$1, RecyclerView.DECELERATION_RATE, null, gapComposer12, 25016, 104);
                    ImageKt.Image(UnsignedKt.painterResource(R.drawable.widget_search, 0, gapComposer12), null, OffsetKt.m134paddingVpY3zN4$default(boxScope.align(companion, Alignment.Companion.Center), RecyclerView.DECELERATION_RATE, 24.0f, 1), null, contentScale$Companion$Fit$1, RecyclerView.DECELERATION_RATE, null, gapComposer12, 24632, 104);
                    break;
                }
            case 12:
                GapComposer gapComposer13 = (GapComposer) obj2;
                int intValue12 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer13.shouldExecute(intValue12 & 1, (intValue12 & 17) != 16)) {
                    gapComposer13.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.reading_challenge_install_prompt_got_it, gapComposer13), null, ((WikipediaColor) gapComposer13.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer13.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer13, 0, 0, 130042);
                    break;
                }
            case IMAGE_VALUE:
                BoxScope boxScope2 = (BoxScope) obj;
                GapComposer gapComposer14 = (GapComposer) obj2;
                int intValue13 = ((Integer) obj3).intValue();
                boxScope2.getClass();
                if ((intValue13 & 6) == 0) {
                    intValue13 |= gapComposer14.changed(boxScope2) ? 4 : 2;
                }
                if (!gapComposer14.shouldExecute(intValue13 & 1, (intValue13 & 19) != 18)) {
                    gapComposer14.skipToGroupEnd();
                    break;
                } else {
                    ImageKt.Image(UnsignedKt.painterResource(R.drawable.reading_challenge_blur_background, 0, gapComposer14), null, SizeKt.FillWholeMaxSize, null, ContentScale.Companion.FillWidth, RecyclerView.DECELERATION_RATE, null, gapComposer14, 25016, 104);
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(boxScope2.align(companion, Alignment.Companion.Center), RecyclerView.DECELERATION_RATE, 24.0f, 1);
                    RoundedCornerShape m177RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(12.0f);
                    long j = ((WikipediaColor) gapComposer14.consume(WikipediaColorKt.LocalWikipediaColor)).overlayColor;
                    long floatToRawIntBits = (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (Float.floatToRawIntBits(12.0f) & 4294967295L);
                    if (j == 16) {
                        j = Color.Black;
                    }
                    ImageKt.Image(UnsignedKt.painterResource(R.drawable.reading_challenge_widget_example, 0, gapComposer14), null, m134paddingVpY3zN4$default.then(new SimpleDropShadowElement(m177RoundedCornerShape0680j_4, new Shadow(floatToRawIntBits, j, 1.0f))), null, null, RecyclerView.DECELERATION_RATE, null, gapComposer14, 56, 120);
                    break;
                }
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ((Integer) obj3).getClass();
                ((LazyListKt$applyListScope$1$1$2$1) obj).getClass();
                Operation$State.Spacer(new HeightModifier(new Dimension.Dp(8.0f)), (GapComposer) obj2, 0);
                break;
            case 15:
                ((Integer) obj3).getClass();
                ((RowScopeImplInstance) obj).getClass();
                ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(R.drawable.ic_w_logo_shadow), DpKt.m707size3ABfNKs(36.0f), 0, null, (GapComposer) obj2, 48, 24);
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                GapComposer gapComposer15 = (GapComposer) obj2;
                int intValue14 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer15.shouldExecute(intValue14 & 1, (intValue14 & 17) != 16)) {
                    gapComposer15.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.year_in_review_learn_more, gapComposer15), null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer15.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer15, 0, 0, 131070);
                    break;
                }
            case VERTICAL_GRID_ITEM_VALUE:
                GapComposer gapComposer16 = (GapComposer) obj2;
                int intValue15 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer16.shouldExecute(intValue15 & 1, (intValue15 & 17) != 16)) {
                    gapComposer16.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.year_in_review_get_started, gapComposer16), null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer16.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer16, 0, 0, 131070);
                    break;
                }
            case RADIO_GROUP_VALUE:
                GapComposer gapComposer17 = (GapComposer) obj2;
                int intValue16 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer17.shouldExecute(intValue16 & 1, (intValue16 & 17) != 16)) {
                    gapComposer17.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.year_in_review_highlights_share_button_title, gapComposer17), null, ComposeColors.White, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer17.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer17, 384, 0, 131066);
                    break;
                }
            default:
                GapComposer gapComposer18 = (GapComposer) obj2;
                int intValue17 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer18.shouldExecute(intValue17 & 1, (intValue17 & 17) != 16)) {
                    gapComposer18.skipToGroupEnd();
                    break;
                } else {
                    Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
                    Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(companion2, 20.0f);
                    Painter painterResource2 = UnsignedKt.painterResource(R.drawable.ic_heart_24, 0, gapComposer18);
                    long j2 = Color.White;
                    IconKt.m286Iconww6aTOc(painterResource2, null, m145size3ABfNKs, j2, gapComposer18, 3512, 0);
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.year_in_review_donate, gapComposer18), OffsetKt.m136paddingqDBjuR0$default(companion2, 6.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14), j2, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer18.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer18, 432, 0, 131064);
                    break;
                }
        }
        return unit;
    }
}
