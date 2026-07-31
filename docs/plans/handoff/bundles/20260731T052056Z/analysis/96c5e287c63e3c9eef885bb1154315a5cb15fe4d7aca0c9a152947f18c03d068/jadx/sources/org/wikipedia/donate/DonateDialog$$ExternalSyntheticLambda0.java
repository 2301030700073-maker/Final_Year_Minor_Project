package org.wikipedia.donate;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import kotlin.uuid.UuidKt;
import okhttp3.Cache;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DonateDialog$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ DonateDialog f$1;

    public /* synthetic */ DonateDialog$$ExternalSyntheticLambda0(String str, DonateDialog donateDialog) {
        this.f$0 = str;
        this.f$1 = donateDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        String str = this.f$0;
        DonateDialog donateDialog = this.f$1;
        switch (i) {
            case 0:
                Cache.Companion.logAction$default(4, "webpay_click", str, null, donateDialog.campaignId);
                donateDialog.onDonateClicked();
                break;
            default:
                String str2 = donateDialog.campaignIdOriginal;
                if (str2 != null) {
                    Prefs prefs = Prefs.INSTANCE;
                    Prefs.setAnnouncementShownDialogs(UuidKt.setOf(str2));
                }
                Cache.Companion.logAction$default(4, "gpay_click", str, null, donateDialog.campaignId);
                AppCompatActivity requireActivity = donateDialog.requireActivity();
                BaseActivity baseActivity = requireActivity instanceof BaseActivity ? (BaseActivity) requireActivity : null;
                if (baseActivity != null) {
                    donateDialog.requireActivity();
                    Bundle bundle = donateDialog.mArguments;
                    if (bundle != null) {
                        bundle.getString("donateUrl");
                    }
                    baseActivity.requestDonateActivity.launch(new Intent(), null);
                    break;
                }
                break;
        }
    }

    public /* synthetic */ DonateDialog$$ExternalSyntheticLambda0(DonateDialog donateDialog, String str) {
        this.f$1 = donateDialog;
        this.f$0 = str;
    }
}
