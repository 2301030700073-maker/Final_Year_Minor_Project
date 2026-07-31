package org.wikipedia.gallery;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import java.io.Serializable;
import java.util.Arrays;
import java.util.LinkedHashMap;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.bridge.JavaScriptActionHandler$ImageHitInfo;
import org.wikipedia.commons.FilePageActivity;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.suggestededits.SuggestedEditsSnackbars;
import org.wikipedia.util.UriUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GalleryActivity$$ExternalSyntheticLambda0 implements ActivityResultCallback, SuggestedEditsSnackbars.OpenPageListener, LinkMovementMethodExt.UrlHandler {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ GalleryActivity f$0;

    public /* synthetic */ GalleryActivity$$ExternalSyntheticLambda0(GalleryActivity galleryActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = galleryActivity;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ActivityResult activityResult = (ActivityResult) obj;
        switch (this.$r8$classId) {
            case 0:
                JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo = GalleryActivity.TRANSITION_INFO;
                activityResult.getClass();
                if (activityResult.resultCode == -1) {
                    Intent intent = activityResult.data;
                    Serializable serializableExtra = intent != null ? intent.getSerializableExtra("intentAction") : null;
                    LinkedHashMap linkedHashMap = SuggestedEditsSnackbars.snackbarSessionMap;
                    GalleryActivity galleryActivity = this.f$0;
                    SuggestedEditsSnackbars.show$default(galleryActivity, (DescriptionEditActivity.Action) serializableExtra, galleryActivity.targetLanguageCode, 32);
                    galleryActivity.fetchGalleryDescription(galleryActivity.getCurrentItem());
                    galleryActivity.setResult(2);
                    break;
                }
                break;
            default:
                JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo2 = GalleryActivity.TRANSITION_INFO;
                activityResult.getClass();
                if (activityResult.resultCode == -1) {
                    DescriptionEditActivity.Action action = DescriptionEditActivity.Action.ADD_IMAGE_TAGS;
                    LinkedHashMap linkedHashMap2 = SuggestedEditsSnackbars.snackbarSessionMap;
                    GalleryActivity galleryActivity2 = this.f$0;
                    SuggestedEditsSnackbars.show(galleryActivity2, action, true, galleryActivity2.targetLanguageCode, true, new GalleryActivity$$ExternalSyntheticLambda0(galleryActivity2, 1));
                    galleryActivity2.fetchGalleryDescription(galleryActivity2.getCurrentItem());
                    galleryActivity2.setResult(3);
                    break;
                }
                break;
        }
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        String path;
        JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo = GalleryActivity.TRANSITION_INFO;
        L.LEVEL_V.log("Link clicked was ".concat(str), null);
        String resolveProtocolRelativeUrl = UriUtil.resolveProtocolRelativeUrl(str);
        boolean startsWith = StringsKt__StringsJVMKt.startsWith(resolveProtocolRelativeUrl, "/wiki/", false);
        GalleryActivity galleryActivity = this.f$0;
        if (startsWith) {
            PageTitle.Companion companion = PageTitle.Companion;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            WikiSite wikiSite = Jsoup.getInstance().getWikiSite();
            companion.getClass();
            galleryActivity.showLinkPreview(PageTitle.Companion.titleForInternalLink(resolveProtocolRelativeUrl, wikiSite));
            return;
        }
        Uri parse = Uri.parse(resolveProtocolRelativeUrl);
        parse.getClass();
        String authority = parse.getAuthority();
        if (authority != null) {
            WikiSite.Companion.getClass();
            if (WikiSite.Companion.supportedAuthority(authority) && (path = parse.getPath()) != null && StringsKt__StringsJVMKt.startsWith(path, "/wiki/", false)) {
                PageTitle.Companion companion2 = PageTitle.Companion;
                WikiSite wikiSite2 = new WikiSite(parse);
                companion2.getClass();
                galleryActivity.showLinkPreview(PageTitle.Companion.titleForUri(parse, wikiSite2));
                return;
            }
        }
        if (StringsKt__StringsJVMKt.startsWith(resolveProtocolRelativeUrl, "/w/", false)) {
            WikipediaApp wikipediaApp2 = WikipediaApp.instance;
            resolveProtocolRelativeUrl = String.format("%1$s://%2$s", Arrays.copyOf(new Object[]{Jsoup.getInstance().getWikiSite().scheme(), Jsoup.getInstance().getWikiSite().authority()}, 2)).concat(resolveProtocolRelativeUrl);
        }
        Uri parse2 = Uri.parse(resolveProtocolRelativeUrl);
        parse2.getClass();
        UriUtil.visitInExternalBrowser(galleryActivity, parse2);
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsSnackbars.OpenPageListener
    public void open(View view) {
        JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo = GalleryActivity.TRANSITION_INFO;
        GalleryActivity galleryActivity = this.f$0;
        GalleryItemFragment currentItem = galleryActivity.getCurrentItem();
        if (currentItem != null) {
            PageTitle pageTitle = currentItem.getViewModel().imageTitle;
            pageTitle.getClass();
            Intent putExtra = new Intent(galleryActivity, (Class<?>) FilePageActivity.class).putExtra("title", pageTitle).putExtra("allowEdit", true);
            putExtra.getClass();
            galleryActivity.startActivity(putExtra);
        }
    }
}
