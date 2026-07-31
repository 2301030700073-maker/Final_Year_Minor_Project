package org.wikipedia.gallery;

import android.app.assist.AssistContent;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Request;
import okio.Okio__OkioKt;
import org.wikipedia.Constants;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.bridge.JavaScriptActionHandler$ImageHitInfo;
import org.wikipedia.databinding.ActivityGalleryBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.gallery.GalleryItemFragment;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.main.MainFragment;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewDialog;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.theme.Theme;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil$shareImage$2;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.AppTextView;
import org.wikipedia.views.PositionAwareFragmentStateAdapter;
import org.wikipedia.views.ViewAnimations;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0003\u0006\u0007\bB\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Lorg/wikipedia/gallery/GalleryActivity;", "Lorg/wikipedia/activity/BaseActivity;", "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;", "Lorg/wikipedia/gallery/GalleryItemFragment$Callback;", "<init>", "()V", "PageChangeCallback", "GalleryItemAdapter", "org/wikipedia/media/AvPlayer", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GalleryActivity extends BaseActivity implements LinkPreviewDialog.LoadPageCallback, GalleryItemFragment.Callback {
    public static JavaScriptActionHandler$ImageHitInfo TRANSITION_INFO;
    public ActivityGalleryBinding binding;
    public GalleryItemAdapter galleryAdapter;
    public Constants.ImageEditType imageEditType;
    public final LinkMovementMethodExt linkMovementMethod;
    public final MainFragment.PageChangeCallback pageChangeListener;
    public final ActivityResultRegistry$register$2 requestAddCaptionLauncher;
    public final ActivityResultRegistry$register$2 requestAddImageTagsLauncher;
    public String targetLanguageCode;
    public final Request.Builder viewModel$delegate;
    public boolean controlsShowing = true;
    public int initialImageIndex = -1;
    public final MediaDownloadReceiver downloadReceiver = new MediaDownloadReceiver();
    public final AvPlayer downloadReceiverCallback = new AvPlayer(9, this);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class GalleryItemAdapter extends PositionAwareFragmentStateAdapter {
        public final ArrayList list;

        public GalleryItemAdapter(GalleryActivity galleryActivity) {
            super(galleryActivity);
            this.list = new ArrayList();
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public final Fragment createFragment(int i) {
            JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo = GalleryActivity.TRANSITION_INFO;
            PageTitle pageTitle = GalleryActivity.this.getViewModel().pageTitle;
            MediaListItem mediaListItem = (MediaListItem) this.list.get(i);
            mediaListItem.getClass();
            GalleryItemFragment galleryItemFragment = new GalleryItemFragment();
            galleryItemFragment.setArguments(UStringsKt.bundleOf(new Pair("title", pageTitle), new Pair("galleryItem", mediaListItem)));
            return galleryItemFragment;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return this.list.size();
        }
    }

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

    public GalleryActivity() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(GalleryViewModel.class), new Function0(this) { // from class: org.wikipedia.gallery.GalleryActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ GalleryActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                GalleryActivity galleryActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return galleryActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return galleryActivity.getViewModelStore();
                    default:
                        return galleryActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.gallery.GalleryActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ GalleryActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                GalleryActivity galleryActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return galleryActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return galleryActivity.getViewModelStore();
                    default:
                        return galleryActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.gallery.GalleryActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ GalleryActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                GalleryActivity galleryActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return galleryActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return galleryActivity.getViewModelStore();
                    default:
                        return galleryActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
        int i4 = 3;
        this.pageChangeListener = new MainFragment.PageChangeCallback(i4, this);
        this.requestAddCaptionLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new GalleryActivity$$ExternalSyntheticLambda0(this, i), new FragmentManager$FragmentIntentSenderContract(i4));
        this.requestAddImageTagsLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new GalleryActivity$$ExternalSyntheticLambda0(this, i3), new FragmentManager$FragmentIntentSenderContract(i4));
        this.linkMovementMethod = new LinkMovementMethodExt(new GalleryActivity$$ExternalSyntheticLambda0(this, i4));
    }

    public final void fetchGalleryDescription(GalleryItemFragment galleryItemFragment) {
        GalleryItemFragment currentItem = getCurrentItem();
        if (!Intrinsics.areEqual(currentItem, galleryItemFragment) || currentItem == null) {
            return;
        }
        ImageInfo mediaInfo = currentItem.getMediaInfo();
        if ((mediaInfo != null ? mediaInfo.metadata : null) == null) {
            ActivityGalleryBinding activityGalleryBinding = this.binding;
            if (activityGalleryBinding != null) {
                ((LinearLayout) activityGalleryBinding.infoContainer).setVisibility(8);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
        GalleryViewModel viewModel = getViewModel();
        PageTitle pageTitle = currentItem.getViewModel().imageTitle;
        pageTitle.getClass();
        StateFlowImpl stateFlowImpl = viewModel._descriptionState;
        Resource.Loading loading = new Resource.Loading();
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, loading);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new GalleryViewModel$fetchGalleryItems$$inlined$CoroutineExceptionHandler$1(viewModel, 1), null, new ShareUtil$shareImage$2(viewModel, pageTitle, null), 2);
    }

    public final GalleryItemFragment getCurrentItem() {
        GalleryItemAdapter galleryItemAdapter = this.galleryAdapter;
        if (galleryItemAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("galleryAdapter");
            throw null;
        }
        ActivityGalleryBinding activityGalleryBinding = this.binding;
        if (activityGalleryBinding != null) {
            return (GalleryItemFragment) galleryItemAdapter.getFragmentAt(((ViewPager2) activityGalleryBinding.pager).getCurrentItem());
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        throw null;
    }

    public final GalleryViewModel getViewModel() {
        return (GalleryViewModel) this.viewModel$delegate.getValue();
    }

    public final void hideTransitionReceiver(boolean z) {
        ActivityGalleryBinding activityGalleryBinding = this.binding;
        if (activityGalleryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        if (((ImageView) activityGalleryBinding.transitionReceiver).getVisibility() == 8) {
            return;
        }
        ActivityGalleryBinding activityGalleryBinding2 = this.binding;
        if (z) {
            if (activityGalleryBinding2 != null) {
                ((ImageView) activityGalleryBinding2.transitionReceiver).postDelayed(new GalleryActivity$$ExternalSyntheticLambda6(this, 1), 250L);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
        if (activityGalleryBinding2 != null) {
            ((ImageView) activityGalleryBinding2.transitionReceiver).setVisibility(8);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        configuration.getClass();
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            ActivityGalleryBinding activityGalleryBinding = this.binding;
            if (activityGalleryBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            int currentItem = ((ViewPager2) activityGalleryBinding.pager).getCurrentItem();
            int max = Math.max(currentItem - 1, 0);
            ActivityGalleryBinding activityGalleryBinding2 = this.binding;
            if (activityGalleryBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((ViewPager2) activityGalleryBinding2.pager).setCurrentItem(max, false);
            ActivityGalleryBinding activityGalleryBinding3 = this.binding;
            if (activityGalleryBinding3 != null) {
                ((ViewPager2) activityGalleryBinding3.pager).setCurrentItem(currentItem, false);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03a6  */
    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r30) {
        /*
            Method dump skipped, instructions count: 1012
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.gallery.GalleryActivity.onCreate(android.os.Bundle):void");
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onDestroy() {
        ActivityGalleryBinding activityGalleryBinding = this.binding;
        if (activityGalleryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((ArrayList) ((ViewPager2) activityGalleryBinding.pager).mExternalPageChangeCallbacks.this$0).remove(this.pageChangeListener);
        TRANSITION_INFO = null;
        super.onDestroy();
    }

    public final void onError(Throwable th) {
        th.getClass();
        ActivityGalleryBinding activityGalleryBinding = this.binding;
        if (activityGalleryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        WikiErrorView wikiErrorView = (WikiErrorView) activityGalleryBinding.errorView;
        int i = WikiErrorView.$r8$clinit;
        wikiErrorView.setError(th, null);
        ActivityGalleryBinding activityGalleryBinding2 = this.binding;
        if (activityGalleryBinding2 != null) {
            ((WikiErrorView) activityGalleryBinding2.errorView).setVisibility(0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    @Override // org.wikipedia.page.linkpreview.LinkPreviewDialog.LoadPageCallback
    public final void onLinkPreviewLoadPage(PageTitle pageTitle, HistoryEntry historyEntry, boolean z) {
        pageTitle.getClass();
        historyEntry.getClass();
        Intent putExtra = new Intent("org.wikipedia.load_in_current_tab").setClass(this, PageActivity.class).putExtra("org.wikipedia.history.historyentry", historyEntry).putExtra("title", pageTitle);
        putExtra.getClass();
        setResult(1, putExtra);
        finish();
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        MediaDownloadReceiver mediaDownloadReceiver = this.downloadReceiver;
        mediaDownloadReceiver.getClass();
        unregisterReceiver(mediaDownloadReceiver);
        mediaDownloadReceiver.callback = null;
    }

    @Override // android.app.Activity
    public final void onProvideAssistContent(AssistContent assistContent) {
        ImageInfo mediaInfo;
        String str;
        assistContent.getClass();
        super.onProvideAssistContent(assistContent);
        GalleryItemFragment currentItem = getCurrentItem();
        if (currentItem == null || (mediaInfo = currentItem.getMediaInfo()) == null || (str = mediaInfo.commonsUrl) == null) {
            return;
        }
        Uri parse = Uri.parse(str);
        parse.getClass();
        assistContent.setWebUri(parse);
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.downloadReceiver.register(this, this.downloadReceiverCallback);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("controlsShowing", this.controlsShowing);
        ActivityGalleryBinding activityGalleryBinding = this.binding;
        if (activityGalleryBinding != null) {
            bundle.putInt("pagerIndex", ((ViewPager2) activityGalleryBinding.pager).getCurrentItem());
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    public final void setControlsShowing(boolean z) {
        this.controlsShowing = z;
        if (z) {
            int i = ViewAnimations.$r8$clinit;
            ActivityGalleryBinding activityGalleryBinding = this.binding;
            if (activityGalleryBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ViewAnimations.ensureTranslationY((FrameLayout) activityGalleryBinding.toolbarContainer, 0, null);
            ActivityGalleryBinding activityGalleryBinding2 = this.binding;
            if (activityGalleryBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ViewAnimations.ensureTranslationY((LinearLayout) activityGalleryBinding2.infoContainer, 0, null);
            ActivityGalleryBinding activityGalleryBinding3 = this.binding;
            if (activityGalleryBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((LinearLayout) activityGalleryBinding3.infoContainer).setVisibility(0);
        } else {
            int i2 = ViewAnimations.$r8$clinit;
            ActivityGalleryBinding activityGalleryBinding4 = this.binding;
            if (activityGalleryBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            FrameLayout frameLayout = (FrameLayout) activityGalleryBinding4.toolbarContainer;
            if (activityGalleryBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ViewAnimations.ensureTranslationY(frameLayout, -frameLayout.getHeight(), null);
            ActivityGalleryBinding activityGalleryBinding5 = this.binding;
            if (activityGalleryBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            LinearLayout linearLayout = (LinearLayout) activityGalleryBinding5.infoContainer;
            if (activityGalleryBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ViewAnimations.ensureTranslationY(linearLayout, linearLayout.getHeight(), new WikiGames$$ExternalSyntheticLambda0(12, this));
        }
        ActivityGalleryBinding activityGalleryBinding6 = this.binding;
        if (activityGalleryBinding6 != null) {
            ((AppTextView) activityGalleryBinding6.descriptionText).setTextIsSelectable(this.controlsShowing);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    @Override // org.wikipedia.activity.BaseActivity
    public final void setTheme() {
        setTheme(Theme.DARK.getResourceId());
    }

    public final void showLinkPreview(PageTitle pageTitle) {
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        HistoryEntry historyEntry = new HistoryEntry(19, pageTitle);
        LinkPreviewDialog linkPreviewDialog = new LinkPreviewDialog();
        linkPreviewDialog.setArguments(UStringsKt.bundleOf(new Pair("entry", historyEntry), new Pair("location", null), new Pair("lastKnownLocation", null)));
        Okio__OkioKt.show(supportFragmentManager, linkPreviewDialog);
    }

    public final void startCaptionEdit(GalleryItemFragment galleryItemFragment) {
        ImageInfo mediaInfo = galleryItemFragment.getMediaInfo();
        if (mediaInfo != null) {
            PageTitle pageTitle = new PageTitle(galleryItemFragment.getViewModel().imageTitle.getPrefixedText(), new WikiSite("https://commons.wikimedia.org/", getViewModel().wikiSite.languageCode), (String) null);
            pageTitle.description = (String) mediaInfo.captions.get(getViewModel().wikiSite.languageCode);
            String prefixedText = pageTitle.getPrefixedText();
            String str = getViewModel().wikiSite.languageCode;
            String displayText = pageTitle.getDisplayText();
            ExtMetadata extMetadata = mediaInfo.metadata;
            String imageDescription = extMetadata != null ? extMetadata.imageDescription() : null;
            StringUtil stringUtil = StringUtil.INSTANCE;
            if (imageDescription == null) {
                imageDescription = "";
            }
            PageSummaryForEdit pageSummaryForEdit = new PageSummaryForEdit(prefixedText, str, pageTitle, displayText, StringUtil.fromHtml(StringUtil.removeStyleTags(imageDescription)).toString(), mediaInfo.thumbUrl, null, null, 1984);
            DescriptionEditActivity.Action action = DescriptionEditActivity.Action.ADD_CAPTION;
            Constants.InvokeSource invokeSource = Constants.InvokeSource.GALLERY_ACTIVITY;
            action.getClass();
            invokeSource.getClass();
            Intent putExtra = new Intent(this, (Class<?>) DescriptionEditActivity.class).putExtra("title", pageTitle).putExtra("highlightText", (String) null).putExtra("sourceSummary", pageSummaryForEdit).putExtra("targetSummary", (Parcelable) null).putExtra("intentAction", action).putExtra("invokeSource", invokeSource);
            putExtra.getClass();
            this.requestAddCaptionLauncher.launch(putExtra, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:211:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateGalleryDescription(int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 865
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.gallery.GalleryActivity.updateGalleryDescription(int, boolean):void");
    }
}
