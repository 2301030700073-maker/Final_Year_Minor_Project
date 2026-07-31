package org.wikipedia.login;

import com.google.gson.GsonBuilder;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.categories.CategoryDialogViewModel;
import org.wikipedia.commons.FilePageViewModel;
import org.wikipedia.commons.ImagePreviewViewModel;
import org.wikipedia.dataclient.Service;
import org.wikipedia.donate.DonateViewModel;
import org.wikipedia.donate.donationreminder.DonationReminderUiState;
import org.wikipedia.donate.donationreminder.DonationReminderViewModel;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.edit.preview.EditPreviewFragment;
import org.wikipedia.edit.templates.TemplatesSearchViewModel;
import org.wikipedia.feed.onthisday.OnThisDayViewModel;
import org.wikipedia.gallery.GalleryItemViewModel;
import org.wikipedia.games.GamesHubViewModel;
import org.wikipedia.history.HistoryViewModel;
import org.wikipedia.language.LangLinksViewModel;
import org.wikipedia.language.addlanguages.AddLanguagesViewModel;
import org.wikipedia.login.LoginClient;
import org.wikipedia.notifications.NotificationViewModel;
import org.wikipedia.page.PageAvailableOfflineHandler$Callback;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.linkpreview.LinkPreviewViewModel;
import org.wikipedia.page.linkpreview.LinkPreviewViewState;
import org.wikipedia.places.PlacesFragmentViewModel;
import org.wikipedia.random.RandomViewModel;
import org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsViewModel;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsViewModel;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceViewModel;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;
import org.wikipedia.search.SearchResultsViewModel;
import org.wikipedia.suggestededits.SuggestedEditsCardsItemViewModel;
import org.wikipedia.suggestededits.SuggestedEditsCardsViewModel;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.UiState;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LoginClient$login$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ Object $cb$inlined;
    public final /* synthetic */ int $r8$classId = 20;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(com.google.gson.GsonBuilder r2) {
        /*
            r1 = this;
            r0 = 20
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(com.google.gson.GsonBuilder):void");
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        int i = this.$r8$classId;
        Object obj = this.$cb$inlined;
        switch (i) {
            case 0:
                L.e("Login process failed. " + th);
                ((LoginClient.LoginCallback) obj).error(th);
                break;
            case 1:
                CaptchaHandler captchaHandler = (CaptchaHandler) obj;
                captchaHandler.cancelCaptcha();
                ShareUtil.showError$default(captchaHandler.activity, th);
                break;
            case 2:
                ((CategoryDialogViewModel) obj).categoriesData.postValue(new Resource.Error(th));
                break;
            case 3:
                Service.CC.m(th, ((FilePageViewModel) obj)._uiState, null);
                break;
            case 4:
                Service.CC.m(th, ((ImagePreviewViewModel) obj)._uiState, null);
                break;
            case 5:
                Service.CC.m(th, ((DonateViewModel) obj)._uiState, null);
                break;
            case 6:
                L.e(th);
                StateFlowImpl stateFlowImpl = ((DonationReminderViewModel) obj)._uiState;
                while (true) {
                    Object value = stateFlowImpl.getValue();
                    Throwable th2 = th;
                    if (stateFlowImpl.compareAndSet(value, DonationReminderUiState.copy$default((DonationReminderUiState) value, false, null, null, th2, 7))) {
                        break;
                    } else {
                        th = th2;
                    }
                }
            case 7:
                ((EditSectionActivity) obj).showError$1(th);
                break;
            case 8:
                ((EditPreviewFragment) obj).showPreview(th.getMessage());
                L.e(th);
                break;
            case 9:
                StateFlowImpl stateFlowImpl2 = ((TemplatesSearchViewModel) obj).uiState;
                TemplatesSearchViewModel.UiState.LoadError loadError = new TemplatesSearchViewModel.UiState.LoadError(th);
                stateFlowImpl2.getClass();
                stateFlowImpl2.updateState(null, loadError);
                break;
            case 10:
                Service.CC.m(th, ((OnThisDayViewModel) obj)._uiState, null);
                break;
            case 11:
                Service.CC.m(th, ((GalleryItemViewModel) obj)._uiState, null);
                break;
            case 12:
                StateFlowImpl stateFlowImpl3 = ((GamesHubViewModel) obj)._onThisDayGameUiState;
                UiState.Error error = new UiState.Error(th);
                stateFlowImpl3.getClass();
                stateFlowImpl3.updateState(null, error);
                break;
            case IMAGE_VALUE:
                ((HistoryViewModel) obj).historyItems.postValue(new Resource.Error(th));
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                StateFlowImpl stateFlowImpl4 = ((LangLinksViewModel) obj)._uiState;
                UiState.Error error2 = new UiState.Error(th);
                stateFlowImpl4.getClass();
                stateFlowImpl4.updateState(null, error2);
                break;
            case 15:
                L.e(th);
                StateFlowImpl stateFlowImpl5 = ((AddLanguagesViewModel) obj)._uiState;
                UiState.Error error3 = new UiState.Error(th);
                stateFlowImpl5.getClass();
                stateFlowImpl5.updateState(null, error3);
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                Service.CC.m(th, ((NotificationViewModel) obj)._uiState, null);
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                ((PageAvailableOfflineHandler$Callback) obj).onFinish(false);
                L.w(th);
                break;
            case RADIO_GROUP_VALUE:
                ((SearchFragment$$ExternalSyntheticLambda1) obj).onFinish(false);
                L.w(th);
                break;
            case RADIO_BUTTON_VALUE:
                ShareUtil.showError$default(((PageFragment) obj).requireActivity(), th);
                L.LEVEL_D.log("", th);
                break;
            case RADIO_ROW_VALUE:
                L.LEVEL_E.log("Page details network error: ", th);
                PageFragment pageFragment = (PageFragment) ((GsonBuilder) obj).longSerializationPolicy;
                if (pageFragment.isAdded()) {
                    pageFragment.requireActivity().invalidateOptionsMenu();
                    pageFragment.onPageLoadError(th);
                    break;
                }
                break;
            case RADIO_COLUMN_VALUE:
                StateFlowImpl stateFlowImpl6 = ((LinkPreviewViewModel) obj)._uiState;
                LinkPreviewViewState.Error error4 = new LinkPreviewViewState.Error(th);
                stateFlowImpl6.getClass();
                stateFlowImpl6.updateState(null, error4);
                break;
            case SIZE_BOX_VALUE:
                ((PlacesFragmentViewModel) obj).nearbyPagesLiveData.postValue(new Resource.Error(th));
                break;
            case 23:
                RandomViewModel randomViewModel = (RandomViewModel) obj;
                randomViewModel.loading = false;
                randomViewModel.loadError$delegate.setValue(th);
                break;
            case 24:
                Service.CC.m(th, ((RecommendedReadingListInterestsViewModel) obj)._uiState, null);
                break;
            case 25:
                Service.CC.m(th, ((RecommendedReadingListSettingsViewModel) obj)._resetUiState, null);
                break;
            case 26:
                Service.CC.m(th, ((RecommendedReadingListSourceViewModel) obj)._uiSourceState, null);
                break;
            case 27:
                StateFlowImpl stateFlowImpl7 = ((SearchResultsViewModel) obj)._hybridSearchResultState;
                UiState.Error error5 = new UiState.Error(th);
                stateFlowImpl7.getClass();
                stateFlowImpl7.updateState(null, error5);
                break;
            case 28:
                Service.CC.m(th, ((SuggestedEditsCardsItemViewModel) obj)._uiState, null);
                break;
            default:
                Service.CC.m(th, ((SuggestedEditsCardsViewModel) obj)._uiState, null);
                break;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.captcha.CaptchaHandler r2) {
        /*
            r1 = this;
            r0 = 1
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.captcha.CaptchaHandler):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.categories.CategoryDialogViewModel r2) {
        /*
            r1 = this;
            r0 = 2
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.categories.CategoryDialogViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.commons.FilePageViewModel r2) {
        /*
            r1 = this;
            r0 = 3
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.commons.FilePageViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.commons.ImagePreviewViewModel r2) {
        /*
            r1 = this;
            r0 = 4
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.commons.ImagePreviewViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.donate.DonateViewModel r2) {
        /*
            r1 = this;
            r0 = 5
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.donate.DonateViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.donate.donationreminder.DonationReminderViewModel r2) {
        /*
            r1 = this;
            r0 = 6
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.donate.donationreminder.DonationReminderViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.edit.EditSectionActivity r2) {
        /*
            r1 = this;
            r0 = 7
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.edit.EditSectionActivity):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.edit.preview.EditPreviewFragment r2) {
        /*
            r1 = this;
            r0 = 8
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.edit.preview.EditPreviewFragment):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.edit.templates.TemplatesSearchViewModel r2) {
        /*
            r1 = this;
            r0 = 9
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.edit.templates.TemplatesSearchViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.feed.onthisday.OnThisDayViewModel r2) {
        /*
            r1 = this;
            r0 = 10
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.feed.onthisday.OnThisDayViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.gallery.GalleryItemViewModel r2) {
        /*
            r1 = this;
            r0 = 11
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.gallery.GalleryItemViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.games.GamesHubViewModel r2) {
        /*
            r1 = this;
            r0 = 12
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.games.GamesHubViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.history.HistoryViewModel r2) {
        /*
            r1 = this;
            r0 = 13
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.history.HistoryViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.language.LangLinksViewModel r2) {
        /*
            r1 = this;
            r0 = 14
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.language.LangLinksViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.language.addlanguages.AddLanguagesViewModel r2) {
        /*
            r1 = this;
            r0 = 15
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.language.addlanguages.AddLanguagesViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.login.LoginClient.LoginCallback r2) {
        /*
            r1 = this;
            r0 = 0
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.login.LoginClient$LoginCallback):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.notifications.NotificationViewModel r2) {
        /*
            r1 = this;
            r0 = 16
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.notifications.NotificationViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.page.PageAvailableOfflineHandler$Callback r2) {
        /*
            r1 = this;
            r0 = 17
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.page.PageAvailableOfflineHandler$Callback):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.page.PageFragment r2) {
        /*
            r1 = this;
            r0 = 19
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.page.PageFragment):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.page.linkpreview.LinkPreviewViewModel r2) {
        /*
            r1 = this;
            r0 = 21
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.page.linkpreview.LinkPreviewViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.places.PlacesFragmentViewModel r2) {
        /*
            r1 = this;
            r0 = 22
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.places.PlacesFragmentViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.random.RandomViewModel r2) {
        /*
            r1 = this;
            r0 = 23
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.random.RandomViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsViewModel r2) {
        /*
            r1 = this;
            r0 = 24
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsViewModel r2) {
        /*
            r1 = this;
            r0 = 25
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.readinglist.recommended.RecommendedReadingListSourceViewModel r2) {
        /*
            r1 = this;
            r0 = 26
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.readinglist.recommended.RecommendedReadingListSourceViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1 r2) {
        /*
            r1 = this;
            r0 = 18
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.search.SearchResultsViewModel r2) {
        /*
            r1 = this;
            r0 = 27
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.search.SearchResultsViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.suggestededits.SuggestedEditsCardsItemViewModel r2) {
        /*
            r1 = this;
            r0 = 28
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.suggestededits.SuggestedEditsCardsItemViewModel):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoginClient$login$$inlined$CoroutineExceptionHandler$1(org.wikipedia.suggestededits.SuggestedEditsCardsViewModel r2) {
        /*
            r1 = this;
            r0 = 29
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$cb$inlined = r2
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.suggestededits.SuggestedEditsCardsViewModel):void");
    }
}
