package defpackage;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;

/* loaded from: classes.dex */
public final class Z extends W<IntentSenderRequest, ActivityResult> {
    @Override // defpackage.W
    public final Intent createIntent(Context context, IntentSenderRequest intentSenderRequest) {
        IntentSenderRequest intentSenderRequest2 = intentSenderRequest;
        C0173Do.m401try(context, "context");
        C0173Do.m401try(intentSenderRequest2, "input");
        Intent putExtra = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest2);
        C0173Do.m399new(putExtra, "Intent(ACTION_INTENT_SEN…NT_SENDER_REQUEST, input)");
        return putExtra;
    }

    @Override // defpackage.W
    public final ActivityResult parseResult(int i, Intent intent) {
        return new ActivityResult(i, intent);
    }
}
