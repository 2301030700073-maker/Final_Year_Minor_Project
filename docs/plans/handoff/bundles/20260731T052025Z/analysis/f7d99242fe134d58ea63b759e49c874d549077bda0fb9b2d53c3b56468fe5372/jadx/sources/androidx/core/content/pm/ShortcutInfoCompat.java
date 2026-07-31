package androidx.core.content.pm;

import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.compose.ui.window.Api33Impl;
import androidx.core.graphics.drawable.IconCompat;
import app.k9mail.feature.widget.shortcut.LauncherShortcutActivity;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ShortcutInfoCompat {
    public LauncherShortcutActivity mContext;
    public PersistableBundle mExtras;
    public IconCompat mIcon;
    public String mId;
    public Intent[] mIntents;
    public String mLabel;

    public final ShortcutInfo toShortcutInfo() {
        ShortcutInfo.Builder intents = new ShortcutInfo.Builder(this.mContext, this.mId).setShortLabel(this.mLabel).setIntents(this.mIntents);
        IconCompat iconCompat = this.mIcon;
        if (iconCompat != null) {
            intents.setIcon(iconCompat.toIcon(this.mContext));
        }
        if (!TextUtils.isEmpty(null)) {
            intents.setLongLabel(null);
        }
        if (!TextUtils.isEmpty(null)) {
            intents.setDisabledMessage(null);
        }
        intents.setRank(0);
        PersistableBundle persistableBundle = this.mExtras;
        if (persistableBundle != null) {
            intents.setExtras(persistableBundle);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            intents.setLongLived(false);
        } else {
            if (this.mExtras == null) {
                this.mExtras = new PersistableBundle();
            }
            this.mExtras.putBoolean("extraLongLived", false);
            intents.setExtras(this.mExtras);
        }
        if (i >= 33) {
            Api33Impl.setExcludedFromSurfaces(intents);
        }
        return intents.build();
    }
}
