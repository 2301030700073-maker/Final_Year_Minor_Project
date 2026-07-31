package org.wikipedia.diff;

import android.content.Intent;
import android.os.Parcelable;
import android.view.MenuItem;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.PopupMenu$OnMenuItemClickListener;
import androidx.compose.ui.unit.DpKt;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.snackbar.Snackbar;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.databinding.FragmentArticleEditDetailsBinding;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ArticleEditDetailsFragment$$ExternalSyntheticLambda30 implements ActivityResultCallback, PopupMenu$OnMenuItemClickListener {
    public final /* synthetic */ ArticleEditDetailsFragment f$0;

    public /* synthetic */ ArticleEditDetailsFragment$$ExternalSyntheticLambda30(ArticleEditDetailsFragment articleEditDetailsFragment) {
        this.f$0 = articleEditDetailsFragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        PageTitle pageTitle;
        int i;
        ActivityResult activityResult = (ActivityResult) obj;
        activityResult.getClass();
        int i2 = activityResult.resultCode;
        if (i2 == 1 || i2 == 3) {
            Intent intent = activityResult.data;
            ArticleEditDetailsFragment articleEditDetailsFragment = this.f$0;
            if (intent == null || (pageTitle = (PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent, "title", PageTitle.class))) == null) {
                pageTitle = articleEditDetailsFragment.getViewModel().pageTitle;
            }
            if (i2 == 1) {
                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                String m = ViewSizeResolver$CC.m();
                Prefs prefs = Prefs.INSTANCE;
                EventPlatformClient.submit(new AppInteractionEvent("publish_message_toast", "pt_warning_messages", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                i = R.string.talk_warn_submitted;
            } else {
                EventPlatformClient eventPlatformClient2 = EventPlatformClient.INSTANCE;
                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                String m2 = ViewSizeResolver$CC.m();
                Prefs prefs2 = Prefs.INSTANCE;
                EventPlatformClient.submit(new AppInteractionEvent("publish_message_saved_toast", "pt_warning_messages", "", m2, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                i = R.string.talk_warn_submitted_and_saved;
            }
            AppCompatActivity requireActivity = articleEditDetailsFragment.requireActivity();
            String string = articleEditDetailsFragment.getString(i);
            string.getClass();
            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
            makeSnackbar$default.setAction(R.string.patroller_tasks_patrol_edit_snackbar_view, new HomeFragment$$ExternalSyntheticLambda8(6, articleEditDetailsFragment, pageTitle));
            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding = articleEditDetailsFragment._binding;
            fragmentArticleEditDetailsBinding.getClass();
            makeSnackbar$default.setAnchorView(fragmentArticleEditDetailsBinding.navTabContainer);
            makeSnackbar$default.show();
        }
    }

    @Override // androidx.appcompat.widget.PopupMenu$OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        ArticleEditDetailsFragment articleEditDetailsFragment = this.f$0;
        if (itemId == R.id.menu_undo) {
            articleEditDetailsFragment.sendPatrollerExperienceEvent("undo_menu_init", "pt_toolbar", "");
            articleEditDetailsFragment.showUndoDialog();
            return true;
        }
        if (itemId != R.id.menu_rollback) {
            return false;
        }
        articleEditDetailsFragment.sendPatrollerExperienceEvent("rollback_menu_init", "pt_toolbar", "");
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(articleEditDetailsFragment.requireActivity(), 0);
        materialAlertDialogBuilder.setMessage(R.string.revision_rollback_dialog_title);
        materialAlertDialogBuilder.setPositiveButton(android.R.string.ok, new ArticleEditDetailsFragment$$ExternalSyntheticLambda26(articleEditDetailsFragment, 2));
        materialAlertDialogBuilder.setNegativeButton(android.R.string.cancel, new ArticleEditDetailsFragment$$ExternalSyntheticLambda26(articleEditDetailsFragment, 3));
        materialAlertDialogBuilder.show();
        return true;
    }
}
