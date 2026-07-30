package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;
import androidx.activity.ComponentActivity;

/* renamed from: androidx.activity.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ IntentSender.SendIntentException f5144do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ComponentActivity.Cdo f5145do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f5146for;

    public Cif(ComponentActivity.Cdo cdo, int i, IntentSender.SendIntentException sendIntentException) {
        this.f5145do = cdo;
        this.f5146for = i;
        this.f5144do = sendIntentException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5145do.m3205do(this.f5146for, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", this.f5144do));
    }
}
