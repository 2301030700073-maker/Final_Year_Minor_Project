package org.wikipedia.page.linkpreview;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.location.Location;
import android.view.MenuItem;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.PopupMenu$OnMenuItemClickListener;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.snackbar.Snackbar;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import okio.ByteString;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.gallery.GalleryThumbnailScrollView;
import org.wikipedia.places.PlacesActivity;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.settings.Prefs;
import org.wikipedia.talk.TalkTopicsViewModel$subscribeTopic$1;
import org.wikipedia.util.GeoUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LinkPreviewDialog$$ExternalSyntheticLambda3 implements PopupMenu$OnMenuItemClickListener, GalleryThumbnailScrollView.GalleryViewListener, ActivityResultCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LinkPreviewDialog f$0;

    public /* synthetic */ LinkPreviewDialog$$ExternalSyntheticLambda3(LinkPreviewDialog linkPreviewDialog, int i) {
        this.$r8$classId = i;
        this.f$0 = linkPreviewDialog;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        Intent intent;
        LinkPreviewOverlayView linkPreviewOverlayView;
        int i = this.$r8$classId;
        LinkPreviewDialog linkPreviewDialog = this.f$0;
        ActivityResult activityResult = (ActivityResult) obj;
        switch (i) {
            case 2:
                activityResult.getClass();
                if (activityResult.resultCode == 1 && (intent = activityResult.data) != null) {
                    linkPreviewDialog.startActivity(intent, null);
                    break;
                }
                break;
            default:
                activityResult.getClass();
                if (activityResult.resultCode == 1 && (linkPreviewOverlayView = linkPreviewDialog.overlayView) != null) {
                    View rootView = linkPreviewOverlayView.getRootView();
                    rootView.getClass();
                    String string = linkPreviewDialog.getString(R.string.stub_article_edit_saved_successfully);
                    string.getClass();
                    Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(rootView, string);
                    makeSnackbar$default.setAnchorView(linkPreviewOverlayView.getSecondaryButtonView());
                    makeSnackbar$default.show();
                    break;
                }
                break;
        }
    }

    @Override // androidx.appcompat.widget.PopupMenu$OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        LinkPreviewDialog linkPreviewDialog = this.f$0;
        Continuation continuation = null;
        if (itemId == R.id.menu_link_preview_add_to_list) {
            List list = ReadingListBehaviorsUtil.allReadingLists;
            ReadingListBehaviorsUtil.addToDefaultList(linkPreviewDialog.requireActivity(), linkPreviewDialog.getViewModel().pageTitle, true, Constants.InvokeSource.LINK_PREVIEW_MENU, null);
            Dialog dialog = linkPreviewDialog.mDialog;
            if (dialog != null) {
                dialog.dismiss();
                return true;
            }
        } else {
            if (itemId == R.id.menu_link_preview_share_page) {
                ShareUtil.shareText$default(linkPreviewDialog.requireContext(), linkPreviewDialog.getViewModel().pageTitle);
                return true;
            }
            if (itemId == R.id.menu_link_preview_watch) {
                linkPreviewDialog.sendPlacesEvent("watch_click", "detail_overflow_menu");
                LinkPreviewViewModel viewModel = linkPreviewDialog.getViewModel();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 24), null, new TalkTopicsViewModel$subscribeTopic$1(viewModel, linkPreviewDialog.getViewModel().isWatched, continuation, 5), 2);
                return true;
            }
            if (itemId == R.id.menu_link_preview_open_in_new_tab) {
                linkPreviewDialog.sendPlacesEvent("new_tab_click", "detail_overflow_menu");
                linkPreviewDialog.goToLinkedPage(true);
                return true;
            }
            if (itemId == R.id.menu_link_preview_copy_link) {
                linkPreviewDialog.sendPlacesEvent("copy_link_click", "detail_overflow_menu");
                AppCompatActivity requireActivity = linkPreviewDialog.requireActivity();
                String uri = linkPreviewDialog.getViewModel().pageTitle.getUri();
                ClipboardManager clipboardManager = (ClipboardManager) requireActivity.getSystemService(ClipboardManager.class);
                if (clipboardManager != null) {
                    clipboardManager.setPrimaryClip(ClipData.newPlainText(null, uri));
                }
                ShareUtil.showMessage(linkPreviewDialog.requireActivity(), R.string.address_copied);
                linkPreviewDialog.dismiss();
                return true;
            }
            if (itemId == R.id.menu_link_preview_view_on_map) {
                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                String m = ViewSizeResolver$CC.m();
                Prefs prefs = Prefs.INSTANCE;
                EventPlatformClient.submit(new AppInteractionEvent("places_click", "article_preview_more_menu", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                Location location = linkPreviewDialog.getViewModel().location;
                if (location != null) {
                    int i = PlacesActivity.$r8$clinit;
                    linkPreviewDialog.startActivity(ByteString.Companion.newIntent(linkPreviewDialog.requireContext(), linkPreviewDialog.getViewModel().pageTitle, location), null);
                }
                linkPreviewDialog.dismiss();
                return true;
            }
            if (itemId != R.id.menu_link_preview_get_directions) {
                return false;
            }
            linkPreviewDialog.sendPlacesEvent("directions_click", "detail_overflow_menu");
            Location location2 = linkPreviewDialog.getViewModel().location;
            if (location2 != null) {
                AppCompatActivity requireActivity2 = linkPreviewDialog.requireActivity();
                StringUtil stringUtil = StringUtil.INSTANCE;
                GeoUtil.sendGeoIntent(requireActivity2, location2, StringUtil.fromHtml(linkPreviewDialog.getViewModel().pageTitle.getDisplayText()).toString());
            }
        }
        return true;
    }
}
