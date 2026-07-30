package com.android.billingclient.api;

import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.activity.ComponentActivity;
import androidx.activity.result.IntentSenderRequest;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.internal.play_billing.zze;
import defpackage.C0173Do;
import defpackage.C0725b0;
import defpackage.C0806cM;
import defpackage.C3795uJ;
import defpackage.Z;
import java.util.concurrent.atomic.AtomicInteger;

@UsedByReflection("PlatformActivityProxy")
/* loaded from: classes.dex */
public class ProxyBillingActivityV2 extends ComponentActivity {

    /* renamed from: do, reason: not valid java name */
    public ResultReceiver f9102do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0725b0 f9103do;

    /* renamed from: if, reason: not valid java name */
    public ResultReceiver f9104if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public C0725b0 f9105if;

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Z z = new Z();
        C3795uJ c3795uJ = new C3795uJ(this);
        StringBuilder sb = new StringBuilder("activity_rq#");
        AtomicInteger atomicInteger = ((ComponentActivity) this).f5096do;
        sb.append(atomicInteger.getAndIncrement());
        String sb2 = sb.toString();
        ComponentActivity.Cdo cdo = ((ComponentActivity) this).f5091do;
        this.f9103do = cdo.m3206for(sb2, this, z, c3795uJ);
        this.f9105if = cdo.m3206for("activity_rq#" + atomicInteger.getAndIncrement(), this, new Z(), new C0806cM(this, 1));
        if (bundle != null) {
            if (bundle.containsKey("alternative_billing_only_dialog_result_receiver")) {
                this.f9102do = (ResultReceiver) bundle.getParcelable("alternative_billing_only_dialog_result_receiver");
                return;
            } else {
                if (bundle.containsKey("external_payment_dialog_result_receiver")) {
                    this.f9104if = (ResultReceiver) bundle.getParcelable("external_payment_dialog_result_receiver");
                    return;
                }
                return;
            }
        }
        zze.zzk("ProxyBillingActivityV2", "Launching Play Store billing dialog");
        if (getIntent().hasExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")) {
            PendingIntent pendingIntent = (PendingIntent) getIntent().getParcelableExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT");
            this.f9102do = (ResultReceiver) getIntent().getParcelableExtra("alternative_billing_only_dialog_result_receiver");
            C0725b0 c0725b0 = this.f9103do;
            C0173Do.m401try(pendingIntent, BaseGmsClient.KEY_PENDING_INTENT);
            IntentSender intentSender = pendingIntent.getIntentSender();
            C0173Do.m399new(intentSender, "pendingIntent.intentSender");
            c0725b0.mo3104do(new IntentSenderRequest(intentSender, null, 0, 0));
            return;
        }
        if (getIntent().hasExtra("external_payment_dialog_pending_intent")) {
            PendingIntent pendingIntent2 = (PendingIntent) getIntent().getParcelableExtra("external_payment_dialog_pending_intent");
            this.f9104if = (ResultReceiver) getIntent().getParcelableExtra("external_payment_dialog_result_receiver");
            C0725b0 c0725b02 = this.f9105if;
            C0173Do.m401try(pendingIntent2, BaseGmsClient.KEY_PENDING_INTENT);
            IntentSender intentSender2 = pendingIntent2.getIntentSender();
            C0173Do.m399new(intentSender2, "pendingIntent.intentSender");
            c0725b02.mo3104do(new IntentSenderRequest(intentSender2, null, 0, 0));
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f9102do;
        if (resultReceiver != null) {
            bundle.putParcelable("alternative_billing_only_dialog_result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.f9104if;
        if (resultReceiver2 != null) {
            bundle.putParcelable("external_payment_dialog_result_receiver", resultReceiver2);
        }
    }
}
