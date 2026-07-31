package org.wikipedia.gallery;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.ProgressBar;
import android.widget.VideoView;
import androidx.compose.ui.draw.DrawResult;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.SingletonImageLoader;
import coil3.request.ImageRequest;
import coil3.util.ContextsKt;
import com.google.gson.GsonBuilder;
import io.getstream.photoview.PhotoView;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import okio.Path;
import org.wikipedia.R;
import org.wikipedia.commons.FilePageActivity;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.ImageUrlUtil;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0005\u0006B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lorg/wikipedia/gallery/GalleryItemFragment;", "Landroidx/fragment/app/Fragment;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "Callback", "1", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GalleryItemFragment extends Fragment implements MenuProvider {
    public GsonBuilder _binding;
    public final Request.Builder activityViewModel$delegate;
    public MediaController mediaController;
    public final Fragment.AnonymousClass10 requestPermissionLauncher;
    public final GalleryItemFragment$videoThumbnailClickListener$1 videoThumbnailClickListener;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    public GalleryItemFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(13, new GalleryItemFragment$special$$inlined$viewModels$default$1(this, 0)));
        ReflectionFactory reflectionFactory = Reflection.factory;
        this.viewModel$delegate = new Request.Builder(reflectionFactory.getOrCreateKotlinClass(GalleryItemViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 22), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 6), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 23));
        int i = 2;
        this.activityViewModel$delegate = new Request.Builder(reflectionFactory.getOrCreateKotlinClass(GalleryViewModel.class), new GalleryItemFragment$special$$inlined$viewModels$default$1(this, 1), new GalleryItemFragment$special$$inlined$viewModels$default$1(this, 3), new GalleryItemFragment$special$$inlined$viewModels$default$1(this, i));
        this.requestPermissionLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new GalleryItemFragment$$ExternalSyntheticLambda0(this), new FragmentManager$FragmentIntentSenderContract(i));
        this.videoThumbnailClickListener = new GalleryItemFragment$videoThumbnailClickListener$1(this);
    }

    public final Callback callback() {
        ComponentCallbacks activity;
        if (Callback.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (Callback.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (Callback.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = Callback.class.isInstance(getActivity()) ? getActivity() : null;
        }
        return (Callback) activity;
    }

    public final ImageInfo getMediaInfo() {
        MwQueryPage mwQueryPage = getViewModel().mediaPage;
        if (mwQueryPage != null) {
            return mwQueryPage.imageInfo();
        }
        return null;
    }

    public final GalleryItemViewModel getViewModel() {
        return (GalleryItemViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.core.view.MenuProvider
    public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        menuInflater.inflate(R.menu.menu_gallery, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_gallery_item, viewGroup, false);
        FrameLayout frameLayout = (FrameLayout) inflate;
        int i = R.id.imageView;
        PhotoView photoView = (PhotoView) Room.findChildViewById(inflate, R.id.imageView);
        if (photoView != null) {
            i = R.id.progressBar;
            ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.progressBar);
            if (progressBar != null) {
                i = R.id.videoContainer;
                FrameLayout frameLayout2 = (FrameLayout) Room.findChildViewById(inflate, R.id.videoContainer);
                if (frameLayout2 != null) {
                    i = R.id.videoPlayButton;
                    ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.videoPlayButton);
                    if (imageView != null) {
                        i = R.id.videoThumbnail;
                        ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.videoThumbnail);
                        if (imageView2 != null) {
                            i = R.id.videoView;
                            VideoView videoView = (VideoView) Room.findChildViewById(inflate, R.id.videoView);
                            if (videoView != null) {
                                this._binding = new GsonBuilder(frameLayout, photoView, progressBar, frameLayout2, imageView, imageView2, videoView, 10);
                                requireActivity().addMenuProvider(this, getViewLifecycleOwner(), Lifecycle$State.RESUMED);
                                GsonBuilder gsonBuilder = this._binding;
                                gsonBuilder.getClass();
                                ((PhotoView) gsonBuilder.longSerializationPolicy).setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(12, this));
                                GsonBuilder gsonBuilder2 = this._binding;
                                gsonBuilder2.getClass();
                                ((PhotoView) gsonBuilder2.longSerializationPolicy).setOnMatrixChangeListener(new GalleryItemFragment$$ExternalSyntheticLambda0(this));
                                GsonBuilder gsonBuilder3 = this._binding;
                                gsonBuilder3.getClass();
                                FrameLayout frameLayout3 = (FrameLayout) gsonBuilder3.excluder;
                                frameLayout3.getClass();
                                return frameLayout3;
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
        GsonBuilder gsonBuilder = this._binding;
        gsonBuilder.getClass();
        ((PhotoView) gsonBuilder.longSerializationPolicy).setOnMatrixChangeListener(null);
        GsonBuilder gsonBuilder2 = this._binding;
        gsonBuilder2.getClass();
        ((PhotoView) gsonBuilder2.longSerializationPolicy).setOnClickListener(null);
        GsonBuilder gsonBuilder3 = this._binding;
        gsonBuilder3.getClass();
        ((ImageView) gsonBuilder3.hierarchyFactories).setOnClickListener(null);
        this._binding = null;
        this.mCalled = true;
    }

    public final void onLoading(boolean z) {
        GsonBuilder gsonBuilder = this._binding;
        gsonBuilder.getClass();
        ((ProgressBar) gsonBuilder.fieldNamingPolicy).setVisibility(z ? 0 : 8);
    }

    @Override // androidx.core.view.MenuProvider
    public final boolean onMenuItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.menu_gallery_visit_image_page) {
            int i = FilePageActivity.$r8$clinit;
            startActivity(Path.Companion.newIntent(requireContext(), getViewModel().imageTitle, true), null);
            return true;
        }
        if (itemId == R.id.menu_gallery_save) {
            if (Build.VERSION.SDK_INT >= 33 || FileUtil.checkSelfPermission(requireContext(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                saveImage();
                return true;
            }
            this.requestPermissionLauncher.launch("android.permission.WRITE_EXTERNAL_STORAGE", null);
            return true;
        }
        if (itemId != R.id.menu_gallery_share) {
            return false;
        }
        ImageInfo mediaInfo = getMediaInfo();
        if (mediaInfo == null) {
            return true;
        }
        Pattern pattern = ImageUrlUtil.WIDTH_IN_IMAGE_URL_REGEX;
        String urlForPreferredSize = ImageUrlUtil.getUrlForPreferredSize(1280, mediaInfo.thumbUrl);
        Context requireContext = requireContext();
        MainActivity$$ExternalSyntheticLambda1 mainActivity$$ExternalSyntheticLambda1 = new MainActivity$$ExternalSyntheticLambda1(9, this);
        if (Okio__OkioKt._implementation == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("ImageService has not been set, call ImageService.setImplementation() before using ImageService");
            return false;
        }
        ImageRequest.Builder builder = new ImageRequest.Builder(requireContext);
        builder.data = urlForPreferredSize;
        builder.target = new DrawResult(mainActivity$$ExternalSyntheticLambda1);
        SingletonImageLoader.get(requireContext).enqueue(builder.build());
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.mCalled = true;
        MediaController mediaController = this.mediaController;
        if (mediaController != null) {
            GsonBuilder gsonBuilder = this._binding;
            gsonBuilder.getClass();
            if (((VideoView) gsonBuilder.reflectionFilters).isPlaying()) {
                GsonBuilder gsonBuilder2 = this._binding;
                gsonBuilder2.getClass();
                ((VideoView) gsonBuilder2.reflectionFilters).pause();
            }
            mediaController.hide();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003b  */
    @Override // androidx.core.view.MenuProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onPrepareMenu(android.view.Menu r5) {
        /*
            r4 = this;
            r5.getClass()
            boolean r0 = r4.isAdded()
            if (r0 != 0) goto La
            return
        La:
            org.wikipedia.gallery.ImageInfo r0 = r4.getMediaInfo()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L2d
            java.lang.String r0 = r0.thumbUrl
            if (r0 == 0) goto L2d
            int r0 = r0.length()
            if (r0 <= 0) goto L2d
            com.google.gson.GsonBuilder r0 = r4._binding
            r0.getClass()
            java.lang.Object r0 = r0.longSerializationPolicy
            io.getstream.photoview.PhotoView r0 = (io.getstream.photoview.PhotoView) r0
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            if (r0 == 0) goto L2d
            r0 = r2
            goto L2e
        L2d:
            r0 = r1
        L2e:
            r3 = 2131297203(0x7f0903b3, float:1.8212344E38)
            android.view.MenuItem r3 = r5.findItem(r3)
            org.wikipedia.gallery.ImageInfo r4 = r4.getMediaInfo()
            if (r4 == 0) goto L3c
            r1 = r2
        L3c:
            r3.setEnabled(r1)
            r4 = 2131297202(0x7f0903b2, float:1.8212342E38)
            android.view.MenuItem r4 = r5.findItem(r4)
            r4.setEnabled(r0)
            r4 = 2131297201(0x7f0903b1, float:1.821234E38)
            android.view.MenuItem r4 = r5.findItem(r4)
            r4.setEnabled(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.gallery.GalleryItemFragment.onPrepareMenu(android.view.Menu):void");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new GalleryItemFragment$onViewCreated$1(this, null, 0), 3);
    }

    public final void saveImage() {
        Callback callback;
        if (getMediaInfo() == null || (callback = callback()) == null) {
            return;
        }
        GalleryActivity galleryActivity = (GalleryActivity) callback;
        ImageInfo mediaInfo = getMediaInfo();
        if (mediaInfo == null) {
            ShareUtil.showMessage(galleryActivity, R.string.err_cannot_save_file);
            return;
        }
        MediaDownloadReceiver mediaDownloadReceiver = galleryActivity.downloadReceiver;
        PageTitle pageTitle = getViewModel().imageTitle;
        mediaDownloadReceiver.getClass();
        MediaDownloadReceiver.download(galleryActivity, pageTitle, mediaInfo);
        ShareUtil.showMessage(galleryActivity, R.string.gallery_save_progress);
    }

    @Override // androidx.core.view.MenuProvider
    public final void onMenuClosed(Menu menu) {
    }
}
