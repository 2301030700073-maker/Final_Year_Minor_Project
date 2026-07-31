package org.schabi.newpipe;

import android.content.Context;
import android.content.DialogInterface;
import org.schabi.newpipe.settings.migration.MigrationManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class RouterActivity$$ExternalSyntheticLambda5 implements DialogInterface.OnDismissListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;

    public /* synthetic */ RouterActivity$$ExternalSyntheticLambda5(Context context, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        int i = this.$r8$classId;
        Context context = this.f$0;
        switch (i) {
            case 0:
                int i2 = RouterActivity.$r8$clinit;
                ((RouterActivity) context).finish();
                break;
            case 1:
                RouterActivity routerActivity = (RouterActivity) context;
                if (!routerActivity.selectionIsDownload && !routerActivity.selectionIsAddToPlaylist) {
                    routerActivity.finish();
                    break;
                }
                break;
            default:
                MigrationManager.MIGRATION_INFO.remove(0);
                MigrationManager.showUserInfoIfPresent(context);
                break;
        }
    }
}
