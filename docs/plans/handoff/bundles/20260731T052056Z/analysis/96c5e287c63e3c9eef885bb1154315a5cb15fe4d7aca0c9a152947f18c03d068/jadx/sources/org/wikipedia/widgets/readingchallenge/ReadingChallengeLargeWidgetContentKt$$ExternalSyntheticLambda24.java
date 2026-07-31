package org.wikipedia.widgets.readingchallenge;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import j$.time.LocalDate;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda24 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingChallengeState f$0;
    public final /* synthetic */ LocalDate f$1;

    public /* synthetic */ ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda24(ReadingChallengeState readingChallengeState, LocalDate localDate, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = readingChallengeState;
        this.f$1 = localDate;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        LocalDate localDate = this.f$1;
        ReadingChallengeState readingChallengeState = this.f$0;
        GapComposer gapComposer = (GapComposer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                StreakProgressBarKt.ReadingChallengeLargeWidgetContent(readingChallengeState, localDate, gapComposer, Updater.updateChangedFlags(1));
                break;
            default:
                StreakProgressBarKt.ReadingChallengeSmallWidgetContent(readingChallengeState, localDate, gapComposer, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }
}
