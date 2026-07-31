package us.shandian.giga.ui.fragment;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import coil3.ComponentRegistry;
import java.util.ArrayList;
import org.schabi.newpipe.R;
import org.schabi.newpipe.settings.tabs.ChooseTabsFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class MissionsFragment$$ExternalSyntheticLambda1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Fragment f$0;

    public /* synthetic */ MissionsFragment$$ExternalSyntheticLambda1(Fragment fragment, int i) {
        this.$r8$classId = i;
        this.f$0 = fragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        Fragment fragment = this.f$0;
        switch (i2) {
            case 0:
                ((MissionsFragment) fragment).mAdapter.clearFinishedDownloads(false);
                break;
            case 1:
                MissionsFragment missionsFragment = (MissionsFragment) fragment;
                AlertDialog.Builder builder = new AlertDialog.Builder(missionsFragment.mContext);
                builder.setTitle(R.string.delete_downloaded_files_confirm);
                builder.setNegativeButton(R.string.cancel, null).setPositiveButton(R.string.ok, new MissionsFragment$$ExternalSyntheticLambda1(missionsFragment, 2)).show();
                break;
            case 2:
                ((MissionsFragment) fragment).mAdapter.clearFinishedDownloads(true);
                break;
            default:
                ChooseTabsFragment chooseTabsFragment = (ChooseTabsFragment) fragment;
                ComponentRegistry.Builder builder2 = chooseTabsFragment.tabsManager;
                ((SharedPreferences) builder2.interceptors).edit().remove((String) builder2.mappers).apply();
                ArrayList arrayList = chooseTabsFragment.tabList;
                arrayList.clear();
                arrayList.addAll(chooseTabsFragment.tabsManager.getTabs());
                chooseTabsFragment.selectedTabsAdapter.notifyDataSetChanged();
                break;
        }
    }
}
