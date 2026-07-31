package org.wikipedia.commons;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.draw.DrawResult;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.SingletonImageLoader;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.request.ImageRequest;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlinx.coroutines.AwaitKt;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import okhttp3.ConnectionPool;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.gallery.ImageInfo;
import org.wikipedia.gallery.MediaDownloadReceiver;
import org.wikipedia.page.PageTitle;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/commons/FilePageFragment;", "Landroidx/fragment/app/Fragment;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "okhttp3/ConnectionPool", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FilePageFragment extends Fragment implements MenuProvider {
    public SVGAndroidRenderer _binding;
    public final Fragment.AnonymousClass10 addImageCaptionLauncher;
    public final Fragment.AnonymousClass10 addImageTagsLauncher;
    public final MediaDownloadReceiver downloadReceiver;
    public final ConnectionPool downloadReceiverCallback;
    public final Fragment.AnonymousClass10 requestPermissionLauncher;
    public final Request.Builder viewModel$delegate;

    public FilePageFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new AndroidLeakFixes$Companion$onDecorViewReady$1(28, new AndroidLeakFixes$Companion$onDecorViewReady$1(27, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(FilePageViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 5), new KTypeImpl$arguments$2(29, this, lazy), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 6));
        this.downloadReceiver = new MediaDownloadReceiver();
        this.downloadReceiverCallback = new ConnectionPool(24, this);
        int i = 2;
        this.requestPermissionLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new FilePageFragment$$ExternalSyntheticLambda0(this, 0), new FragmentManager$FragmentIntentSenderContract(i));
        int i2 = 3;
        this.addImageCaptionLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new FilePageFragment$$ExternalSyntheticLambda0(this, 1), new FragmentManager$FragmentIntentSenderContract(i2));
        this.addImageTagsLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new FilePageFragment$$ExternalSyntheticLambda0(this, i), new FragmentManager$FragmentIntentSenderContract(i2));
    }

    public final void downloadImage() {
        Unit unit;
        PageSummaryForEdit pageSummaryForEdit = getViewModel().pageSummaryForEdit;
        if (pageSummaryForEdit != null) {
            ImageInfo imageInfo = getViewModel().mediaInfo;
            if (imageInfo != null) {
                Context requireContext = requireContext();
                PageTitle pageTitle = pageSummaryForEdit.pageTitle;
                this.downloadReceiver.getClass();
                MediaDownloadReceiver.download(requireContext, pageTitle, imageInfo);
                ShareUtil.showMessage(R.string.gallery_save_progress, this);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        ShareUtil.showMessage(R.string.err_cannot_save_file, this);
    }

    public final FilePageViewModel getViewModel() {
        return (FilePageViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.core.view.MenuProvider
    public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        menuInflater.inflate(R.menu.menu_file_page, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_file_page, viewGroup, false);
        int i = R.id.errorView;
        WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.errorView);
        if (wikiErrorView != null) {
            i = R.id.filePageToolbarContainer;
            if (((AppBarLayout) Room.findChildViewById(inflate, R.id.filePageToolbarContainer)) != null) {
                i = R.id.filePageView;
                FilePageView filePageView = (FilePageView) Room.findChildViewById(inflate, R.id.filePageView);
                if (filePageView != null) {
                    i = R.id.progressBar;
                    LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.progressBar);
                    if (linearProgressIndicator != null) {
                        i = R.id.swipeRefreshLayout;
                        WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) Room.findChildViewById(inflate, R.id.swipeRefreshLayout);
                        if (wikiSwipeRefreshLayout != null) {
                            i = R.id.toolbar;
                            MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                            if (materialToolbar != null) {
                                this._binding = new SVGAndroidRenderer((LinearLayout) inflate, wikiErrorView, filePageView, linearProgressIndicator, wikiSwipeRefreshLayout, materialToolbar);
                                requireActivity().addMenuProvider(this, getViewLifecycleOwner(), Lifecycle$State.RESUMED);
                                AppCompatActivity requireActivity = requireActivity();
                                SVGAndroidRenderer sVGAndroidRenderer = this._binding;
                                sVGAndroidRenderer.getClass();
                                requireActivity.setSupportActionBar((MaterialToolbar) sVGAndroidRenderer.matrixStack);
                                SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
                                sVGAndroidRenderer2.getClass();
                                LinearLayout linearLayout = (LinearLayout) sVGAndroidRenderer2.canvas;
                                linearLayout.getClass();
                                BitmapsKt.setLayoutDirectionByLang(linearLayout, getViewModel().pageTitle.wikiSite.languageCode);
                                SVGAndroidRenderer sVGAndroidRenderer3 = this._binding;
                                sVGAndroidRenderer3.getClass();
                                LinearLayout linearLayout2 = (LinearLayout) sVGAndroidRenderer3.canvas;
                                linearLayout2.getClass();
                                return linearLayout2;
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this._binding = null;
        this.mCalled = true;
    }

    @Override // androidx.core.view.MenuProvider
    public final boolean onMenuItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.menu_file_save) {
            if (Build.VERSION.SDK_INT >= 33 || FileUtil.checkSelfPermission(requireContext(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                downloadImage();
                return true;
            }
            this.requestPermissionLauncher.launch("android.permission.WRITE_EXTERNAL_STORAGE", null);
            return true;
        }
        if (itemId != R.id.menu_file_share) {
            return false;
        }
        PageSummaryForEdit pageSummaryForEdit = getViewModel().pageSummaryForEdit;
        if (pageSummaryForEdit == null) {
            return true;
        }
        String preferredSizeThumbnailUrl = pageSummaryForEdit.getPreferredSizeThumbnailUrl();
        Context requireContext = requireContext();
        UtilsKt$$ExternalSyntheticLambda1 utilsKt$$ExternalSyntheticLambda1 = new UtilsKt$$ExternalSyntheticLambda1(this, preferredSizeThumbnailUrl, pageSummaryForEdit, 18);
        if (Okio__OkioKt._implementation == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("ImageService has not been set, call ImageService.setImplementation() before using ImageService");
            return false;
        }
        ImageRequest.Builder builder = new ImageRequest.Builder(requireContext);
        builder.data = preferredSizeThumbnailUrl;
        builder.target = new DrawResult(utilsKt$$ExternalSyntheticLambda1);
        SingletonImageLoader.get(requireContext).enqueue(builder.build());
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.mCalled = true;
        Context requireContext = requireContext();
        MediaDownloadReceiver mediaDownloadReceiver = this.downloadReceiver;
        mediaDownloadReceiver.getClass();
        requireContext.unregisterReceiver(mediaDownloadReceiver);
        mediaDownloadReceiver.callback = null;
    }

    @Override // androidx.core.view.MenuProvider
    public final void onPrepareMenu(Menu menu) {
        String str;
        menu.getClass();
        if (isAdded()) {
            ImageInfo imageInfo = getViewModel().mediaInfo;
            boolean z = false;
            if (imageInfo != null && (str = imageInfo.thumbUrl) != null && str.length() > 0) {
                z = true;
            }
            menu.findItem(R.id.menu_file_save).setEnabled(z);
            menu.findItem(R.id.menu_file_share).setEnabled(z);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        this.downloadReceiver.register(requireContext(), this.downloadReceiverCallback);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        sVGAndroidRenderer.getClass();
        ((WikiSwipeRefreshLayout) sVGAndroidRenderer.parentStack).setOnRefreshListener(new FilePageFragment$$ExternalSyntheticLambda0(this, 3));
        SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
        sVGAndroidRenderer2.getClass();
        ((WikiErrorView) sVGAndroidRenderer2.document).setBackClickListener(new DiffLineView$$ExternalSyntheticLambda0(7, this));
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new FilePageFragment$onViewCreated$3(this, null, 0), 3);
        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
        ImageRecommendationsEvent.Companion.logImpression$default(companion, "imagedetails_dialog", ImageRecommendationsEvent.Companion.getActionDataString$default(companion, getViewModel().pageTitle.getPrefixedText(), null, null, null, null, null, null, null, false, 510), 4);
    }

    @Override // androidx.core.view.MenuProvider
    public final void onMenuClosed(Menu menu) {
    }
}
