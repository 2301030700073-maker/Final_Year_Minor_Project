package org.wikipedia.page.linkpreview;

import android.app.Dialog;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import com.google.android.material.button.MaterialButton;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.ArticleLinkPreviewInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.databinding.DialogLinkPreviewBinding;
import org.wikipedia.dataclient.Service;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.gallery.GalleryThumbnailScrollView;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewErrorView;
import org.wikipedia.page.linkpreview.LinkPreviewOverlayView;
import org.wikipedia.places.PlacesFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.readinglist.LongPressMenu;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.ShareUtil;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0004\u0006\u0007\b\bB\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;", "Landroid/content/DialogInterface$OnDismissListener;", "<init>", "()V", "LoadPageCallback", "DismissCallback", "OverlayViewCallback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LinkPreviewDialog extends ExtendedBottomSheetDialogFragment implements LinkPreviewErrorView.Callback, DialogInterface.OnDismissListener {
    public DialogLinkPreviewBinding _binding;
    public ArticleLinkPreviewInteractionEvent articleLinkPreviewInteractionEvent;
    public final LinkPreviewDialog$$ExternalSyntheticLambda3 galleryViewListener;
    public final LinkPreviewDialog$$ExternalSyntheticLambda3 menuListener;
    public boolean navigateSuccess;
    public LinkPreviewOverlayView overlayView;
    public final Fragment.AnonymousClass10 requestGalleryLauncher;
    public final Fragment.AnonymousClass10 requestStubArticleEditLauncher;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface DismissCallback {
        void onLinkPreviewDismiss();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface LoadPageCallback {
        void onLinkPreviewLoadPage(PageTitle pageTitle, HistoryEntry historyEntry, boolean z);
    }

    public LinkPreviewDialog() {
        super(false);
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(21, new HomeFragment$special$$inlined$viewModels$default$2(20, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(LinkPreviewViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 1), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 10), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 2));
        this.menuListener = new LinkPreviewDialog$$ExternalSyntheticLambda3(this, 0);
        this.galleryViewListener = new LinkPreviewDialog$$ExternalSyntheticLambda3(this, 1);
        int i = 3;
        this.requestGalleryLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new LinkPreviewDialog$$ExternalSyntheticLambda3(this, 2), new FragmentManager$FragmentIntentSenderContract(i));
        this.requestStubArticleEditLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new LinkPreviewDialog$$ExternalSyntheticLambda3(this, i), new FragmentManager$FragmentIntentSenderContract(i));
    }

    public final LinkPreviewViewModel getViewModel() {
        return (LinkPreviewViewModel) this.viewModel$delegate.getValue();
    }

    public final void goToLinkedPage(boolean z) {
        ComponentCallbacks activity;
        Intent newIntentForCurrentTab;
        this.navigateSuccess = true;
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.dismiss();
        }
        PageTitle pageTitle = getViewModel().pageTitle;
        HistoryEntry historyEntry = getViewModel().historyEntry;
        if (LoadPageCallback.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (LoadPageCallback.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (LoadPageCallback.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = LoadPageCallback.class.isInstance(getActivity()) ? getActivity() : null;
        }
        LoadPageCallback loadPageCallback = (LoadPageCallback) activity;
        if (loadPageCallback != null) {
            loadPageCallback.onLinkPreviewLoadPage(pageTitle, historyEntry, z);
            return;
        }
        AppCompatActivity requireActivity = requireActivity();
        if (z) {
            int i = PageActivity.$r8$clinit;
            newIntentForCurrentTab = LoginClient.newIntentForNewTab(requireContext(), historyEntry, historyEntry.getTitle());
        } else {
            int i2 = PageActivity.$r8$clinit;
            newIntentForCurrentTab = LoginClient.newIntentForCurrentTab(requireContext(), historyEntry, historyEntry.getTitle(), false);
        }
        requireActivity.startActivity(newIntentForCurrentTab);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        final int i = 0;
        View inflate = layoutInflater.inflate(R.layout.dialog_link_preview, viewGroup, false);
        int i2 = R.id.dialog_link_preview_container;
        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.dialog_link_preview_container);
        Continuation continuation = null;
        if (linearLayout != null) {
            i2 = R.id.dialog_link_preview_content_container;
            LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.dialog_link_preview_content_container);
            if (linearLayout2 != null) {
                i2 = R.id.dialog_link_preview_error_container;
                LinkPreviewErrorView linkPreviewErrorView = (LinkPreviewErrorView) Room.findChildViewById(inflate, R.id.dialog_link_preview_error_container);
                if (linkPreviewErrorView != null) {
                    i2 = R.id.link_preview_distance;
                    TextView textView = (TextView) Room.findChildViewById(inflate, R.id.link_preview_distance);
                    if (textView != null) {
                        i2 = R.id.linkPreviewEditButton;
                        MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.linkPreviewEditButton);
                        if (materialButton != null) {
                            i2 = R.id.link_preview_extract;
                            TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.link_preview_extract);
                            if (textView2 != null) {
                                i2 = R.id.link_preview_overflow_button;
                                ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.link_preview_overflow_button);
                                if (imageView != null) {
                                    i2 = R.id.link_preview_progress;
                                    ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.link_preview_progress);
                                    if (progressBar != null) {
                                        i2 = R.id.link_preview_thumbnail;
                                        ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.link_preview_thumbnail);
                                        if (imageView2 != null) {
                                            i2 = R.id.link_preview_thumbnail_gallery;
                                            GalleryThumbnailScrollView galleryThumbnailScrollView = (GalleryThumbnailScrollView) Room.findChildViewById(inflate, R.id.link_preview_thumbnail_gallery);
                                            if (galleryThumbnailScrollView != null) {
                                                i2 = R.id.link_preview_title;
                                                TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.link_preview_title);
                                                if (textView3 != null) {
                                                    i2 = R.id.link_preview_toolbar;
                                                    LinearLayout linearLayout3 = (LinearLayout) Room.findChildViewById(inflate, R.id.link_preview_toolbar);
                                                    if (linearLayout3 != null) {
                                                        this._binding = new DialogLinkPreviewBinding((FrameLayout) inflate, linearLayout, linearLayout2, linkPreviewErrorView, textView, materialButton, textView2, imageView, progressBar, imageView2, galleryThumbnailScrollView, textView3, linearLayout3);
                                                        linearLayout3.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.linkpreview.LinkPreviewDialog$$ExternalSyntheticLambda0
                                                            public final /* synthetic */ LinkPreviewDialog f$0;

                                                            {
                                                                this.f$0 = this;
                                                            }

                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view) {
                                                                int i3 = i;
                                                                boolean z = false;
                                                                LinkPreviewDialog linkPreviewDialog = this.f$0;
                                                                switch (i3) {
                                                                    case 0:
                                                                        linkPreviewDialog.goToLinkedPage(false);
                                                                        break;
                                                                    case 1:
                                                                        AppCompatActivity requireActivity = linkPreviewDialog.requireActivity();
                                                                        DialogLinkPreviewBinding dialogLinkPreviewBinding = linkPreviewDialog._binding;
                                                                        dialogLinkPreviewBinding.getClass();
                                                                        Request.Builder builder = new Request.Builder(requireActivity, dialogLinkPreviewBinding.linkPreviewOverflowButton, 0);
                                                                        SupportMenuInflater supportMenuInflater = new SupportMenuInflater(requireActivity);
                                                                        MenuBuilder menuBuilder = (MenuBuilder) builder.url;
                                                                        supportMenuInflater.inflate(R.menu.menu_link_preview, menuBuilder);
                                                                        menuBuilder.findItem(R.id.menu_link_preview_add_to_list).setVisible(!linkPreviewDialog.getViewModel().fromPlaces);
                                                                        menuBuilder.findItem(R.id.menu_link_preview_share_page).setVisible(!linkPreviewDialog.getViewModel().fromPlaces);
                                                                        menuBuilder.findItem(R.id.menu_link_preview_watch).setVisible(linkPreviewDialog.getViewModel().fromPlaces && Headers.Companion.isLoggedIn());
                                                                        menuBuilder.findItem(R.id.menu_link_preview_watch).setTitle(linkPreviewDialog.getString(linkPreviewDialog.getViewModel().isWatched ? R.string.menu_page_unwatch : R.string.menu_page_watch));
                                                                        menuBuilder.findItem(R.id.menu_link_preview_open_in_new_tab).setVisible(linkPreviewDialog.getViewModel().fromPlaces);
                                                                        MenuItem findItem = menuBuilder.findItem(R.id.menu_link_preview_view_on_map);
                                                                        if (!linkPreviewDialog.getViewModel().fromPlaces && linkPreviewDialog.getViewModel().location != null) {
                                                                            z = true;
                                                                        }
                                                                        findItem.setVisible(z);
                                                                        menuBuilder.findItem(R.id.menu_link_preview_get_directions).setVisible(linkPreviewDialog.getViewModel().fromPlaces);
                                                                        builder.body = linkPreviewDialog.menuListener;
                                                                        builder.show();
                                                                        break;
                                                                    default:
                                                                        PageTitle pageTitle = linkPreviewDialog.getViewModel().pageTitle;
                                                                        Fragment.AnonymousClass10 anonymousClass10 = linkPreviewDialog.requestStubArticleEditLauncher;
                                                                        int i4 = EditSectionActivity.$r8$clinit;
                                                                        anonymousClass10.launch(LoginClient.newIntent$default(linkPreviewDialog.requireContext(), -1, null, pageTitle, Constants.InvokeSource.LINK_PREVIEW_MENU, null, 448), null);
                                                                        break;
                                                                }
                                                            }
                                                        });
                                                        DialogLinkPreviewBinding dialogLinkPreviewBinding = this._binding;
                                                        dialogLinkPreviewBinding.getClass();
                                                        final int i3 = 1;
                                                        dialogLinkPreviewBinding.linkPreviewOverflowButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.linkpreview.LinkPreviewDialog$$ExternalSyntheticLambda0
                                                            public final /* synthetic */ LinkPreviewDialog f$0;

                                                            {
                                                                this.f$0 = this;
                                                            }

                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view) {
                                                                int i32 = i3;
                                                                boolean z = false;
                                                                LinkPreviewDialog linkPreviewDialog = this.f$0;
                                                                switch (i32) {
                                                                    case 0:
                                                                        linkPreviewDialog.goToLinkedPage(false);
                                                                        break;
                                                                    case 1:
                                                                        AppCompatActivity requireActivity = linkPreviewDialog.requireActivity();
                                                                        DialogLinkPreviewBinding dialogLinkPreviewBinding2 = linkPreviewDialog._binding;
                                                                        dialogLinkPreviewBinding2.getClass();
                                                                        Request.Builder builder = new Request.Builder(requireActivity, dialogLinkPreviewBinding2.linkPreviewOverflowButton, 0);
                                                                        SupportMenuInflater supportMenuInflater = new SupportMenuInflater(requireActivity);
                                                                        MenuBuilder menuBuilder = (MenuBuilder) builder.url;
                                                                        supportMenuInflater.inflate(R.menu.menu_link_preview, menuBuilder);
                                                                        menuBuilder.findItem(R.id.menu_link_preview_add_to_list).setVisible(!linkPreviewDialog.getViewModel().fromPlaces);
                                                                        menuBuilder.findItem(R.id.menu_link_preview_share_page).setVisible(!linkPreviewDialog.getViewModel().fromPlaces);
                                                                        menuBuilder.findItem(R.id.menu_link_preview_watch).setVisible(linkPreviewDialog.getViewModel().fromPlaces && Headers.Companion.isLoggedIn());
                                                                        menuBuilder.findItem(R.id.menu_link_preview_watch).setTitle(linkPreviewDialog.getString(linkPreviewDialog.getViewModel().isWatched ? R.string.menu_page_unwatch : R.string.menu_page_watch));
                                                                        menuBuilder.findItem(R.id.menu_link_preview_open_in_new_tab).setVisible(linkPreviewDialog.getViewModel().fromPlaces);
                                                                        MenuItem findItem = menuBuilder.findItem(R.id.menu_link_preview_view_on_map);
                                                                        if (!linkPreviewDialog.getViewModel().fromPlaces && linkPreviewDialog.getViewModel().location != null) {
                                                                            z = true;
                                                                        }
                                                                        findItem.setVisible(z);
                                                                        menuBuilder.findItem(R.id.menu_link_preview_get_directions).setVisible(linkPreviewDialog.getViewModel().fromPlaces);
                                                                        builder.body = linkPreviewDialog.menuListener;
                                                                        builder.show();
                                                                        break;
                                                                    default:
                                                                        PageTitle pageTitle = linkPreviewDialog.getViewModel().pageTitle;
                                                                        Fragment.AnonymousClass10 anonymousClass10 = linkPreviewDialog.requestStubArticleEditLauncher;
                                                                        int i4 = EditSectionActivity.$r8$clinit;
                                                                        anonymousClass10.launch(LoginClient.newIntent$default(linkPreviewDialog.requireContext(), -1, null, pageTitle, Constants.InvokeSource.LINK_PREVIEW_MENU, null, 448), null);
                                                                        break;
                                                                }
                                                            }
                                                        });
                                                        DialogLinkPreviewBinding dialogLinkPreviewBinding2 = this._binding;
                                                        dialogLinkPreviewBinding2.getClass();
                                                        final int i4 = 2;
                                                        dialogLinkPreviewBinding2.linkPreviewEditButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.linkpreview.LinkPreviewDialog$$ExternalSyntheticLambda0
                                                            public final /* synthetic */ LinkPreviewDialog f$0;

                                                            {
                                                                this.f$0 = this;
                                                            }

                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view) {
                                                                int i32 = i4;
                                                                boolean z = false;
                                                                LinkPreviewDialog linkPreviewDialog = this.f$0;
                                                                switch (i32) {
                                                                    case 0:
                                                                        linkPreviewDialog.goToLinkedPage(false);
                                                                        break;
                                                                    case 1:
                                                                        AppCompatActivity requireActivity = linkPreviewDialog.requireActivity();
                                                                        DialogLinkPreviewBinding dialogLinkPreviewBinding22 = linkPreviewDialog._binding;
                                                                        dialogLinkPreviewBinding22.getClass();
                                                                        Request.Builder builder = new Request.Builder(requireActivity, dialogLinkPreviewBinding22.linkPreviewOverflowButton, 0);
                                                                        SupportMenuInflater supportMenuInflater = new SupportMenuInflater(requireActivity);
                                                                        MenuBuilder menuBuilder = (MenuBuilder) builder.url;
                                                                        supportMenuInflater.inflate(R.menu.menu_link_preview, menuBuilder);
                                                                        menuBuilder.findItem(R.id.menu_link_preview_add_to_list).setVisible(!linkPreviewDialog.getViewModel().fromPlaces);
                                                                        menuBuilder.findItem(R.id.menu_link_preview_share_page).setVisible(!linkPreviewDialog.getViewModel().fromPlaces);
                                                                        menuBuilder.findItem(R.id.menu_link_preview_watch).setVisible(linkPreviewDialog.getViewModel().fromPlaces && Headers.Companion.isLoggedIn());
                                                                        menuBuilder.findItem(R.id.menu_link_preview_watch).setTitle(linkPreviewDialog.getString(linkPreviewDialog.getViewModel().isWatched ? R.string.menu_page_unwatch : R.string.menu_page_watch));
                                                                        menuBuilder.findItem(R.id.menu_link_preview_open_in_new_tab).setVisible(linkPreviewDialog.getViewModel().fromPlaces);
                                                                        MenuItem findItem = menuBuilder.findItem(R.id.menu_link_preview_view_on_map);
                                                                        if (!linkPreviewDialog.getViewModel().fromPlaces && linkPreviewDialog.getViewModel().location != null) {
                                                                            z = true;
                                                                        }
                                                                        findItem.setVisible(z);
                                                                        menuBuilder.findItem(R.id.menu_link_preview_get_directions).setVisible(linkPreviewDialog.getViewModel().fromPlaces);
                                                                        builder.body = linkPreviewDialog.menuListener;
                                                                        builder.show();
                                                                        break;
                                                                    default:
                                                                        PageTitle pageTitle = linkPreviewDialog.getViewModel().pageTitle;
                                                                        Fragment.AnonymousClass10 anonymousClass10 = linkPreviewDialog.requestStubArticleEditLauncher;
                                                                        int i42 = EditSectionActivity.$r8$clinit;
                                                                        anonymousClass10.launch(LoginClient.newIntent$default(linkPreviewDialog.requireContext(), -1, null, pageTitle, Constants.InvokeSource.LINK_PREVIEW_MENU, null, 448), null);
                                                                        break;
                                                                }
                                                            }
                                                        });
                                                        DialogLinkPreviewBinding dialogLinkPreviewBinding3 = this._binding;
                                                        dialogLinkPreviewBinding3.getClass();
                                                        FrameLayout frameLayout = dialogLinkPreviewBinding3.rootView;
                                                        frameLayout.getClass();
                                                        BitmapsKt.setLayoutDirectionByLang(frameLayout, getViewModel().pageTitle.wikiSite.languageCode);
                                                        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new LinkPreviewDialog$onCreateView$4(this, continuation, i), 3);
                                                        DialogLinkPreviewBinding dialogLinkPreviewBinding4 = this._binding;
                                                        dialogLinkPreviewBinding4.getClass();
                                                        FrameLayout frameLayout2 = dialogLinkPreviewBinding4.rootView;
                                                        frameLayout2.getClass();
                                                        return frameLayout2;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        DialogLinkPreviewBinding dialogLinkPreviewBinding = this._binding;
        dialogLinkPreviewBinding.getClass();
        dialogLinkPreviewBinding.linkPreviewThumbnailGallery.setListener(null);
        DialogLinkPreviewBinding dialogLinkPreviewBinding2 = this._binding;
        dialogLinkPreviewBinding2.getClass();
        dialogLinkPreviewBinding2.linkPreviewToolbar.setOnClickListener(null);
        DialogLinkPreviewBinding dialogLinkPreviewBinding3 = this._binding;
        dialogLinkPreviewBinding3.getClass();
        dialogLinkPreviewBinding3.linkPreviewOverflowButton.setOnClickListener(null);
        LinkPreviewOverlayView linkPreviewOverlayView = this.overlayView;
        if (linkPreviewOverlayView != null) {
            linkPreviewOverlayView.setCallback(null);
            this.overlayView = null;
        }
        this._binding = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        ComponentCallbacks activity;
        ArticleLinkPreviewInteractionEvent articleLinkPreviewInteractionEvent;
        dialogInterface.getClass();
        super.onDismiss(dialogInterface);
        if (DismissCallback.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (DismissCallback.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (DismissCallback.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = DismissCallback.class.isInstance(getActivity()) ? getActivity() : null;
        }
        DismissCallback dismissCallback = (DismissCallback) activity;
        if (dismissCallback != null) {
            dismissCallback.onLinkPreviewDismiss();
        }
        if (this.navigateSuccess || (articleLinkPreviewInteractionEvent = this.articleLinkPreviewInteractionEvent) == null) {
            return;
        }
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        EventPlatformClient.submit(new ArticleLinkPreviewInteractionEvent.ArticleLinkPreviewInteractionEventImpl(articleLinkPreviewInteractionEvent.source, (int) (System.currentTimeMillis() - articleLinkPreviewInteractionEvent.startTime), articleLinkPreviewInteractionEvent.pageId, "cancel", articleLinkPreviewInteractionEvent.wikiDb));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        int i = 1;
        this.mCalled = true;
        ViewGroup viewGroup = (ViewGroup) requireDialog().findViewById(android.R.id.content);
        if (this.overlayView != null || viewGroup == null) {
            return;
        }
        LinkPreviewOverlayView linkPreviewOverlayView = new LinkPreviewOverlayView(requireContext());
        this.overlayView = linkPreviewOverlayView;
        if (getViewModel().fromPlaces) {
            SparseArray strings = ContextKt.getStrings(requireContext(), getViewModel().pageTitle, new int[]{R.string.link_preview_dialog_share_button, R.string.link_preview_dialog_save_button, R.string.link_preview_dialog_read_button});
            linkPreviewOverlayView.setCallback(new OverlayViewCallback(this, i));
            linkPreviewOverlayView.setPrimaryButtonText((CharSequence) strings.get(R.string.link_preview_dialog_share_button));
            linkPreviewOverlayView.setSecondaryButtonText((CharSequence) strings.get(R.string.link_preview_dialog_save_button));
            linkPreviewOverlayView.setTertiaryButtonText((CharSequence) strings.get(R.string.link_preview_dialog_read_button));
        } else {
            Context requireContext = requireContext();
            PageTitle pageTitle = getViewModel().pageTitle;
            int i2 = R.string.button_continue_to_talk_page;
            SparseArray strings2 = ContextKt.getStrings(requireContext, pageTitle, new int[]{R.string.button_continue_to_talk_page, R.string.button_continue_to_article, R.string.menu_long_press_open_in_new_tab});
            linkPreviewOverlayView.setCallback(new OverlayViewCallback(this, 0));
            if (getViewModel().pageTitle.namespace() != Namespace.TALK && getViewModel().pageTitle.namespace() != Namespace.USER_TALK) {
                i2 = R.string.button_continue_to_article;
            }
            linkPreviewOverlayView.setPrimaryButtonText((CharSequence) strings2.get(i2));
            linkPreviewOverlayView.setSecondaryButtonText((CharSequence) strings2.get(R.string.menu_long_press_open_in_new_tab));
            ((Button) linkPreviewOverlayView.binding.parts).setVisibility(8);
        }
        viewGroup.addView(linkPreviewOverlayView);
        Utils$$ExternalSyntheticBUOutline0 utils$$ExternalSyntheticBUOutline0 = new Utils$$ExternalSyntheticBUOutline0(1);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(linkPreviewOverlayView, utils$$ExternalSyntheticBUOutline0);
    }

    public final void sendPlacesEvent(String str, String str2) {
        if (getViewModel().historyEntry.source == 9) {
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String m = ViewSizeResolver$CC.m();
            Prefs prefs = Prefs.INSTANCE;
            EventPlatformClient.submit(new AppInteractionEvent(str, str2, "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class OverlayViewCallback implements LinkPreviewOverlayView.Callback, LongPressMenu.Callback {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ LinkPreviewDialog this$0;

        public /* synthetic */ OverlayViewCallback(LinkPreviewDialog linkPreviewDialog, int i) {
            this.$r8$classId = i;
            this.this$0 = linkPreviewDialog;
        }

        @Override // org.wikipedia.readinglist.LongPressMenu.Callback
        public void onAddRequest(HistoryEntry historyEntry, boolean z) {
            historyEntry.getClass();
            List list = ReadingListBehaviorsUtil.allReadingLists;
            LinkPreviewDialog linkPreviewDialog = this.this$0;
            ReadingListBehaviorsUtil.addToDefaultList(linkPreviewDialog.requireActivity(), linkPreviewDialog.getViewModel().pageTitle, z, Constants.InvokeSource.LINK_PREVIEW_MENU, null);
            linkPreviewDialog.dismiss();
        }

        @Override // org.wikipedia.readinglist.LongPressMenu.Callback
        public void onMoveRequest(ReadingListPage readingListPage, HistoryEntry historyEntry) {
            historyEntry.getClass();
            LinkPreviewDialog linkPreviewDialog = this.this$0;
            if (readingListPage != null) {
                List list = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.moveToList(linkPreviewDialog.requireActivity(), readingListPage.listId, linkPreviewDialog.getViewModel().pageTitle, Constants.InvokeSource.LINK_PREVIEW_MENU, true, null);
            }
            linkPreviewDialog.dismiss();
        }

        @Override // org.wikipedia.readinglist.LongPressMenu.Callback
        public void onOpenInNewTab(HistoryEntry historyEntry) {
            historyEntry.getClass();
        }

        @Override // org.wikipedia.readinglist.LongPressMenu.Callback
        public /* bridge */ void onOpenInPlaces(HistoryEntry historyEntry, Location location) {
            Service.CC.$default$onOpenInPlaces(historyEntry, location);
        }

        @Override // org.wikipedia.readinglist.LongPressMenu.Callback
        public void onOpenLink(HistoryEntry historyEntry) {
            historyEntry.getClass();
        }

        @Override // org.wikipedia.page.linkpreview.LinkPreviewOverlayView.Callback
        public void onPrimaryClick() {
            int i = this.$r8$classId;
            LinkPreviewDialog linkPreviewDialog = this.this$0;
            switch (i) {
                case 0:
                    linkPreviewDialog.goToLinkedPage(false);
                    break;
                default:
                    linkPreviewDialog.sendPlacesEvent("share_click", "detail_toolbar");
                    ShareUtil.shareText$default(linkPreviewDialog.requireContext(), linkPreviewDialog.getViewModel().pageTitle);
                    break;
            }
        }

        @Override // org.wikipedia.readinglist.LongPressMenu.Callback
        public void onRemoveRequest() {
            this.this$0.dismiss();
        }

        @Override // org.wikipedia.page.linkpreview.LinkPreviewOverlayView.Callback
        public void onSecondaryClick() {
            int i = this.$r8$classId;
            LinkPreviewDialog linkPreviewDialog = this.this$0;
            switch (i) {
                case 0:
                    linkPreviewDialog.goToLinkedPage(true);
                    break;
                default:
                    LinkPreviewOverlayView linkPreviewOverlayView = linkPreviewDialog.overlayView;
                    if (linkPreviewOverlayView != null) {
                        linkPreviewDialog.sendPlacesEvent("save_click", "detail_toolbar");
                        Button secondaryButtonView = linkPreviewOverlayView.getSecondaryButtonView();
                        if (!linkPreviewDialog.getViewModel().isInReadingList) {
                            List list = ReadingListBehaviorsUtil.allReadingLists;
                            ReadingListBehaviorsUtil.addToDefaultList(linkPreviewDialog.requireActivity(), linkPreviewDialog.getViewModel().pageTitle, true, Constants.InvokeSource.LINK_PREVIEW_MENU, null);
                            linkPreviewDialog.dismiss();
                            break;
                        } else {
                            new LongPressMenu(secondaryButtonView, 0, null, new OverlayViewCallback(linkPreviewDialog, 2), 28).show(new HistoryEntry(2, linkPreviewDialog.getViewModel().pageTitle));
                            break;
                        }
                    }
                    break;
            }
        }

        @Override // org.wikipedia.page.linkpreview.LinkPreviewOverlayView.Callback
        public void onTertiaryClick() {
            switch (this.$r8$classId) {
                case 0:
                    break;
                default:
                    LinkPreviewDialog linkPreviewDialog = this.this$0;
                    linkPreviewDialog.sendPlacesEvent("read_click", "detail_toolbar");
                    linkPreviewDialog.goToLinkedPage(false);
                    break;
            }
        }

        private final void onTertiaryClick$org$wikipedia$page$linkpreview$LinkPreviewDialog$OverlayViewCallback() {
        }

        @Override // org.wikipedia.readinglist.LongPressMenu.Callback
        public void onShareRequest() {
        }
    }
}
