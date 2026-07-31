package org.wikipedia.suggestededits;

import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.caverock.androidsvg.SVGAndroidRenderer;
import okhttp3.Cookie;
import org.wikipedia.R;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SuggestedEditsTasksFragment$$ExternalSyntheticLambda0 implements SwipeRefreshLayout.OnRefreshListener, ActivityResultCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SuggestedEditsTasksFragment f$0;

    public /* synthetic */ SuggestedEditsTasksFragment$$ExternalSyntheticLambda0(SuggestedEditsTasksFragment suggestedEditsTasksFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = suggestedEditsTasksFragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        int i = this.$r8$classId;
        SuggestedEditsTasksFragment suggestedEditsTasksFragment = this.f$0;
        ActivityResult activityResult = (ActivityResult) obj;
        switch (i) {
            case 1:
                activityResult.getClass();
                SVGAndroidRenderer sVGAndroidRenderer = suggestedEditsTasksFragment._binding;
                sVGAndroidRenderer.getClass();
                RecyclerView.Adapter adapter = ((RecyclerView) ((FragmentNewsBinding) sVGAndroidRenderer.document).newsStoryItemsRecyclerview).getAdapter();
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                    break;
                }
                break;
            case 2:
                activityResult.getClass();
                if (activityResult.resultCode == -1) {
                    Prefs prefs = Prefs.INSTANCE;
                    PrefsIoUtil.setBoolean(R.string.preference_key_image_tags_onboarding_shown, false);
                    int i2 = SuggestionsActivity.$r8$clinit;
                    suggestedEditsTasksFragment.startActivity(Cookie.Companion.newIntent(suggestedEditsTasksFragment.requireActivity(), DescriptionEditActivity.Action.ADD_IMAGE_TAGS), null);
                    break;
                }
                break;
            default:
                activityResult.getClass();
                if (activityResult.resultCode == 1) {
                    suggestedEditsTasksFragment.clearContents(true);
                    break;
                }
                break;
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        this.f$0.refreshContents$1();
    }
}
