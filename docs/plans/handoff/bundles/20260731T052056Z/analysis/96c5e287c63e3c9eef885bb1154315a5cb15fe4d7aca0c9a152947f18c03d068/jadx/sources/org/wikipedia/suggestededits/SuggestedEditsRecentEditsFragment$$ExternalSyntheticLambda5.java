package org.wikipedia.suggestededits;

import android.content.Intent;
import android.view.View;
import androidx.fragment.app.Fragment;
import okhttp3.Cookie;
import okhttp3.Headers;
import org.wikipedia.notifications.NotificationActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SuggestedEditsRecentEditsFragment f$0;

    public /* synthetic */ SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5(SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = suggestedEditsRecentEditsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = this.f$0;
        switch (i) {
            case 0:
                if (Headers.Companion.isLoggedIn()) {
                    int i2 = NotificationActivity.$r8$clinit;
                    suggestedEditsRecentEditsFragment.startActivity(Headers.Companion.newIntent(suggestedEditsRecentEditsFragment.requireActivity()), null);
                    break;
                }
                break;
            case 1:
                Cookie.Companion.submitPatrollerActivityEvent("search_click", "pt_recent_changes", "");
                suggestedEditsRecentEditsFragment.actionMode = suggestedEditsRecentEditsFragment.requireActivity().startSupportActionMode(suggestedEditsRecentEditsFragment.searchActionModeCallback);
                break;
            default:
                Cookie.Companion.submitPatrollerActivityEvent("filters_init", "pt_recent_changes", "");
                Fragment.AnonymousClass10 anonymousClass10 = suggestedEditsRecentEditsFragment.launchFilterActivity;
                int i3 = SuggestedEditsRecentEditsFilterActivity.$r8$clinit;
                anonymousClass10.launch(new Intent(suggestedEditsRecentEditsFragment.requireContext(), (Class<?>) SuggestedEditsRecentEditsFilterActivity.class), null);
                break;
        }
    }
}
