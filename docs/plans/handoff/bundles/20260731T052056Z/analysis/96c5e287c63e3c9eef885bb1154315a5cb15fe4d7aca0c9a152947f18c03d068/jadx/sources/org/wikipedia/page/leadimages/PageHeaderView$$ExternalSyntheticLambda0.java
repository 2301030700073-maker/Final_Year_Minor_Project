package org.wikipedia.page.leadimages;

import android.app.ActivityOptions;
import android.view.View;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityOptionsCompat$ActivityOptionsCompatImpl;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.snackbar.Snackbar;
import okhttp3.Cache;
import okio.Okio__OkioKt;
import okio.Path;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.bridge.JavaScriptActionHandler$ImageHitInfo;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.donate.donationreminder.DonationReminderCardView;
import org.wikipedia.donate.donationreminder.DonationReminderConfig;
import org.wikipedia.donate.donationreminder.DonationReminderHelper;
import org.wikipedia.gallery.GalleryActivity;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.Page;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.leadimages.PageHeaderView;
import org.wikipedia.settings.Prefs;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.suggestededits.SuggestedEditsImageTagEditActivity;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.TabUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageHeaderView$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PageHeaderView f$0;

    public /* synthetic */ PageHeaderView$$ExternalSyntheticLambda0(PageHeaderView pageHeaderView, int i) {
        this.$r8$classId = i;
        this.f$0 = pageHeaderView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Page page;
        String str;
        PageTitle pageTitle;
        PageSummaryForEdit pageSummaryForEdit;
        int i = this.$r8$classId;
        PageHeaderView pageHeaderView = this.f$0;
        switch (i) {
            case 0:
                PageHeaderView.Callback callback = pageHeaderView.callback;
                if (callback != null) {
                    LeadImagesHandler leadImagesHandler = (LeadImagesHandler) ((AvPlayer) callback).player;
                    PageFragment pageFragment = leadImagesHandler.parentFragment;
                    PageHeaderView pageHeaderView2 = leadImagesHandler.pageHeaderView;
                    if (leadImagesHandler.isLeadImageEnabled() && (page = leadImagesHandler.getPage()) != null && (str = page.pageProperties.leadImageName) != null && (pageTitle = (PageTitle) pageFragment.model.title) != null) {
                        String concat = "File:".concat(str);
                        WikiSite wikiSite = pageTitle.wikiSite;
                        float left = pageHeaderView2.getImageView().getLeft();
                        float top = pageHeaderView2.getImageView().getTop();
                        Page page2 = leadImagesHandler.getPage();
                        float width = page2 != null ? page2.pageProperties.leadImageWidth : pageHeaderView2.getImageView().getWidth();
                        Page page3 = leadImagesHandler.getPage();
                        int height = page3 != null ? page3.pageProperties.leadImageHeight : pageHeaderView2.getImageView().getHeight();
                        String leadImageUrl = leadImagesHandler.getLeadImageUrl();
                        leadImageUrl.getClass();
                        GalleryActivity.TRANSITION_INFO = new JavaScriptActionHandler$ImageHitInfo(left, top, width, height, leadImageUrl);
                        ActivityOptionsCompat$ActivityOptionsCompatImpl activityOptionsCompat$ActivityOptionsCompatImpl = new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptions.makeSceneTransitionAnimation(pageFragment.requireActivity(), pageHeaderView2.getImageView(), pageFragment.requireActivity().getString(R.string.transition_page_gallery)));
                        PageFragment.Callback callback2 = leadImagesHandler.callback;
                        if (callback2 != null) {
                            ((PageActivity) callback2).onPageRequestGallery(pageTitle, concat, wikiSite, pageFragment.revision, true, activityOptionsCompat$ActivityOptionsCompatImpl);
                            break;
                        }
                    }
                }
                break;
            case 1:
                PageHeaderView.Callback callback3 = pageHeaderView.callback;
                if (callback3 != null) {
                    LeadImagesHandler leadImagesHandler2 = (LeadImagesHandler) ((AvPlayer) callback3).player;
                    Constants.ImageEditType imageEditType = leadImagesHandler2.imageEditType;
                    PageFragment.Callback callback4 = leadImagesHandler2.callback;
                    if (imageEditType != Constants.ImageEditType.ADD_TAGS) {
                        if ((imageEditType == Constants.ImageEditType.ADD_CAPTION || imageEditType == Constants.ImageEditType.ADD_CAPTION_TRANSLATION) && (pageSummaryForEdit = leadImagesHandler2.callToActionSourceSummary) != null) {
                            if (!leadImagesHandler2.callToActionIsTranslation) {
                                if (callback4 != null) {
                                    ((PageActivity) callback4).onPageRequestEditDescription(null, pageSummaryForEdit.pageTitle, pageSummaryForEdit, null, DescriptionEditActivity.Action.ADD_CAPTION, Constants.InvokeSource.LEAD_IMAGE);
                                    break;
                                }
                            } else {
                                PageSummaryForEdit pageSummaryForEdit2 = leadImagesHandler2.callToActionTargetSummary;
                                if (pageSummaryForEdit2 != null && callback4 != null) {
                                    ((PageActivity) callback4).onPageRequestEditDescription(null, pageSummaryForEdit2.pageTitle, pageSummaryForEdit, pageSummaryForEdit2, DescriptionEditActivity.Action.TRANSLATE_CAPTION, Constants.InvokeSource.LEAD_IMAGE);
                                    break;
                                }
                            }
                        }
                    } else {
                        MwQueryPage mwQueryPage = leadImagesHandler2.imagePage;
                        if (mwQueryPage != null && callback4 != null) {
                            Constants.InvokeSource invokeSource = Constants.InvokeSource.LEAD_IMAGE;
                            PageActivity pageActivity = (PageActivity) callback4;
                            invokeSource.getClass();
                            ActivityResultRegistry$register$2 activityResultRegistry$register$2 = pageActivity.requestSuggestedEditsLauncher;
                            int i2 = SuggestedEditsImageTagEditActivity.$r8$clinit;
                            activityResultRegistry$register$2.launch(TabUtil.newIntent(pageActivity, mwQueryPage, invokeSource), null);
                            break;
                        }
                    }
                }
                break;
            case 2:
                PageHeaderView.Callback callback5 = pageHeaderView.callback;
                if (callback5 != null) {
                    LeadImagesHandler leadImagesHandler3 = (LeadImagesHandler) ((AvPlayer) callback5).player;
                    PageFragment pageFragment2 = leadImagesHandler3.parentFragment;
                    ((DonationReminderCardView) leadImagesHandler3.pageHeaderView.binding.state).setVisibility(8);
                    leadImagesHandler3.loadLeadImage();
                    PageFragment.refreshPage$default(pageFragment2);
                    int i3 = DonationReminderHelper.validReadCountOnSeconds;
                    Cache.Companion.logDonationReminderAction$default("donate_start_click", "reminder_milestone", null, DonationReminderHelper.getCampaignId("appmenu"), null, null, null, 236);
                    Okio__OkioKt.show(pageFragment2.getParentFragmentManager(), Path.Companion.newInstance$default(11, null, null));
                }
                int i4 = DonationReminderHelper.validReadCountOnSeconds;
                Prefs.setDonationReminderConfig(DonationReminderConfig.copy$default(Prefs.getDonationReminderConfig(), false, 0L, 0L, 0, 0, RecyclerView.DECELERATION_RATE, false, 0, 0, 447));
                break;
            default:
                PageHeaderView.Callback callback6 = pageHeaderView.callback;
                if (callback6 != null) {
                    LeadImagesHandler leadImagesHandler4 = (LeadImagesHandler) ((AvPlayer) callback6).player;
                    PageFragment pageFragment3 = leadImagesHandler4.parentFragment;
                    ((DonationReminderCardView) leadImagesHandler4.pageHeaderView.binding.state).setVisibility(8);
                    leadImagesHandler4.loadLeadImage();
                    PageFragment.refreshPage$default(pageFragment3);
                    Cache.Companion.logDonationReminderAction$default("notnow_click", "reminder_milestone", null, null, null, null, null, 252);
                    AppCompatActivity requireActivity = pageFragment3.requireActivity();
                    String string = pageFragment3.requireActivity().getString(R.string.donation_reminders_prompt_dismiss_snackbar);
                    string.getClass();
                    Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                    makeSnackbar$default.setAction(R.string.donation_reminders_snackbar_modify_button_label, new DiffLineView$$ExternalSyntheticLambda0(17, leadImagesHandler4));
                    makeSnackbar$default.show();
                }
                ((DonationReminderCardView) pageHeaderView.binding.state).setVisibility(8);
                int i5 = DonationReminderHelper.validReadCountOnSeconds;
                Prefs.setDonationReminderConfig(DonationReminderConfig.copy$default(Prefs.getDonationReminderConfig(), false, 0L, 0L, 0, 0, RecyclerView.DECELERATION_RATE, false, 0, 0, 447));
                break;
        }
    }
}
