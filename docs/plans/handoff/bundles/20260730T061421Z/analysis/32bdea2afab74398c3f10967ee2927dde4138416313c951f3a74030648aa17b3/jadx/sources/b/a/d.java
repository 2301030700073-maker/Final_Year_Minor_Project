package b.a;

import android.content.Intent;
import android.content.IntentSender;

/* loaded from: classes.dex */
public class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f214a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ IntentSender.SendIntentException f215b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f216c;

    public d(e eVar, int i, IntentSender.SendIntentException sendIntentException) {
        this.f216c = eVar;
        this.f214a = i;
        this.f215b = sendIntentException;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f216c.a(this.f214a, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", this.f215b));
    }
}
