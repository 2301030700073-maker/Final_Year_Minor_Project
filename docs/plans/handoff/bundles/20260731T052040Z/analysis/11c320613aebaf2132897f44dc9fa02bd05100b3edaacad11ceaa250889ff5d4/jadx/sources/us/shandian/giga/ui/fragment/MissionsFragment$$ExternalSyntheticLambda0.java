package us.shandian.giga.ui.fragment;

import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.fragment.app.Fragment;
import com.nononsenseapps.filepicker.FilePickerActivity;
import com.nononsenseapps.filepicker.FilePickerFragment;
import java.io.File;
import java.io.IOException;
import kotlin.ranges.RangesKt;
import org.schabi.newpipe.R;
import org.schabi.newpipe.streams.io.StoredFileHelper;
import org.schabi.newpipe.util.FilePickerActivityHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class MissionsFragment$$ExternalSyntheticLambda0 implements ActivityResultCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Fragment f$0;

    public /* synthetic */ MissionsFragment$$ExternalSyntheticLambda0(Fragment fragment, int i) {
        this.$r8$classId = i;
        this.f$0 = fragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        Intent intent;
        int i = this.$r8$classId;
        Fragment fragment = this.f$0;
        switch (i) {
            case 0:
                MissionsFragment missionsFragment = (MissionsFragment) fragment;
                ActivityResult activityResult = (ActivityResult) obj;
                if (activityResult.resultCode == -1 && missionsFragment.unsafeMissionTarget != null && (intent = activityResult.data) != null) {
                    try {
                        Uri data = intent.getData();
                        if (data.getAuthority() != null && FilePickerActivityHelper.isOwnFileUri(missionsFragment.mContext, data)) {
                            data = Uri.fromFile(RangesKt.getFileForUri(data));
                        }
                        missionsFragment.unsafeMissionTarget.storage = new StoredFileHelper(missionsFragment.mContext, (Uri) null, data, missionsFragment.unsafeMissionTarget.storage.getTag());
                        missionsFragment.mAdapter.recoverMission(missionsFragment.unsafeMissionTarget);
                        break;
                    } catch (IOException unused) {
                        Toast.makeText(missionsFragment.mContext, R.string.general_error, 1).show();
                        return;
                    }
                }
                break;
            default:
                FilePickerFragment filePickerFragment = (FilePickerFragment) fragment;
                if (!((Boolean) obj).booleanValue()) {
                    Toast.makeText(filePickerFragment.getContext(), R.string.nnf_permission_external_write_denied, 0).show();
                    FilePickerActivity filePickerActivity = filePickerFragment.mListener;
                    if (filePickerActivity != null) {
                        filePickerActivity.setResult(0);
                        filePickerActivity.finish();
                        break;
                    }
                } else {
                    File file = filePickerFragment.mRequestedPath;
                    if (file != null) {
                        filePickerFragment.refresh(file);
                        break;
                    }
                }
                break;
        }
    }
}
