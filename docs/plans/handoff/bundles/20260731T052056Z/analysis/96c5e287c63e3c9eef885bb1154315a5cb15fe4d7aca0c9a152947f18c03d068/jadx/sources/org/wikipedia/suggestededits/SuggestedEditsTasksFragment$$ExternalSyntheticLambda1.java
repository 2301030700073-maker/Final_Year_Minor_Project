package org.wikipedia.suggestededits;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import androidx.fragment.app.Fragment;
import okhttp3.Headers;
import okio.Path;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SuggestedEditsTasksFragment$$ExternalSyntheticLambda1 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SuggestedEditsTasksFragment f$0;

    public /* synthetic */ SuggestedEditsTasksFragment$$ExternalSyntheticLambda1(SuggestedEditsTasksFragment suggestedEditsTasksFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = suggestedEditsTasksFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        SuggestedEditsTasksFragment suggestedEditsTasksFragment = this.f$0;
        switch (i) {
            case 0:
                suggestedEditsTasksFragment.refreshContents$1();
                break;
            case 1:
                suggestedEditsTasksFragment.setIPBlockedStatus();
                break;
            case 2:
                suggestedEditsTasksFragment.getViewModel().totalContributions = 0;
                suggestedEditsTasksFragment.setFinalUIState();
                break;
            case 3:
                Fragment.AnonymousClass10 anonymousClass10 = suggestedEditsTasksFragment.requestLogin;
                int i2 = LoginActivity.$r8$clinit;
                anonymousClass10.launch(Path.Companion.newIntent(suggestedEditsTasksFragment.requireContext(), "suggestededits", true), null);
                break;
            case 4:
                WikiGamesEvent.submit$default("edit_home", "learn_more_click", Integer.valueOf(suggestedEditsTasksFragment.getViewModel().totalContributions), null, null, null, null, null, null, null, null, null, 16372);
                Context requireContext = suggestedEditsTasksFragment.requireContext();
                String string = suggestedEditsTasksFragment.getString(R.string.edit_screen_learn_more_url);
                string.getClass();
                Uri parse = Uri.parse(string);
                parse.getClass();
                UriUtil.visitInExternalBrowser(requireContext, parse);
                break;
            case 5:
                Fragment.AnonymousClass10 anonymousClass102 = suggestedEditsTasksFragment.requestLogin;
                int i3 = LoginActivity.$r8$clinit;
                anonymousClass102.launch(Path.Companion.newIntent(suggestedEditsTasksFragment.requireContext(), "suggestededits", true), null);
                break;
            case 6:
                Context requireContext2 = suggestedEditsTasksFragment.requireContext();
                Uri parse2 = Uri.parse("https://en.wikipedia.org/wiki/Help:Introduction_to_editing_with_Wiki_Markup/1");
                parse2.getClass();
                UriUtil.visitInExternalBrowser(requireContext2, parse2);
                break;
            default:
                if (Headers.Companion.isLoggedIn()) {
                    int i4 = NotificationActivity.$r8$clinit;
                    suggestedEditsTasksFragment.startActivity(Headers.Companion.newIntent(suggestedEditsTasksFragment.requireActivity()), null);
                    break;
                }
                break;
        }
    }
}
