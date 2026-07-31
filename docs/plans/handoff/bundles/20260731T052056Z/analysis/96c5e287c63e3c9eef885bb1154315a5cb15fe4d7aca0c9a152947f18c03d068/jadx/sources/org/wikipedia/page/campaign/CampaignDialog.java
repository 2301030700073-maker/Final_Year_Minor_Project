package org.wikipedia.page.campaign;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.text.method.LinkMovementMethodCompat;
import com.google.android.material.button.MaterialButton;
import j$.time.Duration;
import j$.time.Instant;
import j$.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import kotlin.text.RegexKt;
import kotlin.uuid.UuidKt;
import okhttp3.Cache;
import okio.PriorityQueue;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.dataclient.donate.Campaign;
import org.wikipedia.dataclient.donate.CampaignCollection;
import org.wikipedia.donate.donationreminder.DonationReminderAbTest;
import org.wikipedia.donate.donationreminder.DonationReminderHelper;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.campaign.CampaignDialogView;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CampaignDialog extends PriorityQueue implements CampaignDialogView.Callback {
    public final String campaignId;
    public final String campaignIdOriginal;
    public final AppCompatActivity context;
    public AlertDialog dialog;
    public final WikiGames$$ExternalSyntheticLambda0 onNeutralButtonClick;

    public CampaignDialog(AppCompatActivity appCompatActivity, Campaign campaign, WikiGames$$ExternalSyntheticLambda0 wikiGames$$ExternalSyntheticLambda0) {
        super(appCompatActivity);
        LocalDateTime localDateTime;
        this.context = appCompatActivity;
        this.onNeutralButtonClick = wikiGames$$ExternalSyntheticLambda0;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String idForLang = campaign.getIdForLang(Jsoup.getInstance().getAppOrSystemLanguageCode());
        this.campaignIdOriginal = idForLang;
        int i = DonationReminderHelper.validReadCountOnSeconds;
        String campaignId = DonationReminderHelper.getCampaignId(idForLang);
        this.campaignId = campaignId;
        final CampaignDialogView campaignDialogView = new CampaignDialogView(appCompatActivity);
        campaignDialogView.setCallback(this);
        Prefs prefs = Prefs.INSTANCE;
        final int i2 = 0;
        final int i3 = 1;
        campaignDialogView.setShowNeutralButton((Duration.between(Instant.ofEpochMilli(PrefsIoUtil.getLong(0L, R.string.preference_key_announcement_pause_time)), Instant.now()).toDays() >= 1 && (localDateTime = campaign.endDateTime) != null && localDateTime.isAfter(LocalDateTime.now().plusDays(1L))) || Prefs.getIgnoreDateForAnnouncements());
        Campaign.Assets assetsForLang = campaign.getAssetsForLang(Jsoup.getInstance().getAppOrSystemLanguageCode());
        if (assetsForLang != null) {
            String str = assetsForLang.footer;
            String str2 = assetsForLang.id;
            float f = assetsForLang.weight;
            String str3 = assetsForLang.text;
            String replaceParams = (str3 == null || str3.length() == 0) ? null : CampaignCollection.replaceParams(str3, campaignId);
            String replaceParams2 = (str == null || str.length() == 0) ? null : CampaignCollection.replaceParams(str, campaignId);
            Campaign.Action[] actionArr = assetsForLang.actions;
            ArrayList arrayList = new ArrayList(actionArr.length);
            for (Campaign.Action action : actionArr) {
                String str4 = action.title;
                String str5 = action.url;
                arrayList.add(new Campaign.Action(CampaignCollection.replaceParams(str4, campaignId), (str5 == null || str5.length() == 0) ? null : CampaignCollection.replaceParams(str5, campaignId)));
            }
            Campaign.Action[] actionArr2 = (Campaign.Action[]) arrayList.toArray(new Campaign.Action[0]);
            new Campaign.Assets(str2, f, replaceParams, replaceParams2, actionArr2);
            FragmentNewsBinding fragmentNewsBinding = campaignDialogView.binding;
            if (replaceParams != null && replaceParams.length() != 0) {
                TextView textView = (TextView) fragmentNewsBinding.headerImageView;
                LinkMovementMethodCompat linkMovementMethodCompat = LinkMovementMethodCompat.sInstance;
                if (linkMovementMethodCompat == null) {
                    linkMovementMethodCompat = new LinkMovementMethodCompat();
                    LinkMovementMethodCompat.sInstance = linkMovementMethodCompat;
                }
                textView.setMovementMethod(linkMovementMethodCompat);
                TextView textView2 = (TextView) fragmentNewsBinding.headerImageView;
                StringUtil stringUtil = StringUtil.INSTANCE;
                textView2.setText(StringUtil.fromHtml(replaceParams));
            }
            if (replaceParams2 != null && replaceParams2.length() != 0) {
                ((TextView) fragmentNewsBinding.newsStoryItemsRecyclerview).setMovementMethod(new LinkMovementMethodExt((LinkMovementMethodExt.UrlHandler) new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(27, campaignDialogView)));
                TextView textView3 = (TextView) fragmentNewsBinding.newsStoryItemsRecyclerview;
                StringUtil stringUtil2 = StringUtil.INSTANCE;
                textView3.setText(StringUtil.fromHtml(replaceParams2));
            }
            LinearLayout linearLayout = (LinearLayout) fragmentNewsBinding.rootView;
            MaterialButton materialButton = (MaterialButton) fragmentNewsBinding.storyTextView;
            MaterialButton materialButton2 = (MaterialButton) fragmentNewsBinding.toolbarContainer;
            ImageView imageView = (ImageView) fragmentNewsBinding.appBarLayout;
            MaterialButton materialButton3 = (MaterialButton) fragmentNewsBinding.toolbar;
            linearLayout.setVisibility(0);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.page.campaign.CampaignDialogView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i4 = i2;
                    CampaignDialogView campaignDialogView2 = campaignDialogView;
                    switch (i4) {
                        case 0:
                            CampaignDialogView.Callback callback = campaignDialogView2.callback;
                            if (callback != null) {
                                CampaignDialog campaignDialog = (CampaignDialog) callback;
                                Cache.Companion.logAction$default(4, "close_click", "article_banner", null, campaignDialog.campaignId);
                                campaignDialog.dismissDialog(true);
                                break;
                            }
                            break;
                        case 1:
                            CampaignDialogView.Callback callback2 = campaignDialogView2.callback;
                            if (callback2 != null) {
                                CampaignDialog campaignDialog2 = (CampaignDialog) callback2;
                                String str6 = campaignDialog2.campaignId;
                                Cache.Companion.logAction$default(4, "later_click", "article_banner", null, str6);
                                Cache.Companion.logAction$default(4, "reminder_toast", "article_banner", null, str6);
                                int i5 = DonationReminderHelper.validReadCountOnSeconds;
                                if (DonationReminderHelper.isInEligibleCountry()) {
                                    Cache.Companion.logDonationReminderAction$default("group_assigned", "article_banner", null, campaignDialog2.campaignId, null, null, new DonationReminderAbTest().getGroup() == 1 ? "android_remind_b" : "android_remind_a", 108);
                                }
                                if (!DonationReminderHelper.isEnabled()) {
                                    Prefs prefs2 = Prefs.INSTANCE;
                                    PrefsIoUtil.setLong(new Date().getTime(), R.string.preference_key_announcement_pause_time);
                                    AppCompatActivity appCompatActivity2 = campaignDialog2.context;
                                    appCompatActivity2.getClass();
                                    ShareUtil.showMessage(appCompatActivity2, R.string.donation_campaign_maybe_later_snackbar);
                                    campaignDialog2.dismissDialog(false);
                                    break;
                                } else {
                                    Prefs prefs3 = Prefs.INSTANCE;
                                    Prefs.setAnnouncementShownDialogs(UuidKt.setOf(campaignDialog2.campaignIdOriginal));
                                    WikiGames$$ExternalSyntheticLambda0 wikiGames$$ExternalSyntheticLambda02 = campaignDialog2.onNeutralButtonClick;
                                    if (wikiGames$$ExternalSyntheticLambda02 != null) {
                                        wikiGames$$ExternalSyntheticLambda02.invoke();
                                        break;
                                    }
                                }
                            }
                            break;
                        default:
                            CampaignDialogView.Callback callback3 = campaignDialogView2.callback;
                            if (callback3 != null) {
                                CampaignDialog campaignDialog3 = (CampaignDialog) callback3;
                                Cache.Companion.logAction$default(4, "already_donated_click", "article_banner", null, campaignDialog3.campaignId);
                                AppCompatActivity appCompatActivity3 = campaignDialog3.context;
                                appCompatActivity3.getClass();
                                ShareUtil.showMessage(appCompatActivity3, R.string.donation_campaign_donated_snackbar);
                                campaignDialog3.dismissDialog(true);
                                break;
                            }
                            break;
                    }
                }
            });
            View view = new View[]{imageView}[0];
            RegexKt.setTooltipText(view, view.getContentDescription());
            try {
                if (actionArr2.length >= 3) {
                    Campaign.Action action2 = actionArr2[0];
                    Campaign.Action action3 = actionArr2[1];
                    final int i4 = 2;
                    Campaign.Action action4 = actionArr2[2];
                    materialButton2.setText(action2.title);
                    String str6 = action2.url;
                    if (str6 != null) {
                        materialButton2.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(17, campaignDialogView, str6));
                    }
                    materialButton3.setText(action3.title);
                    if (!campaignDialogView.showNeutralButton) {
                        i2 = 8;
                    }
                    materialButton3.setVisibility(i2);
                    materialButton3.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.page.campaign.CampaignDialogView$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            int i42 = i3;
                            CampaignDialogView campaignDialogView2 = campaignDialogView;
                            switch (i42) {
                                case 0:
                                    CampaignDialogView.Callback callback = campaignDialogView2.callback;
                                    if (callback != null) {
                                        CampaignDialog campaignDialog = (CampaignDialog) callback;
                                        Cache.Companion.logAction$default(4, "close_click", "article_banner", null, campaignDialog.campaignId);
                                        campaignDialog.dismissDialog(true);
                                        break;
                                    }
                                    break;
                                case 1:
                                    CampaignDialogView.Callback callback2 = campaignDialogView2.callback;
                                    if (callback2 != null) {
                                        CampaignDialog campaignDialog2 = (CampaignDialog) callback2;
                                        String str62 = campaignDialog2.campaignId;
                                        Cache.Companion.logAction$default(4, "later_click", "article_banner", null, str62);
                                        Cache.Companion.logAction$default(4, "reminder_toast", "article_banner", null, str62);
                                        int i5 = DonationReminderHelper.validReadCountOnSeconds;
                                        if (DonationReminderHelper.isInEligibleCountry()) {
                                            Cache.Companion.logDonationReminderAction$default("group_assigned", "article_banner", null, campaignDialog2.campaignId, null, null, new DonationReminderAbTest().getGroup() == 1 ? "android_remind_b" : "android_remind_a", 108);
                                        }
                                        if (!DonationReminderHelper.isEnabled()) {
                                            Prefs prefs2 = Prefs.INSTANCE;
                                            PrefsIoUtil.setLong(new Date().getTime(), R.string.preference_key_announcement_pause_time);
                                            AppCompatActivity appCompatActivity2 = campaignDialog2.context;
                                            appCompatActivity2.getClass();
                                            ShareUtil.showMessage(appCompatActivity2, R.string.donation_campaign_maybe_later_snackbar);
                                            campaignDialog2.dismissDialog(false);
                                            break;
                                        } else {
                                            Prefs prefs3 = Prefs.INSTANCE;
                                            Prefs.setAnnouncementShownDialogs(UuidKt.setOf(campaignDialog2.campaignIdOriginal));
                                            WikiGames$$ExternalSyntheticLambda0 wikiGames$$ExternalSyntheticLambda02 = campaignDialog2.onNeutralButtonClick;
                                            if (wikiGames$$ExternalSyntheticLambda02 != null) {
                                                wikiGames$$ExternalSyntheticLambda02.invoke();
                                                break;
                                            }
                                        }
                                    }
                                    break;
                                default:
                                    CampaignDialogView.Callback callback3 = campaignDialogView2.callback;
                                    if (callback3 != null) {
                                        CampaignDialog campaignDialog3 = (CampaignDialog) callback3;
                                        Cache.Companion.logAction$default(4, "already_donated_click", "article_banner", null, campaignDialog3.campaignId);
                                        AppCompatActivity appCompatActivity3 = campaignDialog3.context;
                                        appCompatActivity3.getClass();
                                        ShareUtil.showMessage(appCompatActivity3, R.string.donation_campaign_donated_snackbar);
                                        campaignDialog3.dismissDialog(true);
                                        break;
                                    }
                                    break;
                            }
                        }
                    });
                    materialButton.setText(action4.title);
                    materialButton.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.page.campaign.CampaignDialogView$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            int i42 = i4;
                            CampaignDialogView campaignDialogView2 = campaignDialogView;
                            switch (i42) {
                                case 0:
                                    CampaignDialogView.Callback callback = campaignDialogView2.callback;
                                    if (callback != null) {
                                        CampaignDialog campaignDialog = (CampaignDialog) callback;
                                        Cache.Companion.logAction$default(4, "close_click", "article_banner", null, campaignDialog.campaignId);
                                        campaignDialog.dismissDialog(true);
                                        break;
                                    }
                                    break;
                                case 1:
                                    CampaignDialogView.Callback callback2 = campaignDialogView2.callback;
                                    if (callback2 != null) {
                                        CampaignDialog campaignDialog2 = (CampaignDialog) callback2;
                                        String str62 = campaignDialog2.campaignId;
                                        Cache.Companion.logAction$default(4, "later_click", "article_banner", null, str62);
                                        Cache.Companion.logAction$default(4, "reminder_toast", "article_banner", null, str62);
                                        int i5 = DonationReminderHelper.validReadCountOnSeconds;
                                        if (DonationReminderHelper.isInEligibleCountry()) {
                                            Cache.Companion.logDonationReminderAction$default("group_assigned", "article_banner", null, campaignDialog2.campaignId, null, null, new DonationReminderAbTest().getGroup() == 1 ? "android_remind_b" : "android_remind_a", 108);
                                        }
                                        if (!DonationReminderHelper.isEnabled()) {
                                            Prefs prefs2 = Prefs.INSTANCE;
                                            PrefsIoUtil.setLong(new Date().getTime(), R.string.preference_key_announcement_pause_time);
                                            AppCompatActivity appCompatActivity2 = campaignDialog2.context;
                                            appCompatActivity2.getClass();
                                            ShareUtil.showMessage(appCompatActivity2, R.string.donation_campaign_maybe_later_snackbar);
                                            campaignDialog2.dismissDialog(false);
                                            break;
                                        } else {
                                            Prefs prefs3 = Prefs.INSTANCE;
                                            Prefs.setAnnouncementShownDialogs(UuidKt.setOf(campaignDialog2.campaignIdOriginal));
                                            WikiGames$$ExternalSyntheticLambda0 wikiGames$$ExternalSyntheticLambda02 = campaignDialog2.onNeutralButtonClick;
                                            if (wikiGames$$ExternalSyntheticLambda02 != null) {
                                                wikiGames$$ExternalSyntheticLambda02.invoke();
                                                break;
                                            }
                                        }
                                    }
                                    break;
                                default:
                                    CampaignDialogView.Callback callback3 = campaignDialogView2.callback;
                                    if (callback3 != null) {
                                        CampaignDialog campaignDialog3 = (CampaignDialog) callback3;
                                        Cache.Companion.logAction$default(4, "already_donated_click", "article_banner", null, campaignDialog3.campaignId);
                                        AppCompatActivity appCompatActivity3 = campaignDialog3.context;
                                        appCompatActivity3.getClass();
                                        ShareUtil.showMessage(appCompatActivity3, R.string.donation_campaign_donated_snackbar);
                                        campaignDialog3.dismissDialog(true);
                                        break;
                                    }
                                    break;
                            }
                        }
                    });
                }
            } catch (Exception unused) {
                ((LinearLayout) fragmentNewsBinding.rootView).setVisibility(8);
            }
        }
        ((AlertController.AlertParams) this.array).mView = campaignDialogView;
        Cache.Companion.logAction$default(4, "impression", "article_banner", null, this.campaignId);
    }

    public final void dismissDialog(boolean z) {
        if (z) {
            Prefs prefs = Prefs.INSTANCE;
            Prefs.setAnnouncementShownDialogs(UuidKt.setOf(this.campaignIdOriginal));
        }
        AlertDialog alertDialog = this.dialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    @Override // okio.PriorityQueue
    public final AlertDialog show() {
        AlertDialog show = super.show();
        this.dialog = show;
        return show;
    }
}
