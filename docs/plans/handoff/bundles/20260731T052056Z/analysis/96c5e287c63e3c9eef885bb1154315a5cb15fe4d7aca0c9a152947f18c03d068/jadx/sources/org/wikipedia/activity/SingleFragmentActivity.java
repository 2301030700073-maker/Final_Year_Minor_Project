package org.wikipedia.activity;

import android.os.Bundle;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SingleFragmentActivity extends BaseActivity {
    public Fragment fragment;

    public abstract Fragment createFragment();

    public final Fragment getFragment() {
        Fragment fragment = this.fragment;
        if (fragment != null) {
            return fragment;
        }
        Intrinsics.throwUninitializedPropertyAccessException("fragment");
        throw null;
    }

    public void inflateAndSetContentView() {
        setContentView(R.layout.activity_single_fragment);
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getApplicationContext() instanceof WikipediaApp) {
            inflateAndSetContentView();
            Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.fragment_container);
            if (findFragmentById != null) {
                this.fragment = findFragmentById;
                return;
            }
            this.fragment = createFragment();
            BackStackRecord backStackRecord = new BackStackRecord(getSupportFragmentManager());
            backStackRecord.doAddOp(R.id.fragment_container, getFragment(), null, 1);
            backStackRecord.commit();
        }
    }
}
