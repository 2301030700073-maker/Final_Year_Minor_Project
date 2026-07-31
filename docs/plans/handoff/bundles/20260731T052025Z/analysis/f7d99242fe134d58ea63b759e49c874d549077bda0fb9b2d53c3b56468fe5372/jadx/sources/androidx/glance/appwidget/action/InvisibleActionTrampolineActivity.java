package androidx.glance.appwidget.action;

import android.app.Activity;
import android.os.Bundle;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InvisibleActionTrampolineActivity extends Activity {
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ToggleableKt.launchTrampolineAction(this, getIntent());
    }
}
