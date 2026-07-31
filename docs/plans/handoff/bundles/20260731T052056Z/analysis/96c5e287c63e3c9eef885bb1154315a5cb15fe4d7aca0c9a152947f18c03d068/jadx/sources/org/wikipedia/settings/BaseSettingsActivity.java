package org.wikipedia.settings;

import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import coil3.util.ContextsKt;
import org.wikipedia.R;
import org.wikipedia.activity.SingleFragmentActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BaseSettingsActivity extends SingleFragmentActivity {
    @Override // android.app.Activity
    public abstract int getTitle();

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final void inflateAndSetContentView() {
        setContentView(R.layout.activity_settings_base);
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity, org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        ContextsKt supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(getString(getTitle()));
        }
    }
}
