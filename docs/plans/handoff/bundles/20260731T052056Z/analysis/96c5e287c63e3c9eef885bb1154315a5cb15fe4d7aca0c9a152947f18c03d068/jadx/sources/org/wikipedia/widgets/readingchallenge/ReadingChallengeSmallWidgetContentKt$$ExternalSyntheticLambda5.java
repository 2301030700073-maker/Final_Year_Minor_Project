package org.wikipedia.widgets.readingchallenge;

import android.content.Context;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.glance.GlanceModifier;
import androidx.glance.action.ActionParameters$Pair;
import androidx.glance.appwidget.action.RunCallbackAction;
import androidx.glance.layout.WidthModifier;
import androidx.glance.unit.Dimension;
import java.util.Arrays;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.uuid.UuidKt;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda5 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;

    public /* synthetic */ ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda5(Context context, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Context context = this.f$0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    String string = context.getString(R.string.feed);
                    string.getClass();
                    StreakProgressBarKt.m935WidgetButtonY0xEhic(string, new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), 0L, 0L, null, null, gapComposer, 0, 60);
                    break;
                }
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    String string2 = context.getString(R.string.reading_challenge_widget_collect_your_prize_button);
                    string2.getClass();
                    StreakProgressBarKt.m935WidgetButtonY0xEhic(string2, new RunCallbackAction(ChallengeRewardAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), 0L, 0L, null, GlanceModifier.Companion.$$INSTANCE, gapComposer2, 196608, 28);
                    break;
                }
            case 2:
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    String string3 = context.getString(R.string.reading_challenge_widget_join_the_challenge_button);
                    string3.getClass();
                    StreakProgressBarKt.m935WidgetButtonY0xEhic(string3, new RunCallbackAction(JoinChallengeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), 0L, 0L, null, null, gapComposer3, 0, 60);
                    break;
                }
            case 3:
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    String string4 = context.getString(R.string.reading_challenge_widget_explore_wikipedia_button);
                    string4.getClass();
                    StreakProgressBarKt.m935WidgetButtonY0xEhic(string4, new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), 0L, 0L, null, null, gapComposer4, 0, 60);
                    break;
                }
            case 4:
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    UuidKt.m859RowlMAjyxE(new WidthModifier(Dimension.Fill.INSTANCE), 0, 0, Expect_jvmKt.rememberComposableLambda(243694135, new ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda6(context, 1), gapComposer5), gapComposer5, 3072, 6);
                    break;
                }
            case 5:
                GapComposer gapComposer6 = (GapComposer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    String string5 = context.getString(R.string.reading_challenge_widget_join_challenge_button);
                    string5.getClass();
                    StreakProgressBarKt.m935WidgetButtonY0xEhic(string5, new RunCallbackAction(JoinChallengeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), 0L, 0L, null, null, gapComposer6, 0, 60);
                    break;
                }
            default:
                GapComposer gapComposer7 = (GapComposer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    String string6 = context.getString(R.string.reading_challenge_widget_explore_button);
                    string6.getClass();
                    StreakProgressBarKt.m935WidgetButtonY0xEhic(string6, new RunCallbackAction(HomeAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), 0L, 0L, null, null, gapComposer7, 0, 60);
                    break;
                }
        }
        return unit;
    }
}
