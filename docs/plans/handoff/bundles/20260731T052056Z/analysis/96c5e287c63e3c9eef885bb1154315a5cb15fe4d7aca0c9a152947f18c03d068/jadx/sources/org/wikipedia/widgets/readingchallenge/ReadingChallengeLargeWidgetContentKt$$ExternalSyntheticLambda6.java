package org.wikipedia.widgets.readingchallenge;

import android.content.Context;
import androidx.compose.runtime.GapComposer;
import androidx.glance.action.ActionParameters$Pair;
import androidx.glance.appwidget.action.RunCallbackAction;
import androidx.glance.layout.RowScopeImplInstance;
import androidx.glance.layout.WidthModifier;
import androidx.glance.unit.Dimension;
import androidx.work.Operation$State;
import java.util.Arrays;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda6 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;

    public /* synthetic */ ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda6(Context context, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Dimension.Expand expand = Dimension.Expand.INSTANCE;
        Context context = this.f$0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj2;
                ((Integer) obj3).getClass();
                ((RowScopeImplInstance) obj).getClass();
                WidthModifier widthModifier = new WidthModifier(expand);
                String string = context.getString(R.string.reading_challenge_widget_search_button);
                string.getClass();
                StreakProgressBarKt.WidgetIconButton(string, new RunCallbackAction(SearchAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), R.drawable.outline_search_24, widthModifier, gapComposer, 0);
                Operation$State.Spacer(new WidthModifier(new Dimension.Dp(16.0f)), gapComposer, 0);
                WidthModifier widthModifier2 = new WidthModifier(expand);
                String string2 = context.getString(R.string.reading_challenge_widget_random_button);
                string2.getClass();
                StreakProgressBarKt.WidgetIconButton(string2, new RunCallbackAction(RandomizerAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), R.drawable.ic_dice_24, widthModifier2, gapComposer, 0);
                break;
            default:
                GapComposer gapComposer2 = (GapComposer) obj2;
                ((Integer) obj3).getClass();
                ((RowScopeImplInstance) obj).getClass();
                WidthModifier widthModifier3 = new WidthModifier(expand);
                String string3 = context.getString(R.string.reading_challenge_widget_search_button);
                string3.getClass();
                StreakProgressBarKt.WidgetIconButton(string3, new RunCallbackAction(SearchAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), R.drawable.outline_search_24, widthModifier3, gapComposer2, 0);
                Operation$State.Spacer(new WidthModifier(new Dimension.Dp(16.0f)), gapComposer2, 0);
                WidthModifier widthModifier4 = new WidthModifier(expand);
                String string4 = context.getString(R.string.reading_challenge_widget_random_button);
                string4.getClass();
                StreakProgressBarKt.WidgetIconButton(string4, new RunCallbackAction(RandomizerAction.class, TuplesKt.mutableActionParametersOf((ActionParameters$Pair[]) Arrays.copyOf(new ActionParameters$Pair[0], 0))), R.drawable.ic_dice_24, widthModifier4, gapComposer2, 0);
                break;
        }
        return unit;
    }
}
