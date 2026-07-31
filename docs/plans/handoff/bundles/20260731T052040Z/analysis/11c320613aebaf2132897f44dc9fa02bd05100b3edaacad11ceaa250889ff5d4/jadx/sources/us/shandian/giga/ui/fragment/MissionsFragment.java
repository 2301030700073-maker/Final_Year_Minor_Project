package us.shandian.giga.ui.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResultLauncher;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.xwray.groupie.GroupAdapter;
import java.util.Iterator;
import kotlin.Pair;
import org.schabi.newpipe.R;
import org.schabi.newpipe.download.DownloadDialog;
import us.shandian.giga.get.DownloadMission;
import us.shandian.giga.get.Mission;
import us.shandian.giga.service.DownloadManager;
import us.shandian.giga.service.DownloadManagerService;
import us.shandian.giga.ui.adapter.MissionAdapter;
import us.shandian.giga.ui.common.Deleter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class MissionsFragment extends Fragment {
    public MissionAdapter mAdapter;
    public DownloadManagerService.DownloadManagerBinder mBinder;
    public Context mContext;
    public View mEmpty;
    public boolean mForceUpdate;
    public GridLayoutManager mGridManager;
    public boolean mLinear;
    public LinearLayoutManager mLinearManager;
    public RecyclerView mList;
    public SharedPreferences mPrefs;
    public MenuItem mSwitch;
    public MenuItem mClear = null;
    public MenuItem mStart = null;
    public MenuItem mPause = null;
    public DownloadMission unsafeMissionTarget = null;
    public final ActivityResultLauncher requestDownloadSaveAsLauncher = registerForActivityResult(new FragmentManager.FragmentIntentSenderContract(3), new MissionsFragment$$ExternalSyntheticLambda0(this, 0));
    public final DownloadDialog.AnonymousClass1 mConnection = new DownloadDialog.AnonymousClass1(this, 2);

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        this.mContext = context;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.missions, viewGroup, false);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(requireActivity());
        this.mPrefs = defaultSharedPreferences;
        this.mLinear = defaultSharedPreferences.getBoolean("linear", false);
        this.mContext.bindService(new Intent(this.mContext, (Class<?>) DownloadManagerService.class), this.mConnection, 1);
        this.mEmpty = inflate.findViewById(R.id.list_empty_view);
        this.mList = (RecyclerView) inflate.findViewById(R.id.mission_recycler);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getActivity(), 2);
        this.mGridManager = gridLayoutManager;
        gridLayoutManager.mSpanSizeLookup = new GroupAdapter.AnonymousClass2(this, 1);
        this.mLinearManager = new LinearLayoutManager(getActivity());
        setHasOptionsMenu(true);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        MissionAdapter missionAdapter;
        super.onDestroy();
        DownloadManagerService.DownloadManagerBinder downloadManagerBinder = this.mBinder;
        if (downloadManagerBinder == null || (missionAdapter = this.mAdapter) == null) {
            return;
        }
        DownloadManagerService.this.mEchoObservers.remove(missionAdapter);
        DownloadManagerService.this.mDownloadNotificationEnable = true;
        this.mContext.unbindService(this.mConnection);
        MissionAdapter missionAdapter2 = this.mAdapter;
        missionAdapter2.compositeDisposable.dispose();
        Deleter deleter = missionAdapter2.mDeleter;
        if (deleter.items.size() >= 1) {
            deleter.pause();
            Iterator it = deleter.items.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                deleter.mDownloadManager.deleteMission((Mission) pair.getFirst(), ((Boolean) pair.getSecond()).booleanValue());
            }
            deleter.items = null;
        }
        this.mBinder = null;
        this.mAdapter = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.switch_mode) {
            this.mLinear = !this.mLinear;
            updateList();
            return true;
        }
        if (itemId == R.id.clear_list) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext);
            builder.setTitle(R.string.clear_download_history);
            builder.setMessage(R.string.confirm_prompt);
            AlertDialog.Builder negativeButton = builder.setNegativeButton(R.string.clear_download_history, new MissionsFragment$$ExternalSyntheticLambda1(this, 0));
            negativeButton.setNeutralButton(R.string.cancel, null);
            negativeButton.setPositiveButton(R.string.delete_downloaded_files, new MissionsFragment$$ExternalSyntheticLambda1(this, 1)).show();
            return true;
        }
        if (itemId == R.id.start_downloads) {
            DownloadManager downloadManager = DownloadManagerService.this.mManager;
            synchronized (downloadManager) {
                try {
                    Iterator it = downloadManager.mMissionsPending.iterator();
                    while (it.hasNext()) {
                        DownloadMission downloadMission = (DownloadMission) it.next();
                        if (!downloadMission.running && !downloadMission.isCorrupt()) {
                            downloadMission.start();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        }
        if (itemId == R.id.pause_downloads) {
            DownloadManagerService.this.mManager.pauseAllMissions(false);
            MissionAdapter missionAdapter = this.mAdapter;
            Iterator it2 = missionAdapter.mPendingDownloadsItems.iterator();
            while (it2.hasNext()) {
                MissionAdapter.ViewHolderItem viewHolderItem = (MissionAdapter.ViewHolderItem) it2.next();
                if (!((DownloadMission) ((Mission) viewHolderItem.item.array)).running) {
                    missionAdapter.updateProgress(viewHolderItem);
                    viewHolderItem.lastTimestamp = -1L;
                    viewHolderItem.lastSpeedIdx = -1;
                }
            }
        }
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        MissionAdapter missionAdapter = this.mAdapter;
        if (missionAdapter != null) {
            this.mForceUpdate = true;
            DownloadManagerService.this.mEchoObservers.remove(missionAdapter);
            MissionAdapter missionAdapter2 = this.mAdapter;
            missionAdapter2.mDeleter.pause();
            missionAdapter2.mHandler.removeCallbacksAndMessages("updater");
        }
        DownloadManagerService.DownloadManagerBinder downloadManagerBinder = this.mBinder;
        if (downloadManagerBinder != null) {
            DownloadManagerService.this.mDownloadNotificationEnable = true;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPrepareOptionsMenu(Menu menu) {
        this.mSwitch = menu.findItem(R.id.switch_mode);
        this.mClear = menu.findItem(R.id.clear_list);
        this.mStart = menu.findItem(R.id.start_downloads);
        this.mPause = menu.findItem(R.id.pause_downloads);
        if (this.mAdapter != null) {
            setAdapterButtons();
        }
        super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        MissionAdapter missionAdapter = this.mAdapter;
        if (missionAdapter != null) {
            missionAdapter.onResume();
            if (this.mForceUpdate) {
                this.mForceUpdate = false;
                MissionAdapter missionAdapter2 = this.mAdapter;
                DownloadManager.MissionIterator missionIterator = missionAdapter2.mIterator;
                missionIterator.snapshot = missionIterator.getSpecialItems();
                missionIterator.current = null;
                Iterator it = missionAdapter2.mPendingDownloadsItems.iterator();
                while (it.hasNext()) {
                    MissionAdapter.ViewHolderItem viewHolderItem = (MissionAdapter.ViewHolderItem) it.next();
                    viewHolderItem.lastTimestamp = -1L;
                    viewHolderItem.lastSpeedIdx = -1;
                }
                missionAdapter2.notifyDataSetChanged();
            }
            DownloadManagerService.DownloadManagerBinder downloadManagerBinder = this.mBinder;
            DownloadManagerService.this.mEchoObservers.add(this.mAdapter);
            this.mAdapter.checkMasterButtonsVisibility();
        }
        DownloadManagerService.DownloadManagerBinder downloadManagerBinder2 = this.mBinder;
        if (downloadManagerBinder2 != null) {
            DownloadManagerService.this.mDownloadNotificationEnable = false;
        }
    }

    public final void setAdapterButtons() {
        MenuItem menuItem = this.mClear;
        if (menuItem == null || this.mStart == null || this.mPause == null) {
            return;
        }
        MissionAdapter missionAdapter = this.mAdapter;
        if (missionAdapter.mClear == null) {
            menuItem.setVisible(missionAdapter.mIterator.hasFinished);
        }
        missionAdapter.mClear = menuItem;
        MissionAdapter missionAdapter2 = this.mAdapter;
        MenuItem menuItem2 = this.mStart;
        MenuItem menuItem3 = this.mPause;
        boolean z = missionAdapter2.mStartButton == null || missionAdapter2.mPauseButton == null;
        missionAdapter2.mStartButton = menuItem2;
        missionAdapter2.mPauseButton = menuItem3;
        if (z) {
            missionAdapter2.checkMasterButtonsVisibility();
        }
    }

    public final void updateList() {
        boolean z = this.mLinear;
        RecyclerView recyclerView = this.mList;
        if (z) {
            recyclerView.setLayoutManager(this.mLinearManager);
        } else {
            recyclerView.setLayoutManager(this.mGridManager);
        }
        this.mList.setAdapter(null);
        this.mAdapter.notifyDataSetChanged();
        MissionAdapter missionAdapter = this.mAdapter;
        boolean z2 = this.mLinear;
        missionAdapter.getClass();
        missionAdapter.mLayout = z2 ? R.layout.mission_item_linear : R.layout.mission_item;
        this.mList.setAdapter(this.mAdapter);
        MenuItem menuItem = this.mSwitch;
        if (menuItem != null) {
            menuItem.setIcon(this.mLinear ? R.drawable.ic_apps : R.drawable.ic_list);
            this.mSwitch.setTitle(this.mLinear ? R.string.grid : R.string.list);
            this.mPrefs.edit().putBoolean("linear", this.mLinear).apply();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mContext = activity;
    }
}
