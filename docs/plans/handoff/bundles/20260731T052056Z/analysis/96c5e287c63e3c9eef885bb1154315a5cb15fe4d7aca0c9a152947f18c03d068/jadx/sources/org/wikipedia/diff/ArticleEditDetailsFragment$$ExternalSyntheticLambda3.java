package org.wikipedia.diff;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Headers;
import okhttp3.Request;
import okio.Okio__JvmOkioKt;
import okio.Okio__OkioKt;
import okio.Path;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.commons.FilePageActivity;
import org.wikipedia.databinding.FragmentArticleEditDetailsBinding;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewDialog;
import org.wikipedia.staticdata.UserTalkAliasData;
import org.wikipedia.talk.TalkTopicsActivity;
import org.wikipedia.talk.TalkTopicsViewModel$subscribeTopic$1;
import org.wikipedia.talk.template.TalkTemplatesActivity;
import org.wikipedia.util.UriUtil;
import org.wikipedia.watchlist.WatchlistExpiryDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ArticleEditDetailsFragment$$ExternalSyntheticLambda3 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ArticleEditDetailsFragment f$0;

    public /* synthetic */ ArticleEditDetailsFragment$$ExternalSyntheticLambda3(ArticleEditDetailsFragment articleEditDetailsFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = articleEditDetailsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        int i2 = 0;
        int i3 = 1;
        ArticleEditDetailsFragment articleEditDetailsFragment = this.f$0;
        switch (i) {
            case 0:
                if (view.getId() == R.id.oresDamagingButton) {
                    articleEditDetailsFragment.sendPatrollerExperienceEvent("quality_click", "pt_edit", "");
                } else {
                    articleEditDetailsFragment.sendPatrollerExperienceEvent("intent_click", "pt_edit", "");
                }
                Context requireContext = articleEditDetailsFragment.requireContext();
                Uri parse = Uri.parse(articleEditDetailsFragment.getString(R.string.quality_and_intent_filters_url));
                parse.getClass();
                UriUtil.visitInExternalBrowser(requireContext, parse);
                break;
            case 1:
                if (articleEditDetailsFragment.getViewModel().pageTitle.namespace() != Namespace.USER_TALK && articleEditDetailsFragment.getViewModel().pageTitle.namespace() != Namespace.TALK) {
                    if (articleEditDetailsFragment.getViewModel().pageTitle.namespace() != Namespace.FILE) {
                        if (!articleEditDetailsFragment.getViewModel().pageTitle.wikiSite.dbName().equals("wikidatawiki") && !articleEditDetailsFragment.getViewModel().pageTitle.wikiSite.dbName().equals("commonswiki")) {
                            FragmentManagerImpl childFragmentManager = articleEditDetailsFragment.getChildFragmentManager();
                            childFragmentManager.getClass();
                            HistoryEntry historyEntry = new HistoryEntry(33, articleEditDetailsFragment.getViewModel().pageTitle);
                            LinkPreviewDialog linkPreviewDialog = new LinkPreviewDialog();
                            linkPreviewDialog.setArguments(UStringsKt.bundleOf(new Pair("entry", historyEntry), new Pair("location", null), new Pair("lastKnownLocation", null)));
                            Okio__OkioKt.show(childFragmentManager, linkPreviewDialog);
                            break;
                        } else {
                            Okio__JvmOkioKt.openInCustomTab(articleEditDetailsFragment.requireContext(), articleEditDetailsFragment.getViewModel().pageTitle.getUri());
                            break;
                        }
                    } else {
                        int i4 = FilePageActivity.$r8$clinit;
                        articleEditDetailsFragment.startActivity(Path.Companion.newIntent(articleEditDetailsFragment.requireContext(), articleEditDetailsFragment.getViewModel().pageTitle, true), null);
                        break;
                    }
                } else {
                    int i5 = TalkTopicsActivity.$r8$clinit;
                    articleEditDetailsFragment.startActivity(Headers.Companion.newIntent(articleEditDetailsFragment.requireContext(), articleEditDetailsFragment.getViewModel().pageTitle, Constants.InvokeSource.DIFF_ACTIVITY), null);
                    break;
                }
                break;
            case 2:
                articleEditDetailsFragment.sendPatrollerExperienceEvent("edit_right_chevron_click", "pt_edit", "");
                articleEditDetailsFragment.setLoadingState();
                ArticleEditDetailsViewModel viewModel = articleEditDetailsFragment.getViewModel();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel, 4), null, new ArticleEditDetailsViewModel$goForward$2(viewModel, viewModel.revisionToId, null, 0), 2);
                break;
            case 3:
                articleEditDetailsFragment.sendPatrollerExperienceEvent("edit_left_chevron_click", "pt_edit", "");
                articleEditDetailsFragment.setLoadingState();
                ArticleEditDetailsViewModel viewModel2 = articleEditDetailsFragment.getViewModel();
                long j = viewModel2.revisionFromId;
                viewModel2.revisionToId = j;
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel2, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel2, j, -1L, (Continuation) null), 2);
                break;
            case 4:
                MwQueryPage.Revision revision = articleEditDetailsFragment.getViewModel().revisionFrom;
                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding = articleEditDetailsFragment._binding;
                fragmentArticleEditDetailsBinding.getClass();
                articleEditDetailsFragment.showUserPopupMenu(revision, true, fragmentArticleEditDetailsBinding.usernameFromButton);
                break;
            case 5:
                MwQueryPage.Revision revision2 = articleEditDetailsFragment.getViewModel().revisionTo;
                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding2 = articleEditDetailsFragment._binding;
                fragmentArticleEditDetailsBinding2.getClass();
                articleEditDetailsFragment.showUserPopupMenu(revision2, false, fragmentArticleEditDetailsBinding2.usernameToButton);
                break;
            case 6:
                articleEditDetailsFragment.sendPatrollerExperienceEvent("thank_init", "pt_toolbar", "");
                FrameLayout frameLayout = new FrameLayout(articleEditDetailsFragment.requireContext());
                MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(articleEditDetailsFragment.requireActivity(), 0);
                ((AlertController.AlertParams) materialAlertDialogBuilder.array).mView = frameLayout;
                materialAlertDialogBuilder.setPositiveButton(R.string.thank_dialog_positive_button_text, new ArticleEditDetailsFragment$$ExternalSyntheticLambda26(articleEditDetailsFragment, i2));
                materialAlertDialogBuilder.setNegativeButton(R.string.thank_dialog_negative_button_text, new ArticleEditDetailsFragment$$ExternalSyntheticLambda26(articleEditDetailsFragment, i3));
                AlertDialog create = materialAlertDialogBuilder.create();
                create.getLayoutInflater().inflate(R.layout.view_thank_dialog, frameLayout);
                create.show();
                break;
            case 7:
                boolean z = articleEditDetailsFragment.getViewModel().revisionFrom != null && Headers.Companion.isLoggedIn();
                if (Headers.Companion.isLoggedIn() && articleEditDetailsFragment.getViewModel().hasRollbackRights && !articleEditDetailsFragment.getViewModel().canGoForward) {
                    i2 = 1;
                }
                EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
                PageTitle pageTitle = articleEditDetailsFragment.getViewModel().pageTitle;
                ViewSizeResolver$CC.m(companion, pageTitle, "saveIntent", "other", pageTitle);
                if (z && i2 != 0) {
                    Context requireContext2 = articleEditDetailsFragment.requireContext();
                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding3 = articleEditDetailsFragment._binding;
                    fragmentArticleEditDetailsBinding3.getClass();
                    Request.Builder builder = new Request.Builder(requireContext2, fragmentArticleEditDetailsBinding3.undoLabel, 8388613);
                    new SupportMenuInflater(requireContext2).inflate(R.menu.menu_context_undo, (MenuBuilder) builder.url);
                    ((MenuPopupHelper) builder.headers).setForceShowIcon(true);
                    builder.body = new ArticleEditDetailsFragment$$ExternalSyntheticLambda30(articleEditDetailsFragment);
                    builder.show();
                    break;
                } else if (z) {
                    articleEditDetailsFragment.sendPatrollerExperienceEvent("undo_init", "pt_toolbar", "");
                    articleEditDetailsFragment.showUndoDialog();
                    break;
                }
                break;
            case 8:
                articleEditDetailsFragment.sendPatrollerExperienceEvent(articleEditDetailsFragment.getViewModel().isWatched ? "unwatch_init" : "watch_init", "pt_toolbar", "");
                ArticleEditDetailsViewModel viewModel3 = articleEditDetailsFragment.getViewModel();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel3), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel3, 7), null, new TalkTopicsViewModel$subscribeTopic$1(viewModel3, articleEditDetailsFragment.getViewModel().isWatched, (Continuation) null, 3), 2);
                break;
            case 9:
                articleEditDetailsFragment.sendPatrollerExperienceEvent("warn_init", "pt_toolbar", "");
                MwQueryPage.Revision revision3 = articleEditDetailsFragment.getViewModel().revisionTo;
                if (revision3 != null) {
                    PageTitle pageTitle2 = new PageTitle(UserTalkAliasData.valueFor(articleEditDetailsFragment.getViewModel().pageTitle.wikiSite.languageCode), revision3.user, articleEditDetailsFragment.getViewModel().pageTitle.wikiSite);
                    Fragment.AnonymousClass10 anonymousClass10 = articleEditDetailsFragment.requestTalk;
                    int i6 = TalkTemplatesActivity.$r8$clinit;
                    anonymousClass10.launch(Path.Companion.newIntent$default(articleEditDetailsFragment.requireContext(), pageTitle2, articleEditDetailsFragment.getViewModel().revisionFromId, articleEditDetailsFragment.getViewModel().revisionToId, 4), null);
                    break;
                }
                break;
            case 10:
                articleEditDetailsFragment.requireActivity().finish();
                break;
            default:
                FragmentManagerImpl childFragmentManager2 = articleEditDetailsFragment.getChildFragmentManager();
                childFragmentManager2.getClass();
                PageTitle pageTitle3 = articleEditDetailsFragment.getViewModel().pageTitle;
                pageTitle3.getClass();
                WatchlistExpiryDialog watchlistExpiryDialog = new WatchlistExpiryDialog();
                watchlistExpiryDialog.setArguments(UStringsKt.bundleOf(new Pair("pageTitle", pageTitle3)));
                Okio__OkioKt.show(childFragmentManager2, watchlistExpiryDialog);
                break;
        }
    }
}
