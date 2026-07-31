package us.shandian.giga.ui.adapter;

import android.content.Intent;
import androidx.work.OperationKt;
import com.google.android.material.snackbar.Snackbar;
import java.util.Iterator;
import us.shandian.giga.get.DownloadMission;
import us.shandian.giga.get.Mission;
import us.shandian.giga.ui.adapter.MissionAdapter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class MissionAdapter$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MissionAdapter f$0;

    public /* synthetic */ MissionAdapter$$ExternalSyntheticLambda1(MissionAdapter missionAdapter, int i) {
        this.$r8$classId = i;
        this.f$0 = missionAdapter;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        int i2 = 1;
        MissionAdapter missionAdapter = this.f$0;
        switch (i) {
            case 0:
                Snackbar snackbar = missionAdapter.mSnackbar;
                if (snackbar != null) {
                    snackbar.dispatchDismiss(3);
                }
                Iterator it = missionAdapter.mHidden.iterator();
                while (it.hasNext()) {
                    Mission mission = (Mission) it.next();
                    if (mission != null) {
                        missionAdapter.mDownloadManager.deleteMission(mission, true);
                        missionAdapter.mContext.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", mission.storage.getUri()));
                    }
                    it.remove();
                }
                break;
            default:
                Iterator it2 = missionAdapter.mPendingDownloadsItems.iterator();
                while (it2.hasNext()) {
                    MissionAdapter.ViewHolderItem viewHolderItem = (MissionAdapter.ViewHolderItem) it2.next();
                    if (((DownloadMission) ((Mission) viewHolderItem.item.array)).running) {
                        missionAdapter.updateProgress(viewHolderItem);
                    }
                }
                OperationKt.postDelayed(missionAdapter.mHandler, new MissionAdapter$$ExternalSyntheticLambda1(missionAdapter, i2), "updater", 1000L);
                break;
        }
    }
}
