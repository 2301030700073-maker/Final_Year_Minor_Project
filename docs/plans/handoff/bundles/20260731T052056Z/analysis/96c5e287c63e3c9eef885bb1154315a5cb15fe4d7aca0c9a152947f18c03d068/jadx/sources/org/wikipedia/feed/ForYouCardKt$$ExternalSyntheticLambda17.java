package org.wikipedia.feed;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.model.Card;
import org.wikipedia.feed.model.ForYouCard;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouCardKt$$ExternalSyntheticLambda17 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ForYouCardKt$$ExternalSyntheticLambda17(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int compareToIgnoreCase;
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((ForYouModule) obj).getClass();
                ((ForYouCard) obj2).getClass();
                return unit;
            case 1:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_visibility_off_24dp, 0, gapComposer), null, SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, gapComposer, 440, 0);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 2:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 3:
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_share, 0, gapComposer3), null, SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, gapComposer3, 440, 0);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 4:
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_bookmark_border_white_24dp, 0, gapComposer4), null, SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer4.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, gapComposer4, 440, 0);
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 5:
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if (gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_no_sim_24dp, 0, gapComposer5), null, SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer5.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, gapComposer5, 440, 0);
                } else {
                    gapComposer5.skipToGroupEnd();
                }
                return unit;
            case 6:
                GapComposer gapComposer6 = (GapComposer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if (gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_visibility_off_24dp, 0, gapComposer6), null, SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer6.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, gapComposer6, 440, 0);
                } else {
                    gapComposer6.skipToGroupEnd();
                }
                return unit;
            case 7:
                GapComposer gapComposer7 = (GapComposer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if (gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_baseline_tune_24, 0, gapComposer7), null, SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer7.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, gapComposer7, 440, 0);
                } else {
                    gapComposer7.skipToGroupEnd();
                }
                return unit;
            case 8:
                GapComposer gapComposer8 = (GapComposer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if (gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    ImageKt.Image(UnsignedKt.painterResource(R.drawable.swipe_gesture_illustration, 0, gapComposer8), null, SizeKt.fillMaxWidth(companion, 1.0f), null, null, RecyclerView.DECELERATION_RATE, null, gapComposer8, 440, 120);
                } else {
                    gapComposer8.skipToGroupEnd();
                }
                return unit;
            case 9:
                ((Integer) obj2).intValue();
                ((Card) obj).getClass();
                return unit;
            case 10:
                GapComposer gapComposer9 = (GapComposer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                if (gapComposer9.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_forward_black_24dp, 0, gapComposer9), UtilsKt.stringResource(R.string.onboarding_next, gapComposer9), null, ((WikipediaColor) gapComposer9.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, gapComposer9, 8, 4);
                } else {
                    gapComposer9.skipToGroupEnd();
                }
                return unit;
            case 11:
                GapComposer gapComposer10 = (GapComposer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                if (gapComposer10.shouldExecute(intValue10 & 1, (intValue10 & 3) != 2)) {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_forward_black_24dp, 0, gapComposer10), UtilsKt.stringResource(R.string.nav_item_forward, gapComposer10), null, ((WikipediaColor) gapComposer10.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, gapComposer10, 8, 4);
                } else {
                    gapComposer10.skipToGroupEnd();
                }
                return unit;
            case 12:
                GapComposer gapComposer11 = (GapComposer) obj;
                int intValue11 = ((Integer) obj2).intValue();
                if (gapComposer11.shouldExecute(intValue11 & 1, (intValue11 & 3) != 2)) {
                    ImageKt.Image(UnsignedKt.painterResource(R.drawable.shake_to_shuffle, 0, gapComposer11), null, SizeKt.fillMaxWidth(companion, 1.0f), null, null, RecyclerView.DECELERATION_RATE, null, gapComposer11, 440, 120);
                } else {
                    gapComposer11.skipToGroupEnd();
                }
                return unit;
            case IMAGE_VALUE:
                GapComposer gapComposer12 = (GapComposer) obj;
                int intValue12 = ((Integer) obj2).intValue();
                if (gapComposer12.shouldExecute(intValue12 & 1, (intValue12 & 3) != 2)) {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_back_black_24dp, 0, gapComposer12), UtilsKt.stringResource(R.string.search_back_button_content_description, gapComposer12), null, Color.White, gapComposer12, 3080, 4);
                } else {
                    gapComposer12.skipToGroupEnd();
                }
                return unit;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ReadingListPage readingListPage = (ReadingListPage) obj;
                ReadingListPage readingListPage2 = (ReadingListPage) obj2;
                readingListPage.getClass();
                readingListPage2.getClass();
                compareToIgnoreCase = readingListPage.getAccentInvariantTitle().compareToIgnoreCase(readingListPage2.getAccentInvariantTitle());
                break;
            case 15:
                ReadingList readingList = (ReadingList) obj;
                ReadingList readingList2 = (ReadingList) obj2;
                readingList.getClass();
                readingList2.getClass();
                compareToIgnoreCase = readingList.getAccentInvariantTitle().compareToIgnoreCase(readingList2.getAccentInvariantTitle());
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                ReadingList readingList3 = (ReadingList) obj;
                ReadingList readingList4 = (ReadingList) obj2;
                readingList3.getClass();
                readingList4.getClass();
                compareToIgnoreCase = readingList4.getAccentInvariantTitle().compareToIgnoreCase(readingList3.getAccentInvariantTitle());
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                ReadingList readingList5 = (ReadingList) obj;
                ReadingList readingList6 = (ReadingList) obj2;
                readingList5.getClass();
                readingList6.getClass();
                compareToIgnoreCase = Intrinsics.compare(readingList6.mtime, readingList5.mtime);
                break;
            case RADIO_GROUP_VALUE:
                ReadingList readingList7 = (ReadingList) obj;
                ReadingList readingList8 = (ReadingList) obj2;
                readingList7.getClass();
                readingList8.getClass();
                compareToIgnoreCase = Intrinsics.compare(readingList7.mtime, readingList8.mtime);
                break;
            case RADIO_BUTTON_VALUE:
                ReadingListPage readingListPage3 = (ReadingListPage) obj;
                ReadingListPage readingListPage4 = (ReadingListPage) obj2;
                readingListPage3.getClass();
                readingListPage4.getClass();
                compareToIgnoreCase = readingListPage4.getAccentInvariantTitle().compareToIgnoreCase(readingListPage3.getAccentInvariantTitle());
                break;
            case RADIO_ROW_VALUE:
                ReadingListPage readingListPage5 = (ReadingListPage) obj;
                ReadingListPage readingListPage6 = (ReadingListPage) obj2;
                readingListPage5.getClass();
                readingListPage6.getClass();
                compareToIgnoreCase = Intrinsics.compare(readingListPage5.mtime, readingListPage6.mtime);
                break;
            case RADIO_COLUMN_VALUE:
                ReadingListPage readingListPage7 = (ReadingListPage) obj;
                ReadingListPage readingListPage8 = (ReadingListPage) obj2;
                readingListPage7.getClass();
                readingListPage8.getClass();
                compareToIgnoreCase = Intrinsics.compare(readingListPage8.mtime, readingListPage7.mtime);
                break;
            case SIZE_BOX_VALUE:
                GapComposer gapComposer13 = (GapComposer) obj;
                int intValue13 = ((Integer) obj2).intValue();
                if (gapComposer13.shouldExecute(intValue13 & 1, (intValue13 & 3) != 2)) {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.newsstand_24dp, 0, gapComposer13), UtilsKt.stringResource(R.string.recommended_reading_list_settings_articles, gapComposer13), Modifier.Companion.$$INSTANCE, ((WikipediaColor) gapComposer13.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer13, 392, 0);
                } else {
                    gapComposer13.skipToGroupEnd();
                }
                return unit;
            case 23:
                GapComposer gapComposer14 = (GapComposer) obj;
                int intValue14 = ((Integer) obj2).intValue();
                if (gapComposer14.shouldExecute(intValue14 & 1, (intValue14 & 3) != 2)) {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.refresh_24dp, 0, gapComposer14), UtilsKt.stringResource(R.string.recommended_reading_list_settings_articles, gapComposer14), Modifier.Companion.$$INSTANCE, ((WikipediaColor) gapComposer14.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer14, 392, 0);
                } else {
                    gapComposer14.skipToGroupEnd();
                }
                return unit;
            case 24:
                GapComposer gapComposer15 = (GapComposer) obj;
                int intValue15 = ((Integer) obj2).intValue();
                if (gapComposer15.shouldExecute(intValue15 & 1, (intValue15 & 3) != 2)) {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.recommended_reading_list_settings_toggle, gapComposer15), null, ((WikipediaColor) gapComposer15.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer15.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer15, 0, 0, 131066);
                } else {
                    gapComposer15.skipToGroupEnd();
                }
                return unit;
            case 25:
                GapComposer gapComposer16 = (GapComposer) obj;
                int intValue16 = ((Integer) obj2).intValue();
                if (gapComposer16.shouldExecute(intValue16 & 1, (intValue16 & 3) != 2)) {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.recommended_reading_list_settings_updates_base_title, gapComposer16), null, ((WikipediaColor) gapComposer16.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer16.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer16, 0, 0, 131066);
                } else {
                    gapComposer16.skipToGroupEnd();
                }
                return unit;
            case 26:
                GapComposer gapComposer17 = (GapComposer) obj;
                int intValue17 = ((Integer) obj2).intValue();
                if (gapComposer17.shouldExecute(intValue17 & 1, (intValue17 & 3) != 2)) {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.build_24dp, 0, gapComposer17), UtilsKt.stringResource(R.string.recommended_reading_list_settings_updates_base_title, gapComposer17), Modifier.Companion.$$INSTANCE, ((WikipediaColor) gapComposer17.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer17, 392, 0);
                } else {
                    gapComposer17.skipToGroupEnd();
                }
                return unit;
            case 27:
                GapComposer gapComposer18 = (GapComposer) obj;
                int intValue18 = ((Integer) obj2).intValue();
                if (gapComposer18.shouldExecute(intValue18 & 1, (intValue18 & 3) != 2)) {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.recommended_reading_list_settings_interests, gapComposer18), null, ((WikipediaColor) gapComposer18.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer18.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer18, 0, 0, 131066);
                } else {
                    gapComposer18.skipToGroupEnd();
                }
                return unit;
            case 28:
                GapComposer gapComposer19 = (GapComposer) obj;
                int intValue19 = ((Integer) obj2).intValue();
                if (gapComposer19.shouldExecute(intValue19 & 1, (intValue19 & 3) != 2)) {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.interests_24dp, 0, gapComposer19), UtilsKt.stringResource(R.string.recommended_reading_list_settings_updates_base_title, gapComposer19), SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer19.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer19, 392, 0);
                } else {
                    gapComposer19.skipToGroupEnd();
                }
                return unit;
            default:
                GapComposer gapComposer20 = (GapComposer) obj;
                int intValue20 = ((Integer) obj2).intValue();
                if (gapComposer20.shouldExecute(intValue20 & 1, (intValue20 & 3) != 2)) {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.recommended_reading_list_settings_notifications_title, gapComposer20), null, ((WikipediaColor) gapComposer20.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer20.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer20, 0, 0, 131066);
                } else {
                    gapComposer20.skipToGroupEnd();
                }
                return unit;
        }
        return Integer.valueOf(compareToIgnoreCase);
    }
}
