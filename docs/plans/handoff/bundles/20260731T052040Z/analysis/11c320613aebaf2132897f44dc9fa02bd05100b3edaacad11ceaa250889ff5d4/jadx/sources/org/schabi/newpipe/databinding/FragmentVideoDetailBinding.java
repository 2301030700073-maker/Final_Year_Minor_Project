package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import org.schabi.newpipe.views.AnimatedProgressBar;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FragmentVideoDetailBinding implements ViewBinding {
    public final AppBarLayout appBarLayout;
    public final LinearLayout detailContentRootHiding;
    public final NewPipeTextView detailControlsBackground;
    public final NewPipeTextView detailControlsCrashThePlayer;
    public final NewPipeTextView detailControlsDownload;
    public final NewPipeTextView detailControlsOpenInBrowser;
    public final NewPipeTextView detailControlsPlayWithKodi;
    public final NewPipeTextView detailControlsPlaylistAppend;
    public final NewPipeTextView detailControlsPopup;
    public final NewPipeTextView detailControlsShare;
    public final NewPipeTextView detailDurationView;
    public final View detailMainContent;
    public final View detailMetaInfoSeparator;
    public final NewPipeTextView detailMetaInfoTextView;
    public final NewPipeTextView detailPositionView;
    public final LinearLayout detailSecondaryControlPanel;
    public final NewPipeTextView detailSubChannelTextView;
    public final ShapeableImageView detailSubChannelThumbnailView;
    public final ImageView detailThumbnailImageView;
    public final ImageView detailThumbnailPlayButton;
    public final FrameLayout detailThumbnailRootLayout;
    public final NewPipeTextView detailThumbsDisabledView;
    public final NewPipeTextView detailThumbsDownCountView;
    public final ImageView detailThumbsDownImgView;
    public final NewPipeTextView detailThumbsUpCountView;
    public final ImageView detailThumbsUpImgView;
    public final FrameLayout detailTitleRootLayout;
    public final ImageView detailToggleSecondaryControlsView;
    public final LinearLayout detailUploaderRootLayout;
    public final NewPipeTextView detailUploaderTextView;
    public final ShapeableImageView detailUploaderThumbnailView;
    public final NewPipeTextView detailVideoTitleView;
    public final NewPipeTextView detailViewCountView;
    public final LinearLayout overlayButtonsLayout;
    public final NewPipeTextView overlayChannelTextView;
    public final ImageButton overlayCloseButton;
    public final RelativeLayout overlayLayout;
    public final LinearLayout overlayMetadataLayout;
    public final ImageButton overlayPlayPauseButton;
    public final ImageButton overlayPlayQueueButton;
    public final ImageButton overlayThumbnail;
    public final NewPipeTextView overlayTitleTextView;
    public final FrameLayout playerPlaceholder;
    public final AnimatedProgressBar positionView;
    public final FragmentContainerView relatedItemsLayout;
    public final FrameLayout rootView;
    public final TabLayout tabLayout;
    public final NewPipeTextView touchAppendDetail;
    public final ViewPager viewPager;

    public FragmentVideoDetailBinding(FrameLayout frameLayout, AppBarLayout appBarLayout, LinearLayout linearLayout, NewPipeTextView newPipeTextView, NewPipeTextView newPipeTextView2, NewPipeTextView newPipeTextView3, NewPipeTextView newPipeTextView4, NewPipeTextView newPipeTextView5, NewPipeTextView newPipeTextView6, NewPipeTextView newPipeTextView7, NewPipeTextView newPipeTextView8, NewPipeTextView newPipeTextView9, View view, View view2, NewPipeTextView newPipeTextView10, NewPipeTextView newPipeTextView11, LinearLayout linearLayout2, NewPipeTextView newPipeTextView12, ShapeableImageView shapeableImageView, ImageView imageView, ImageView imageView2, FrameLayout frameLayout2, NewPipeTextView newPipeTextView13, NewPipeTextView newPipeTextView14, ImageView imageView3, NewPipeTextView newPipeTextView15, ImageView imageView4, FrameLayout frameLayout3, ImageView imageView5, LinearLayout linearLayout3, NewPipeTextView newPipeTextView16, ShapeableImageView shapeableImageView2, NewPipeTextView newPipeTextView17, NewPipeTextView newPipeTextView18, LinearLayout linearLayout4, NewPipeTextView newPipeTextView19, ImageButton imageButton, RelativeLayout relativeLayout, LinearLayout linearLayout5, ImageButton imageButton2, ImageButton imageButton3, ImageButton imageButton4, NewPipeTextView newPipeTextView20, FrameLayout frameLayout4, AnimatedProgressBar animatedProgressBar, FragmentContainerView fragmentContainerView, TabLayout tabLayout, NewPipeTextView newPipeTextView21, ViewPager viewPager) {
        this.rootView = frameLayout;
        this.appBarLayout = appBarLayout;
        this.detailContentRootHiding = linearLayout;
        this.detailControlsBackground = newPipeTextView;
        this.detailControlsCrashThePlayer = newPipeTextView2;
        this.detailControlsDownload = newPipeTextView3;
        this.detailControlsOpenInBrowser = newPipeTextView4;
        this.detailControlsPlayWithKodi = newPipeTextView5;
        this.detailControlsPlaylistAppend = newPipeTextView6;
        this.detailControlsPopup = newPipeTextView7;
        this.detailControlsShare = newPipeTextView8;
        this.detailDurationView = newPipeTextView9;
        this.detailMainContent = view;
        this.detailMetaInfoSeparator = view2;
        this.detailMetaInfoTextView = newPipeTextView10;
        this.detailPositionView = newPipeTextView11;
        this.detailSecondaryControlPanel = linearLayout2;
        this.detailSubChannelTextView = newPipeTextView12;
        this.detailSubChannelThumbnailView = shapeableImageView;
        this.detailThumbnailImageView = imageView;
        this.detailThumbnailPlayButton = imageView2;
        this.detailThumbnailRootLayout = frameLayout2;
        this.detailThumbsDisabledView = newPipeTextView13;
        this.detailThumbsDownCountView = newPipeTextView14;
        this.detailThumbsDownImgView = imageView3;
        this.detailThumbsUpCountView = newPipeTextView15;
        this.detailThumbsUpImgView = imageView4;
        this.detailTitleRootLayout = frameLayout3;
        this.detailToggleSecondaryControlsView = imageView5;
        this.detailUploaderRootLayout = linearLayout3;
        this.detailUploaderTextView = newPipeTextView16;
        this.detailUploaderThumbnailView = shapeableImageView2;
        this.detailVideoTitleView = newPipeTextView17;
        this.detailViewCountView = newPipeTextView18;
        this.overlayButtonsLayout = linearLayout4;
        this.overlayChannelTextView = newPipeTextView19;
        this.overlayCloseButton = imageButton;
        this.overlayLayout = relativeLayout;
        this.overlayMetadataLayout = linearLayout5;
        this.overlayPlayPauseButton = imageButton2;
        this.overlayPlayQueueButton = imageButton3;
        this.overlayThumbnail = imageButton4;
        this.overlayTitleTextView = newPipeTextView20;
        this.playerPlaceholder = frameLayout4;
        this.positionView = animatedProgressBar;
        this.relatedItemsLayout = fragmentContainerView;
        this.tabLayout = tabLayout;
        this.touchAppendDetail = newPipeTextView21;
        this.viewPager = viewPager;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
