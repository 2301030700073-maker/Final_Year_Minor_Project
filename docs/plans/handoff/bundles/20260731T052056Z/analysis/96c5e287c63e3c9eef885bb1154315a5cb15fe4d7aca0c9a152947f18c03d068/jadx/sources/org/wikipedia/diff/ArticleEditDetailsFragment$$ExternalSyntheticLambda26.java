package org.wikipedia.diff;

import android.content.DialogInterface;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.databinding.FragmentArticleEditDetailsBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.LongPressMenu$show$1$1;
import org.wikipedia.talk.TalkTopicsViewModel$undoSave$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ArticleEditDetailsFragment$$ExternalSyntheticLambda26 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ArticleEditDetailsFragment f$0;

    public /* synthetic */ ArticleEditDetailsFragment$$ExternalSyntheticLambda26(ArticleEditDetailsFragment articleEditDetailsFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = articleEditDetailsFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        ArticleEditDetailsFragment articleEditDetailsFragment = this.f$0;
        switch (i2) {
            case 0:
                articleEditDetailsFragment.sendPatrollerExperienceEvent("thank_confirm", "pt_thank", "");
                ArticleEditDetailsViewModel viewModel = articleEditDetailsFragment.getViewModel();
                WikiSite wikiSite = articleEditDetailsFragment.getViewModel().pageTitle.wikiSite;
                long j = articleEditDetailsFragment.getViewModel().revisionToId;
                wikiSite.getClass();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel, 6), null, new TalkTopicsViewModel$undoSave$1(wikiSite, viewModel, j, (Continuation) null, 8), 2);
                break;
            case 1:
                articleEditDetailsFragment.sendPatrollerExperienceEvent("thank_cancel", "pt_thank", "");
                break;
            case 2:
                articleEditDetailsFragment.sendPatrollerExperienceEvent("rollback_confirm", "pt_edit", "");
                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding = articleEditDetailsFragment._binding;
                fragmentArticleEditDetailsBinding.getClass();
                fragmentArticleEditDetailsBinding.progressBar.setVisibility(0);
                MwQueryPage.Revision revision = articleEditDetailsFragment.getViewModel().revisionTo;
                if (revision != null) {
                    EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
                    PageTitle pageTitle = articleEditDetailsFragment.getViewModel().pageTitle;
                    ViewSizeResolver$CC.m(companion, pageTitle, "saveAttempt", "other", pageTitle);
                    ArticleEditDetailsViewModel viewModel2 = articleEditDetailsFragment.getViewModel();
                    PageTitle pageTitle2 = articleEditDetailsFragment.getViewModel().pageTitle;
                    String str = revision.user;
                    pageTitle2.getClass();
                    str.getClass();
                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel2, 5), null, new LongPressMenu$show$1$1(pageTitle2, str, viewModel2, (Continuation) null, 2), 2);
                    break;
                }
                break;
            default:
                articleEditDetailsFragment.sendPatrollerExperienceEvent("rollback_cancel", "pt_edit", "");
                break;
        }
    }
}
