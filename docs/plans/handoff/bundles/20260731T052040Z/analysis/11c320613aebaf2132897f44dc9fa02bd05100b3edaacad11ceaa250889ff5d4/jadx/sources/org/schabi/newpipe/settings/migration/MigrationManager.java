package org.schabi.newpipe.settings.migration;

import android.content.Context;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.core.util.Consumer;
import java.util.ArrayList;
import org.schabi.newpipe.R;
import org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda5;
import org.schabi.newpipe.error.ErrorUtil;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class MigrationManager {
    public static final ArrayList MIGRATION_INFO = new ArrayList();

    public static AlertDialog createMigrationInfoDialog(Context context, String str, String str2) {
        AlertDialog.Builder title = new AlertDialog.Builder(context).setTitle(str);
        title.P.mMessage = str2;
        AlertDialog.Builder positiveButton = title.setPositiveButton(R.string.ok, null);
        RouterActivity$$ExternalSyntheticLambda5 routerActivity$$ExternalSyntheticLambda5 = new RouterActivity$$ExternalSyntheticLambda5(context, 2);
        AlertController.AlertParams alertParams = positiveButton.P;
        alertParams.mOnDismissListener = routerActivity$$ExternalSyntheticLambda5;
        alertParams.mCancelable = false;
        return positiveButton.create();
    }

    public static void showUserInfoIfPresent(Context context) {
        ArrayList arrayList = MIGRATION_INFO;
        if (arrayList.isEmpty()) {
            return;
        }
        try {
            ((Consumer) arrayList.get(0)).accept(context);
        } catch (Exception e) {
            ErrorUtil.showUiErrorSnackbar(context, "Showing migration info to the user", e);
            arrayList.remove(0);
            showUserInfoIfPresent(context);
        }
    }
}
