package org.wikipedia.settings.dev;

import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import org.wikipedia.R;
import org.wikipedia.settings.BaseSettingsActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/settings/dev/DeveloperSettingsActivity;", "Lorg/wikipedia/settings/BaseSettingsActivity;", "Lorg/wikipedia/settings/dev/DeveloperSettingsFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DeveloperSettingsActivity extends BaseSettingsActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final int title = R.string.developer_settings_activity_title;

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        return new DeveloperSettingsFragment();
    }

    @Override // org.wikipedia.settings.BaseSettingsActivity, android.app.Activity
    public final int getTitle() {
        return this.title;
    }
}
