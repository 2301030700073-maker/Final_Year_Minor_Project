package org.wikipedia.feed;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.GlanceModifier;
import androidx.glance.action.ActionParameters$Pair;
import androidx.glance.appwidget.action.RunCallbackAction;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import java.util.Arrays;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.widgets.readingchallenge.StreakProgressBarKt;
import org.wikipedia.widgets.readingchallenge.WidgetColors;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeScreenKt$$ExternalSyntheticLambda30 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda30(int i, String str) {
        this.$r8$classId = 7;
        this.f$0 = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Modifier then;
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    then = SizeKt.m140height3ABfNKs(companion, 20.0f).then(new SizeElement((r10 & 1) != 0 ? Float.NaN : 20.0f, RecyclerView.DECELERATION_RATE, (r10 & 2) == 0 ? 600.0f : Float.NaN, RecyclerView.DECELERATION_RATE, 10));
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    TabsBoxKt.m903WikiLangCodeBoxfdREj3A(then, this.f$0, 0L, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).secondaryColor, null, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).secondaryColor, 0L, gapComposer, 6, 84);
                    break;
                }
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, null, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer2, 0, 0, 131066);
                    break;
                }
            case 2:
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer3, 0, 0, 262142);
                    break;
                }
            case 3:
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.m897HtmlTextKiACRJU(this.f$0, null, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).bodyMedium, ((WikipediaColor) gapComposer4.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, 10, 0, 0L, null, null, 0, gapComposer4, 196608, 4038);
                    break;
                }
            case 4:
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, null, ((WikipediaColor) gapComposer5.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer5.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer5, 0, 0, 131066);
                    break;
                }
            case 5:
                GapComposer gapComposer6 = (GapComposer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, null, ((WikipediaColor) gapComposer6.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer6.consume(TypographyKt.LocalTypography)).bodyMedium, gapComposer6, 0, 0, 131066);
                    break;
                }
            case 6:
                GapComposer gapComposer7 = (GapComposer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, null, ((WikipediaColor) gapComposer7.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer7.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer7, 0, 0, 131066);
                    break;
                }
            case 7:
                ((Integer) obj2).getClass();
                DonationReminderScreenKt.InfoTooltip(this.f$0, (GapComposer) obj, Updater.updateChangedFlags(7));
                break;
            case 8:
                GapComposer gapComposer8 = (GapComposer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if (!gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, null, ((WikipediaColor) gapComposer8.consume(WikipediaColorKt.LocalWikipediaColor)).destructiveColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer8, 0, 0, 262138);
                    break;
                }
            case 9:
                GapComposer gapComposer9 = (GapComposer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                if (!gapComposer9.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    gapComposer9.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer9, 0, 0, 262142);
                    break;
                }
            case 10:
                GapComposer gapComposer10 = (GapComposer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                if (!gapComposer10.shouldExecute(intValue10 & 1, (intValue10 & 3) != 2)) {
                    gapComposer10.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, null, ((WikipediaColor) gapComposer10.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer10.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer10, 0, 0, 131066);
                    break;
                }
            case 11:
                GapComposer gapComposer11 = (GapComposer) obj;
                int intValue11 = ((Integer) obj2).intValue();
                if (!gapComposer11.shouldExecute(intValue11 & 1, (intValue11 & 3) != 2)) {
                    gapComposer11.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, RecyclerView.DECELERATION_RATE, 4.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), ((WikipediaColor) gapComposer11.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer11.consume(TypographyKt.LocalTypography)).bodySmall, gapComposer11, 48, 0, 131064);
                    break;
                }
            case 12:
                GapComposer gapComposer12 = (GapComposer) obj;
                int intValue12 = ((Integer) obj2).intValue();
                if (!gapComposer12.shouldExecute(intValue12 & 1, (intValue12 & 3) != 2)) {
                    gapComposer12.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, OffsetKt.m134paddingVpY3zN4$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, 1), ((WikipediaColor) gapComposer12.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer12, 48, 0, 262136);
                    break;
                }
            case IMAGE_VALUE:
                GapComposer gapComposer13 = (GapComposer) obj;
                int intValue13 = ((Integer) obj2).intValue();
                if (!gapComposer13.shouldExecute(intValue13 & 1, (intValue13 & 3) != 2)) {
                    gapComposer13.skipToGroupEnd();
                    break;
                } else {
                    long sp = ContextsKt.getSp(16);
                    long j = WidgetColors.primary;
                    StreakProgressBarKt.m934WidgetBadgeLNF6LQw(this.f$0, sp, R.drawable.ic_flame_24dp, 24.0f, RecyclerView.DECELERATION_RATE, new Color(j), j, null, gapComposer13, 1772592, 144);
                    break;
                }
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                GapComposer gapComposer14 = (GapComposer) obj;
                int intValue14 = ((Integer) obj2).intValue();
                if (!gapComposer14.shouldExecute(intValue14 & 1, (intValue14 & 3) != 2)) {
                    gapComposer14.skipToGroupEnd();
                    break;
                } else {
                    StreakProgressBarKt.m935WidgetButtonY0xEhic(this.f$0, new RunCallbackAction(org.wikipedia.widgets.readingchallenge.HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), WidgetColors.challengeConcludedIncompleteButtonBackground, WidgetColors.primary, new AndroidResourceImageProvider(R.drawable.ic_flame_24dp), GlanceModifier.Companion.$$INSTANCE, gapComposer14, 200064, 0);
                    break;
                }
            default:
                GapComposer gapComposer15 = (GapComposer) obj;
                int intValue15 = ((Integer) obj2).intValue();
                if (!gapComposer15.shouldExecute(intValue15 & 1, (intValue15 & 3) != 2)) {
                    gapComposer15.skipToGroupEnd();
                    break;
                } else {
                    StreakProgressBarKt.m935WidgetButtonY0xEhic(this.f$0, new RunCallbackAction(org.wikipedia.widgets.readingchallenge.HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), WidgetColors.challengeConcludedIncompleteButtonBackground, WidgetColors.primary, new AndroidResourceImageProvider(R.drawable.ic_flame_24dp), null, gapComposer15, 3456, 32);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda30(String str, int i, byte b) {
        this.$r8$classId = i;
        this.f$0 = str;
    }
}
