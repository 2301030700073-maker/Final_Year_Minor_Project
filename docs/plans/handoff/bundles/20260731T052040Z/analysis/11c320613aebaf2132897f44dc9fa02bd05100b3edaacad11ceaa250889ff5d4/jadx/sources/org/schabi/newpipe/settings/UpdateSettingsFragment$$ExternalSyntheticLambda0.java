package org.schabi.newpipe.settings;

import android.content.DialogInterface;
import androidx.preference.PreferenceManager;
import androidx.sqlite.SQLite;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class UpdateSettingsFragment$$ExternalSyntheticLambda0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ UpdateSettingsFragment$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        Object obj = this.f$0;
        switch (i2) {
            case 0:
                MainActivity mainActivity = (MainActivity) obj;
                int i3 = UpdateSettingsFragment.$r8$clinit;
                dialogInterface.dismiss();
                mainActivity.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(mainActivity), 0).edit().putBoolean(mainActivity.getString(R.string.update_app_key), true).putBoolean(mainActivity.getString(R.string.update_check_consent_key), true).apply();
                break;
            case 1:
                MainActivity mainActivity2 = (MainActivity) obj;
                int i4 = UpdateSettingsFragment.$r8$clinit;
                dialogInterface.dismiss();
                mainActivity2.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(mainActivity2), 0).edit().putBoolean(mainActivity2.getString(R.string.update_app_key), false).putBoolean(mainActivity2.getString(R.string.update_check_consent_key), true).apply();
                break;
            default:
                BackupRestoreSettingsFragment backupRestoreSettingsFragment = (BackupRestoreSettingsFragment) obj;
                int i5 = BackupRestoreSettingsFragment.$r8$clinit;
                PreferenceManager.getDefaultSharedPreferences(backupRestoreSettingsFragment.requireContext()).edit().clear().apply();
                if (backupRestoreSettingsFragment.getActivity() != null) {
                    SQLite.restartApp(backupRestoreSettingsFragment.getActivity());
                    break;
                }
                break;
        }
    }
}
