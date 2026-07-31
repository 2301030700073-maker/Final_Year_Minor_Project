package org.wikipedia.donate;

import android.content.Intent;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import okhttp3.Cache;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.donate.donationreminder.DonationReminderHelper;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DonateDialog$$ExternalSyntheticLambda2 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DonateDialog f$0;

    public /* synthetic */ DonateDialog$$ExternalSyntheticLambda2(DonateDialog donateDialog, float f) {
        this.$r8$classId = 0;
        this.f$0 = donateDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        DonateDialog donateDialog = this.f$0;
        switch (i) {
            case 0:
                int i2 = DonationReminderHelper.validReadCountOnSeconds;
                Cache.Companion.logDonationReminderAction$default("gpay_click", "reminder_milestone", null, DonationReminderHelper.getCampaignId("appmenu"), null, null, null, 236);
                AppCompatActivity requireActivity = donateDialog.requireActivity();
                BaseActivity baseActivity = requireActivity instanceof BaseActivity ? (BaseActivity) requireActivity : null;
                if (baseActivity != null) {
                    donateDialog.requireActivity();
                    DonationReminderHelper.getCampaignId("appmenu");
                    baseActivity.requestDonateActivity.launch(new Intent(), null);
                    break;
                }
                break;
            case 1:
                int i3 = DonationReminderHelper.validReadCountOnSeconds;
                Cache.Companion.logDonationReminderAction$default("other_gpay_click", "reminder_milestone", null, DonationReminderHelper.getCampaignId("appmenu"), null, null, null, 236);
                AppCompatActivity requireActivity2 = donateDialog.requireActivity();
                BaseActivity baseActivity2 = requireActivity2 instanceof BaseActivity ? (BaseActivity) requireActivity2 : null;
                if (baseActivity2 != null) {
                    donateDialog.requireActivity();
                    DonationReminderHelper.getCampaignId("appmenu");
                    baseActivity2.requestDonateActivity.launch(new Intent(), null);
                    break;
                }
                break;
            default:
                int i4 = DonationReminderHelper.validReadCountOnSeconds;
                Cache.Companion.logDonationReminderAction$default("other_method_click", "reminder_milestone", null, DonationReminderHelper.getCampaignId("appmenu"), null, null, null, 236);
                donateDialog.onDonateClicked();
                break;
        }
    }

    public /* synthetic */ DonateDialog$$ExternalSyntheticLambda2(DonateDialog donateDialog, int i) {
        this.$r8$classId = i;
        this.f$0 = donateDialog;
    }
}
