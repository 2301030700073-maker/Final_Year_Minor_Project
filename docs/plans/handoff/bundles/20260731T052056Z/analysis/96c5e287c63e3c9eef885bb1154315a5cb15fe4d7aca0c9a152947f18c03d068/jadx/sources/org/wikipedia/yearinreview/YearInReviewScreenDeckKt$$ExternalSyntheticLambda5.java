package org.wikipedia.yearinreview;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.DpKt;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.GlanceModifier;
import androidx.glance.layout.PaddingDimension;
import androidx.glance.layout.PaddingModifier;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function2;
import kotlin.text.UStringsKt;
import kotlin.uuid.UuidKt;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.widgets.readingchallenge.StreakProgressBarKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class YearInReviewScreenDeckKt$$ExternalSyntheticLambda5 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(int i) {
        this.$r8$classId = 15;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((PagerState) obj).getClass();
                ((YearInReviewScreenData) obj2).getClass();
                break;
            case 1:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_close_black_24dp, 0, gapComposer), UtilsKt.stringResource(R.string.dialog_close_description, gapComposer), SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer, 392, 0);
                    break;
                }
            case 2:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_close_black_24dp, 0, gapComposer2), UtilsKt.stringResource(R.string.dialog_close_description, gapComposer2), SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer2, 392, 0);
                    break;
                }
            case 3:
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.reading_challenge_widget_reward_button_label, Arrays.copyOf(new Object[0], 0), gapComposer3), null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer3, 0, 0, 262142);
                    break;
                }
            case 4:
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                }
                break;
            case 5:
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                }
                break;
            case 6:
                GapComposer gapComposer6 = (GapComposer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    AndroidResourceImageProvider androidResourceImageProvider = new AndroidResourceImageProvider(R.drawable.widget_linear_gradient_background);
                    GlanceModifier.Companion companion2 = GlanceModifier.Companion.$$INSTANCE;
                    ContextsKt.m787ImageGCr5PR4(androidResourceImageProvider, DpKt.fillMaxSize(companion2), 0, null, gapComposer6, 48, 24);
                    GlanceModifier fillMaxWidth = DpKt.fillMaxWidth(companion2);
                    PaddingDimension m846toPadding0680j_4 = UStringsKt.m846toPadding0680j_4(16.0f);
                    UuidKt.m859RowlMAjyxE(fillMaxWidth.then(new PaddingModifier(m846toPadding0680j_4, m846toPadding0680j_4, m846toPadding0680j_4, m846toPadding0680j_4)), 2, 0, StreakProgressBarKt.lambda$1663097143, gapComposer6, 3072, 4);
                    break;
                }
            case 7:
                GapComposer gapComposer7 = (GapComposer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.baseline_info_24, 0, gapComposer7), UtilsKt.stringResource(R.string.year_in_review_information_icon, gapComposer7), null, ((WikipediaColor) gapComposer7.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer7, 8, 4);
                    break;
                }
            case 8:
                GapComposer gapComposer8 = (GapComposer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if (!gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                }
                break;
            case 9:
                GapComposer gapComposer9 = (GapComposer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                if (!gapComposer9.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    gapComposer9.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_close_black_24dp, 0, gapComposer9), UtilsKt.stringResource(R.string.year_in_review_close, gapComposer9), null, ((WikipediaColor) gapComposer9.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer9, 8, 4);
                    break;
                }
            case 10:
                GapComposer gapComposer10 = (GapComposer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                if (!gapComposer10.shouldExecute(intValue10 & 1, (intValue10 & 3) != 2)) {
                    gapComposer10.skipToGroupEnd();
                    break;
                }
                break;
            case 11:
                GapComposer gapComposer11 = (GapComposer) obj;
                int intValue11 = ((Integer) obj2).intValue();
                if (!gapComposer11.shouldExecute(intValue11 & 1, (intValue11 & 3) != 2)) {
                    gapComposer11.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_close_black_24dp, 0, gapComposer11), UtilsKt.stringResource(R.string.year_in_review_close, gapComposer11), null, ((WikipediaColor) gapComposer11.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer11, 8, 4);
                    break;
                }
            case 12:
                GapComposer gapComposer12 = (GapComposer) obj;
                int intValue12 = ((Integer) obj2).intValue();
                if (!gapComposer12.shouldExecute(intValue12 & 1, (intValue12 & 3) != 2)) {
                    gapComposer12.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_share, 0, gapComposer12), UtilsKt.stringResource(R.string.year_in_review_share_icon, gapComposer12), null, ((WikipediaColor) gapComposer12.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer12, 8, 4);
                    break;
                }
            case IMAGE_VALUE:
                GapComposer gapComposer13 = (GapComposer) obj;
                int intValue13 = ((Integer) obj2).intValue();
                if (!gapComposer13.shouldExecute(intValue13 & 1, (intValue13 & 3) != 2)) {
                    gapComposer13.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_forward_black_24dp, 0, gapComposer13), UtilsKt.stringResource(R.string.year_in_review_navigate_right, gapComposer13), null, ((WikipediaColor) gapComposer13.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer13, 8, 4);
                    break;
                }
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                GapComposer gapComposer14 = (GapComposer) obj;
                int intValue14 = ((Integer) obj2).intValue();
                if (!gapComposer14.shouldExecute(intValue14 & 1, (intValue14 & 3) != 2)) {
                    gapComposer14.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.baseline_info_24, 0, gapComposer14), UtilsKt.stringResource(R.string.year_in_review_information_icon, gapComposer14), null, ((WikipediaColor) gapComposer14.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer14, 8, 4);
                    break;
                }
            default:
                ((Integer) obj2).getClass();
                YearInReviewDialog.LoadingIndicator(Updater.updateChangedFlags(1), (GapComposer) obj);
                break;
        }
        return unit;
    }

    public /* synthetic */ YearInReviewScreenDeckKt$$ExternalSyntheticLambda5(int i, byte b) {
        this.$r8$classId = i;
    }
}
