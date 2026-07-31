package net.thunderbird.app.common.startup;

import android.content.Intent;
import com.fsck.k9.K9;
import com.fsck.k9.activity.UpgradeDatabaseActivity;
import com.fsck.k9.ui.base.BaseActivity;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultDatabaseUpgradeInterceptor {
    public static boolean checkAndHandleUpgrade(BaseActivity baseActivity, Intent intent) {
        intent.getClass();
        if (K9.INSTANCE.areDatabasesUpToDate()) {
            return false;
        }
        Intent intent2 = new Intent(baseActivity, (Class<?>) UpgradeDatabaseActivity.class);
        intent2.setAction("upgrade_databases");
        intent2.putExtra("start_intent", intent);
        intent2.addFlags(536903680);
        baseActivity.startActivity(intent2);
        return true;
    }
}
