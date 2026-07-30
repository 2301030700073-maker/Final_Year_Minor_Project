package b.i.b;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;

/* loaded from: classes.dex */
public class S extends b.a.l.j.b {
    @Override // b.a.l.j.b
    public Intent a(Context context, Object obj) {
        IntentSenderRequest intentSenderRequest = (IntentSenderRequest) obj;
        Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
        Intent intent2 = intentSenderRequest.f22b;
        if (intent2 != null) {
            Bundle bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            int intExtra = intentSenderRequest.f22b.getIntExtra("activity.result.requestCode", -1);
            if (bundleExtra != null) {
                intent.putExtra("activity.result.requestCode", intExtra);
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
            }
        }
        intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest);
        return intent;
    }

    @Override // b.a.l.j.b
    public Object c(int i, Intent intent) {
        return new ActivityResult(i, intent);
    }
}
