package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.play_billing.zze;

@UsedByReflection("PlatformActivityProxy")
/* loaded from: classes.dex */
public class ProxyBillingActivity extends Activity {

    /* renamed from: do, reason: not valid java name */
    public ResultReceiver f9097do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9098do;

    /* renamed from: for, reason: not valid java name */
    public int f9099for;

    /* renamed from: if, reason: not valid java name */
    public ResultReceiver f9100if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f9101if;

    /* renamed from: do, reason: not valid java name */
    public final Intent m5218do() {
        Intent intent = new Intent("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onActivityResult(int r8, int r9, android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle != null) {
            zze.zzk("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
            this.f9098do = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
            if (bundle.containsKey("result_receiver")) {
                this.f9097do = (ResultReceiver) bundle.getParcelable("result_receiver");
            } else if (bundle.containsKey("in_app_message_result_receiver")) {
                this.f9100if = (ResultReceiver) bundle.getParcelable("in_app_message_result_receiver");
            }
            this.f9101if = bundle.getBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false);
            this.f9099for = bundle.getInt("activity_code", 100);
            return;
        }
        zze.zzk("ProxyBillingActivity", "Launching Play Store billing flow");
        this.f9099for = 100;
        if (getIntent().hasExtra("BUY_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            if (getIntent().hasExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT") && getIntent().getBooleanExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false)) {
                this.f9101if = true;
                this.f9099for = FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD;
            }
        } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
            this.f9097do = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
        } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
            this.f9100if = (ResultReceiver) getIntent().getParcelableExtra("in_app_message_result_receiver");
            this.f9099for = FacebookMediationAdapter.ERROR_INVALID_SERVER_PARAMETERS;
        } else {
            pendingIntent = null;
        }
        try {
            this.f9098do = true;
            startIntentSenderForResult(pendingIntent.getIntentSender(), this.f9099for, new Intent(), 0, 0, 0);
        } catch (IntentSender.SendIntentException e) {
            zze.zzm("ProxyBillingActivity", "Got exception while trying to start a purchase flow.", e);
            ResultReceiver resultReceiver = this.f9097do;
            if (resultReceiver != null) {
                resultReceiver.send(6, null);
            } else {
                ResultReceiver resultReceiver2 = this.f9100if;
                if (resultReceiver2 != null) {
                    resultReceiver2.send(0, null);
                } else {
                    Intent m5218do = m5218do();
                    if (this.f9101if) {
                        m5218do.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                    }
                    m5218do.putExtra("RESPONSE_CODE", 6);
                    m5218do.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                    sendBroadcast(m5218do);
                }
            }
            this.f9098do = false;
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f9098do) {
            Intent m5218do = m5218do();
            m5218do.putExtra("RESPONSE_CODE", 1);
            m5218do.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            int i = this.f9099for;
            if (i == 110 || i == 100) {
                m5218do.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
            }
            sendBroadcast(m5218do);
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f9097do;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.f9100if;
        if (resultReceiver2 != null) {
            bundle.putParcelable("in_app_message_result_receiver", resultReceiver2);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.f9098do);
        bundle.putBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", this.f9101if);
        bundle.putInt("activity_code", this.f9099for);
    }
}
