package org.wikipedia.widgets.readingchallenge;

import android.content.Context;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.ColorFilter;
import androidx.glance.GlanceModifier;
import androidx.glance.TintColorFilterParams;
import androidx.glance.appwidget.action.RunCallbackAction;
import androidx.glance.color.DayNightColorProvider;
import androidx.glance.layout.Alignment;
import androidx.glance.layout.ColumnScopeImplInstance;
import androidx.glance.layout.HeightModifier;
import androidx.glance.layout.RowScopeImplInstance;
import androidx.glance.layout.WidthModifier;
import androidx.glance.text.FontWeight;
import androidx.glance.text.TextStyle;
import androidx.glance.unit.Dimension;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.Operation$State;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.RegexKt;
import kotlin.text.UStringsKt;
import kotlin.uuid.UuidKt;
import org.wikipedia.R;
import org.wikipedia.activitytab.ImpactModuleKt$$ExternalSyntheticLambda3;
import org.wikipedia.widgets.readingchallenge.LargeWidgetSize;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingChallengeWidgetKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ long f$2;
    public final /* synthetic */ long f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ int f$6;
    public final /* synthetic */ int f$7;

    public /* synthetic */ ReadingChallengeWidgetKt$$ExternalSyntheticLambda1(String str, RunCallbackAction runCallbackAction, long j, long j2, AndroidResourceImageProvider androidResourceImageProvider, GlanceModifier glanceModifier, int i, int i2) {
        this.f$0 = str;
        this.f$1 = runCallbackAction;
        this.f$2 = j;
        this.f$3 = j2;
        this.f$4 = androidResourceImageProvider;
        this.f$5 = glanceModifier;
        this.f$6 = i;
        this.f$7 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$5;
        Object obj4 = this.f$4;
        Object obj5 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                StreakProgressBarKt.m935WidgetButtonY0xEhic(this.f$0, (RunCallbackAction) obj5, this.f$2, this.f$3, (AndroidResourceImageProvider) obj4, (GlanceModifier) obj3, (GapComposer) obj, Updater.updateChangedFlags(this.f$6 | 1), this.f$7);
                break;
            default:
                final LargeWidgetSize largeWidgetSize = (LargeWidgetSize) obj5;
                final ReadingChallengeState.StreakOngoingReadToday streakOngoingReadToday = (ReadingChallengeState.StreakOngoingReadToday) obj4;
                final Context context = (Context) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(1 & intValue, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    GlanceModifier.Companion companion = GlanceModifier.Companion.$$INSTANCE;
                    GlanceModifier fillMaxSize = DpKt.fillMaxSize(companion);
                    final String str = this.f$0;
                    final long j = this.f$2;
                    final long j2 = this.f$3;
                    final int i2 = this.f$6;
                    Room.m758ColumnK4GKKTE(fillMaxSize, 0, 0, Expect_jvmKt.rememberComposableLambda(895071684, new Function3() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj6, Object obj7, Object obj8) {
                            GapComposer gapComposer2 = (GapComposer) obj7;
                            ((Integer) obj8).getClass();
                            ((ColumnScopeImplInstance) obj6).getClass();
                            Dimension.Fill fill = Dimension.Fill.INSTANCE;
                            WidthModifier widthModifier = new WidthModifier(fill);
                            final LargeWidgetSize largeWidgetSize2 = LargeWidgetSize.this;
                            final long j3 = j;
                            final Context context2 = context;
                            final int i3 = i2;
                            UuidKt.m859RowlMAjyxE(widthModifier, 0, 0, Expect_jvmKt.rememberComposableLambda(1695654184, new Function3() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda11
                                @Override // kotlin.jvm.functions.Function3
                                public final Object invoke(Object obj9, Object obj10, Object obj11) {
                                    float f;
                                    long sp;
                                    GapComposer gapComposer3 = (GapComposer) obj10;
                                    ((Integer) obj11).getClass();
                                    ((RowScopeImplInstance) obj9).getClass();
                                    AndroidResourceImageProvider androidResourceImageProvider = new AndroidResourceImageProvider(R.drawable.ic_trophy24dp);
                                    LargeWidgetSize largeWidgetSize3 = LargeWidgetSize.this;
                                    largeWidgetSize3.getClass();
                                    int[] iArr = LargeWidgetSize.WhenMappings.$EnumSwitchMapping$0;
                                    int i4 = iArr[largeWidgetSize3.ordinal()];
                                    if (i4 == 1) {
                                        f = 18.0f;
                                    } else if (i4 == 2) {
                                        f = 20.0f;
                                    } else if (i4 == 3) {
                                        f = 22.0f;
                                    } else {
                                        if (i4 != 4) {
                                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                                            return null;
                                        }
                                        f = 24.0f;
                                    }
                                    GlanceModifier m707size3ABfNKs = DpKt.m707size3ABfNKs(f);
                                    long j4 = j3;
                                    ContextsKt.m787ImageGCr5PR4(androidResourceImageProvider, m707size3ABfNKs, 0, new ColorFilter(new TintColorFilterParams(new DayNightColorProvider(j4, j4))), gapComposer3, 32816, 8);
                                    Operation$State.Spacer(new WidthModifier(new Dimension.Dp(12.0f)), gapComposer3, 0);
                                    String string = context2.getString(R.string.reading_challenge_streak_ongoing_title);
                                    string.getClass();
                                    WidthModifier widthModifier2 = new WidthModifier(Dimension.Expand.INSTANCE);
                                    DayNightColorProvider dayNightColorProvider = new DayNightColorProvider(j4, j4);
                                    int i5 = iArr[largeWidgetSize3.ordinal()];
                                    if (i5 == 1) {
                                        sp = ContextsKt.getSp(12);
                                    } else if (i5 == 2) {
                                        sp = ContextsKt.getSp(13);
                                    } else if (i5 == 3) {
                                        sp = ContextsKt.getSp(14);
                                    } else {
                                        if (i5 != 4) {
                                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                                            return null;
                                        }
                                        sp = ContextsKt.getSp(16);
                                    }
                                    ResultKt.Text(string, widthModifier2, new TextStyle(dayNightColorProvider, new TextUnit(sp), new FontWeight(), 120), 0, gapComposer3, 0, 8);
                                    Operation$State.Spacer(new WidthModifier(new Dimension.Dp(12.0f)), gapComposer3, 0);
                                    ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(i3), DpKt.m707size3ABfNKs(largeWidgetSize3.m920getTitleBarIconSizeD9Ej5fM()), 0, null, gapComposer3, 48, 24);
                                    return Unit.INSTANCE;
                                }
                            }, gapComposer2), gapComposer2, 3072, 6);
                            HeightModifier heightModifier = new HeightModifier(Dimension.Expand.INSTANCE);
                            StreakProgressBarKt.m934WidgetBadgeLNF6LQw(str, largeWidgetSize2.m918getStreakBadgeTextSizeXSAIIZE(), R.drawable.ic_flame_24dp, largeWidgetSize2.m917getStreakBadgeIconSizeD9Ej5fM(), RecyclerView.DECELERATION_RATE, new Color(j3), j3, heightModifier, gapComposer2, 0, 16);
                            StreakProgressBarKt.m926BoxedStreakProgressBarnhtM5HE(UStringsKt.m844paddingVpY3zN4(new WidthModifier(fill)), streakOngoingReadToday.streak, j3, j2, WidgetColors.white, gapComposer2, 12583296);
                            return Unit.INSTANCE;
                        }
                    }, gapComposer), gapComposer, 3072, 6);
                    RegexKt.Box(UStringsKt.m845paddingqDBjuR0$default(DpKt.fillMaxSize(companion), RecyclerView.DECELERATION_RATE, 3), Alignment.CenterEnd, Expect_jvmKt.rememberComposableLambda(-2062642260, new ImpactModuleKt$$ExternalSyntheticLambda3(this.f$7, largeWidgetSize), gapComposer), gapComposer, 384, 0);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ ReadingChallengeWidgetKt$$ExternalSyntheticLambda1(LargeWidgetSize largeWidgetSize, String str, long j, ReadingChallengeState.StreakOngoingReadToday streakOngoingReadToday, long j2, Context context, int i, int i2) {
        this.f$1 = largeWidgetSize;
        this.f$0 = str;
        this.f$2 = j;
        this.f$4 = streakOngoingReadToday;
        this.f$3 = j2;
        this.f$5 = context;
        this.f$6 = i;
        this.f$7 = i2;
    }
}
