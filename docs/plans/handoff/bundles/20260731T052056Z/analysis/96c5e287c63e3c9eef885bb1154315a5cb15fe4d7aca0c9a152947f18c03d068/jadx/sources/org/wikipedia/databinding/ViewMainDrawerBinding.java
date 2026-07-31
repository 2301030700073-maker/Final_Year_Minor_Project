package org.wikipedia.databinding;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.ImageDetailHorizontalView;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewMainDrawerBinding {
    public final View mainDrawerAccountAvatar;
    public final LinearLayout mainDrawerAccountContainer;
    public final TextView mainDrawerAccountName;
    public final LinearLayout mainDrawerContribsContainer;
    public final LinearLayout mainDrawerDonateContainer;
    public final ViewGroup mainDrawerEditContainer;
    public final View mainDrawerGamesHubContainer;
    public final TextView mainDrawerLoginButton;
    public final View mainDrawerPlacesContainer;
    public final View mainDrawerSettingsContainer;
    public final ViewGroup mainDrawerTalkContainer;
    public final View mainDrawerTempAccountContainer;
    public final View mainDrawerWatchlistContainer;
    public final ViewGroup mainDrawerYearInReviewContainer;
    public final FrameLayout rootView;
    public final View tempAccountName;
    public final View yearInReviewRedDot;

    public ViewMainDrawerBinding(FrameLayout frameLayout, View view, ScrollView scrollView, WikiErrorView wikiErrorView, ProgressBar progressBar, LinearLayout linearLayout, TextView textView, FaceAndColorDetectImageView faceAndColorDetectImageView, LinearLayout linearLayout2, GoneIfEmptyTextView goneIfEmptyTextView, LinearLayout linearLayout3, TextView textView2, ImageDetailHorizontalView imageDetailHorizontalView, ImageDetailHorizontalView imageDetailHorizontalView2, ImageDetailHorizontalView imageDetailHorizontalView3, ImageDetailHorizontalView imageDetailHorizontalView4, ImageDetailHorizontalView imageDetailHorizontalView5, LinearLayout linearLayout4) {
        this.yearInReviewRedDot = view;
        this.rootView = scrollView;
        this.mainDrawerAccountAvatar = wikiErrorView;
        this.mainDrawerGamesHubContainer = progressBar;
        this.mainDrawerAccountContainer = linearLayout;
        this.mainDrawerAccountName = textView;
        this.mainDrawerPlacesContainer = faceAndColorDetectImageView;
        this.mainDrawerContribsContainer = linearLayout2;
        this.mainDrawerSettingsContainer = goneIfEmptyTextView;
        this.mainDrawerDonateContainer = linearLayout3;
        this.mainDrawerLoginButton = textView2;
        this.mainDrawerTalkContainer = imageDetailHorizontalView;
        this.mainDrawerTempAccountContainer = imageDetailHorizontalView2;
        this.mainDrawerWatchlistContainer = imageDetailHorizontalView3;
        this.mainDrawerYearInReviewContainer = imageDetailHorizontalView4;
        this.tempAccountName = imageDetailHorizontalView5;
        this.mainDrawerEditContainer = linearLayout4;
    }

    public ViewMainDrawerBinding(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, CollapsingToolbarLayout collapsingToolbarLayout, TextView textView, LinearLayout linearLayout, TextView textView2, ImageView imageView, WikiErrorView wikiErrorView, RecyclerView recyclerView, LinearLayout linearLayout2, TextView textView3, FrameLayout frameLayout, TextView textView4, ProgressBar progressBar, MaterialToolbar materialToolbar, TextView textView5, LinearLayout linearLayout3) {
        this.mainDrawerEditContainer = coordinatorLayout;
        this.mainDrawerGamesHubContainer = appBarLayout;
        this.mainDrawerPlacesContainer = collapsingToolbarLayout;
        this.mainDrawerAccountName = textView;
        this.mainDrawerAccountContainer = linearLayout;
        this.mainDrawerLoginButton = textView2;
        this.mainDrawerAccountAvatar = imageView;
        this.mainDrawerSettingsContainer = wikiErrorView;
        this.mainDrawerTalkContainer = recyclerView;
        this.mainDrawerContribsContainer = linearLayout2;
        this.tempAccountName = textView3;
        this.rootView = frameLayout;
        this.mainDrawerTempAccountContainer = textView4;
        this.mainDrawerWatchlistContainer = progressBar;
        this.mainDrawerYearInReviewContainer = materialToolbar;
        this.yearInReviewRedDot = textView5;
        this.mainDrawerDonateContainer = linearLayout3;
    }

    public ViewMainDrawerBinding(FrameLayout frameLayout, ImageView imageView, LinearLayout linearLayout, TextView textView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, TextView textView2, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, LinearLayout linearLayout9, LinearLayout linearLayout10, LinearLayout linearLayout11, TextView textView3, View view) {
        this.rootView = frameLayout;
        this.mainDrawerAccountAvatar = imageView;
        this.mainDrawerAccountContainer = linearLayout;
        this.mainDrawerAccountName = textView;
        this.mainDrawerContribsContainer = linearLayout2;
        this.mainDrawerDonateContainer = linearLayout3;
        this.mainDrawerEditContainer = linearLayout4;
        this.mainDrawerGamesHubContainer = linearLayout5;
        this.mainDrawerLoginButton = textView2;
        this.mainDrawerPlacesContainer = linearLayout6;
        this.mainDrawerSettingsContainer = linearLayout7;
        this.mainDrawerTalkContainer = linearLayout8;
        this.mainDrawerTempAccountContainer = linearLayout9;
        this.mainDrawerWatchlistContainer = linearLayout10;
        this.mainDrawerYearInReviewContainer = linearLayout11;
        this.tempAccountName = textView3;
        this.yearInReviewRedDot = view;
    }
}
