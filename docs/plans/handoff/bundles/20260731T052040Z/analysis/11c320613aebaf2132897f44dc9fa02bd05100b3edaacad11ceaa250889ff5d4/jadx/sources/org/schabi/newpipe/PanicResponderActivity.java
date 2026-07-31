package org.schabi.newpipe;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class PanicResponderActivity extends Activity {
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null && "info.guardianproject.panic.action.TRIGGER".equals(intent.getAction())) {
            ExitActivity.Companion.getClass();
            Intent intent2 = new Intent(this, (Class<?>) ExitActivity.class);
            intent2.addFlags(276922368);
            startActivity(intent2);
        }
        finishAndRemoveTask();
    }
}
