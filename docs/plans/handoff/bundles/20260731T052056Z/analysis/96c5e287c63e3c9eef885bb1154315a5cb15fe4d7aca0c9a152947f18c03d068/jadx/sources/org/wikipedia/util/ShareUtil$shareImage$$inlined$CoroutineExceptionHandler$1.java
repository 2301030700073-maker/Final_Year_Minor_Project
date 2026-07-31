package org.wikipedia.util;

import android.content.Context;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.R;
import org.wikipedia.dataclient.Service;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsFragmentViewModel;
import org.wikipedia.suggestededits.SuggestedEditsTasksFragmentViewModel;
import org.wikipedia.talk.TalkTopicHolder;
import org.wikipedia.usercontrib.UserInformationDialogViewModel;
import org.wikipedia.util.UiState;
import org.wikipedia.util.log.L;
import org.wikipedia.views.UserMentionInputView;
import org.wikipedia.watchlist.WatchlistExpiryDialogViewModel;
import org.wikipedia.watchlist.WatchlistViewModel;
import org.wikipedia.wiktionary.WiktionaryViewModel;
import org.wikipedia.yearinreview.YearInReviewOnboardingViewModel;
import org.wikipedia.yearinreview.YearInReviewViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ Object $context$inlined;
    public final /* synthetic */ int $r8$classId = 0;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(org.wikipedia.wiktionary.WiktionaryViewModel r2) {
        /*
            r1 = this;
            r0 = 8
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$context$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.wiktionary.WiktionaryViewModel):void");
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        int i = this.$r8$classId;
        Object obj = this.$context$inlined;
        switch (i) {
            case 0:
                Context context = (Context) obj;
                Toast.makeText(context, context.getString(R.string.gallery_share_error, th.getLocalizedMessage()), 0).show();
                break;
            case 1:
                Service.CC.m(th, ((SuggestedEditsImageRecsFragmentViewModel) obj)._uiState, null);
                break;
            case 2:
                Service.CC.m(th, ((SuggestedEditsTasksFragmentViewModel) obj)._uiState, null);
                break;
            case 3:
                L.e(th);
                ShareUtil.showError$default(((TalkTopicHolder) obj).context, th);
                break;
            case 4:
                Service.CC.m(th, ((UserInformationDialogViewModel) obj)._uiState, null);
                break;
            case 5:
                UserMentionInputView userMentionInputView = (UserMentionInputView) obj;
                int i2 = UserMentionInputView.$r8$clinit;
                userMentionInputView.getClass();
                th.printStackTrace();
                ((RecyclerView) userMentionInputView.binding.parts).setVisibility(8);
                break;
            case 6:
                Service.CC.m(th, ((WatchlistExpiryDialogViewModel) obj)._uiState, null);
                break;
            case 7:
                Service.CC.m(th, ((WatchlistViewModel) obj)._uiState, null);
                break;
            case 8:
                Service.CC.m(th, ((WiktionaryViewModel) obj)._uiState, null);
                break;
            case 9:
                L.e(th);
                StateFlowImpl stateFlowImpl = ((YearInReviewOnboardingViewModel) obj)._uiState;
                UiState.Error error = new UiState.Error(th);
                stateFlowImpl.getClass();
                stateFlowImpl.updateState(null, error);
                break;
            default:
                L.e(th);
                StateFlowImpl stateFlowImpl2 = ((YearInReviewViewModel) obj)._uiScreenListState;
                UiState.Error error2 = new UiState.Error(th);
                stateFlowImpl2.getClass();
                stateFlowImpl2.updateState(null, error2);
                break;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(org.wikipedia.suggestededits.SuggestedEditsImageRecsFragmentViewModel r2) {
        /*
            r1 = this;
            r0 = 1
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$context$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.suggestededits.SuggestedEditsImageRecsFragmentViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(org.wikipedia.suggestededits.SuggestedEditsTasksFragmentViewModel r2) {
        /*
            r1 = this;
            r0 = 2
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$context$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.suggestededits.SuggestedEditsTasksFragmentViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(org.wikipedia.talk.TalkTopicHolder r2) {
        /*
            r1 = this;
            r0 = 3
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$context$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.talk.TalkTopicHolder):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(org.wikipedia.usercontrib.UserInformationDialogViewModel r2) {
        /*
            r1 = this;
            r0 = 4
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$context$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.usercontrib.UserInformationDialogViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(org.wikipedia.views.UserMentionInputView r2) {
        /*
            r1 = this;
            r0 = 5
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$context$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.views.UserMentionInputView):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(org.wikipedia.watchlist.WatchlistExpiryDialogViewModel r2) {
        /*
            r1 = this;
            r0 = 6
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$context$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.watchlist.WatchlistExpiryDialogViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(org.wikipedia.watchlist.WatchlistViewModel r2) {
        /*
            r1 = this;
            r0 = 7
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$context$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.watchlist.WatchlistViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(android.content.Context r2) {
        /*
            r1 = this;
            r0 = 0
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$context$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1.<init>(android.content.Context):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(org.wikipedia.yearinreview.YearInReviewOnboardingViewModel r2) {
        /*
            r1 = this;
            r0 = 9
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$context$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.yearinreview.YearInReviewOnboardingViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(org.wikipedia.yearinreview.YearInReviewViewModel r2) {
        /*
            r1 = this;
            r0 = 10
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$context$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.yearinreview.YearInReviewViewModel):void");
    }
}
