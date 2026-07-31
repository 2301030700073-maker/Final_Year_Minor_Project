package org.wikipedia.settings;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;
import org.wikipedia.yearinreview.YearInReviewDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutActivityKt$$ExternalSyntheticLambda10 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda10(Modifier modifier, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Modifier modifier = this.f$0;
        GapComposer gapComposer = (GapComposer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                PrefsIoUtil.AboutScreenFooter(modifier, gapComposer, Updater.updateChangedFlags(7));
                break;
            case 1:
                DonationReminderScreenKt.DonationHeader(modifier, gapComposer, Updater.updateChangedFlags(1));
                break;
            case 2:
                RecommendedReadingListSourceScreenKt.InterestsView(modifier, gapComposer, Updater.updateChangedFlags(1));
                break;
            case 3:
                RecommendedReadingListSourceScreenKt.DisabledState(modifier, gapComposer, Updater.updateChangedFlags(7));
                break;
            default:
                YearInReviewDialog.YearInReviewOnboardingContent(modifier, gapComposer, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }
}
