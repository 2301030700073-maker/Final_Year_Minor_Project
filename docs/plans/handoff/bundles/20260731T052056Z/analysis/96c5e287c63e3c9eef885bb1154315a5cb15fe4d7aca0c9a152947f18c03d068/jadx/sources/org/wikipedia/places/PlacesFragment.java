package org.wikipedia.places;

import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityOptionsCompat$ActivityOptionsCompatImpl;
import androidx.core.graphics.Insets;
import androidx.core.util.Pair;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.timepicker.TimePickerView;
import j$.util.Map;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.UStringsKt;
import okhttp3.Cache;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.maplibre.android.MapLibre;
import org.maplibre.android.camera.CameraPosition;
import org.maplibre.android.camera.CameraUpdateFactory$CameraPositionUpdate;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.geometry.LatLngBounds;
import org.maplibre.android.gestures.MoveGestureDetector;
import org.maplibre.android.location.LocationComponent;
import org.maplibre.android.maps.MapLibreMap;
import org.maplibre.android.maps.MapView;
import org.maplibre.android.maps.OnMapReadyCallback;
import org.maplibre.android.maps.Style;
import org.maplibre.android.maps.UiSettings;
import org.maplibre.android.maps.renderer.MapRenderer;
import org.maplibre.android.maps.widgets.CompassView;
import org.maplibre.android.module.http.HttpRequestImpl;
import org.maplibre.android.plugins.annotation.DraggableAnnotationController$AnnotationMoveGestureListener;
import org.maplibre.android.plugins.annotation.Symbol;
import org.maplibre.android.plugins.annotation.SymbolElementProvider;
import org.maplibre.android.plugins.annotation.SymbolManager;
import org.maplibre.android.style.expressions.Expression;
import org.maplibre.android.style.layers.CircleLayer;
import org.maplibre.android.style.layers.Layer;
import org.maplibre.android.style.layers.LayoutPropertyValue;
import org.maplibre.android.style.layers.PaintPropertyValue;
import org.maplibre.android.style.layers.PropertyValue;
import org.maplibre.android.style.layers.SymbolLayer;
import org.maplibre.android.style.sources.GeoJsonOptions;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.databinding.FragmentPlacesBinding;
import org.wikipedia.dataclient.okhttp.OkHttpConnectionFactory;
import org.wikipedia.dataclient.page.NearbyPage;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda0;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewDialog;
import org.wikipedia.page.tabs.TabActivity;
import org.wikipedia.readinglist.LongPressMenu;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.search.SearchActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.SingleLiveData$sam$androidx_lifecycle_Observer$0;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.TabUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.DrawableItemDecoration;
import org.wikipedia.views.LangCodeView;
import org.wikipedia.views.TabCountsView;
import org.wikipedia.views.WikiCardView;
import retrofit2.OkHttpCall;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0003\u0007\b\tB\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lorg/wikipedia/places/PlacesFragment;", "Landroidx/fragment/app/Fragment;", "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;", "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$DismissCallback;", "Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;", "<init>", "()V", "AppIconAdapter", "RecyclerViewItemHolder", "org/jsoup/Jsoup", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PlacesFragment extends Fragment implements LinkPreviewDialog.LoadPageCallback, LinkPreviewDialog.DismissCallback, MapLibreMap.OnMapClickListener {
    public FragmentPlacesBinding _binding;
    public final ArrayDeque annotationCache;
    public final Fragment.AnonymousClass10 filterLauncher;
    public int lastCheckedId;
    public Location lastLocation;
    public Location lastLocationQueried;
    public double lastZoom;
    public double lastZoomQueried;
    public final Fragment.AnonymousClass10 locationPermissionRequest;
    public Symbol magnifiedMarker;
    public MapLibreMap mapboxMap;
    public Bitmap markerBitmapBase;
    public Paint markerBorderPaint;
    public Paint markerPaintSrc;
    public Paint markerPaintSrcIn;
    public final Rect markerRect;
    public Insets navBarInsets;
    public final Fragment.AnonymousClass10 placesSearchLauncher;
    public Insets statusBarInsets;
    public SymbolManager symbolManager;
    public final Request.Builder viewModel$delegate;
    public static final String[] CLUSTER_FONT_STACK = {"Open Sans Semibold"};
    public static final String[] MARKER_FONT_STACK = {"Open Sans Regular"};
    public static final int MARKER_SIZE = Okio__OkioKt.roundedDpToPx(40.0f);
    public static final float MARKER_BORDER_SIZE = Okio__OkioKt.dpToPx(2.0f);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecyclerViewItemHolder extends RecyclerView.ViewHolder implements View.OnClickListener, View.OnLongClickListener {
        public final Retrofit binding;
        public NearbyPage page;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public RecyclerViewItemHolder(retrofit2.Retrofit r2) {
            /*
                r0 = this;
                org.wikipedia.places.PlacesFragment.this = r1
                java.lang.Object r1 = r2.serviceMethodCache
                androidx.constraintlayout.widget.ConstraintLayout r1 = (androidx.constraintlayout.widget.ConstraintLayout) r1
                r0.<init>(r1)
                r0.binding = r2
                r1.setOnClickListener(r0)
                r1.setOnLongClickListener(r0)
                r0 = 1
                android.view.View[] r0 = new android.view.View[r0]
                r2 = 0
                r0[r2] = r1
                r0 = r0[r2]
                org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda0 r1 = new org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda0
                r1.<init>()
                r0.setOnContextClickListener(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.places.PlacesFragment.RecyclerViewItemHolder.<init>(org.wikipedia.places.PlacesFragment, retrofit2.Retrofit):void");
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            view.getClass();
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String m = ViewSizeResolver$CC.m();
            Prefs prefs = Prefs.INSTANCE;
            EventPlatformClient.submit(new AppInteractionEvent("read_click", "list_view", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
            NearbyPage nearbyPage = this.page;
            if (nearbyPage == null) {
                Intrinsics.throwUninitializedPropertyAccessException("page");
                throw null;
            }
            HistoryEntry historyEntry = new HistoryEntry(9, nearbyPage.pageTitle);
            int i = PageActivity.$r8$clinit;
            PlacesFragment placesFragment = PlacesFragment.this;
            placesFragment.startActivity(LoginClient.newIntentForNewTab(placesFragment.requireActivity(), historyEntry, historyEntry.getTitle()), null);
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            view.getClass();
            NearbyPage nearbyPage = this.page;
            if (nearbyPage == null) {
                Intrinsics.throwUninitializedPropertyAccessException("page");
                throw null;
            }
            HistoryEntry historyEntry = new HistoryEntry(9, nearbyPage.pageTitle);
            NearbyPage nearbyPage2 = this.page;
            if (nearbyPage2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("page");
                throw null;
            }
            new LongPressMenu(view, R.menu.menu_places_long_press, nearbyPage2.getLocation(), new AvPlayer(18, PlacesFragment.this), 6).show(historyEntry);
            return true;
        }
    }

    public PlacesFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(23, new HomeFragment$special$$inlined$viewModels$default$2(22, this)));
        int i = 3;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(PlacesFragmentViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 0), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 11), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 3));
        this.annotationCache = new ArrayDeque();
        this.lastCheckedId = R.id.mapViewButton;
        this.lastZoom = 15.0d;
        int i2 = MARKER_SIZE;
        this.markerRect = new Rect(0, 0, i2, i2);
        this.locationPermissionRequest = (Fragment.AnonymousClass10) registerForActivityResult(new PlacesFragment$$ExternalSyntheticLambda1(this, 0), new FragmentManager$FragmentIntentSenderContract(1));
        this.placesSearchLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new PlacesFragment$$ExternalSyntheticLambda1(this, 2), new FragmentManager$FragmentIntentSenderContract(i));
        this.filterLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new PlacesFragment$$ExternalSyntheticLambda1(this, i), new FragmentManager$FragmentIntentSenderContract(i));
    }

    public static Location getDefaultLocation() {
        Prefs prefs = Prefs.INSTANCE;
        String string = PrefsIoUtil.getString(R.string.preference_key_default_places_location_latlng, null);
        if (string == null || string.length() == 0) {
            string = null;
        }
        if (string == null) {
            return null;
        }
        List split$default = StringsKt.split$default(string, new String[]{","});
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(split$default, 10));
        Iterator it = split$default.iterator();
        while (it.hasNext()) {
            arrayList.add(Double.valueOf(Double.parseDouble((String) it.next())));
        }
        Location location = new Location("");
        location.setLatitude(((Number) arrayList.get(0)).doubleValue());
        location.setLongitude(((Number) arrayList.get(1)).doubleValue());
        return location;
    }

    public static /* synthetic */ void goToLocation$default(PlacesFragment placesFragment, Location location, int i) {
        if ((i & 1) != 0) {
            location = null;
        }
        placesFragment.goToLocation(location, 15.0d);
    }

    public static final void locationPermissionRequest$lambda$0(PlacesFragment placesFragment, Map map) {
        map.getClass();
        Boolean bool = Boolean.FALSE;
        if (!((Boolean) Map.EL.getOrDefault(map, "android.permission.ACCESS_FINE_LOCATION", bool)).booleanValue() && !((Boolean) Map.EL.getOrDefault(map, "android.permission.ACCESS_COARSE_LOCATION", bool)).booleanValue()) {
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String m = ViewSizeResolver$CC.m();
            Prefs prefs = Prefs.INSTANCE;
            EventPlatformClient.submit(new AppInteractionEvent("location_permission_denied", "map_view", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
            ShareUtil.showMessage(placesFragment.requireActivity(), R.string.places_permissions_denied);
            return;
        }
        EventPlatformClient eventPlatformClient2 = EventPlatformClient.INSTANCE;
        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
        String m2 = ViewSizeResolver$CC.m();
        Prefs prefs2 = Prefs.INSTANCE;
        EventPlatformClient.submit(new AppInteractionEvent("location_permission_granted", "map_view", "", m2, Prefs.getPlacesWikiCode(), "app_places_interaction"));
        placesFragment.startLocationTracking();
        Location location = placesFragment.getViewModel().location;
        if (location == null) {
            location = getDefaultLocation();
        }
        goToLocation$default(placesFragment, location, 2);
    }

    public final int getSearchRadius() {
        MapLibreMap mapLibreMap = this.mapboxMap;
        if (mapLibreMap != null) {
            return RegexKt.coerceIn((int) ((mapLibreMap.projection.getVisibleRegion().latLngBounds.getLatitudeSpan() / 2.0d) * 111132.0d), 10, 10000);
        }
        return 50;
    }

    public final PlacesFragmentViewModel getViewModel() {
        return (PlacesFragmentViewModel) this.viewModel$delegate.getValue();
    }

    public final void goToLocation(Location location, double d) {
        Location location2;
        LocationComponent locationComponent;
        FragmentPlacesBinding fragmentPlacesBinding = this._binding;
        fragmentPlacesBinding.getClass();
        ((MaterialButtonToggleGroup) fragmentPlacesBinding.viewButtonsGroup).checkInternal(R.id.mapViewButton, true);
        MapLibreMap mapLibreMap = this.mapboxMap;
        if (mapLibreMap != null) {
            PlacesFragmentViewModel viewModel = getViewModel();
            MapLibreMap mapLibreMap2 = this.mapboxMap;
            if (mapLibreMap2 == null || (locationComponent = mapLibreMap2.locationComponent) == null || !locationComponent.isComponentInitialized) {
                location2 = null;
            } else {
                locationComponent.checkActivationState();
                location2 = locationComponent.lastLocation;
            }
            viewModel.lastKnownLocation = location2;
            Location location3 = getViewModel().lastKnownLocation;
            LatLng latLng = location3 != null ? new LatLng(location3.getLatitude(), location3.getLongitude()) : null;
            LatLng latLng2 = location != null ? new LatLng(location.getLatitude(), location.getLongitude()) : null;
            LatLng latLng3 = latLng2 == null ? latLng : latLng2;
            if (latLng3 != null) {
                CameraUpdateFactory$CameraPositionUpdate cameraUpdateFactory$CameraPositionUpdate = new CameraUpdateFactory$CameraPositionUpdate(latLng3, -1.0d, -1.0d, -1.0d, -1.0d, -1.0d, d, null);
                OkHttpCall.AnonymousClass1 anonymousClass1 = new OkHttpCall.AnonymousClass1(19, this, location);
                mapLibreMap.notifyDeveloperAnimationListeners();
                mapLibreMap.transform.moveCamera(mapLibreMap, cameraUpdateFactory$CameraPositionUpdate, anonymousClass1);
            }
        }
    }

    public final boolean haveLocationPermissions() {
        return FileUtil.checkSelfPermission(requireContext(), "android.permission.ACCESS_FINE_LOCATION") == 0 && FileUtil.checkSelfPermission(requireContext(), "android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.markerPaintSrc = Jsoup.getMarkerPaintSrc(requireContext());
        this.markerPaintSrcIn = Jsoup.getMarkerPaintSrcIn();
        this.markerBorderPaint = Jsoup.getMarkerBorderPaint(requireContext());
        this.markerBitmapBase = Jsoup.getMarkerBitmapBase(requireContext());
        MapLibre.getInstance(requireActivity().getApplicationContext());
        HttpRequestImpl.client = (OkHttpClient) Objects.requireNonNullElse(OkHttpConnectionFactory.client, HttpRequestImpl.DEFAULT_CLIENT);
        PageTitle pageTitle = (PageTitle) ((Parcelable) Room.getParcelable(requireArguments(), "title", PageTitle.class));
        if (pageTitle != null) {
            Prefs prefs = Prefs.INSTANCE;
            Prefs.setPlacesWikiCode(pageTitle.wikiSite.languageCode);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        final int i = 0;
        Object[] objArr = 0;
        View inflate = layoutInflater.inflate(R.layout.fragment_places, viewGroup, false);
        int i2 = R.id.backButton;
        ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.backButton);
        if (imageView != null) {
            i2 = R.id.controlsContainer;
            LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.controlsContainer);
            if (linearLayout != null) {
                i2 = R.id.langCodeButton;
                LangCodeView langCodeView = (LangCodeView) Room.findChildViewById(inflate, R.id.langCodeButton);
                if (langCodeView != null) {
                    i2 = R.id.listEmptyContainer;
                    ScrollView scrollView = (ScrollView) Room.findChildViewById(inflate, R.id.listEmptyContainer);
                    if (scrollView != null) {
                        i2 = R.id.listEmptyMessage;
                        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.listEmptyMessage);
                        if (textView != null) {
                            i2 = R.id.listRecyclerView;
                            RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.listRecyclerView);
                            if (recyclerView != null) {
                                i2 = R.id.listViewButton;
                                MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.listViewButton);
                                if (materialButton != null) {
                                    i2 = R.id.mapView;
                                    MapView mapView = (MapView) Room.findChildViewById(inflate, R.id.mapView);
                                    if (mapView != null) {
                                        i2 = R.id.mapViewButton;
                                        MaterialButton materialButton2 = (MaterialButton) Room.findChildViewById(inflate, R.id.mapViewButton);
                                        if (materialButton2 != null) {
                                            i2 = R.id.myLocationButton;
                                            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) Room.findChildViewById(inflate, R.id.myLocationButton);
                                            if (extendedFloatingActionButton != null) {
                                                i2 = R.id.searchCloseBtn;
                                                ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.searchCloseBtn);
                                                if (imageView2 != null) {
                                                    i2 = R.id.searchContainer;
                                                    WikiCardView wikiCardView = (WikiCardView) Room.findChildViewById(inflate, R.id.searchContainer);
                                                    if (wikiCardView != null) {
                                                        i2 = R.id.searchTextView;
                                                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.searchTextView);
                                                        if (textView2 != null) {
                                                            i2 = R.id.tabsButton;
                                                            TabCountsView tabCountsView = (TabCountsView) Room.findChildViewById(inflate, R.id.tabsButton);
                                                            if (tabCountsView != null) {
                                                                i2 = R.id.viewButtonsGroup;
                                                                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) Room.findChildViewById(inflate, R.id.viewButtonsGroup);
                                                                if (materialButtonToggleGroup != null) {
                                                                    FrameLayout frameLayout = (FrameLayout) inflate;
                                                                    this._binding = new FragmentPlacesBinding(frameLayout, imageView, linearLayout, langCodeView, scrollView, textView, recyclerView, materialButton, mapView, materialButton2, extendedFloatingActionButton, imageView2, wikiCardView, textView2, tabCountsView, materialButtonToggleGroup);
                                                                    final int i3 = 4;
                                                                    frameLayout.setOnApplyWindowInsetsListener(new MainActivity$$ExternalSyntheticLambda0(i3, this));
                                                                    FragmentPlacesBinding fragmentPlacesBinding = this._binding;
                                                                    fragmentPlacesBinding.getClass();
                                                                    ((TabCountsView) fragmentPlacesBinding.tabsButton).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.places.PlacesFragment$$ExternalSyntheticLambda8
                                                                        public final /* synthetic */ PlacesFragment f$0;

                                                                        {
                                                                            this.f$0 = this;
                                                                        }

                                                                        @Override // android.view.View.OnClickListener
                                                                        public final void onClick(View view) {
                                                                            int i4 = i;
                                                                            ActivityOptionsCompat$ActivityOptionsCompatImpl activityOptionsCompat$ActivityOptionsCompatImpl = null;
                                                                            PlacesFragment placesFragment = this.f$0;
                                                                            switch (i4) {
                                                                                case 0:
                                                                                    String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                    String m = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("tabs_view_click", "search_bar_view", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    if (Jsoup.getInstance().getTabCount() != 1) {
                                                                                        int i5 = TabActivity.$r8$clinit;
                                                                                        placesFragment.startActivity(new Intent(placesFragment.requireActivity(), (Class<?>) TabActivity.class), null);
                                                                                        break;
                                                                                    } else {
                                                                                        int i6 = PageActivity.$r8$clinit;
                                                                                        placesFragment.startActivity(LoginClient.newIntent(placesFragment.requireActivity()), null);
                                                                                        break;
                                                                                    }
                                                                                case 1:
                                                                                    String[] strArr2 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient2 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                    String m2 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs2 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("back_click", "search_bar_view", "", m2, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    placesFragment.requireActivity().finish();
                                                                                    break;
                                                                                case 2:
                                                                                    String[] strArr3 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient3 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                    String m3 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs3 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("filter_click", "search_bar_view", "", m3, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    Fragment.AnonymousClass10 anonymousClass10 = placesFragment.filterLauncher;
                                                                                    int i7 = PlacesFilterActivity.$r8$clinit;
                                                                                    anonymousClass10.launch(new Intent(placesFragment.requireActivity(), (Class<?>) PlacesFilterActivity.class), null);
                                                                                    break;
                                                                                case 3:
                                                                                    String[] strArr4 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient4 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp4 = WikipediaApp.instance;
                                                                                    String m4 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs4 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("search_clear_click", "search_bar_view", "", m4, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    placesFragment.updateSearchText("");
                                                                                    break;
                                                                                case 4:
                                                                                    String[] strArr5 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient5 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp5 = WikipediaApp.instance;
                                                                                    String m5 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs5 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("current_location_click", "map_view", "", m5, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    if (!placesFragment.haveLocationPermissions()) {
                                                                                        placesFragment.locationPermissionRequest.launch(new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}, null);
                                                                                        break;
                                                                                    } else {
                                                                                        PlacesFragment.goToLocation$default(placesFragment, null, 3);
                                                                                        break;
                                                                                    }
                                                                                default:
                                                                                    String[] strArr6 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient6 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp6 = WikipediaApp.instance;
                                                                                    String m6 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs6 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("search_view_click", "search_bar_view", "", m6, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    int i8 = SearchActivity.$r8$clinit;
                                                                                    AppCompatActivity requireActivity = placesFragment.requireActivity();
                                                                                    Constants.InvokeSource invokeSource = Constants.InvokeSource.PLACES;
                                                                                    PageTitle pageTitle = placesFragment.getViewModel().highlightedPageTitle;
                                                                                    Intent newIntent$default = LoginClient.newIntent$default(requireActivity, invokeSource, pageTitle != null ? pageTitle.getDisplayText() : null, (String) null, 48);
                                                                                    ComponentName component = newIntent$default.getComponent();
                                                                                    if (Intrinsics.areEqual(component != null ? component.getClassName() : null, SearchActivity.class.getName())) {
                                                                                        AppCompatActivity requireActivity2 = placesFragment.requireActivity();
                                                                                        FragmentPlacesBinding fragmentPlacesBinding2 = placesFragment._binding;
                                                                                        fragmentPlacesBinding2.getClass();
                                                                                        activityOptionsCompat$ActivityOptionsCompatImpl = new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptions.makeSceneTransitionAnimation(requireActivity2, fragmentPlacesBinding2.searchContainer.getChildAt(0), placesFragment.getString(R.string.transition_search_bar)));
                                                                                    }
                                                                                    placesFragment.placesSearchLauncher.launch(newIntent$default, activityOptionsCompat$ActivityOptionsCompatImpl);
                                                                                    break;
                                                                            }
                                                                        }
                                                                    });
                                                                    FragmentPlacesBinding fragmentPlacesBinding2 = this._binding;
                                                                    fragmentPlacesBinding2.getClass();
                                                                    final int i4 = 5;
                                                                    fragmentPlacesBinding2.searchTextView.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.places.PlacesFragment$$ExternalSyntheticLambda8
                                                                        public final /* synthetic */ PlacesFragment f$0;

                                                                        {
                                                                            this.f$0 = this;
                                                                        }

                                                                        @Override // android.view.View.OnClickListener
                                                                        public final void onClick(View view) {
                                                                            int i42 = i4;
                                                                            ActivityOptionsCompat$ActivityOptionsCompatImpl activityOptionsCompat$ActivityOptionsCompatImpl = null;
                                                                            PlacesFragment placesFragment = this.f$0;
                                                                            switch (i42) {
                                                                                case 0:
                                                                                    String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                    String m = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("tabs_view_click", "search_bar_view", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    if (Jsoup.getInstance().getTabCount() != 1) {
                                                                                        int i5 = TabActivity.$r8$clinit;
                                                                                        placesFragment.startActivity(new Intent(placesFragment.requireActivity(), (Class<?>) TabActivity.class), null);
                                                                                        break;
                                                                                    } else {
                                                                                        int i6 = PageActivity.$r8$clinit;
                                                                                        placesFragment.startActivity(LoginClient.newIntent(placesFragment.requireActivity()), null);
                                                                                        break;
                                                                                    }
                                                                                case 1:
                                                                                    String[] strArr2 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient2 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                    String m2 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs2 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("back_click", "search_bar_view", "", m2, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    placesFragment.requireActivity().finish();
                                                                                    break;
                                                                                case 2:
                                                                                    String[] strArr3 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient3 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                    String m3 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs3 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("filter_click", "search_bar_view", "", m3, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    Fragment.AnonymousClass10 anonymousClass10 = placesFragment.filterLauncher;
                                                                                    int i7 = PlacesFilterActivity.$r8$clinit;
                                                                                    anonymousClass10.launch(new Intent(placesFragment.requireActivity(), (Class<?>) PlacesFilterActivity.class), null);
                                                                                    break;
                                                                                case 3:
                                                                                    String[] strArr4 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient4 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp4 = WikipediaApp.instance;
                                                                                    String m4 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs4 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("search_clear_click", "search_bar_view", "", m4, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    placesFragment.updateSearchText("");
                                                                                    break;
                                                                                case 4:
                                                                                    String[] strArr5 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient5 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp5 = WikipediaApp.instance;
                                                                                    String m5 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs5 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("current_location_click", "map_view", "", m5, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    if (!placesFragment.haveLocationPermissions()) {
                                                                                        placesFragment.locationPermissionRequest.launch(new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}, null);
                                                                                        break;
                                                                                    } else {
                                                                                        PlacesFragment.goToLocation$default(placesFragment, null, 3);
                                                                                        break;
                                                                                    }
                                                                                default:
                                                                                    String[] strArr6 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient6 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp6 = WikipediaApp.instance;
                                                                                    String m6 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs6 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("search_view_click", "search_bar_view", "", m6, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    int i8 = SearchActivity.$r8$clinit;
                                                                                    AppCompatActivity requireActivity = placesFragment.requireActivity();
                                                                                    Constants.InvokeSource invokeSource = Constants.InvokeSource.PLACES;
                                                                                    PageTitle pageTitle = placesFragment.getViewModel().highlightedPageTitle;
                                                                                    Intent newIntent$default = LoginClient.newIntent$default(requireActivity, invokeSource, pageTitle != null ? pageTitle.getDisplayText() : null, (String) null, 48);
                                                                                    ComponentName component = newIntent$default.getComponent();
                                                                                    if (Intrinsics.areEqual(component != null ? component.getClassName() : null, SearchActivity.class.getName())) {
                                                                                        AppCompatActivity requireActivity2 = placesFragment.requireActivity();
                                                                                        FragmentPlacesBinding fragmentPlacesBinding22 = placesFragment._binding;
                                                                                        fragmentPlacesBinding22.getClass();
                                                                                        activityOptionsCompat$ActivityOptionsCompatImpl = new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptions.makeSceneTransitionAnimation(requireActivity2, fragmentPlacesBinding22.searchContainer.getChildAt(0), placesFragment.getString(R.string.transition_search_bar)));
                                                                                    }
                                                                                    placesFragment.placesSearchLauncher.launch(newIntent$default, activityOptionsCompat$ActivityOptionsCompatImpl);
                                                                                    break;
                                                                            }
                                                                        }
                                                                    });
                                                                    FragmentPlacesBinding fragmentPlacesBinding3 = this._binding;
                                                                    fragmentPlacesBinding3.getClass();
                                                                    final int i5 = 1;
                                                                    fragmentPlacesBinding3.backButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.places.PlacesFragment$$ExternalSyntheticLambda8
                                                                        public final /* synthetic */ PlacesFragment f$0;

                                                                        {
                                                                            this.f$0 = this;
                                                                        }

                                                                        @Override // android.view.View.OnClickListener
                                                                        public final void onClick(View view) {
                                                                            int i42 = i5;
                                                                            ActivityOptionsCompat$ActivityOptionsCompatImpl activityOptionsCompat$ActivityOptionsCompatImpl = null;
                                                                            PlacesFragment placesFragment = this.f$0;
                                                                            switch (i42) {
                                                                                case 0:
                                                                                    String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                    String m = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("tabs_view_click", "search_bar_view", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    if (Jsoup.getInstance().getTabCount() != 1) {
                                                                                        int i52 = TabActivity.$r8$clinit;
                                                                                        placesFragment.startActivity(new Intent(placesFragment.requireActivity(), (Class<?>) TabActivity.class), null);
                                                                                        break;
                                                                                    } else {
                                                                                        int i6 = PageActivity.$r8$clinit;
                                                                                        placesFragment.startActivity(LoginClient.newIntent(placesFragment.requireActivity()), null);
                                                                                        break;
                                                                                    }
                                                                                case 1:
                                                                                    String[] strArr2 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient2 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                    String m2 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs2 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("back_click", "search_bar_view", "", m2, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    placesFragment.requireActivity().finish();
                                                                                    break;
                                                                                case 2:
                                                                                    String[] strArr3 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient3 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                    String m3 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs3 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("filter_click", "search_bar_view", "", m3, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    Fragment.AnonymousClass10 anonymousClass10 = placesFragment.filterLauncher;
                                                                                    int i7 = PlacesFilterActivity.$r8$clinit;
                                                                                    anonymousClass10.launch(new Intent(placesFragment.requireActivity(), (Class<?>) PlacesFilterActivity.class), null);
                                                                                    break;
                                                                                case 3:
                                                                                    String[] strArr4 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient4 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp4 = WikipediaApp.instance;
                                                                                    String m4 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs4 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("search_clear_click", "search_bar_view", "", m4, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    placesFragment.updateSearchText("");
                                                                                    break;
                                                                                case 4:
                                                                                    String[] strArr5 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient5 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp5 = WikipediaApp.instance;
                                                                                    String m5 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs5 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("current_location_click", "map_view", "", m5, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    if (!placesFragment.haveLocationPermissions()) {
                                                                                        placesFragment.locationPermissionRequest.launch(new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}, null);
                                                                                        break;
                                                                                    } else {
                                                                                        PlacesFragment.goToLocation$default(placesFragment, null, 3);
                                                                                        break;
                                                                                    }
                                                                                default:
                                                                                    String[] strArr6 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient6 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp6 = WikipediaApp.instance;
                                                                                    String m6 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs6 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("search_view_click", "search_bar_view", "", m6, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    int i8 = SearchActivity.$r8$clinit;
                                                                                    AppCompatActivity requireActivity = placesFragment.requireActivity();
                                                                                    Constants.InvokeSource invokeSource = Constants.InvokeSource.PLACES;
                                                                                    PageTitle pageTitle = placesFragment.getViewModel().highlightedPageTitle;
                                                                                    Intent newIntent$default = LoginClient.newIntent$default(requireActivity, invokeSource, pageTitle != null ? pageTitle.getDisplayText() : null, (String) null, 48);
                                                                                    ComponentName component = newIntent$default.getComponent();
                                                                                    if (Intrinsics.areEqual(component != null ? component.getClassName() : null, SearchActivity.class.getName())) {
                                                                                        AppCompatActivity requireActivity2 = placesFragment.requireActivity();
                                                                                        FragmentPlacesBinding fragmentPlacesBinding22 = placesFragment._binding;
                                                                                        fragmentPlacesBinding22.getClass();
                                                                                        activityOptionsCompat$ActivityOptionsCompatImpl = new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptions.makeSceneTransitionAnimation(requireActivity2, fragmentPlacesBinding22.searchContainer.getChildAt(0), placesFragment.getString(R.string.transition_search_bar)));
                                                                                    }
                                                                                    placesFragment.placesSearchLauncher.launch(newIntent$default, activityOptionsCompat$ActivityOptionsCompatImpl);
                                                                                    break;
                                                                            }
                                                                        }
                                                                    });
                                                                    FragmentPlacesBinding fragmentPlacesBinding4 = this._binding;
                                                                    fragmentPlacesBinding4.getClass();
                                                                    final int i6 = 2;
                                                                    ((LangCodeView) fragmentPlacesBinding4.langCodeButton).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.places.PlacesFragment$$ExternalSyntheticLambda8
                                                                        public final /* synthetic */ PlacesFragment f$0;

                                                                        {
                                                                            this.f$0 = this;
                                                                        }

                                                                        @Override // android.view.View.OnClickListener
                                                                        public final void onClick(View view) {
                                                                            int i42 = i6;
                                                                            ActivityOptionsCompat$ActivityOptionsCompatImpl activityOptionsCompat$ActivityOptionsCompatImpl = null;
                                                                            PlacesFragment placesFragment = this.f$0;
                                                                            switch (i42) {
                                                                                case 0:
                                                                                    String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                    String m = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("tabs_view_click", "search_bar_view", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    if (Jsoup.getInstance().getTabCount() != 1) {
                                                                                        int i52 = TabActivity.$r8$clinit;
                                                                                        placesFragment.startActivity(new Intent(placesFragment.requireActivity(), (Class<?>) TabActivity.class), null);
                                                                                        break;
                                                                                    } else {
                                                                                        int i62 = PageActivity.$r8$clinit;
                                                                                        placesFragment.startActivity(LoginClient.newIntent(placesFragment.requireActivity()), null);
                                                                                        break;
                                                                                    }
                                                                                case 1:
                                                                                    String[] strArr2 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient2 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                    String m2 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs2 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("back_click", "search_bar_view", "", m2, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    placesFragment.requireActivity().finish();
                                                                                    break;
                                                                                case 2:
                                                                                    String[] strArr3 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient3 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                    String m3 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs3 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("filter_click", "search_bar_view", "", m3, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    Fragment.AnonymousClass10 anonymousClass10 = placesFragment.filterLauncher;
                                                                                    int i7 = PlacesFilterActivity.$r8$clinit;
                                                                                    anonymousClass10.launch(new Intent(placesFragment.requireActivity(), (Class<?>) PlacesFilterActivity.class), null);
                                                                                    break;
                                                                                case 3:
                                                                                    String[] strArr4 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient4 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp4 = WikipediaApp.instance;
                                                                                    String m4 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs4 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("search_clear_click", "search_bar_view", "", m4, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    placesFragment.updateSearchText("");
                                                                                    break;
                                                                                case 4:
                                                                                    String[] strArr5 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient5 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp5 = WikipediaApp.instance;
                                                                                    String m5 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs5 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("current_location_click", "map_view", "", m5, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    if (!placesFragment.haveLocationPermissions()) {
                                                                                        placesFragment.locationPermissionRequest.launch(new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}, null);
                                                                                        break;
                                                                                    } else {
                                                                                        PlacesFragment.goToLocation$default(placesFragment, null, 3);
                                                                                        break;
                                                                                    }
                                                                                default:
                                                                                    String[] strArr6 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient6 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp6 = WikipediaApp.instance;
                                                                                    String m6 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs6 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("search_view_click", "search_bar_view", "", m6, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    int i8 = SearchActivity.$r8$clinit;
                                                                                    AppCompatActivity requireActivity = placesFragment.requireActivity();
                                                                                    Constants.InvokeSource invokeSource = Constants.InvokeSource.PLACES;
                                                                                    PageTitle pageTitle = placesFragment.getViewModel().highlightedPageTitle;
                                                                                    Intent newIntent$default = LoginClient.newIntent$default(requireActivity, invokeSource, pageTitle != null ? pageTitle.getDisplayText() : null, (String) null, 48);
                                                                                    ComponentName component = newIntent$default.getComponent();
                                                                                    if (Intrinsics.areEqual(component != null ? component.getClassName() : null, SearchActivity.class.getName())) {
                                                                                        AppCompatActivity requireActivity2 = placesFragment.requireActivity();
                                                                                        FragmentPlacesBinding fragmentPlacesBinding22 = placesFragment._binding;
                                                                                        fragmentPlacesBinding22.getClass();
                                                                                        activityOptionsCompat$ActivityOptionsCompatImpl = new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptions.makeSceneTransitionAnimation(requireActivity2, fragmentPlacesBinding22.searchContainer.getChildAt(0), placesFragment.getString(R.string.transition_search_bar)));
                                                                                    }
                                                                                    placesFragment.placesSearchLauncher.launch(newIntent$default, activityOptionsCompat$ActivityOptionsCompatImpl);
                                                                                    break;
                                                                            }
                                                                        }
                                                                    });
                                                                    FragmentPlacesBinding fragmentPlacesBinding5 = this._binding;
                                                                    fragmentPlacesBinding5.getClass();
                                                                    final int i7 = 3;
                                                                    ((ImageView) fragmentPlacesBinding5.searchCloseBtn).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.places.PlacesFragment$$ExternalSyntheticLambda8
                                                                        public final /* synthetic */ PlacesFragment f$0;

                                                                        {
                                                                            this.f$0 = this;
                                                                        }

                                                                        @Override // android.view.View.OnClickListener
                                                                        public final void onClick(View view) {
                                                                            int i42 = i7;
                                                                            ActivityOptionsCompat$ActivityOptionsCompatImpl activityOptionsCompat$ActivityOptionsCompatImpl = null;
                                                                            PlacesFragment placesFragment = this.f$0;
                                                                            switch (i42) {
                                                                                case 0:
                                                                                    String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                    String m = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("tabs_view_click", "search_bar_view", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    if (Jsoup.getInstance().getTabCount() != 1) {
                                                                                        int i52 = TabActivity.$r8$clinit;
                                                                                        placesFragment.startActivity(new Intent(placesFragment.requireActivity(), (Class<?>) TabActivity.class), null);
                                                                                        break;
                                                                                    } else {
                                                                                        int i62 = PageActivity.$r8$clinit;
                                                                                        placesFragment.startActivity(LoginClient.newIntent(placesFragment.requireActivity()), null);
                                                                                        break;
                                                                                    }
                                                                                case 1:
                                                                                    String[] strArr2 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient2 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                    String m2 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs2 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("back_click", "search_bar_view", "", m2, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    placesFragment.requireActivity().finish();
                                                                                    break;
                                                                                case 2:
                                                                                    String[] strArr3 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient3 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                    String m3 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs3 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("filter_click", "search_bar_view", "", m3, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    Fragment.AnonymousClass10 anonymousClass10 = placesFragment.filterLauncher;
                                                                                    int i72 = PlacesFilterActivity.$r8$clinit;
                                                                                    anonymousClass10.launch(new Intent(placesFragment.requireActivity(), (Class<?>) PlacesFilterActivity.class), null);
                                                                                    break;
                                                                                case 3:
                                                                                    String[] strArr4 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient4 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp4 = WikipediaApp.instance;
                                                                                    String m4 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs4 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("search_clear_click", "search_bar_view", "", m4, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    placesFragment.updateSearchText("");
                                                                                    break;
                                                                                case 4:
                                                                                    String[] strArr5 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient5 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp5 = WikipediaApp.instance;
                                                                                    String m5 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs5 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("current_location_click", "map_view", "", m5, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    if (!placesFragment.haveLocationPermissions()) {
                                                                                        placesFragment.locationPermissionRequest.launch(new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}, null);
                                                                                        break;
                                                                                    } else {
                                                                                        PlacesFragment.goToLocation$default(placesFragment, null, 3);
                                                                                        break;
                                                                                    }
                                                                                default:
                                                                                    String[] strArr6 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient6 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp6 = WikipediaApp.instance;
                                                                                    String m6 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs6 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("search_view_click", "search_bar_view", "", m6, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    int i8 = SearchActivity.$r8$clinit;
                                                                                    AppCompatActivity requireActivity = placesFragment.requireActivity();
                                                                                    Constants.InvokeSource invokeSource = Constants.InvokeSource.PLACES;
                                                                                    PageTitle pageTitle = placesFragment.getViewModel().highlightedPageTitle;
                                                                                    Intent newIntent$default = LoginClient.newIntent$default(requireActivity, invokeSource, pageTitle != null ? pageTitle.getDisplayText() : null, (String) null, 48);
                                                                                    ComponentName component = newIntent$default.getComponent();
                                                                                    if (Intrinsics.areEqual(component != null ? component.getClassName() : null, SearchActivity.class.getName())) {
                                                                                        AppCompatActivity requireActivity2 = placesFragment.requireActivity();
                                                                                        FragmentPlacesBinding fragmentPlacesBinding22 = placesFragment._binding;
                                                                                        fragmentPlacesBinding22.getClass();
                                                                                        activityOptionsCompat$ActivityOptionsCompatImpl = new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptions.makeSceneTransitionAnimation(requireActivity2, fragmentPlacesBinding22.searchContainer.getChildAt(0), placesFragment.getString(R.string.transition_search_bar)));
                                                                                    }
                                                                                    placesFragment.placesSearchLauncher.launch(newIntent$default, activityOptionsCompat$ActivityOptionsCompatImpl);
                                                                                    break;
                                                                            }
                                                                        }
                                                                    });
                                                                    FragmentPlacesBinding fragmentPlacesBinding6 = this._binding;
                                                                    fragmentPlacesBinding6.getClass();
                                                                    ((ExtendedFloatingActionButton) fragmentPlacesBinding6.myLocationButton).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.places.PlacesFragment$$ExternalSyntheticLambda8
                                                                        public final /* synthetic */ PlacesFragment f$0;

                                                                        {
                                                                            this.f$0 = this;
                                                                        }

                                                                        @Override // android.view.View.OnClickListener
                                                                        public final void onClick(View view) {
                                                                            int i42 = i3;
                                                                            ActivityOptionsCompat$ActivityOptionsCompatImpl activityOptionsCompat$ActivityOptionsCompatImpl = null;
                                                                            PlacesFragment placesFragment = this.f$0;
                                                                            switch (i42) {
                                                                                case 0:
                                                                                    String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                    String m = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("tabs_view_click", "search_bar_view", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    if (Jsoup.getInstance().getTabCount() != 1) {
                                                                                        int i52 = TabActivity.$r8$clinit;
                                                                                        placesFragment.startActivity(new Intent(placesFragment.requireActivity(), (Class<?>) TabActivity.class), null);
                                                                                        break;
                                                                                    } else {
                                                                                        int i62 = PageActivity.$r8$clinit;
                                                                                        placesFragment.startActivity(LoginClient.newIntent(placesFragment.requireActivity()), null);
                                                                                        break;
                                                                                    }
                                                                                case 1:
                                                                                    String[] strArr2 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient2 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                    String m2 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs2 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("back_click", "search_bar_view", "", m2, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    placesFragment.requireActivity().finish();
                                                                                    break;
                                                                                case 2:
                                                                                    String[] strArr3 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient3 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                    String m3 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs3 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("filter_click", "search_bar_view", "", m3, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    Fragment.AnonymousClass10 anonymousClass10 = placesFragment.filterLauncher;
                                                                                    int i72 = PlacesFilterActivity.$r8$clinit;
                                                                                    anonymousClass10.launch(new Intent(placesFragment.requireActivity(), (Class<?>) PlacesFilterActivity.class), null);
                                                                                    break;
                                                                                case 3:
                                                                                    String[] strArr4 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient4 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp4 = WikipediaApp.instance;
                                                                                    String m4 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs4 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("search_clear_click", "search_bar_view", "", m4, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    placesFragment.updateSearchText("");
                                                                                    break;
                                                                                case 4:
                                                                                    String[] strArr5 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient5 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp5 = WikipediaApp.instance;
                                                                                    String m5 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs5 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("current_location_click", "map_view", "", m5, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    if (!placesFragment.haveLocationPermissions()) {
                                                                                        placesFragment.locationPermissionRequest.launch(new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}, null);
                                                                                        break;
                                                                                    } else {
                                                                                        PlacesFragment.goToLocation$default(placesFragment, null, 3);
                                                                                        break;
                                                                                    }
                                                                                default:
                                                                                    String[] strArr6 = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                    EventPlatformClient eventPlatformClient6 = EventPlatformClient.INSTANCE;
                                                                                    WikipediaApp wikipediaApp6 = WikipediaApp.instance;
                                                                                    String m6 = ViewSizeResolver$CC.m();
                                                                                    Prefs prefs6 = Prefs.INSTANCE;
                                                                                    EventPlatformClient.submit(new AppInteractionEvent("search_view_click", "search_bar_view", "", m6, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                    int i8 = SearchActivity.$r8$clinit;
                                                                                    AppCompatActivity requireActivity = placesFragment.requireActivity();
                                                                                    Constants.InvokeSource invokeSource = Constants.InvokeSource.PLACES;
                                                                                    PageTitle pageTitle = placesFragment.getViewModel().highlightedPageTitle;
                                                                                    Intent newIntent$default = LoginClient.newIntent$default(requireActivity, invokeSource, pageTitle != null ? pageTitle.getDisplayText() : null, (String) null, 48);
                                                                                    ComponentName component = newIntent$default.getComponent();
                                                                                    if (Intrinsics.areEqual(component != null ? component.getClassName() : null, SearchActivity.class.getName())) {
                                                                                        AppCompatActivity requireActivity2 = placesFragment.requireActivity();
                                                                                        FragmentPlacesBinding fragmentPlacesBinding22 = placesFragment._binding;
                                                                                        fragmentPlacesBinding22.getClass();
                                                                                        activityOptionsCompat$ActivityOptionsCompatImpl = new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptions.makeSceneTransitionAnimation(requireActivity2, fragmentPlacesBinding22.searchContainer.getChildAt(0), placesFragment.getString(R.string.transition_search_bar)));
                                                                                    }
                                                                                    placesFragment.placesSearchLauncher.launch(newIntent$default, activityOptionsCompat$ActivityOptionsCompatImpl);
                                                                                    break;
                                                                            }
                                                                        }
                                                                    });
                                                                    FragmentPlacesBinding fragmentPlacesBinding7 = this._binding;
                                                                    fragmentPlacesBinding7.getClass();
                                                                    MaterialButtonToggleGroup materialButtonToggleGroup2 = (MaterialButtonToggleGroup) fragmentPlacesBinding7.viewButtonsGroup;
                                                                    materialButtonToggleGroup2.onButtonCheckedListeners.add(new MaterialButtonToggleGroup.OnButtonCheckedListener() { // from class: org.wikipedia.places.PlacesFragment$$ExternalSyntheticLambda14
                                                                        @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
                                                                        public final void onButtonChecked(int i8, boolean z) {
                                                                            if (!z) {
                                                                                String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
                                                                                return;
                                                                            }
                                                                            PlacesFragment placesFragment = PlacesFragment.this;
                                                                            placesFragment.lastCheckedId = i8;
                                                                            boolean z2 = i8 == R.id.mapViewButton;
                                                                            placesFragment.updateToggleViews(z2);
                                                                            ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(placesFragment.requireContext(), R.attr.progressive_color);
                                                                            ColorStateList themedColorStateList2 = Cache.Companion.getThemedColorStateList(placesFragment.requireContext(), R.attr.addition_color);
                                                                            ColorStateList themedColorStateList3 = Cache.Companion.getThemedColorStateList(placesFragment.requireContext(), R.attr.placeholder_color);
                                                                            ColorStateList themedColorStateList4 = Cache.Companion.getThemedColorStateList(placesFragment.requireContext(), R.attr.paper_color);
                                                                            ColorStateList themedColorStateList5 = Cache.Companion.getThemedColorStateList(placesFragment.requireContext(), R.attr.background_color);
                                                                            FragmentPlacesBinding fragmentPlacesBinding8 = placesFragment._binding;
                                                                            if (z2) {
                                                                                fragmentPlacesBinding8.getClass();
                                                                                ((MaterialButton) fragmentPlacesBinding8.mapViewButton).setTextColor(themedColorStateList);
                                                                                FragmentPlacesBinding fragmentPlacesBinding9 = placesFragment._binding;
                                                                                fragmentPlacesBinding9.getClass();
                                                                                ((MaterialButton) fragmentPlacesBinding9.mapViewButton).setBackgroundTintList(themedColorStateList2);
                                                                                FragmentPlacesBinding fragmentPlacesBinding10 = placesFragment._binding;
                                                                                fragmentPlacesBinding10.getClass();
                                                                                ((MaterialButton) fragmentPlacesBinding10.mapViewButton).setStrokeColor(themedColorStateList4);
                                                                                FragmentPlacesBinding fragmentPlacesBinding11 = placesFragment._binding;
                                                                                fragmentPlacesBinding11.getClass();
                                                                                ((MaterialButton) fragmentPlacesBinding11.listViewButton).setTextColor(themedColorStateList3);
                                                                                FragmentPlacesBinding fragmentPlacesBinding12 = placesFragment._binding;
                                                                                fragmentPlacesBinding12.getClass();
                                                                                ((MaterialButton) fragmentPlacesBinding12.listViewButton).setBackgroundTintList(themedColorStateList4);
                                                                                FragmentPlacesBinding fragmentPlacesBinding13 = placesFragment._binding;
                                                                                fragmentPlacesBinding13.getClass();
                                                                                ((MaterialButton) fragmentPlacesBinding13.listViewButton).setStrokeColor(themedColorStateList4);
                                                                                return;
                                                                            }
                                                                            fragmentPlacesBinding8.getClass();
                                                                            ((MaterialButton) fragmentPlacesBinding8.mapViewButton).setTextColor(themedColorStateList3);
                                                                            FragmentPlacesBinding fragmentPlacesBinding14 = placesFragment._binding;
                                                                            fragmentPlacesBinding14.getClass();
                                                                            ((MaterialButton) fragmentPlacesBinding14.mapViewButton).setBackgroundTintList(themedColorStateList5);
                                                                            FragmentPlacesBinding fragmentPlacesBinding15 = placesFragment._binding;
                                                                            fragmentPlacesBinding15.getClass();
                                                                            ((MaterialButton) fragmentPlacesBinding15.mapViewButton).setStrokeColor(themedColorStateList5);
                                                                            FragmentPlacesBinding fragmentPlacesBinding16 = placesFragment._binding;
                                                                            fragmentPlacesBinding16.getClass();
                                                                            ((MaterialButton) fragmentPlacesBinding16.listViewButton).setTextColor(themedColorStateList);
                                                                            FragmentPlacesBinding fragmentPlacesBinding17 = placesFragment._binding;
                                                                            fragmentPlacesBinding17.getClass();
                                                                            ((MaterialButton) fragmentPlacesBinding17.listViewButton).setBackgroundTintList(themedColorStateList2);
                                                                            FragmentPlacesBinding fragmentPlacesBinding18 = placesFragment._binding;
                                                                            fragmentPlacesBinding18.getClass();
                                                                            ((MaterialButton) fragmentPlacesBinding18.listViewButton).setStrokeColor(themedColorStateList5);
                                                                        }
                                                                    });
                                                                    FragmentPlacesBinding fragmentPlacesBinding8 = this._binding;
                                                                    fragmentPlacesBinding8.getClass();
                                                                    RecyclerView recyclerView2 = fragmentPlacesBinding8.listRecyclerView;
                                                                    requireContext();
                                                                    recyclerView2.setLayoutManager(new LinearLayoutManager(1));
                                                                    FragmentPlacesBinding fragmentPlacesBinding9 = this._binding;
                                                                    fragmentPlacesBinding9.getClass();
                                                                    RecyclerView recyclerView3 = fragmentPlacesBinding9.listRecyclerView;
                                                                    Object[] objArr2 = objArr == true ? 1 : 0;
                                                                    recyclerView3.addItemDecoration(new DrawableItemDecoration(requireContext(), (boolean) (1 == true ? 1 : 0), (boolean) objArr2, 8));
                                                                    FragmentPlacesBinding fragmentPlacesBinding10 = this._binding;
                                                                    fragmentPlacesBinding10.getClass();
                                                                    TextView textView3 = fragmentPlacesBinding10.listEmptyMessage;
                                                                    StringUtil stringUtil = StringUtil.INSTANCE;
                                                                    textView3.setText(StringUtil.fromHtml(getString(R.string.places_empty_list)));
                                                                    FragmentPlacesBinding fragmentPlacesBinding11 = this._binding;
                                                                    fragmentPlacesBinding11.getClass();
                                                                    fragmentPlacesBinding11.listEmptyMessage.setMovementMethod(new LinkMovementMethodExt(new PlacesFragment$$ExternalSyntheticLambda1(this, 1 == true ? 1 : 0)));
                                                                    FragmentPlacesBinding fragmentPlacesBinding12 = this._binding;
                                                                    fragmentPlacesBinding12.getClass();
                                                                    FrameLayout frameLayout2 = fragmentPlacesBinding12.rootView;
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
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        Location location = this.lastLocation;
        if (location != null) {
            Prefs prefs = Prefs.INSTANCE;
            Double valueOf = Double.valueOf(this.lastZoom);
            PrefsIoUtil.setString(R.string.preference_key_places_last_location_and_zoom_level, location.getLatitude() + "|" + location.getLongitude() + "|" + valueOf);
        }
        FragmentPlacesBinding fragmentPlacesBinding = this._binding;
        fragmentPlacesBinding.getClass();
        ((MapView) fragmentPlacesBinding.mapView).onDestroy();
        this._binding = null;
        this.annotationCache.clear();
        Bitmap bitmap = this.markerBitmapBase;
        if (bitmap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("markerBitmapBase");
            throw null;
        }
        bitmap.recycle();
        this.mCalled = true;
    }

    @Override // org.wikipedia.page.linkpreview.LinkPreviewDialog.DismissCallback
    public final void onLinkPreviewDismiss() {
        updateSearchText("");
    }

    @Override // org.wikipedia.page.linkpreview.LinkPreviewDialog.LoadPageCallback
    public final void onLinkPreviewLoadPage(PageTitle pageTitle, HistoryEntry historyEntry, boolean z) {
        pageTitle.getClass();
        historyEntry.getClass();
        if (!z) {
            int i = PageActivity.$r8$clinit;
            startActivity(LoginClient.newIntentForNewTab(requireActivity(), historyEntry, historyEntry.getTitle()), null);
            return;
        }
        TabUtil.openInNewBackgroundTab(historyEntry);
        requireActivity().invalidateOptionsMenu();
        FragmentPlacesBinding fragmentPlacesBinding = this._binding;
        fragmentPlacesBinding.getClass();
        TabCountsView tabCountsView = (TabCountsView) fragmentPlacesBinding.tabsButton;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        tabCountsView.setVisibility(Jsoup.getInstance().getTabCount() > 0 ? 0 : 8);
        FragmentPlacesBinding fragmentPlacesBinding2 = this._binding;
        fragmentPlacesBinding2.getClass();
        ((TabCountsView) fragmentPlacesBinding2.tabsButton).updateTabCount(true);
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.mCalled = true;
        FragmentPlacesBinding fragmentPlacesBinding = this._binding;
        fragmentPlacesBinding.getClass();
        ((MapView) fragmentPlacesBinding.mapView).onLowMemory();
    }

    @Override // org.maplibre.android.maps.MapLibreMap.OnMapClickListener
    public final boolean onMapClick(LatLng latLng) {
        latLng.getClass();
        MapLibreMap mapLibreMap = this.mapboxMap;
        if (mapLibreMap == null) {
            return false;
        }
        PointF screenLocation = mapLibreMap.projection.toScreenLocation(latLng);
        float f = screenLocation.x;
        float f2 = screenLocation.y;
        RectF rectF = new RectF(f - 10.0f, f2 - 10.0f, f + 10.0f, f2 + 10.0f);
        updateSearchText("");
        List queryRenderedFeatures = mapLibreMap.queryRenderedFeatures(rectF, "mapbox-android-cluster-circle0");
        queryRenderedFeatures.getClass();
        if (queryRenderedFeatures.isEmpty()) {
            return false;
        }
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String m = ViewSizeResolver$CC.m();
        Prefs prefs = Prefs.INSTANCE;
        EventPlatformClient.submit(new AppInteractionEvent("cluster_click", "map_view", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
        mapLibreMap.easeCamera(TabUtil.newCameraPosition(new CameraPosition(latLng, mapLibreMap.transform.getCameraPosition().zoom + 2.0d, -1.0d, -1.0d, null)));
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.mCalled = true;
        FragmentPlacesBinding fragmentPlacesBinding = this._binding;
        fragmentPlacesBinding.getClass();
        MapRenderer mapRenderer = ((MapView) fragmentPlacesBinding.mapView).mapRenderer;
        if (mapRenderer != null) {
            mapRenderer.onPause();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        Window window;
        this.mCalled = true;
        AppCompatActivity activity = getActivity();
        if (activity != null && (window = activity.getWindow()) != null) {
            TuplesKt.setDecorFitsSystemWindows(window, false);
            window.setStatusBarColor(0);
            window.setNavigationBarColor(0);
        }
        FragmentPlacesBinding fragmentPlacesBinding = this._binding;
        fragmentPlacesBinding.getClass();
        MapRenderer mapRenderer = ((MapView) fragmentPlacesBinding.mapView).mapRenderer;
        if (mapRenderer != null) {
            mapRenderer.onResume();
        }
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        int tabCount = Jsoup.getInstance().getTabCount();
        FragmentPlacesBinding fragmentPlacesBinding2 = this._binding;
        fragmentPlacesBinding2.getClass();
        ((TabCountsView) fragmentPlacesBinding2.tabsButton).setVisibility(tabCount != 0 ? 0 : 8);
        FragmentPlacesBinding fragmentPlacesBinding3 = this._binding;
        fragmentPlacesBinding3.getClass();
        ((TabCountsView) fragmentPlacesBinding3.tabsButton).updateTabCount(false);
        List appLanguageCodes = Jsoup.getInstance().getLanguageState().getAppLanguageCodes();
        Prefs prefs = Prefs.INSTANCE;
        if (!((ArrayList) appLanguageCodes).contains(Prefs.getPlacesWikiCode())) {
            Prefs.setPlacesWikiCode(Jsoup.getInstance().getAppOrSystemLanguageCode());
        }
        FragmentPlacesBinding fragmentPlacesBinding4 = this._binding;
        fragmentPlacesBinding4.getClass();
        ((LangCodeView) fragmentPlacesBinding4.langCodeButton).setLangCode(Prefs.getPlacesWikiCode());
        FragmentPlacesBinding fragmentPlacesBinding5 = this._binding;
        fragmentPlacesBinding5.getClass();
        TabCountsView tabCountsView = (TabCountsView) fragmentPlacesBinding5.tabsButton;
        FragmentPlacesBinding fragmentPlacesBinding6 = this._binding;
        fragmentPlacesBinding6.getClass();
        View[] viewArr = {tabCountsView, (LangCodeView) fragmentPlacesBinding6.langCodeButton};
        for (int i = 0; i < 2; i++) {
            View view = viewArr[i];
            RegexKt.setTooltipText(view, view.getContentDescription());
        }
        updateToggleViews(this.lastCheckedId == R.id.mapViewButton);
        FragmentManagerImpl childFragmentManager = getChildFragmentManager();
        childFragmentManager.getClass();
        DialogFragment dialogFragment = (childFragmentManager.isStateSaved() || childFragmentManager.mDestroyed) ? null : (DialogFragment) childFragmentManager.findFragmentByTag("bottom_sheet_fragment");
        if (dialogFragment != null) {
            dialogFragment.dismiss();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        Bitmap bitmapFromDrawable;
        FragmentPlacesBinding fragmentPlacesBinding = this._binding;
        fragmentPlacesBinding.getClass();
        MapView mapView = (MapView) fragmentPlacesBinding.mapView;
        if (mapView.maplibreMap != null) {
            bundle.putBoolean("maplibre_savedState", true);
            MapLibreMap mapLibreMap = mapView.maplibreMap;
            bundle.putParcelable("maplibre_cameraPosition", mapLibreMap.transform.getCameraPosition());
            bundle.putBoolean("maplibre_debugActive", mapLibreMap.debugActive);
            UiSettings uiSettings = mapLibreMap.uiSettings;
            bundle.putBoolean("maplibre_horizontalScrollEnabled", uiSettings.horizontalScrollGesturesEnabled);
            bundle.putBoolean("maplibre_zoomEnabled", uiSettings.zoomGesturesEnabled);
            bundle.putBoolean("maplibre_scrollEnabled", uiSettings.scrollGesturesEnabled);
            bundle.putBoolean("maplibre_rotateEnabled", uiSettings.rotateGesturesEnabled);
            bundle.putBoolean("maplibre_tiltEnabled", uiSettings.tiltGesturesEnabled);
            bundle.putBoolean("maplibre_doubleTapEnabled", uiSettings.doubleTapGesturesEnabled);
            bundle.putBoolean("maplibre_scaleAnimationEnabled", uiSettings.scaleVelocityAnimationEnabled);
            bundle.putBoolean("maplibre_rotateAnimationEnabled", uiSettings.rotateVelocityAnimationEnabled);
            bundle.putBoolean("maplibre_flingAnimationEnabled", uiSettings.flingVelocityAnimationEnabled);
            bundle.putBoolean("maplibre_increaseRotateThreshold", uiSettings.increaseRotateThresholdWhenScaling);
            bundle.putBoolean("maplibre_disableRotateWhenScaling", uiSettings.disableRotateWhenScaling);
            bundle.putBoolean("maplibre_increaseScaleThreshold", uiSettings.increaseScaleThresholdWhenRotating);
            bundle.putBoolean("maplibre_quickZoom", uiSettings.quickZoomGesturesEnabled);
            bundle.putFloat("maplibre_zoomRate", uiSettings.zoomRate);
            int[] iArr = uiSettings.compassMargins;
            CompassView compassView = uiSettings.compassView;
            bundle.putBoolean("maplibre_compassEnabled", compassView != null ? compassView.isEnabled() : false);
            CompassView compassView2 = uiSettings.compassView;
            bundle.putInt("maplibre_compassGravity", compassView2 != null ? ((FrameLayout.LayoutParams) compassView2.getLayoutParams()).gravity : -1);
            bundle.putInt("maplibre_compassMarginLeft", iArr[0]);
            bundle.putInt("maplibre_compassMarginTop", iArr[1]);
            bundle.putInt("maplibre_compassMarginBottom", iArr[3]);
            bundle.putInt("maplibre_compassMarginRight", iArr[2]);
            CompassView compassView3 = uiSettings.compassView;
            bundle.putBoolean("maplibre_compassFade", compassView3 != null ? compassView3.fadeCompassViewFacingNorth : false);
            CompassView compassView4 = uiSettings.compassView;
            byte[] bArr = null;
            Drawable compassImage = compassView4 != null ? compassView4.getCompassImage() : null;
            if (compassImage != null && (bitmapFromDrawable = HttpUrl.Companion.getBitmapFromDrawable(compassImage)) != null) {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmapFromDrawable.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    bArr = byteArrayOutputStream.toByteArray();
                } finally {
                    if (!(compassImage instanceof BitmapDrawable)) {
                        bitmapFromDrawable.recycle();
                    }
                }
            }
            bundle.putByteArray("maplibre_compassImage", bArr);
            int[] iArr2 = uiSettings.logoMargins;
            ImageView imageView = uiSettings.logoView;
            bundle.putInt("maplibre_logoGravity", imageView != null ? ((FrameLayout.LayoutParams) imageView.getLayoutParams()).gravity : -1);
            bundle.putInt("maplibre_logoMarginLeft", iArr2[0]);
            bundle.putInt("maplibre_logoMarginTop", iArr2[1]);
            bundle.putInt("maplibre_logoMarginRight", iArr2[2]);
            bundle.putInt("maplibre_logoMarginBottom", iArr2[3]);
            ImageView imageView2 = uiSettings.logoView;
            bundle.putBoolean("maplibre_logoEnabled", imageView2 != null && imageView2.getVisibility() == 0);
            int[] iArr3 = uiSettings.attributionsMargins;
            ImageView imageView3 = uiSettings.attributionsView;
            bundle.putInt("maplibre_attrGravity", imageView3 != null ? ((FrameLayout.LayoutParams) imageView3.getLayoutParams()).gravity : -1);
            bundle.putInt("maplibre_attrMarginLeft", iArr3[0]);
            bundle.putInt("maplibre_attrMarginTop", iArr3[1]);
            bundle.putInt("maplibre_attrMarginRight", iArr3[2]);
            bundle.putInt("maplibre_atrrMarginBottom", iArr3[3]);
            ImageView imageView4 = uiSettings.attributionsView;
            bundle.putBoolean("maplibre_atrrEnabled", imageView4 != null && imageView4.getVisibility() == 0);
            bundle.putBoolean("maplibre_deselectMarkerOnTap", uiSettings.deselectMarkersOnTap);
            bundle.putParcelable("maplibre_userFocalPoint", uiSettings.userProvidedFocalPoint);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        this.mCalled = true;
        FragmentPlacesBinding fragmentPlacesBinding = this._binding;
        fragmentPlacesBinding.getClass();
        ((MapView) fragmentPlacesBinding.mapView).onStart();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        this.mCalled = true;
        FragmentPlacesBinding fragmentPlacesBinding = this._binding;
        fragmentPlacesBinding.getClass();
        ((MapView) fragmentPlacesBinding.mapView).onStop();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        FragmentPlacesBinding fragmentPlacesBinding = this._binding;
        fragmentPlacesBinding.getClass();
        MapView mapView = (MapView) fragmentPlacesBinding.mapView;
        if (bundle != null && bundle.getBoolean("maplibre_savedState")) {
            mapView.savedInstanceState = bundle;
        }
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String m = ViewSizeResolver$CC.m();
        Prefs prefs = Prefs.INSTANCE;
        EventPlatformClient.submit(new AppInteractionEvent("impression", "map_view", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
        FragmentPlacesBinding fragmentPlacesBinding2 = this._binding;
        fragmentPlacesBinding2.getClass();
        MapView mapView2 = (MapView) fragmentPlacesBinding2.mapView;
        OnMapReadyCallback onMapReadyCallback = new OnMapReadyCallback() { // from class: org.wikipedia.places.PlacesFragment$$ExternalSyntheticLambda4
            @Override // org.maplibre.android.maps.OnMapReadyCallback
            public final void onMapReady(final MapLibreMap mapLibreMap) {
                String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
                mapLibreMap.getClass();
                Style.Builder builder = new Style.Builder();
                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                builder.styleUri = Jsoup.getInstance().currentTheme.isDark() ? "asset://mapstyle-dark.json" : "asset://mapstyle.json";
                final PlacesFragment placesFragment = PlacesFragment.this;
                mapLibreMap.setStyle(builder, new Style.OnStyleLoaded() { // from class: org.wikipedia.places.PlacesFragment$$ExternalSyntheticLambda16
                    @Override // org.maplibre.android.maps.Style.OnStyleLoaded
                    public final void onStyleLoaded(Style style) {
                        int i;
                        int i2;
                        String[] strArr2 = PlacesFragment.CLUSTER_FONT_STACK;
                        style.getClass();
                        final PlacesFragment placesFragment2 = PlacesFragment.this;
                        MapLibreMap mapLibreMap2 = mapLibreMap;
                        placesFragment2.mapboxMap = mapLibreMap2;
                        Bitmap bitmap = placesFragment2.markerBitmapBase;
                        if (bitmap == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("markerBitmapBase");
                            throw null;
                        }
                        style.addImage("markerDrawable", bitmap);
                        mapLibreMap2.transform.setMaxZoom(20.0d);
                        UiSettings uiSettings = mapLibreMap2.uiSettings;
                        uiSettings.setLogoEnabled(false);
                        int roundedDpToPx = Okio__OkioKt.roundedDpToPx(16.0f);
                        Insets insets = placesFragment2.navBarInsets;
                        int i3 = insets != null ? insets.left : 0;
                        int i4 = insets != null ? insets.right : 0;
                        int i5 = insets != null ? insets.top : 0;
                        int i6 = insets != null ? insets.bottom : 0;
                        Insets insets2 = placesFragment2.statusBarInsets;
                        int i7 = insets2 != null ? insets2.left : 0;
                        int i8 = insets2 != null ? insets2.right : 0;
                        int i9 = insets2 != null ? insets2.top : 0;
                        int i10 = insets2 != null ? insets2.bottom : 0;
                        Drawable drawable = TuplesKt.getDrawable(placesFragment2.requireContext(), R.drawable.ic_compass_with_bg);
                        drawable.getClass();
                        CompassView compassView = uiSettings.compassView;
                        if (compassView != null) {
                            compassView.setCompassImage(drawable);
                        }
                        CompassView compassView2 = uiSettings.compassView;
                        if (compassView2 != null) {
                            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) compassView2.getLayoutParams();
                            layoutParams.gravity = 8388661;
                            compassView2.setLayoutParams(layoutParams);
                        }
                        ImageView imageView = uiSettings.attributionsView;
                        if (imageView != null) {
                            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) imageView.getLayoutParams();
                            layoutParams2.gravity = 8388691;
                            imageView.setLayoutParams(layoutParams2);
                        }
                        uiSettings.setAttributionTintColor(Cache.Companion.getThemedColor(placesFragment2.requireContext(), R.attr.placeholder_color));
                        int i11 = i3 + roundedDpToPx + i7;
                        FragmentPlacesBinding fragmentPlacesBinding3 = placesFragment2._binding;
                        fragmentPlacesBinding3.getClass();
                        int height = fragmentPlacesBinding3.searchContainer.getHeight() + i5 + roundedDpToPx + i9;
                        int roundedDpToPx2 = Okio__OkioKt.roundedDpToPx(12.0f) + i4 + i8;
                        CompassView compassView3 = uiSettings.compassView;
                        if (compassView3 != null) {
                            UiSettings.setWidgetMargins(i11, height, roundedDpToPx2, roundedDpToPx, compassView3, uiSettings.compassMargins);
                        }
                        uiSettings.setAttributionMargins(i11, 0, roundedDpToPx + i4 + i8, Okio__OkioKt.roundedDpToPx(36.0f) + i6 + i10);
                        mapLibreMap2.cameraChangeDispatcher.onCameraIdle.add(new MapLibreMap.OnCameraIdleListener() { // from class: org.wikipedia.places.PlacesFragment$$ExternalSyntheticLambda18
                            @Override // org.maplibre.android.maps.MapLibreMap.OnCameraIdleListener
                            public final void onCameraIdle() {
                                CameraPosition cameraPosition;
                                LatLng latLng;
                                CameraPosition cameraPosition2;
                                LatLngBounds latLngBounds;
                                LatLngBounds latLngBounds2;
                                CameraPosition cameraPosition3;
                                PlacesFragment placesFragment3 = PlacesFragment.this;
                                MapLibreMap mapLibreMap3 = placesFragment3.mapboxMap;
                                if (mapLibreMap3 == null || (cameraPosition = mapLibreMap3.transform.getCameraPosition()) == null || (latLng = cameraPosition.target) == null) {
                                    return;
                                }
                                Location location = new Location("");
                                location.setLatitude(latLng.getLatitude());
                                location.setLongitude(latLng.getLongitude());
                                placesFragment3.lastLocation = location;
                                MapLibreMap mapLibreMap4 = placesFragment3.mapboxMap;
                                double d = (mapLibreMap4 == null || (cameraPosition3 = mapLibreMap4.transform.getCameraPosition()) == null) ? 15.0d : cameraPosition3.zoom;
                                placesFragment3.lastZoom = d;
                                if (d < 3.0d) {
                                    return;
                                }
                                MapLibreMap mapLibreMap5 = placesFragment3.mapboxMap;
                                double latitudeSpan = ((mapLibreMap5 == null || (latLngBounds2 = mapLibreMap5.projection.getVisibleRegion().latLngBounds) == null) ? 0.0d : latLngBounds2.getLatitudeSpan()) * 0.2d;
                                MapLibreMap mapLibreMap6 = placesFragment3.mapboxMap;
                                double longitudeSpan = ((mapLibreMap6 == null || (latLngBounds = mapLibreMap6.projection.getVisibleRegion().latLngBounds) == null) ? 0.0d : latLngBounds.getLongitudeSpan()) * 0.2d;
                                if (placesFragment3.lastLocationQueried != null) {
                                    double latitude = latLng.getLatitude();
                                    Location location2 = placesFragment3.lastLocationQueried;
                                    if (Math.abs(latitude - (location2 != null ? location2.getLatitude() : 0.0d)) < latitudeSpan) {
                                        double longitude = latLng.getLongitude();
                                        Location location3 = placesFragment3.lastLocationQueried;
                                        if (Math.abs(longitude - (location3 != null ? location3.getLongitude() : 0.0d)) < longitudeSpan && Math.abs(placesFragment3.lastZoom - placesFragment3.lastZoomQueried) < 0.5d) {
                                            return;
                                        }
                                    }
                                }
                                placesFragment3.lastLocationQueried = placesFragment3.lastLocation;
                                placesFragment3.lastZoomQueried = placesFragment3.lastZoom;
                                double latitude2 = latLng.getLatitude();
                                double longitude2 = latLng.getLongitude();
                                MapLibreMap mapLibreMap7 = placesFragment3.mapboxMap;
                                L.d(">>> requesting update: " + latitude2 + ", " + longitude2 + ", " + ((mapLibreMap7 == null || (cameraPosition2 = mapLibreMap7.transform.getCameraPosition()) == null) ? null : Double.valueOf(cameraPosition2.zoom)));
                                placesFragment3.getViewModel().fetchNearbyPages(latLng.getLatitude(), latLng.getLongitude(), placesFragment3.getSearchRadius());
                            }
                        });
                        ((MapView) mapLibreMap2.onGesturesManagerInteractionListener.iconMap).mapGestureDetector.onMapClickListenerList.add(placesFragment2);
                        FragmentPlacesBinding fragmentPlacesBinding4 = placesFragment2._binding;
                        fragmentPlacesBinding4.getClass();
                        MapView mapView3 = (MapView) fragmentPlacesBinding4.mapView;
                        Pair[] pairArr = {new Pair()};
                        SymbolElementProvider symbolElementProvider = new SymbolElementProvider();
                        GeoJsonOptions geoJsonOptions = new GeoJsonOptions();
                        Boolean bool = Boolean.TRUE;
                        geoJsonOptions.put("cluster", bool);
                        geoJsonOptions.put("clusterRadius", 50);
                        geoJsonOptions.put("clusterMaxZoom", 14);
                        DefaultSocket defaultSocket = DefaultSocket.INSTANCE;
                        if (defaultSocket != null && ((MapView) defaultSocket.socket) == mapView3 && ((MapLibreMap) defaultSocket.closeBits) == mapLibreMap2) {
                            i = 0;
                        } else {
                            FragmentNewsBinding fragmentNewsBinding = new FragmentNewsBinding(mapView3.getContext(), false);
                            mapView3.getScrollX();
                            mapView3.getScrollY();
                            mapView3.getMeasuredWidth();
                            mapView3.getMeasuredHeight();
                            defaultSocket = new DefaultSocket(7);
                            defaultSocket.source = new LinkedList();
                            defaultSocket.sink = new HashMap();
                            defaultSocket.socket = mapView3;
                            defaultSocket.closeBits = mapLibreMap2;
                            i = 0;
                            ((MoveGestureDetector) fragmentNewsBinding.toolbarContainer).listener = new DraggableAnnotationController$AnnotationMoveGestureListener(defaultSocket);
                            mapView3.setOnTouchListener(new TimePickerView.AnonymousClass3(defaultSocket, fragmentNewsBinding));
                            DefaultSocket.INSTANCE = defaultSocket;
                        }
                        SymbolManager symbolManager = new SymbolManager(mapView3, mapLibreMap2, style, symbolElementProvider, defaultSocket, geoJsonOptions);
                        String str = symbolManager.coreElementProvider.sourceId;
                        CircleLayer circleLayer = new CircleLayer("mapbox-android-cluster-circle0", str);
                        pairArr[i].getClass();
                        PaintPropertyValue paintPropertyValue = new PaintPropertyValue("circle-color", ReadingListFragment.MultiSelectCallback.colorToRgbaString(-16776961));
                        PaintPropertyValue paintPropertyValue2 = new PaintPropertyValue("circle-radius", new Expression.ExpressionLiteral(Float.valueOf(18.0f)));
                        PropertyValue[] propertyValueArr = new PropertyValue[2];
                        propertyValueArr[i] = paintPropertyValue;
                        propertyValueArr[1] = paintPropertyValue2;
                        circleLayer.setProperties(propertyValueArr);
                        Expression[] expressionArr = new Expression[1];
                        expressionArr[i] = Expression.get("point_count");
                        Expression expression = new Expression("to-number", expressionArr);
                        Expression[] expressionArr2 = new Expression[1];
                        expressionArr2[i] = new Expression.ExpressionLiteral("point_count");
                        Expression expression2 = new Expression("has", expressionArr2);
                        pairArr[i].getClass();
                        Expression.ExpressionLiteral expressionLiteral = new Expression.ExpressionLiteral(0);
                        Expression[] expressionArr3 = new Expression[2];
                        expressionArr3[i] = expression;
                        expressionArr3[1] = expressionLiteral;
                        Expression expression3 = new Expression(">=", expressionArr3);
                        Expression[] expressionArr4 = new Expression[2];
                        expressionArr4[i] = expression2;
                        expressionArr4[1] = expression3;
                        Layer.checkThread();
                        ArrayList arrayList = new ArrayList();
                        arrayList.add("all");
                        int length = expressionArr4.length;
                        for (int i12 = i; i12 < length; i12++) {
                            Expression expression4 = expressionArr4[i12];
                            if (expression4 instanceof Expression.ExpressionLiteral) {
                                arrayList.add(((Expression.ExpressionLiteral) expression4).toValue());
                            } else {
                                arrayList.add(expression4.toArray());
                            }
                        }
                        circleLayer.nativeSetFilter(arrayList.toArray());
                        style.addLayer(circleLayer);
                        SymbolLayer symbolLayer = new SymbolLayer("mapbox-android-cluster-text", str);
                        LayoutPropertyValue layoutPropertyValue = new LayoutPropertyValue("text-field", Expression.get("point_count"));
                        LayoutPropertyValue layoutPropertyValue2 = new LayoutPropertyValue("text-size", new Expression.ExpressionLiteral(Float.valueOf(12.0f)));
                        float[] fArr = new float[4];
                        fArr[i] = ((-1) >> 16) & 255;
                        fArr[1] = ((-1) >> 8) & 255;
                        fArr[2] = (-1) & 255;
                        fArr[3] = (((-1) >> 24) & 255) / 255.0f;
                        Float valueOf = Float.valueOf(fArr[i]);
                        Float valueOf2 = Float.valueOf(fArr[1]);
                        Float valueOf3 = Float.valueOf(fArr[2]);
                        Float valueOf4 = Float.valueOf(fArr[3]);
                        Expression.ExpressionLiteral expressionLiteral2 = new Expression.ExpressionLiteral(valueOf);
                        Expression.ExpressionLiteral expressionLiteral3 = new Expression.ExpressionLiteral(valueOf2);
                        Expression.ExpressionLiteral expressionLiteral4 = new Expression.ExpressionLiteral(valueOf3);
                        Expression.ExpressionLiteral expressionLiteral5 = new Expression.ExpressionLiteral(valueOf4);
                        Expression[] expressionArr5 = new Expression[4];
                        expressionArr5[i] = expressionLiteral2;
                        expressionArr5[1] = expressionLiteral3;
                        expressionArr5[2] = expressionLiteral4;
                        expressionArr5[3] = expressionLiteral5;
                        PaintPropertyValue paintPropertyValue3 = new PaintPropertyValue("text-color", new Expression("rgba", expressionArr5));
                        LayoutPropertyValue layoutPropertyValue3 = new LayoutPropertyValue("text-ignore-placement", bool);
                        LayoutPropertyValue layoutPropertyValue4 = new LayoutPropertyValue("text-allow-overlap", bool);
                        PropertyValue[] propertyValueArr2 = new PropertyValue[5];
                        propertyValueArr2[i] = layoutPropertyValue;
                        propertyValueArr2[1] = layoutPropertyValue2;
                        propertyValueArr2[2] = paintPropertyValue3;
                        propertyValueArr2[3] = layoutPropertyValue3;
                        propertyValueArr2[4] = layoutPropertyValue4;
                        symbolLayer.setProperties(propertyValueArr2);
                        style.addLayer(symbolLayer);
                        placesFragment2.symbolManager = symbolManager;
                        try {
                            Layer layer = style.getLayer("mapbox-android-cluster-text");
                            if (layer != null) {
                                i2 = 5;
                                Expression[] expressionArr6 = new Expression[1];
                                expressionArr6[i] = Expression.get("point_count");
                                LayoutPropertyValue layoutPropertyValue5 = new LayoutPropertyValue("text-field", new Expression("to-string", expressionArr6));
                                LayoutPropertyValue layoutPropertyValue6 = new LayoutPropertyValue("text-size", new Expression.ExpressionLiteral(Float.valueOf(22.0f)));
                                Context requireContext = placesFragment2.requireContext();
                                TypedValue typedValue = new TypedValue();
                                if (!requireContext.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
                                    typedValue = null;
                                }
                                if (typedValue == null) {
                                    throw new IllegalArgumentException("Attribute not found; ID=2130969831");
                                }
                                PaintPropertyValue paintPropertyValue4 = new PaintPropertyValue("text-color", ReadingListFragment.MultiSelectCallback.colorToRgbaString(typedValue.data));
                                LayoutPropertyValue layoutPropertyValue7 = new LayoutPropertyValue("text-font", PlacesFragment.CLUSTER_FONT_STACK);
                                LayoutPropertyValue layoutPropertyValue8 = new LayoutPropertyValue("text-ignore-placement", bool);
                                LayoutPropertyValue layoutPropertyValue9 = new LayoutPropertyValue("text-allow-overlap", bool);
                                PropertyValue[] propertyValueArr3 = new PropertyValue[6];
                                propertyValueArr3[i] = layoutPropertyValue5;
                                propertyValueArr3[1] = layoutPropertyValue6;
                                propertyValueArr3[2] = paintPropertyValue4;
                                propertyValueArr3[3] = layoutPropertyValue7;
                                propertyValueArr3[4] = layoutPropertyValue8;
                                propertyValueArr3[5] = layoutPropertyValue9;
                                layer.setProperties(propertyValueArr3);
                            } else {
                                i2 = 5;
                            }
                            Layer layer2 = style.getLayer("mapbox-android-cluster-circle0");
                            if (layer2 != null) {
                                PaintPropertyValue paintPropertyValue5 = new PaintPropertyValue("circle-radius", Float.valueOf(24.0f));
                                PaintPropertyValue paintPropertyValue6 = new PaintPropertyValue("circle-color", ReadingListFragment.MultiSelectCallback.colorToRgbaString(placesFragment2.requireActivity().getColor(Cache.Companion.getThemedAttributeId(placesFragment2.requireContext(), R.attr.secondary_color))));
                                PaintPropertyValue paintPropertyValue7 = new PaintPropertyValue("circle-opacity", Float.valueOf(0.8f));
                                PaintPropertyValue paintPropertyValue8 = new PaintPropertyValue("circle-stroke-color", ReadingListFragment.MultiSelectCallback.colorToRgbaString(Cache.Companion.getThemedColor(placesFragment2.requireContext(), R.attr.paper_color)));
                                PaintPropertyValue paintPropertyValue9 = new PaintPropertyValue("circle-stroke-width", Float.valueOf(2.0f));
                                PropertyValue[] propertyValueArr4 = new PropertyValue[i2];
                                propertyValueArr4[i] = paintPropertyValue5;
                                propertyValueArr4[1] = paintPropertyValue6;
                                propertyValueArr4[2] = paintPropertyValue7;
                                propertyValueArr4[3] = paintPropertyValue8;
                                propertyValueArr4[4] = paintPropertyValue9;
                                layer2.setProperties(propertyValueArr4);
                            }
                        } catch (Exception e) {
                            L.e(e);
                        }
                        SymbolManager symbolManager2 = placesFragment2.symbolManager;
                        if (symbolManager2 != null) {
                            LayoutPropertyValue layoutPropertyValue10 = new LayoutPropertyValue("icon-allow-overlap", Boolean.TRUE);
                            symbolManager2.constantPropertyUsageMap.put("icon-allow-overlap", layoutPropertyValue10);
                            SymbolLayer symbolLayer2 = symbolManager2.layer;
                            PropertyValue[] propertyValueArr5 = new PropertyValue[1];
                            propertyValueArr5[i] = layoutPropertyValue10;
                            symbolLayer2.setProperties(propertyValueArr5);
                        }
                        SymbolManager symbolManager3 = placesFragment2.symbolManager;
                        if (symbolManager3 != null) {
                            LayoutPropertyValue layoutPropertyValue11 = new LayoutPropertyValue("text-allow-overlap", Boolean.TRUE);
                            symbolManager3.constantPropertyUsageMap.put("text-allow-overlap", layoutPropertyValue11);
                            SymbolLayer symbolLayer3 = symbolManager3.layer;
                            PropertyValue[] propertyValueArr6 = new PropertyValue[1];
                            propertyValueArr6[i] = layoutPropertyValue11;
                            symbolLayer3.setProperties(propertyValueArr6);
                        }
                        SymbolManager symbolManager4 = placesFragment2.symbolManager;
                        if (symbolManager4 != null) {
                            symbolManager4.clickListeners.add(new PlacesFragment$$ExternalSyntheticLambda19(placesFragment2));
                        }
                        if (placesFragment2.haveLocationPermissions()) {
                            placesFragment2.startLocationTracking();
                        }
                        Location location = placesFragment2.getViewModel().location;
                        if (location != null) {
                            PlacesFragment.goToLocation$default(placesFragment2, location, 2);
                            return;
                        }
                        Prefs prefs2 = Prefs.INSTANCE;
                        String string = PrefsIoUtil.getString(R.string.preference_key_default_places_location_latlng, null);
                        if (((string == null || string.length() == 0) ? null : string) != null) {
                            PlacesFragment.goToLocation$default(placesFragment2, PlacesFragment.getDefaultLocation(), 2);
                        } else {
                            kotlin.Pair placesLastLocationAndZoomLevel = Prefs.getPlacesLastLocationAndZoomLevel();
                            placesFragment2.goToLocation(placesLastLocationAndZoomLevel != null ? (Location) placesLastLocationAndZoomLevel.first : null, placesLastLocationAndZoomLevel != null ? ((Number) placesLastLocationAndZoomLevel.second).doubleValue() : placesFragment2.lastZoom);
                        }
                        if (placesFragment2.haveLocationPermissions()) {
                            return;
                        }
                        placesFragment2.locationPermissionRequest.launch(new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}, null);
                    }
                });
            }
        };
        MapLibreMap mapLibreMap = mapView2.maplibreMap;
        if (mapLibreMap == null) {
            mapView2.mapCallback.onMapReadyCallbackList.add(onMapReadyCallback);
        } else {
            onMapReadyCallback.onMapReady(mapLibreMap);
        }
        getViewModel().nearbyPagesLiveData.observe(getViewLifecycleOwner(), new SingleLiveData$sam$androidx_lifecycle_Observer$0(new MainActivity$$ExternalSyntheticLambda1(21, this), 6));
    }

    public final void setMagnifiedSymbol(Symbol symbol) {
        Symbol symbol2 = this.magnifiedMarker;
        if (symbol2 != null) {
            symbol2.jsonObject.addProperty("symbol-sort-key", Float.valueOf(RecyclerView.DECELERATION_RATE));
        }
        this.magnifiedMarker = symbol;
        if (symbol != null) {
            symbol.jsonObject.addProperty("icon-size", Float.valueOf(1.75f));
        }
        Symbol symbol3 = this.magnifiedMarker;
        if (symbol3 != null) {
            symbol3.jsonObject.addProperty("symbol-sort-key", Float.valueOf(1.0f));
        }
    }

    public final void showLinkPreview(PageTitle pageTitle, Location location) {
        Location location2;
        LocationComponent locationComponent;
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String m = ViewSizeResolver$CC.m();
        Prefs prefs = Prefs.INSTANCE;
        EventPlatformClient.submit(new AppInteractionEvent("impression", "detail_view", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
        HistoryEntry historyEntry = new HistoryEntry(9, pageTitle);
        updateSearchText(pageTitle.getDisplayText());
        FragmentManagerImpl childFragmentManager = getChildFragmentManager();
        childFragmentManager.getClass();
        MapLibreMap mapLibreMap = this.mapboxMap;
        if (mapLibreMap == null || (locationComponent = mapLibreMap.locationComponent) == null || !locationComponent.isComponentInitialized) {
            location2 = null;
        } else {
            locationComponent.checkActivationState();
            location2 = locationComponent.lastLocation;
        }
        LinkPreviewDialog linkPreviewDialog = new LinkPreviewDialog();
        linkPreviewDialog.setArguments(UStringsKt.bundleOf(new kotlin.Pair("entry", historyEntry), new kotlin.Pair("location", location), new kotlin.Pair("lastKnownLocation", location2)));
        Okio__OkioKt.show(childFragmentManager, linkPreviewDialog);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x03db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void startLocationTracking() {
        /*
            Method dump skipped, instructions count: 1127
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.places.PlacesFragment.startLocationTracking():void");
    }

    public final void updateSearchText(String str) {
        int length = str.length();
        FragmentPlacesBinding fragmentPlacesBinding = this._binding;
        if (length != 0) {
            fragmentPlacesBinding.getClass();
            ((ImageView) fragmentPlacesBinding.searchCloseBtn).setVisibility(0);
            FragmentPlacesBinding fragmentPlacesBinding2 = this._binding;
            fragmentPlacesBinding2.getClass();
            TextView textView = fragmentPlacesBinding2.searchTextView;
            StringUtil stringUtil = StringUtil.INSTANCE;
            textView.setText(StringUtil.fromHtml(str));
            return;
        }
        fragmentPlacesBinding.getClass();
        fragmentPlacesBinding.searchTextView.setText(getString(R.string.places_search_hint));
        FragmentPlacesBinding fragmentPlacesBinding3 = this._binding;
        fragmentPlacesBinding3.getClass();
        ((ImageView) fragmentPlacesBinding3.searchCloseBtn).setVisibility(8);
        Symbol symbol = this.magnifiedMarker;
        if (symbol != null) {
            symbol.jsonObject.addProperty("icon-size", Float.valueOf(1.0f));
            SymbolManager symbolManager = this.symbolManager;
            if (symbolManager != null) {
                symbolManager.update(symbol);
            }
        }
        getViewModel().highlightedPageTitle = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x001d, code lost:
    
        if (((android.widget.ScrollView) r0.listEmptyContainer).getVisibility() == 0) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateToggleViews(boolean r9) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.places.PlacesFragment.updateToggleViews(boolean):void");
    }
}
