package org.wikipedia.donate.donationreminder;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DonationReminderScreenKt$$ExternalSyntheticLambda33 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ Modifier f$2;

    public /* synthetic */ DonationReminderScreenKt$$ExternalSyntheticLambda33(Modifier modifier, boolean z, Function1 function1, int i) {
        this.$r8$classId = 2;
        this.f$2 = modifier;
        this.f$0 = z;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$1;
        boolean z = this.f$0;
        Modifier modifier = this.f$2;
        GapComposer gapComposer = (GapComposer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                DonationReminderScreenKt.DonationRemindersSwitch(Updater.updateChangedFlags(1), gapComposer, modifier, function1, z);
                break;
            case 1:
                RecommendedReadingListSourceScreenKt.RecommendedReadingListSwitch(Updater.updateChangedFlags(1), gapComposer, modifier, function1, z);
                break;
            default:
                RecommendedReadingListSourceScreenKt.NotificationView(Updater.updateChangedFlags(7), gapComposer, modifier, function1, z);
                break;
        }
        return unit;
    }

    public /* synthetic */ DonationReminderScreenKt$$ExternalSyntheticLambda33(boolean z, Function1 function1, Modifier modifier, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = z;
        this.f$1 = function1;
        this.f$2 = modifier;
    }
}
