package kotlinx.coroutines;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KClass;
import kotlinx.coroutines.internal.ThreadLocalElement;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.modules.SerializersModuleKt;
import okhttp3.Handshake$Companion$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CoroutineContextKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ CoroutineContextKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        LoginClient loginClient = SerializersModuleKt.EmptySerializersModule;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        int i2 = 2;
        int i3 = 1;
        switch (i) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                if (element instanceof ThreadLocalElement) {
                    Integer num = obj instanceof Integer ? (Integer) obj : null;
                    int intValue = num != null ? num.intValue() : 1;
                    if (intValue != 0) {
                        break;
                    } else {
                        break;
                    }
                }
                break;
            case 6:
                ThreadLocalElement threadLocalElement = (ThreadLocalElement) obj;
                CoroutineContext.Element element2 = (CoroutineContext.Element) obj2;
                if (threadLocalElement == null) {
                    if (element2 instanceof ThreadLocalElement) {
                        break;
                    }
                } else {
                    break;
                }
                break;
            case 7:
                kotlinx.coroutines.internal.ThreadState threadState = (kotlinx.coroutines.internal.ThreadState) obj;
                CoroutineContext.Element element3 = (CoroutineContext.Element) obj2;
                if (element3 instanceof ThreadLocalElement) {
                    ThreadLocalElement threadLocalElement2 = (ThreadLocalElement) element3;
                    CoroutineContext coroutineContext = threadState.context;
                    Object updateThreadContext = threadLocalElement2.updateThreadContext();
                    Object[] objArr = threadState.values;
                    int i4 = threadState.i;
                    objArr[i4] = updateThreadContext;
                    ThreadLocalElement[] threadLocalElementArr = threadState.elements;
                    threadState.i = i4 + 1;
                    threadLocalElementArr[i4] = threadLocalElement2;
                    break;
                }
                break;
            case 8:
                KClass kClass = (KClass) obj;
                List list = (List) obj2;
                kClass.getClass();
                list.getClass();
                ArrayList serializersForParameters = TuplesKt.serializersForParameters(loginClient, list, true);
                serializersForParameters.getClass();
                break;
            case 9:
                KClass kClass2 = (KClass) obj;
                List list2 = (List) obj2;
                kClass2.getClass();
                list2.getClass();
                ArrayList serializersForParameters2 = TuplesKt.serializersForParameters(loginClient, list2, true);
                serializersForParameters2.getClass();
                KSerializer parametrizedSerializerOrNull = TuplesKt.parametrizedSerializerOrNull(kClass2, serializersForParameters2, new Handshake$Companion$$ExternalSyntheticLambda0(list2, 3));
                if (parametrizedSerializerOrNull != null) {
                    break;
                }
                break;
            case 10:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_close_black_24dp, 0, gapComposer), UtilsKt.stringResource(R.string.dialog_close_description, gapComposer), null, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer, 8, 4);
                    break;
                }
            case 11:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Add", null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer2, 6, 0, 262142);
                    break;
                }
            case 12:
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                    Object rememberedValue = gapComposer3.rememberedValue();
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = new AppDatabase$$ExternalSyntheticLambda0(i3);
                        gapComposer3.updateRememberedValue(rememberedValue);
                    }
                    TabsBoxKt.m895AppButtont6yy7ic((Function0) rememberedValue, fillMaxWidth, 0L, 0L, TabsBoxKt.lambda$1536430504, gapComposer3, 24630, 12);
                    break;
                }
            case IMAGE_VALUE:
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if (!gapComposer4.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("Add", null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer4, 6, 0, 262142);
                    break;
                }
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if (!gapComposer5.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(companion, 1.0f);
                    Object rememberedValue2 = gapComposer5.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new AppDatabase$$ExternalSyntheticLambda0(i2);
                        gapComposer5.updateRememberedValue(rememberedValue2);
                    }
                    TabsBoxKt.m895AppButtont6yy7ic((Function0) rememberedValue2, fillMaxWidth2, 0L, 0L, TabsBoxKt.lambda$1632420701, gapComposer5, 24630, 12);
                    break;
                }
            case 15:
                GapComposer gapComposer6 = (GapComposer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if (!gapComposer6.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_back_black_24dp, 0, gapComposer6), UtilsKt.stringResource(R.string.search_back_button_content_description, gapComposer6), null, ((WikipediaColor) gapComposer6.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer6, 8, 4);
                    break;
                }
            case LAZY_VERTICAL_GRID_VALUE:
                GapComposer gapComposer7 = (GapComposer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if (!gapComposer7.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_back_black_24dp, 0, gapComposer7), UtilsKt.stringResource(R.string.search_back_button_content_description, gapComposer7), null, ((WikipediaColor) gapComposer7.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer7, 8, 4);
                    break;
                }
            case VERTICAL_GRID_ITEM_VALUE:
                GapComposer gapComposer8 = (GapComposer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                if (!gapComposer8.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_close_black_24dp, 0, gapComposer8), UtilsKt.stringResource(R.string.search_clear_query_content_description, gapComposer8), null, ((WikipediaColor) gapComposer8.consume(WikipediaColorKt.LocalWikipediaColor)).placeholderColor, gapComposer8, 8, 4);
                    break;
                }
            case RADIO_GROUP_VALUE:
                GapComposer gapComposer9 = (GapComposer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                if (!gapComposer9.shouldExecute(intValue10 & 1, (intValue10 & 3) != 2)) {
                    gapComposer9.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.outline_search_24, 0, gapComposer9), UtilsKt.stringResource(R.string.search_icon_content_description, gapComposer9), null, ((WikipediaColor) gapComposer9.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer9, 8, 4);
                    break;
                }
            case RADIO_BUTTON_VALUE:
                GapComposer gapComposer10 = (GapComposer) obj;
                int intValue11 = ((Integer) obj2).intValue();
                if (!gapComposer10.shouldExecute(intValue11 & 1, (intValue11 & 3) != 2)) {
                    gapComposer10.skipToGroupEnd();
                    break;
                } else {
                    gapComposer10.startReplaceGroup(-566579145);
                    gapComposer10.end(false);
                    break;
                }
            case RADIO_ROW_VALUE:
                GapComposer gapComposer11 = (GapComposer) obj;
                int intValue12 = ((Integer) obj2).intValue();
                if (!gapComposer11.shouldExecute(intValue12 & 1, (intValue12 & 3) != 2)) {
                    gapComposer11.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.donation_reminders_settings_confirm_btn_label, gapComposer11), null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer11, 0, 0, 262142);
                    break;
                }
            case RADIO_COLUMN_VALUE:
                GapComposer gapComposer12 = (GapComposer) obj;
                int intValue13 = ((Integer) obj2).intValue();
                if (!gapComposer12.shouldExecute(intValue13 & 1, (intValue13 & 3) != 2)) {
                    gapComposer12.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.donation_reminders_settings_article_frequency_input_suffix_label, gapComposer12), null, ((WikipediaColor) gapComposer12.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer12.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer12, 0, 0, 131066);
                    break;
                }
            case SIZE_BOX_VALUE:
                GapComposer gapComposer13 = (GapComposer) obj;
                int intValue14 = ((Integer) obj2).intValue();
                if (!gapComposer13.shouldExecute(intValue14 & 1, (intValue14 & 3) != 2)) {
                    gapComposer13.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_drop_down_black_24dp, 0, gapComposer13), null, null, ((WikipediaColor) gapComposer13.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer13, 56, 4);
                    break;
                }
            case 23:
                GapComposer gapComposer14 = (GapComposer) obj;
                int intValue15 = ((Integer) obj2).intValue();
                if (!gapComposer14.shouldExecute(intValue15 & 1, (intValue15 & 3) != 2)) {
                    gapComposer14.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.donation_reminders_settings_option_title, gapComposer14), null, ((WikipediaColor) gapComposer14.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer14.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer14, 0, 0, 131066);
                    break;
                }
            case 24:
                GapComposer gapComposer15 = (GapComposer) obj;
                int intValue16 = ((Integer) obj2).intValue();
                if (!gapComposer15.shouldExecute(intValue16 & 1, (intValue16 & 3) != 2)) {
                    gapComposer15.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.baseline_info_24, 0, gapComposer15), null, null, ((WikipediaColor) gapComposer15.consume(WikipediaColorKt.LocalWikipediaColor)).destructiveColor, gapComposer15, 56, 4);
                    break;
                }
            case 25:
                GapComposer gapComposer16 = (GapComposer) obj;
                int intValue17 = ((Integer) obj2).intValue();
                if (!gapComposer16.shouldExecute(intValue17 & 1, (intValue17 & 3) != 2)) {
                    gapComposer16.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("$", OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer16, 54, 0, 262140);
                    break;
                }
            case 26:
                GapComposer gapComposer17 = (GapComposer) obj;
                int intValue18 = ((Integer) obj2).intValue();
                if (!gapComposer17.shouldExecute(intValue18 & 1, (intValue18 & 3) != 2)) {
                    gapComposer17.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk("articles", OffsetKt.m134paddingVpY3zN4$default(companion, 12.0f, RecyclerView.DECELERATION_RATE, 2), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer17, 54, 0, 262140);
                    break;
                }
            case 27:
                GapComposer gapComposer18 = (GapComposer) obj;
                int intValue19 = ((Integer) obj2).intValue();
                if (!gapComposer18.shouldExecute(intValue19 & 1, (intValue19 & 3) != 2)) {
                    gapComposer18.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.menu_feed_card_dismiss, gapComposer18), null, ((WikipediaColor) gapComposer18.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer18.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer18, 0, 0, 131066);
                    break;
                }
            case 28:
                GapComposer gapComposer19 = (GapComposer) obj;
                int intValue20 = ((Integer) obj2).intValue();
                if (!gapComposer19.shouldExecute(intValue20 & 1, (intValue20 & 3) != 2)) {
                    gapComposer19.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_no_sim_24dp, 0, gapComposer19), null, SizeKt.m145size3ABfNKs(companion, 24.0f), ((WikipediaColor) gapComposer19.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, gapComposer19, 440, 0);
                    break;
                }
            default:
                GapComposer gapComposer20 = (GapComposer) obj;
                int intValue21 = ((Integer) obj2).intValue();
                if (!gapComposer20.shouldExecute(intValue21 & 1, (intValue21 & 3) != 2)) {
                    gapComposer20.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.explore_feed_header_overflow_hide_module_label, gapComposer20), null, ((WikipediaColor) gapComposer20.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer20.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer20, 0, 0, 131066);
                    break;
                }
        }
        return unit;
    }
}
