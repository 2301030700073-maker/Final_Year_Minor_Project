package org.wikipedia.readinglist;

import android.view.View;
import androidx.compose.ui.node.NodeChain;
import okio.Path;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.main.MainFragment;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.recommended.RecommendedReadingListHelper;
import org.wikipedia.readinglist.recommended.RecommendedReadingListOnboardingActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.MessageCardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingListsFragment$$ExternalSyntheticLambda4 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingListsFragment f$0;

    public /* synthetic */ ReadingListsFragment$$ExternalSyntheticLambda4(ReadingListsFragment readingListsFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = readingListsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        ReadingListsFragment readingListsFragment = this.f$0;
        switch (i) {
            case 0:
                int i2 = RecommendedReadingListOnboardingActivity.$r8$clinit;
                readingListsFragment.startActivity(RecommendedReadingListHelper.newIntent$default(readingListsFragment.requireContext()), null);
                WikiGamesEvent.submit$default("enter_click", "rrl_saved_prompt", null, null, null, null, null, null, 508);
                break;
            case 1:
                ReadingList readingList = readingListsFragment.recentPreviewSavedReadingList;
                if (readingList != null) {
                    int i3 = ReadingListActivity.$r8$clinit;
                    readingListsFragment.startActivity(NodeUtils.newIntent(readingListsFragment.requireContext(), readingList), null);
                    break;
                }
                break;
            case 2:
                NodeChain nodeChain = readingListsFragment._binding;
                nodeChain.getClass();
                ((MessageCardView) nodeChain.current).setVisibility(8);
                Prefs prefs = Prefs.INSTANCE;
                PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_onboarding_shown, true);
                readingListsFragment.updateEmptyState$1(null);
                String string = readingListsFragment.getString(R.string.recommended_reading_list_onboarding_card_negative_snackbar);
                string.getClass();
                ShareUtil.showMessage(readingListsFragment, string);
                WikiGamesEvent.submit$default("nothanks_click", "rrl_saved_prompt", null, null, null, null, null, null, 508);
                break;
            case 3:
                NodeChain nodeChain2 = readingListsFragment._binding;
                nodeChain2.getClass();
                ((MessageCardView) nodeChain2.current).setVisibility(8);
                Prefs prefs2 = Prefs.INSTANCE;
                PrefsIoUtil.setBoolean(R.string.preference_key_reading_list_sync_reminder_enabled, false);
                break;
            case 4:
                if (readingListsFragment.isAdded() && (readingListsFragment.requireParentFragment() instanceof MainFragment)) {
                    MainFragment mainFragment = (MainFragment) readingListsFragment.requireParentFragment();
                    int i4 = LoginActivity.$r8$clinit;
                    mainFragment.startActivityForResult(Path.Companion.newIntent(mainFragment.requireContext(), "navigation", true), 53, null);
                    break;
                }
                break;
            case 5:
                NodeChain nodeChain3 = readingListsFragment._binding;
                nodeChain3.getClass();
                ((MessageCardView) nodeChain3.current).setVisibility(8);
                Prefs prefs3 = Prefs.INSTANCE;
                PrefsIoUtil.setBoolean(R.string.preference_key_reading_list_login_reminder_enabled, false);
                readingListsFragment.updateEmptyState$1(null);
                break;
            default:
                int i5 = ReadingListActivity.$r8$clinit;
                readingListsFragment.startActivity(NodeUtils.newIntent(readingListsFragment.requireActivity(), ReadingListMode.PREVIEW, null), null);
                break;
        }
    }
}
