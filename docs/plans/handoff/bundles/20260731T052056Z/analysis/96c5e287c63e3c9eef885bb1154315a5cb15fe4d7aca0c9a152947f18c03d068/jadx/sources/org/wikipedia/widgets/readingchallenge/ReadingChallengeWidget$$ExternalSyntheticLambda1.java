package org.wikipedia.widgets.readingchallenge;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.State;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.glance.CompositionLocalsKt;
import j$.time.LocalDate;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.wikipedia.R;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingChallengeWidget$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ State f$0;

    public /* synthetic */ ReadingChallengeWidget$$ExternalSyntheticLambda1(State state, int i) {
        this.$r8$classId = i;
        this.f$0 = state;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        LocalDate now;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        State state = this.f$0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(1 & intValue, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    long j = ((DpSize) gapComposer.consume(CompositionLocalsKt.LocalSize)).packedValue;
                    Prefs prefs = Prefs.INSTANCE;
                    String string = PrefsIoUtil.getString(R.string.preference_key_reading_challenge_enrollment_date, "");
                    if (string == null) {
                        string = "";
                    }
                    if (string.length() > 0) {
                        String string2 = PrefsIoUtil.getString(R.string.preference_key_reading_challenge_enrollment_date, "");
                        now = LocalDate.parse(string2 != null ? string2 : "");
                    } else {
                        now = LocalDate.now();
                    }
                    if (Dp.m692compareTo0680j_4(DpSize.m712getWidthD9Ej5fM(j), 320.0f) < 0) {
                        gapComposer.startReplaceGroup(692545149);
                        ReadingChallengeState readingChallengeState = (ReadingChallengeState) state.getValue();
                        now.getClass();
                        StreakProgressBarKt.ReadingChallengeSmallWidgetContent(readingChallengeState, now, gapComposer, 0);
                        gapComposer.end(false);
                        break;
                    } else {
                        gapComposer.startReplaceGroup(692442973);
                        ReadingChallengeState readingChallengeState2 = (ReadingChallengeState) state.getValue();
                        now.getClass();
                        StreakProgressBarKt.ReadingChallengeLargeWidgetContent(readingChallengeState2, now, gapComposer, 0);
                        gapComposer.end(false);
                        break;
                    }
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    CrossfadeKt.AnimatedVisibility(((Boolean) state.getValue()).booleanValue(), null, EnterExitTransitionKt.fadeIn$default(ArcSplineKt.tween$default(300, 6, null), 2), EnterExitTransitionKt.fadeOut$default(ArcSplineKt.tween$default(300, 6, null), 2), null, RecommendedReadingListSourceScreenKt.f56lambda$2068516575, gapComposer2, 200064, 18);
                    break;
                }
        }
        return unit;
    }
}
