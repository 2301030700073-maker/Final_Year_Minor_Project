package org.wikipedia.descriptions;

import android.os.Bundle;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import org.wikipedia.R;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.descriptions.DescriptionEditSuccessFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/descriptions/DescriptionEditSuccessActivity;", "Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment$Callback;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DescriptionEditSuccessActivity extends SingleFragmentActivity implements DescriptionEditSuccessFragment.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        return new DescriptionEditSuccessFragment();
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity, org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityCompat.requireViewById(this, R.id.fragment_container).setBackground(null);
    }

    @Override // org.wikipedia.activity.BaseActivity
    public final void setTheme() {
        setTheme(R.style.ThemeDark_Translucent);
    }
}
