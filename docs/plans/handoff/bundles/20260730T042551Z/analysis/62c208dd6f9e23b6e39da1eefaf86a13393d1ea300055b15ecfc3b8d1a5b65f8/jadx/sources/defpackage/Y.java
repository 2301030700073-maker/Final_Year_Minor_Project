package defpackage;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.ActivityResult;

/* loaded from: classes.dex */
public final class Y extends W<Intent, ActivityResult> {
    @Override // defpackage.W
    public final Intent createIntent(Context context, Intent intent) {
        Intent intent2 = intent;
        C0173Do.m401try(context, "context");
        C0173Do.m401try(intent2, "input");
        return intent2;
    }

    @Override // defpackage.W
    public final ActivityResult parseResult(int i, Intent intent) {
        return new ActivityResult(i, intent);
    }
}
