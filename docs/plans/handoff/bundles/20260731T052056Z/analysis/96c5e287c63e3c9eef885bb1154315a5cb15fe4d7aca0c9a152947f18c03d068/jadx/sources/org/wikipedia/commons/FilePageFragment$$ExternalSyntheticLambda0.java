package org.wikipedia.commons;

import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.LinkedHashMap;
import org.wikipedia.R;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.suggestededits.SuggestedEditsSnackbars;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class FilePageFragment$$ExternalSyntheticLambda0 implements ActivityResultCallback, SwipeRefreshLayout.OnRefreshListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FilePageFragment f$0;

    public /* synthetic */ FilePageFragment$$ExternalSyntheticLambda0(FilePageFragment filePageFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = filePageFragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        int i = this.$r8$classId;
        FilePageFragment filePageFragment = this.f$0;
        switch (i) {
            case 0:
                if (!((Boolean) obj).booleanValue()) {
                    ShareUtil.showMessage(filePageFragment.requireActivity(), R.string.gallery_save_image_write_permission_rationale);
                    break;
                } else {
                    filePageFragment.downloadImage();
                    break;
                }
            case 1:
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                if (activityResult.resultCode == -1) {
                    LinkedHashMap linkedHashMap = SuggestedEditsSnackbars.snackbarSessionMap;
                    SuggestedEditsSnackbars.show$default(filePageFragment.requireActivity(), DescriptionEditActivity.Action.ADD_CAPTION, null, 56);
                    filePageFragment.getViewModel().loadImageInfo();
                    break;
                }
                break;
            default:
                ActivityResult activityResult2 = (ActivityResult) obj;
                activityResult2.getClass();
                if (activityResult2.resultCode == -1) {
                    LinkedHashMap linkedHashMap2 = SuggestedEditsSnackbars.snackbarSessionMap;
                    SuggestedEditsSnackbars.show$default(filePageFragment.requireActivity(), DescriptionEditActivity.Action.ADD_IMAGE_TAGS, null, 56);
                    filePageFragment.getViewModel().loadImageInfo();
                    break;
                }
                break;
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        FilePageFragment filePageFragment = this.f$0;
        SVGAndroidRenderer sVGAndroidRenderer = filePageFragment._binding;
        sVGAndroidRenderer.getClass();
        ((WikiSwipeRefreshLayout) sVGAndroidRenderer.parentStack).setRefreshing(false);
        filePageFragment.getViewModel().loadImageInfo();
    }
}
