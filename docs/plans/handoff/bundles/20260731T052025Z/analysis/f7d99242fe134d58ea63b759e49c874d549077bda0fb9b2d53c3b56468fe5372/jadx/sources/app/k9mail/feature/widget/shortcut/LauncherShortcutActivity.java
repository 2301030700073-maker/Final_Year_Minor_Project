package app.k9mail.feature.widget.shortcut;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.TypedValue;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.datastore.core.Api26Impl;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.activity.AccountList;
import com.fsck.k9.activity.MessageHomeActivity;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.mail.account.api.BaseAccount;
import net.thunderbird.feature.search.legacy.SearchAccount;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LauncherShortcutActivity extends AccountList {
    @Override // com.fsck.k9.activity.AccountList
    public final void onAccountSelected(BaseAccount baseAccount) {
        Intent shortcutIntentForAccount;
        Intent createShortcutResultIntent;
        if (baseAccount instanceof SearchAccount) {
            Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
            shortcutIntentForAccount = new Intent(this, (Class<?>) MessageHomeActivity.class);
            shortcutIntentForAccount.setAction("shortcut");
            shortcutIntentForAccount.putExtra("special_folder", "unified_folders");
            shortcutIntentForAccount.addFlags(536870912);
            shortcutIntentForAccount.addFlags(67108864);
            shortcutIntentForAccount.addFlags(268435456);
        } else {
            Lazy lazy2 = MessageHomeActivity.coreResourceProvider$delegate;
            shortcutIntentForAccount = MessageHomeActivity.Companion.shortcutIntentForAccount(this, baseAccount.getUuid());
        }
        String name = baseAccount.getName();
        if (name == null) {
            name = baseAccount.getEmail();
        }
        Resources.Theme theme = getTheme();
        theme.getClass();
        TypedValue typedValue = new TypedValue();
        theme.resolveAttribute(R.attr.appLogo, typedValue, true);
        int i = typedValue.resourceId;
        String uuid = baseAccount.getUuid();
        if (Build.VERSION.SDK_INT <= 31) {
            Parcelable fromContext = Intent.ShortcutIconResource.fromContext(this, i);
            createShortcutResultIntent = new Intent();
            createShortcutResultIntent.putExtra("android.intent.extra.shortcut.INTENT", shortcutIntentForAccount);
            createShortcutResultIntent.putExtra("android.intent.extra.shortcut.NAME", name);
            createShortcutResultIntent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", fromContext);
        } else {
            ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
            shortcutInfoCompat.mContext = this;
            shortcutInfoCompat.mId = uuid;
            shortcutInfoCompat.mLabel = name;
            PorterDuff.Mode mode = IconCompat.DEFAULT_TINT_MODE;
            shortcutInfoCompat.mIcon = IconCompat.createWithResource(getResources(), getPackageName(), i);
            shortcutInfoCompat.mIntents = new Intent[]{shortcutIntentForAccount};
            if (TextUtils.isEmpty(shortcutInfoCompat.mLabel)) {
                UriKt$$ExternalSyntheticBUOutline0.m("Shortcut must have a non-empty label");
                return;
            }
            Intent[] intentArr = shortcutInfoCompat.mIntents;
            if (intentArr == null || intentArr.length == 0) {
                UriKt$$ExternalSyntheticBUOutline0.m("Shortcut must have an intent");
                return;
            }
            createShortcutResultIntent = Api26Impl.createShortcutResultIntent(this, shortcutInfoCompat);
        }
        setResult(-1, createShortcutResultIntent);
        finish();
    }

    @Override // com.fsck.k9.activity.AccountList, com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.shortcut_widget_title);
        if (Intrinsics.areEqual(getIntent().getAction(), "android.intent.action.CREATE_SHORTCUT")) {
            return;
        }
        finish();
    }
}
