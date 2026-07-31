package org.wikipedia.theme;

import android.R;
import android.os.Bundle;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import kotlin.Metadata;
import okio.Okio__OkioKt;
import org.wikipedia.Constants;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.login.LoginClient;
import org.wikipedia.theme.ThemeChooserDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/theme/ThemeFittingRoomActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Lorg/wikipedia/theme/ThemeFittingRoomFragment;", "Lorg/wikipedia/theme/ThemeChooserDialog$Callback;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ThemeFittingRoomActivity extends SingleFragmentActivity implements ThemeChooserDialog.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ThemeChooserDialog themeChooserDialog;

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        return new ThemeFittingRoomFragment();
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity, org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            int i = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
            this.themeChooserDialog = LoginClient.newInstance(Constants.InvokeSource.SETTINGS, false);
            FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
            ThemeChooserDialog themeChooserDialog = this.themeChooserDialog;
            themeChooserDialog.getClass();
            Okio__OkioKt.show(supportFragmentManager, themeChooserDialog);
        }
        setStatusBarColor(getColor(R.color.black));
        setNavigationBarColor(getColor(R.color.black));
    }

    @Override // org.wikipedia.theme.ThemeChooserDialog.Callback
    public final void onToggleDimImages() {
        ActivityCompat.recreate(this);
    }

    @Override // org.wikipedia.theme.ThemeChooserDialog.Callback
    public final void onEditingPrefsChanged() {
    }

    @Override // org.wikipedia.theme.ThemeChooserDialog.Callback
    public final void onToggleReadingFocusMode() {
    }
}
