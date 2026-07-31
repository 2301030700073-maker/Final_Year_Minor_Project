package org.wikipedia.widgets.readingchallenge;

import android.R;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.unit.TextUnit;
import androidx.glance.action.ActionModifier;
import androidx.glance.appwidget.action.RunCallbackAction;
import androidx.glance.appwidget.lazy.LazyListKt$applyListScope$1$1$2$1;
import androidx.glance.color.DayNightColorProvider;
import androidx.glance.text.FontWeight;
import androidx.glance.text.TextStyle;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import org.wikipedia.widgets.readingchallenge.LargeWidgetSize;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ RunCallbackAction f$0;
    public final /* synthetic */ LargeWidgetSize f$1;
    public final /* synthetic */ String f$2;
    public final /* synthetic */ long f$3;

    public /* synthetic */ ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13(RunCallbackAction runCallbackAction, LargeWidgetSize largeWidgetSize, String str, long j) {
        this.$r8$classId = 0;
        this.f$0 = runCallbackAction;
        this.f$1 = largeWidgetSize;
        this.f$2 = str;
        this.f$3 = j;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        long sp;
        int i = this.$r8$classId;
        long j = this.f$3;
        Unit unit = Unit.INSTANCE;
        LargeWidgetSize largeWidgetSize = this.f$1;
        RunCallbackAction runCallbackAction = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj3).getClass();
                ((LazyListKt$applyListScope$1$1$2$1) obj).getClass();
                ActionModifier actionModifier = new ActionModifier(runCallbackAction, R.color.transparent);
                long m918getStreakBadgeTextSizeXSAIIZE = largeWidgetSize.m918getStreakBadgeTextSizeXSAIIZE();
                float m917getStreakBadgeIconSizeD9Ej5fM = largeWidgetSize.m917getStreakBadgeIconSizeD9Ej5fM();
                StreakProgressBarKt.m934WidgetBadgeLNF6LQw(this.f$2, m918getStreakBadgeTextSizeXSAIIZE, org.wikipedia.R.drawable.ic_streak_warning, m917getStreakBadgeIconSizeD9Ej5fM, RecyclerView.DECELERATION_RATE, null, this.f$3, actionModifier, (GapComposer) obj2, 0, 48);
                break;
            case 1:
                ((Integer) obj3).getClass();
                ((LazyListKt$applyListScope$1$1$2$1) obj).getClass();
                ActionModifier actionModifier2 = new ActionModifier(runCallbackAction, R.color.transparent);
                TextStyle textStyle = new TextStyle(new DayNightColorProvider(j, j), new TextUnit(largeWidgetSize.m919getSubtitleTextSizeXSAIIZE()), new FontWeight(), 120);
                ResultKt.Text(this.f$2, actionModifier2, textStyle, 0, (GapComposer) obj2, 0, 8);
                break;
            case 2:
                GapComposer gapComposer = (GapComposer) obj2;
                ((Integer) obj3).getClass();
                ((LazyListKt$applyListScope$1$1$2$1) obj).getClass();
                ActionModifier actionModifier3 = new ActionModifier(runCallbackAction, R.color.transparent);
                largeWidgetSize.getClass();
                int i2 = LargeWidgetSize.WhenMappings.$EnumSwitchMapping$0[largeWidgetSize.ordinal()];
                if (i2 == 1) {
                    sp = ContextsKt.getSp(16);
                } else if (i2 == 2) {
                    sp = ContextsKt.getSp(18);
                } else if (i2 == 3) {
                    sp = ContextsKt.getSp(24);
                } else if (i2 != 4) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    sp = ContextsKt.getSp(32);
                }
                ResultKt.Text(this.f$2, actionModifier3, new TextStyle(new DayNightColorProvider(j, j), new TextUnit(sp), new FontWeight(), 120), 0, gapComposer, 0, 8);
                break;
            default:
                ((Integer) obj3).getClass();
                ((LazyListKt$applyListScope$1$1$2$1) obj).getClass();
                ActionModifier actionModifier4 = new ActionModifier(runCallbackAction, R.color.transparent);
                TextStyle textStyle2 = new TextStyle(new DayNightColorProvider(j, j), new TextUnit(largeWidgetSize.m919getSubtitleTextSizeXSAIIZE()), new FontWeight(), 120);
                ResultKt.Text(this.f$2, actionModifier4, textStyle2, 0, (GapComposer) obj2, 0, 8);
                break;
        }
        return unit;
    }

    public /* synthetic */ ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13(RunCallbackAction runCallbackAction, LargeWidgetSize largeWidgetSize, long j, String str, int i) {
        this.$r8$classId = i;
        this.f$0 = runCallbackAction;
        this.f$1 = largeWidgetSize;
        this.f$3 = j;
        this.f$2 = str;
    }
}
