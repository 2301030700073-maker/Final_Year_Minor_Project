package org.wikipedia.main;

import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import com.google.android.material.navigation.NavigationBarView;
import org.wikipedia.R;
import org.wikipedia.feed.image.FeaturedImage;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MainFragment$$ExternalSyntheticLambda0 implements ActivityResultCallback, NavigationBarView.OnItemSelectedListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MainFragment f$0;

    public /* synthetic */ MainFragment$$ExternalSyntheticLambda0(MainFragment mainFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = mainFragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        int i = this.$r8$classId;
        MainFragment mainFragment = this.f$0;
        switch (i) {
            case 0:
                if (!((Boolean) obj).booleanValue()) {
                    ShareUtil.showMessage(R.string.gallery_save_image_write_permission_rationale, mainFragment);
                    break;
                } else {
                    FeaturedImage featuredImage = mainFragment.pendingDownloadImage;
                    if (featuredImage != null) {
                        mainFragment.download(featuredImage);
                        break;
                    }
                }
                break;
            default:
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                if (activityResult.resultCode == -1) {
                    mainFragment.onNavigateTo(NavTab.EDITS);
                    break;
                }
                break;
        }
    }
}
