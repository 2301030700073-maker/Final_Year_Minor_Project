package org.schabi.newpipe;

import android.app.Activity;
import android.os.Bundle;
import androidx.sqlite.SQLite;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ExitActivity extends Activity {
    public static final Companion Companion = new Companion();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        finishAndRemoveTask();
        SQLite.restartApp(this);
    }
}
