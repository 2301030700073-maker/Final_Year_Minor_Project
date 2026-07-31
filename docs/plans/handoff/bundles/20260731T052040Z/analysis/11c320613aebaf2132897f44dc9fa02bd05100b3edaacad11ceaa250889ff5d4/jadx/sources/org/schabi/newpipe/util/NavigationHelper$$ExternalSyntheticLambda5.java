package org.schabi.newpipe.util;

import android.content.DialogInterface;
import android.util.Log;
import org.schabi.newpipe.local.playlist.LocalPlaylistFragment;
import org.schabi.newpipe.settings.BackupRestoreSettingsFragment;
import org.schabi.newpipe.settings.HistorySettingsFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NavigationHelper$$ExternalSyntheticLambda5 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ NavigationHelper$$ExternalSyntheticLambda5(int i) {
        this.$r8$classId = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.$r8$classId) {
            case 0:
                Log.i("NavigationHelper", "You unlocked a secret unicorn.");
                break;
            case 1:
                int i2 = LocalPlaylistFragment.$r8$clinit;
                dialogInterface.cancel();
                break;
            case 2:
                int i3 = BackupRestoreSettingsFragment.$r8$clinit;
                break;
            case 3:
                int i4 = BackupRestoreSettingsFragment.$r8$clinit;
                dialogInterface.cancel();
                break;
            case 4:
                int i5 = HistorySettingsFragment.$r8$clinit;
                dialogInterface.dismiss();
                break;
            case 5:
                int i6 = HistorySettingsFragment.$r8$clinit;
                dialogInterface.dismiss();
                break;
            case 6:
                int i7 = HistorySettingsFragment.$r8$clinit;
                dialogInterface.dismiss();
                break;
            default:
                dialogInterface.cancel();
                break;
        }
    }
}
