package org.wikipedia.page.leadimages;

import android.content.res.Resources;
import android.net.Uri;
import android.util.DisplayMetrics;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.ViewModelKt;
import kotlin.coroutines.Continuation;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.Headers;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.gallery.ExtMetadata;
import org.wikipedia.gallery.ImageInfo;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.Page;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.ObservableWebView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LeadImagesHandler {
    public boolean callToActionIsTranslation;
    public PageSummaryForEdit callToActionSourceSummary;
    public PageSummaryForEdit callToActionTargetSummary;
    public final PageFragment.Callback callback;
    public PageTitle captionSourcePageTitle;
    public PageTitle captionTargetPageTitle;
    public int displayHeightDp;
    public StandaloneCoroutine handlerJob;
    public Constants.ImageEditType imageEditType;
    public MwQueryPage imagePage;
    public String lastImageTitleForCallToAction = "";
    public final PageHeaderView pageHeaderView;
    public final PageFragment parentFragment;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Constants.ImageEditType.values().length];
            try {
                iArr[Constants.ImageEditType.ADD_TAGS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Constants.ImageEditType.ADD_CAPTION_TRANSLATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public LeadImagesHandler(PageFragment pageFragment, ObservableWebView observableWebView, PageHeaderView pageHeaderView, PageFragment.Callback callback) {
        this.parentFragment = pageFragment;
        this.pageHeaderView = pageHeaderView;
        this.callback = callback;
        pageHeaderView.setWebView(observableWebView);
        observableWebView.onScrollChangeListeners.add(pageHeaderView);
        initDisplayDimensions();
        pageHeaderView.setCallback(new AvPlayer(17, this));
    }

    public final void finalizeCallToAction() {
        PageTitle pageTitle;
        ImageInfo imageInfo;
        ImageInfo imageInfo2;
        ExtMetadata extMetadata;
        Constants.ImageEditType imageEditType = this.imageEditType;
        if (imageEditType == null) {
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[imageEditType.ordinal()];
        PageFragment pageFragment = this.parentFragment;
        PageHeaderView pageHeaderView = this.pageHeaderView;
        if (i == 1) {
            pageHeaderView.setCallToActionText(pageFragment.getString(R.string.suggested_edits_article_cta_image_tags));
            return;
        }
        if (i == 2) {
            this.callToActionIsTranslation = true;
            PageTitle pageTitle2 = this.captionSourcePageTitle;
            if (pageTitle2 != null) {
                this.callToActionSourceSummary = new PageSummaryForEdit(pageTitle2.getPrefixedText(), pageTitle2.wikiSite.languageCode, pageTitle2, pageTitle2.getDisplayText(), pageTitle2.description, getLeadImageUrl(), null, null, 1984);
            }
            PageTitle pageTitle3 = this.captionTargetPageTitle;
            if (pageTitle3 != null) {
                this.callToActionTargetSummary = new PageSummaryForEdit(pageTitle3.getPrefixedText(), pageTitle3.wikiSite.languageCode, pageTitle3, pageTitle3.getDisplayText(), null, getLeadImageUrl(), null, null, 1984);
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                pageHeaderView.setCallToActionText(pageFragment.getString(R.string.suggested_edits_article_cta_image_caption_in_language, Jsoup.getInstance().getLanguageState().getAppLanguageLocalizedName(pageTitle3.wikiSite.languageCode)));
                return;
            }
            return;
        }
        PageTitle pageTitle4 = this.captionSourcePageTitle;
        if (pageTitle4 == null || (pageTitle = (PageTitle) pageFragment.model.title) == null) {
            return;
        }
        String prefixedText = pageTitle4.getPrefixedText();
        String str = pageTitle.wikiSite.languageCode;
        String displayText = pageTitle4.getDisplayText();
        StringUtil stringUtil = StringUtil.INSTANCE;
        MwQueryPage mwQueryPage = this.imagePage;
        String str2 = null;
        String imageDescription = (mwQueryPage == null || (imageInfo2 = mwQueryPage.imageInfo()) == null || (extMetadata = imageInfo2.metadata) == null) ? null : extMetadata.imageDescription();
        if (imageDescription == null) {
            imageDescription = "";
        }
        String obj = StringUtil.fromHtml(imageDescription).toString();
        MwQueryPage mwQueryPage2 = this.imagePage;
        if (mwQueryPage2 != null && (imageInfo = mwQueryPage2.imageInfo()) != null) {
            str2 = imageInfo.thumbUrl;
        }
        this.callToActionSourceSummary = new PageSummaryForEdit(prefixedText, str, pageTitle4, displayText, obj, str2, null, null, 1984);
        pageHeaderView.setCallToActionText(pageFragment.getString(R.string.suggested_edits_article_cta_image_caption));
    }

    public final int getDonationReminderCardViewHeight(boolean z) {
        PageHeaderView pageHeaderView = this.pageHeaderView;
        if (pageHeaderView.getDonationReminderCardViewHeight() == 0) {
            return 0;
        }
        return pageHeaderView.getDonationReminderCardViewHeight() - (z ? (Okio__OkioKt.isLandscape(this.parentFragment.requireActivity()) || !isLeadImageEnabled()) ? Okio__OkioKt.roundedDpToPx(64.0f) : Okio__OkioKt.roundedDpToPx(24.0f) : 0);
    }

    public final String getLeadImageUrl() {
        Page page;
        String str;
        PageTitle pageTitle = (PageTitle) this.parentFragment.model.title;
        if (pageTitle == null || (page = getPage()) == null || (str = page.pageProperties.leadImageUrl) == null) {
            return null;
        }
        Uri parse = Uri.parse(str);
        parse.getClass();
        String scheme = pageTitle.wikiSite.scheme();
        String authority = pageTitle.wikiSite.authority();
        if (parse.getScheme() != null) {
            scheme = parse.getScheme();
        }
        if (parse.getAuthority() != null) {
            authority = parse.getAuthority();
        }
        return new Uri.Builder().scheme(scheme).authority(authority).path(parse.getPath()).toString();
    }

    public final Page getPage() {
        return (Page) this.parentFragment.model.page;
    }

    public final int getTopMargin() {
        return Okio__OkioKt.roundedPxToDp((isLeadImageEnabled() ? Integer.valueOf(Okio__OkioKt.leadImageHeightForDevice(this.parentFragment.requireActivity())) : Float.valueOf(r1.getToolbarMargin())).floatValue() + getDonationReminderCardViewHeight(true));
    }

    public final void initDisplayDimensions() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Resources resources = Jsoup.getInstance().getResources();
        resources.getClass();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        displayMetrics.getClass();
        float f = displayMetrics.heightPixels;
        Resources resources2 = Jsoup.getInstance().getResources();
        resources2.getClass();
        DisplayMetrics displayMetrics2 = resources2.getDisplayMetrics();
        displayMetrics2.getClass();
        this.displayHeightDp = (int) (f / displayMetrics2.density);
    }

    public final boolean isLeadImageEnabled() {
        String leadImageUrl;
        Prefs prefs = Prefs.INSTANCE;
        if (Prefs.isImageDownloadEnabled() && this.parentFragment.requireActivity().getResources().getConfiguration().orientation != 2 && this.displayHeightDp >= 480) {
            Page page = getPage();
            if (!(page != null ? page.isMainPage : false) && (leadImageUrl = getLeadImageUrl()) != null && leadImageUrl.length() != 0) {
                return true;
            }
        }
        return false;
    }

    public final void loadLeadImage() {
        String leadImageUrl;
        String leadImageUrl2 = getLeadImageUrl();
        initDisplayDimensions();
        Page page = getPage();
        Continuation continuation = null;
        PageHeaderView pageHeaderView = this.pageHeaderView;
        if (page != null) {
            Page page2 = getPage();
            if (!(page2 != null ? page2.isMainPage : false) && leadImageUrl2 != null && leadImageUrl2.length() != 0 && isLeadImageEnabled()) {
                pageHeaderView.show();
                pageHeaderView.loadImage(leadImageUrl2);
                StandaloneCoroutine standaloneCoroutine = this.handlerJob;
                if (standaloneCoroutine != null) {
                    standaloneCoroutine.cancel(null);
                }
                this.callToActionSourceSummary = null;
                this.callToActionTargetSummary = null;
                this.callToActionIsTranslation = false;
                pageHeaderView.setCallToActionText(null);
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                if (Jsoup.getInstance().isOnline() && Headers.Companion.isLoggedIn() && (leadImageUrl = getLeadImageUrl()) != null && StringsKt.contains(leadImageUrl, "/wikipedia/commons/", false) && getPage() != null) {
                    PageFragment pageFragment = this.parentFragment;
                    PageTitle pageTitle = (PageTitle) pageFragment.model.title;
                    if (pageTitle != null) {
                        Page page3 = getPage();
                        page3.getClass();
                        String m = Modifier.CC.m("File:", page3.pageProperties.leadImageName);
                        FaceAndColorDetectImageView imageView = pageHeaderView.getImageView();
                        StringUtil stringUtil = StringUtil.INSTANCE;
                        imageView.setContentDescription(StringUtil.fromHtml(pageFragment.getString(R.string.image_content_description, pageTitle.getDisplayText())));
                        if (m.equals(this.lastImageTitleForCallToAction)) {
                            finalizeCallToAction();
                            return;
                        } else {
                            this.handlerJob = AwaitKt.launch$default(ViewModelKt.getLifecycleScope(pageFragment.getViewLifecycleOwner()), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 22), null, new LeadImagesHandler$updateCallToAction$1$2(this, m, pageTitle, continuation, 0), 2);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
        }
        pageHeaderView.loadImage(null);
    }
}
