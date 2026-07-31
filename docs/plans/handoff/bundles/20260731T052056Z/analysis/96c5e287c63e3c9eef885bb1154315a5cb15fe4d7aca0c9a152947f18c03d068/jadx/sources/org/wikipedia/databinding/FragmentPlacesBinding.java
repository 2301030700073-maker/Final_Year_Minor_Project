package org.wikipedia.databinding;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import org.maplibre.android.maps.MapView;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.LangCodeView;
import org.wikipedia.views.TabCountsView;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FragmentPlacesBinding {
    public final ImageView backButton;
    public final LinearLayout controlsContainer;
    public final FrameLayout langCodeButton;
    public final View listEmptyContainer;
    public final TextView listEmptyMessage;
    public final RecyclerView listRecyclerView;
    public final View listViewButton;
    public final View mapView;
    public final View mapViewButton;
    public final View myLocationButton;
    public final FrameLayout rootView;
    public final View searchCloseBtn;
    public final WikiCardView searchContainer;
    public final TextView searchTextView;
    public final ViewGroup tabsButton;
    public final LinearLayout viewButtonsGroup;

    public FragmentPlacesBinding(FrameLayout frameLayout, ImageView imageView, LinearLayout linearLayout, LangCodeView langCodeView, ScrollView scrollView, TextView textView, RecyclerView recyclerView, MaterialButton materialButton, MapView mapView, MaterialButton materialButton2, ExtendedFloatingActionButton extendedFloatingActionButton, ImageView imageView2, WikiCardView wikiCardView, TextView textView2, TabCountsView tabCountsView, MaterialButtonToggleGroup materialButtonToggleGroup) {
        this.rootView = frameLayout;
        this.backButton = imageView;
        this.controlsContainer = linearLayout;
        this.langCodeButton = langCodeView;
        this.listEmptyContainer = scrollView;
        this.listEmptyMessage = textView;
        this.listRecyclerView = recyclerView;
        this.listViewButton = materialButton;
        this.mapView = mapView;
        this.mapViewButton = materialButton2;
        this.myLocationButton = extendedFloatingActionButton;
        this.searchCloseBtn = imageView2;
        this.searchContainer = wikiCardView;
        this.searchTextView = textView2;
        this.tabsButton = tabCountsView;
        this.viewButtonsGroup = materialButtonToggleGroup;
    }

    public FragmentPlacesBinding(CoordinatorLayout coordinatorLayout, LinearLayout linearLayout, TextView textView, ImageView imageView, FrameLayout frameLayout, FrameLayout frameLayout2, LinearProgressIndicator linearProgressIndicator, RecyclerView recyclerView, WikiSwipeRefreshLayout wikiSwipeRefreshLayout, FrameLayout frameLayout3, WikiCardView wikiCardView, TextView textView2, FaceAndColorDetectImageView faceAndColorDetectImageView, FrameLayout frameLayout4, MaterialToolbar materialToolbar, AppBarLayout appBarLayout) {
        this.searchCloseBtn = coordinatorLayout;
        this.controlsContainer = linearLayout;
        this.listEmptyMessage = textView;
        this.backButton = imageView;
        this.rootView = frameLayout;
        this.langCodeButton = frameLayout2;
        this.listEmptyContainer = linearProgressIndicator;
        this.listRecyclerView = recyclerView;
        this.listViewButton = wikiSwipeRefreshLayout;
        this.mapViewButton = frameLayout3;
        this.searchContainer = wikiCardView;
        this.searchTextView = textView2;
        this.mapView = faceAndColorDetectImageView;
        this.myLocationButton = frameLayout4;
        this.tabsButton = materialToolbar;
        this.viewButtonsGroup = appBarLayout;
    }
}
