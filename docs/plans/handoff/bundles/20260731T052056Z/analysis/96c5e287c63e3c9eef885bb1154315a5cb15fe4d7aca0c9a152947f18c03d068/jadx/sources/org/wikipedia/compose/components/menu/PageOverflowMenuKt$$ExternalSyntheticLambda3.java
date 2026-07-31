package org.wikipedia.compose.components.menu;

import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.donate.donationreminder.DonationReminderDropDownMenuItem;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda30;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda32;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageOverflowMenuKt$$ExternalSyntheticLambda3 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ List f$0;
    public final /* synthetic */ MutableState f$1;

    public /* synthetic */ PageOverflowMenuKt$$ExternalSyntheticLambda3(List list, MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = list;
        this.f$1 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = Composer$Companion.Empty;
        MutableState mutableState = this.f$1;
        List<Pair> list = this.f$0;
        final byte b = 0;
        final int i2 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    for (Pair pair : list) {
                        String str = (String) pair.first;
                        Function0 function0 = (Function0) pair.second;
                        ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(988513719, new HomeScreenKt$$ExternalSyntheticLambda30(str, 4, b), gapComposer);
                        boolean changed = gapComposer.changed(function0) | gapComposer.changed(mutableState);
                        Object rememberedValue = gapComposer.rememberedValue();
                        if (changed || rememberedValue == obj4) {
                            rememberedValue = new HomeScreenKt$$ExternalSyntheticLambda32(function0, mutableState, i2);
                            gapComposer.updateRememberedValue(rememberedValue);
                        }
                        GapComposer gapComposer2 = gapComposer;
                        AndroidMenu_androidKt.DropdownMenuItem(rememberComposableLambda, (Function0) rememberedValue, null, null, null, false, null, new PaddingValuesImpl(16.0f, 8.0f, 16.0f, 8.0f), gapComposer2, 12582918, 380);
                        gapComposer = gapComposer2;
                    }
                    break;
                } else {
                    gapComposer.skipToGroupEnd();
                    break;
                }
            default:
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        final DonationReminderDropDownMenuItem donationReminderDropDownMenuItem = (DonationReminderDropDownMenuItem) it.next();
                        ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(1902801695, new Function2() { // from class: org.wikipedia.donate.donationreminder.DonationReminderScreenKt$$ExternalSyntheticLambda12
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj5, Object obj6) {
                                int i3 = b;
                                Unit unit2 = Unit.INSTANCE;
                                DonationReminderDropDownMenuItem donationReminderDropDownMenuItem2 = donationReminderDropDownMenuItem;
                                switch (i3) {
                                    case 0:
                                        GapComposer gapComposer4 = (GapComposer) obj5;
                                        int intValue3 = ((Integer) obj6).intValue();
                                        if (!gapComposer4.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                                            gapComposer4.skipToGroupEnd();
                                            break;
                                        } else {
                                            TextKt.m308TextNvy7gAk(donationReminderDropDownMenuItem2.text, null, ((WikipediaColor) gapComposer4.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer4, 0, 0, 131066);
                                            break;
                                        }
                                    default:
                                        GapComposer gapComposer5 = (GapComposer) obj5;
                                        int intValue4 = ((Integer) obj6).intValue();
                                        if (!gapComposer5.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                                            gapComposer5.skipToGroupEnd();
                                            break;
                                        } else {
                                            IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(donationReminderDropDownMenuItem2.icon, 0, gapComposer5), null, null, ((WikipediaColor) gapComposer5.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer5, 56, 4);
                                            break;
                                        }
                                }
                                return unit2;
                            }
                        }, gapComposer3);
                        boolean changed2 = gapComposer3.changed(donationReminderDropDownMenuItem);
                        Object rememberedValue2 = gapComposer3.rememberedValue();
                        if (changed2 || rememberedValue2 == obj4) {
                            rememberedValue2 = new Regex$$ExternalSyntheticLambda0(11, donationReminderDropDownMenuItem, mutableState);
                            gapComposer3.updateRememberedValue(rememberedValue2);
                        }
                        GapComposer gapComposer4 = gapComposer3;
                        AndroidMenu_androidKt.DropdownMenuItem(rememberComposableLambda2, (Function0) rememberedValue2, null, Expect_jvmKt.rememberComposableLambda(-500400388, new Function2() { // from class: org.wikipedia.donate.donationreminder.DonationReminderScreenKt$$ExternalSyntheticLambda12
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj5, Object obj6) {
                                int i3 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                DonationReminderDropDownMenuItem donationReminderDropDownMenuItem2 = donationReminderDropDownMenuItem;
                                switch (i3) {
                                    case 0:
                                        GapComposer gapComposer42 = (GapComposer) obj5;
                                        int intValue3 = ((Integer) obj6).intValue();
                                        if (!gapComposer42.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                                            gapComposer42.skipToGroupEnd();
                                            break;
                                        } else {
                                            TextKt.m308TextNvy7gAk(donationReminderDropDownMenuItem2.text, null, ((WikipediaColor) gapComposer42.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer42.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer42, 0, 0, 131066);
                                            break;
                                        }
                                    default:
                                        GapComposer gapComposer5 = (GapComposer) obj5;
                                        int intValue4 = ((Integer) obj6).intValue();
                                        if (!gapComposer5.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                                            gapComposer5.skipToGroupEnd();
                                            break;
                                        } else {
                                            IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(donationReminderDropDownMenuItem2.icon, 0, gapComposer5), null, null, ((WikipediaColor) gapComposer5.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer5, 56, 4);
                                            break;
                                        }
                                }
                                return unit2;
                            }
                        }, gapComposer3), null, false, null, null, gapComposer4, 3078, 500);
                        gapComposer3 = gapComposer4;
                    }
                    break;
                } else {
                    gapComposer3.skipToGroupEnd();
                    break;
                }
        }
        return unit;
    }
}
