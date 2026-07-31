package org.wikipedia.yearinreview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Trace;
import android.util.TypedValue;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.collection.MutableScatterSet;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.lazy.LazyListIntervalContent$$ExternalSyntheticLambda2;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridInterval;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridIntervalContent;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridScope$items$1;
import androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridItemSpan;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.material3.internal.TextFieldImplKt$$ExternalSyntheticLambda9;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.TransparentObserverMutableSnapshot;
import androidx.compose.runtime.snapshots.TransparentObserverSnapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawResult;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda28;
import coil3.SingletonImageLoader;
import coil3.request.ImageRequest;
import coil3.request.ImageRequestsKt;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.timepicker.TimePickerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http.StatusLine;
import okio.Okio__OkioKt;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.maplibre.android.camera.CameraUpdate;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.geometry.LatLngBounds;
import org.maplibre.android.gestures.MoveGestureDetector;
import org.maplibre.android.maps.MapLibreMap;
import org.maplibre.android.maps.MapView;
import org.maplibre.android.maps.OnMapReadyCallback;
import org.maplibre.android.maps.Style;
import org.maplibre.android.maps.Transform;
import org.maplibre.android.maps.UiSettings;
import org.maplibre.android.plugins.annotation.DraggableAnnotationController$AnnotationMoveGestureListener;
import org.maplibre.android.plugins.annotation.Symbol;
import org.maplibre.android.plugins.annotation.SymbolElementProvider;
import org.maplibre.android.plugins.annotation.SymbolManager;
import org.maplibre.android.style.layers.LayoutPropertyValue;
import org.maplibre.geojson.Point;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.NearbyPage;
import org.wikipedia.feed.personalization.interest.ArticlesState;
import org.wikipedia.feed.personalization.interest.InterestSelectionScreenKt;
import org.wikipedia.feed.personalization.interest.InterestSelectionScreenKt$$ExternalSyntheticLambda15;
import org.wikipedia.history.db.HistoryEntryWithImage;
import org.wikipedia.language.LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;
import org.wikipedia.page.PageTitle;
import org.wikipedia.places.PlacesFragment;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda2;
import org.wikipedia.settings.Prefs;
import org.wikipedia.views.imageservice.DimImageTransformation;
import org.wikipedia.watchlist.WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class YearInReviewGeoSlideKt$$ExternalSyntheticLambda10 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ Object f$8;

    public /* synthetic */ YearInReviewGeoSlideKt$$ExternalSyntheticLambda10(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
        this.f$5 = obj6;
        this.f$6 = obj7;
        this.f$7 = obj8;
        this.f$8 = obj9;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i;
        Unit unit;
        int i2;
        Snapshot transparentObserverSnapshot;
        Recomposer recomposer;
        char c;
        long j;
        int i3 = 8;
        boolean z = true;
        char c2 = 1;
        switch (this.$r8$classId) {
            case 0:
                final Bitmap bitmap = (Bitmap) this.f$0;
                final Context context = (Context) this.f$1;
                final MapView mapView = (MapView) this.f$2;
                final YearInReviewScreenData.GeoScreen geoScreen = (YearInReviewScreenData.GeoScreen) this.f$3;
                final Rect rect = (Rect) this.f$4;
                final Paint paint = (Paint) this.f$5;
                final Paint paint2 = (Paint) this.f$6;
                final Paint paint3 = (Paint) this.f$7;
                final Function2 function2 = (Function2) this.f$8;
                MapView mapView2 = (MapView) obj;
                mapView2.getClass();
                OnMapReadyCallback onMapReadyCallback = new OnMapReadyCallback() { // from class: org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda1
                    @Override // org.maplibre.android.maps.OnMapReadyCallback
                    public final void onMapReady(final MapLibreMap mapLibreMap) {
                        mapLibreMap.getClass();
                        Style.Builder builder = new Style.Builder();
                        String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        builder.styleUri = Jsoup.getInstance().currentTheme.isDark() ? "asset://mapstyle-dark.json" : "asset://mapstyle.json";
                        final Bitmap bitmap2 = bitmap;
                        final Context context2 = context;
                        final MapView mapView3 = mapView;
                        final YearInReviewScreenData.GeoScreen geoScreen2 = geoScreen;
                        final Rect rect2 = rect;
                        final Paint paint4 = paint;
                        final Paint paint5 = paint2;
                        final Paint paint6 = paint3;
                        final Function2 function22 = function2;
                        mapLibreMap.setStyle(builder, new Style.OnStyleLoaded() { // from class: org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda2
                            @Override // org.maplibre.android.maps.Style.OnStyleLoaded
                            public final void onStyleLoaded(Style style) {
                                String str;
                                Pair pair;
                                MapView mapView4;
                                style.getClass();
                                String str2 = "markerDrawable";
                                style.addImage("markerDrawable", bitmap2);
                                MapLibreMap mapLibreMap2 = mapLibreMap;
                                mapLibreMap2.transform.setMaxZoom(20.0d);
                                UiSettings uiSettings = mapLibreMap2.uiSettings;
                                byte b = 0;
                                uiSettings.setLogoEnabled(false);
                                int roundedDpToPx = Okio__OkioKt.roundedDpToPx(16.0f);
                                ImageView imageView = uiSettings.attributionsView;
                                if (imageView != null) {
                                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView.getLayoutParams();
                                    layoutParams.gravity = 8388691;
                                    imageView.setLayoutParams(layoutParams);
                                }
                                final Context context3 = context2;
                                TypedValue m = ViewSizeResolver$CC.m(context3);
                                if (!context3.getTheme().resolveAttribute(R.attr.placeholder_color, m, true)) {
                                    m = null;
                                }
                                if (m == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969851");
                                    return;
                                }
                                uiSettings.setAttributionTintColor(m.data);
                                uiSettings.setAttributionMargins(roundedDpToPx, 0, 0, roundedDpToPx);
                                uiSettings.zoomGesturesEnabled = false;
                                uiSettings.scrollGesturesEnabled = false;
                                uiSettings.rotateGesturesEnabled = false;
                                uiSettings.tiltGesturesEnabled = false;
                                uiSettings.doubleTapGesturesEnabled = false;
                                uiSettings.quickZoomGesturesEnabled = false;
                                SymbolElementProvider symbolElementProvider = new SymbolElementProvider();
                                DefaultSocket defaultSocket = DefaultSocket.INSTANCE;
                                MapView mapView5 = mapView3;
                                if (defaultSocket == null || ((MapView) defaultSocket.socket) != mapView5 || ((MapLibreMap) defaultSocket.closeBits) != mapLibreMap2) {
                                    FragmentNewsBinding fragmentNewsBinding = new FragmentNewsBinding(mapView5.getContext(), false);
                                    mapView5.getScrollX();
                                    mapView5.getScrollY();
                                    mapView5.getMeasuredWidth();
                                    mapView5.getMeasuredHeight();
                                    defaultSocket = new DefaultSocket(7);
                                    defaultSocket.source = new LinkedList();
                                    defaultSocket.sink = new HashMap();
                                    defaultSocket.socket = mapView5;
                                    defaultSocket.closeBits = mapLibreMap2;
                                    ((MoveGestureDetector) fragmentNewsBinding.toolbarContainer).listener = new DraggableAnnotationController$AnnotationMoveGestureListener(defaultSocket);
                                    mapView5.setOnTouchListener(new TimePickerView.AnonymousClass3(defaultSocket, fragmentNewsBinding));
                                    DefaultSocket.INSTANCE = defaultSocket;
                                }
                                final SymbolManager symbolManager = new SymbolManager(mapView5, mapLibreMap2, style, symbolElementProvider, defaultSocket, null);
                                Boolean bool = Boolean.TRUE;
                                LayoutPropertyValue layoutPropertyValue = new LayoutPropertyValue("icon-allow-overlap", bool);
                                HashMap hashMap = symbolManager.constantPropertyUsageMap;
                                hashMap.put("icon-allow-overlap", layoutPropertyValue);
                                symbolManager.layer.setProperties(layoutPropertyValue);
                                LayoutPropertyValue layoutPropertyValue2 = new LayoutPropertyValue("text-allow-overlap", bool);
                                hashMap.put("text-allow-overlap", layoutPropertyValue2);
                                symbolManager.layer.setProperties(layoutPropertyValue2);
                                YearInReviewScreenData.GeoScreen geoScreen3 = geoScreen2;
                                List<HistoryEntryWithImage> list = geoScreen3.pagesWithCoordinates;
                                Pair pair2 = geoScreen3.largestClusterBottomRight;
                                Pair pair3 = geoScreen3.largestClusterTopLeft;
                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                                for (HistoryEntryWithImage historyEntryWithImage : list) {
                                    String str3 = historyEntryWithImage.namespace;
                                    String str4 = historyEntryWithImage.apiTitle;
                                    String str5 = historyEntryWithImage.imageName;
                                    WikiSite.Companion companion = WikiSite.Companion;
                                    byte b2 = b;
                                    String str6 = historyEntryWithImage.lang;
                                    companion.getClass();
                                    PageTitle pageTitle = new PageTitle(str3, str4, str5, WikiSite.Companion.forLanguageCode(str6));
                                    Double d = historyEntryWithImage.geoLat;
                                    double d2 = 0.0d;
                                    double doubleValue = d != null ? d.doubleValue() : 0.0d;
                                    Double d3 = historyEntryWithImage.geoLon;
                                    if (d3 != null) {
                                        d2 = d3.doubleValue();
                                    }
                                    arrayList.add(new NearbyPage(0, pageTitle, doubleValue, d2));
                                    b = b2;
                                }
                                byte b3 = b;
                                Iterator it = CollectionsKt.take(arrayList, 32).iterator();
                                while (it.hasNext()) {
                                    final NearbyPage nearbyPage = (NearbyPage) it.next();
                                    MultipartBody.Builder builder2 = new MultipartBody.Builder();
                                    Iterator it2 = it;
                                    final MapView mapView6 = mapView5;
                                    LatLng latLng = new LatLng(nearbyPage.latitude, nearbyPage.longitude);
                                    builder2.boundary = Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude());
                                    builder2.parts = PlacesFragment.MARKER_FONT_STACK;
                                    builder2.type = str2;
                                    Symbol create = symbolManager.create(builder2);
                                    nearbyPage.annotation = create;
                                    symbolManager.update(create);
                                    final String str7 = nearbyPage.pageTitle.thumbUrl;
                                    Prefs prefs = Prefs.INSTANCE;
                                    if (!Prefs.isImageDownloadEnabled() || str7 == null || str7.length() == 0) {
                                        str = str2;
                                        pair = pair2;
                                        mapView4 = mapView6;
                                    } else {
                                        pair = pair2;
                                        final Rect rect3 = rect2;
                                        final Paint paint7 = paint4;
                                        final Paint paint8 = paint5;
                                        final Paint paint9 = paint6;
                                        str = str2;
                                        final MapLibreMap mapLibreMap3 = mapLibreMap2;
                                        Function1 function1 = new Function1() { // from class: org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda3
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj2) {
                                                Bitmap bitmap3 = (Bitmap) obj2;
                                                bitmap3.getClass();
                                                boolean isAttachedToWindow = MapView.this.isAttachedToWindow();
                                                Unit unit2 = Unit.INSTANCE;
                                                if (isAttachedToWindow) {
                                                    String[] strArr2 = PlacesFragment.CLUSTER_FONT_STACK;
                                                    Bitmap markerBitmap = Jsoup.getMarkerBitmap(bitmap3, rect3, paint7, paint8, paint9);
                                                    Style style2 = mapLibreMap3.getStyle();
                                                    String str8 = str7;
                                                    if (style2 != null) {
                                                        Resources resources = context3.getResources();
                                                        resources.getClass();
                                                        Bitmap bitmapFromDrawable = HttpUrl.Companion.getBitmapFromDrawable(new BitmapDrawable(resources, markerBitmap));
                                                        if (bitmapFromDrawable == null) {
                                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Provided drawable couldn't be converted to a Bitmap.");
                                                            return null;
                                                        }
                                                        style2.addImage(str8, bitmapFromDrawable);
                                                    }
                                                    Symbol symbol = nearbyPage.annotation;
                                                    if (symbol != null) {
                                                        symbol.jsonObject.addProperty("icon-image", str8);
                                                        symbolManager.update(symbol);
                                                    }
                                                }
                                                return unit2;
                                            }
                                        };
                                        mapView4 = mapView6;
                                        mapLibreMap2 = mapLibreMap3;
                                        if (Okio__OkioKt._implementation == null) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("ImageService has not been set, call ImageService.setImplementation() before using ImageService");
                                            return;
                                        }
                                        ImageRequest.Builder builder3 = new ImageRequest.Builder(context3);
                                        builder3.data = str7;
                                        DimImageTransformation[] dimImageTransformationArr = new DimImageTransformation[1];
                                        dimImageTransformationArr[b3] = new DimImageTransformation(2);
                                        ImageRequestsKt.transformations(builder3, dimImageTransformationArr);
                                        builder3.target = new DrawResult(function1);
                                        SingletonImageLoader.get(context3).enqueue(builder3.build());
                                    }
                                    mapView5 = mapView4;
                                    str2 = str;
                                    pair2 = pair;
                                    it = it2;
                                }
                                Pair pair4 = pair2;
                                ((CopyOnWriteArrayList) mapView5.mapChangeReceiver.onDidFinishRenderingMapListenerList).add(new YearInReviewGeoSlideKt$$ExternalSyntheticLambda4(mapLibreMap2, function22));
                                Headers.Builder builder4 = new Headers.Builder(6, b3);
                                ArrayList arrayList2 = builder4.namesAndValues;
                                arrayList2.add(new LatLng(((Number) pair3.first).doubleValue(), ((Number) pair3.second).doubleValue()));
                                arrayList2.add(new LatLng(((Number) pair4.first).doubleValue(), ((Number) pair4.second).doubleValue()));
                                LatLngBounds build = builder4.build();
                                int roundedDpToPx2 = Okio__OkioKt.roundedDpToPx(16.0f);
                                CameraUpdate cameraUpdate = new CameraUpdate(build, roundedDpToPx2, roundedDpToPx2, roundedDpToPx2, roundedDpToPx2) { // from class: org.maplibre.android.camera.CameraUpdateFactory$CameraBoundsUpdate
                                    public final LatLngBounds bounds;
                                    public final int[] padding;

                                    {
                                        this.bounds = build;
                                        this.padding = new int[]{roundedDpToPx2, roundedDpToPx2, roundedDpToPx2, roundedDpToPx2};
                                    }

                                    public final boolean equals(Object obj2) {
                                        if (this == obj2) {
                                            return true;
                                        }
                                        if (obj2 == null || !CameraUpdateFactory$CameraBoundsUpdate.class.equals(obj2.getClass())) {
                                            return false;
                                        }
                                        CameraUpdateFactory$CameraBoundsUpdate cameraUpdateFactory$CameraBoundsUpdate = (CameraUpdateFactory$CameraBoundsUpdate) obj2;
                                        if (this.bounds.equals(cameraUpdateFactory$CameraBoundsUpdate.bounds)) {
                                            return Arrays.equals(this.padding, cameraUpdateFactory$CameraBoundsUpdate.padding);
                                        }
                                        return false;
                                    }

                                    @Override // org.maplibre.android.camera.CameraUpdate
                                    public final CameraPosition getCameraPosition(MapLibreMap mapLibreMap4) {
                                        mapLibreMap4.getClass();
                                        Transform transform = mapLibreMap4.transform;
                                        return mapLibreMap4.getCameraForLatLngBounds(this.bounds, this.padding, transform.getRawBearing(), transform.getTilt());
                                    }

                                    public final int hashCode() {
                                        return Arrays.hashCode(this.padding) + (this.bounds.hashCode() * 31);
                                    }

                                    public final String toString() {
                                        String arrays = Arrays.toString(this.padding);
                                        arrays.getClass();
                                        return "CameraBoundsUpdate{bounds=" + this.bounds + ", padding=" + arrays + "}";
                                    }
                                };
                                mapLibreMap2.notifyDeveloperAnimationListeners();
                                mapLibreMap2.transform.moveCamera(mapLibreMap2, cameraUpdate, null);
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
                return Unit.INSTANCE;
            case 1:
                Unit unit2 = Unit.INSTANCE;
                Recomposer recomposer2 = (Recomposer) this.f$0;
                MutableScatterSet mutableScatterSet = (MutableScatterSet) this.f$1;
                MutableScatterSet mutableScatterSet2 = (MutableScatterSet) this.f$2;
                List list = (List) this.f$3;
                List list2 = (List) this.f$4;
                MutableScatterSet mutableScatterSet3 = (MutableScatterSet) this.f$5;
                List list3 = (List) this.f$6;
                MutableScatterSet mutableScatterSet4 = (MutableScatterSet) this.f$7;
                Set set = (Set) this.f$8;
                long longValue = ((Long) obj).longValue();
                StateFlowImpl stateFlowImpl = Recomposer._runningRecomposers;
                if (recomposer2.getHasBroadcastFrameClockAwaiters()) {
                    Trace.beginSection("Recomposer:animation");
                    try {
                        i = 8;
                        ((Request.Builder) recomposer2.broadcastFrameClock.queue).flushAndDispatchAwaiters(new WorkSpecDao_Impl$$ExternalSyntheticLambda28(longValue, 3));
                        SnapshotId_jvmKt.sendApplyNotifications();
                    } finally {
                    }
                } else {
                    i = 8;
                }
                Trace.beginSection("Recomposer:recompose");
                try {
                    recomposer2.recordComposerModifications();
                    synchronized (recomposer2.stateLock) {
                        try {
                            MutableVector mutableVector = recomposer2.compositionInvalidations;
                            Object[] objArr = mutableVector.content;
                            int i4 = mutableVector.size;
                            for (int i5 = 0; i5 < i4; i5++) {
                                list.add((CompositionImpl) objArr[i5]);
                            }
                            recomposer2.compositionInvalidations.clear();
                        } finally {
                        }
                    }
                    mutableScatterSet.clear();
                    while (true) {
                        if (list.isEmpty() && list2.isEmpty()) {
                            Snapshot currentSnapshot = SnapshotKt.currentSnapshot();
                            if (currentSnapshot instanceof MutableSnapshot) {
                                transparentObserverSnapshot = new TransparentObserverMutableSnapshot((MutableSnapshot) currentSnapshot, null, null, true, false);
                                i2 = 0;
                            } else {
                                i2 = 0;
                                transparentObserverSnapshot = new TransparentObserverSnapshot(currentSnapshot, null, z, false);
                            }
                            try {
                                Snapshot makeCurrent = transparentObserverSnapshot.makeCurrent();
                                try {
                                    if (!list3.isEmpty()) {
                                        recomposer2.changeCount++;
                                        try {
                                            int size = list3.size();
                                            for (int i6 = i2; i6 < size; i6++) {
                                                mutableScatterSet4.add((CompositionImpl) list3.get(i6));
                                            }
                                            int size2 = list3.size();
                                            for (int i7 = i2; i7 < size2; i7++) {
                                                ((CompositionImpl) list3.get(i7)).applyChanges();
                                            }
                                        } catch (Throwable th) {
                                            try {
                                                recomposer2.processCompositionError(th, null);
                                                Recomposer$runRecomposeAndApplyChanges$2.invokeSuspend$clearRecompositionState(recomposer2, list, list2, list3, mutableScatterSet3, mutableScatterSet4, mutableScatterSet, mutableScatterSet2);
                                                transparentObserverSnapshot.dispose();
                                                Trace.endSection();
                                                return unit2;
                                            } finally {
                                            }
                                        }
                                    }
                                    if (mutableScatterSet3.isNotEmpty()) {
                                        try {
                                            mutableScatterSet4.plusAssign(mutableScatterSet3);
                                            Object[] objArr2 = mutableScatterSet3.elements;
                                            long[] jArr = mutableScatterSet3.metadata;
                                            int length = jArr.length - 2;
                                            if (length >= 0) {
                                                recomposer = recomposer2;
                                                c = 7;
                                                int i8 = 0;
                                                j = 128;
                                                while (true) {
                                                    try {
                                                        long j2 = jArr[i8];
                                                        Object[] objArr3 = objArr2;
                                                        unit = unit2;
                                                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                            int i9 = 8 - ((~(i8 - length)) >>> 31);
                                                            for (int i10 = 0; i10 < i9; i10++) {
                                                                if ((j2 & 255) < 128) {
                                                                    try {
                                                                        ((CompositionImpl) objArr3[(i8 << 3) + i10]).applyLateChanges();
                                                                    } catch (Throwable th2) {
                                                                        th = th2;
                                                                        recomposer2 = recomposer;
                                                                        try {
                                                                            recomposer2.processCompositionError(th, null);
                                                                            Recomposer$runRecomposeAndApplyChanges$2.invokeSuspend$clearRecompositionState(recomposer2, list, list2, list3, mutableScatterSet3, mutableScatterSet4, mutableScatterSet, mutableScatterSet2);
                                                                            transparentObserverSnapshot.dispose();
                                                                            return unit;
                                                                        } finally {
                                                                        }
                                                                    }
                                                                }
                                                                j2 >>= i;
                                                            }
                                                            if (i9 != i) {
                                                            }
                                                        }
                                                        long[] jArr2 = jArr;
                                                        if (i8 != length) {
                                                            i8++;
                                                            jArr = jArr2;
                                                            unit2 = unit;
                                                            objArr2 = objArr3;
                                                            i = 8;
                                                        }
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                        unit = unit2;
                                                    }
                                                }
                                            } else {
                                                unit = unit2;
                                                recomposer = recomposer2;
                                                c = 7;
                                                j = 128;
                                            }
                                            recomposer2 = recomposer;
                                        } catch (Throwable th4) {
                                            th = th4;
                                            unit = unit2;
                                        }
                                    } else {
                                        unit = unit2;
                                        c = 7;
                                        j = 128;
                                    }
                                    if (mutableScatterSet4.isNotEmpty()) {
                                        try {
                                            Object[] objArr4 = mutableScatterSet4.elements;
                                            long[] jArr3 = mutableScatterSet4.metadata;
                                            int length2 = jArr3.length - 2;
                                            if (length2 >= 0) {
                                                int i11 = 0;
                                                while (true) {
                                                    long j3 = jArr3[i11];
                                                    Object[] objArr5 = objArr4;
                                                    long[] jArr4 = jArr3;
                                                    if ((((~j3) << c) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                        int i12 = 8 - ((~(i11 - length2)) >>> 31);
                                                        for (int i13 = 0; i13 < i12; i13++) {
                                                            if ((j3 & 255) < j) {
                                                                ((CompositionImpl) objArr5[(i11 << 3) + i13]).changesApplied();
                                                            }
                                                            j3 >>= 8;
                                                        }
                                                        if (i12 != 8) {
                                                        }
                                                    }
                                                    if (i11 != length2) {
                                                        i11++;
                                                        objArr4 = objArr5;
                                                        jArr3 = jArr4;
                                                    }
                                                }
                                            }
                                        } catch (Throwable th5) {
                                            try {
                                                recomposer2.processCompositionError(th5, null);
                                                Recomposer$runRecomposeAndApplyChanges$2.invokeSuspend$clearRecompositionState(recomposer2, list, list2, list3, mutableScatterSet3, mutableScatterSet4, mutableScatterSet, mutableScatterSet2);
                                                mutableScatterSet4.clear();
                                                Snapshot.restoreCurrent(makeCurrent);
                                                transparentObserverSnapshot.dispose();
                                                return unit;
                                            } finally {
                                            }
                                        }
                                    }
                                    transparentObserverSnapshot.dispose();
                                    synchronized (recomposer2.stateLock) {
                                        if (recomposer2.deriveStateLocked() != null) {
                                            ComposerKt.composeImmediateRuntimeError("unexpected to get continuation here");
                                        }
                                    }
                                    SnapshotKt.currentSnapshot().notifyObjectsInitialized$runtime();
                                    mutableScatterSet2.clear();
                                    mutableScatterSet.clear();
                                    recomposer2.compositionsRemoved = null;
                                    return unit;
                                } finally {
                                    Snapshot.restoreCurrent(makeCurrent);
                                }
                            } catch (Throwable th6) {
                                transparentObserverSnapshot.dispose();
                                throw th6;
                            }
                        }
                        int i14 = i;
                        unit = unit2;
                        try {
                            int size3 = list.size();
                            for (int i15 = 0; i15 < size3; i15++) {
                                CompositionImpl compositionImpl = (CompositionImpl) list.get(i15);
                                CompositionImpl performRecompose = recomposer2.performRecompose(compositionImpl, mutableScatterSet);
                                if (performRecompose != null) {
                                    list3.add(performRecompose);
                                }
                                mutableScatterSet2.add(compositionImpl);
                            }
                            list.clear();
                            if (mutableScatterSet.isNotEmpty() || recomposer2.compositionInvalidations.size != 0) {
                                synchronized (recomposer2.stateLock) {
                                    try {
                                        List knownCompositionsLocked = recomposer2.knownCompositionsLocked();
                                        int size4 = knownCompositionsLocked.size();
                                        for (int i16 = 0; i16 < size4; i16++) {
                                            CompositionImpl compositionImpl2 = (CompositionImpl) knownCompositionsLocked.get(i16);
                                            if (!mutableScatterSet2.contains(compositionImpl2) && compositionImpl2.observesAnyOf(set)) {
                                                list.add(compositionImpl2);
                                            }
                                        }
                                        MutableVector mutableVector2 = recomposer2.compositionInvalidations;
                                        int i17 = mutableVector2.size;
                                        int i18 = 0;
                                        int i19 = 0;
                                        while (true) {
                                            Object[] objArr6 = mutableVector2.content;
                                            if (i18 < i17) {
                                                CompositionImpl compositionImpl3 = (CompositionImpl) objArr6[i18];
                                                if (!mutableScatterSet2.contains(compositionImpl3) && !list.contains(compositionImpl3)) {
                                                    list.add(compositionImpl3);
                                                    i19++;
                                                } else if (i19 > 0) {
                                                    Object[] objArr7 = mutableVector2.content;
                                                    objArr7[i18 - i19] = objArr7[i18];
                                                }
                                                i18++;
                                            } else {
                                                int i20 = i17 - i19;
                                                Arrays.fill(objArr6, i20, i17, (Object) null);
                                                mutableVector2.size = i20;
                                            }
                                        }
                                    } finally {
                                    }
                                }
                            }
                            if (list.isEmpty()) {
                                try {
                                    Recomposer$runRecomposeAndApplyChanges$2.invokeSuspend$fillToInsert(list2, recomposer2);
                                    while (!list2.isEmpty()) {
                                        List performInsertValues = recomposer2.performInsertValues(list2, mutableScatterSet);
                                        mutableScatterSet3.getClass();
                                        Iterator it = performInsertValues.iterator();
                                        while (it.hasNext()) {
                                            mutableScatterSet3.plusAssign(it.next());
                                        }
                                        Recomposer$runRecomposeAndApplyChanges$2.invokeSuspend$fillToInsert(list2, recomposer2);
                                    }
                                } catch (Throwable th7) {
                                    recomposer2.processCompositionError(th7, null);
                                    Recomposer$runRecomposeAndApplyChanges$2.invokeSuspend$clearRecompositionState(recomposer2, list, list2, list3, mutableScatterSet3, mutableScatterSet4, mutableScatterSet, mutableScatterSet2);
                                }
                            }
                            i = i14;
                            unit2 = unit;
                            z = true;
                        } catch (Throwable th8) {
                            try {
                                recomposer2.processCompositionError(th8, null);
                                Recomposer$runRecomposeAndApplyChanges$2.invokeSuspend$clearRecompositionState(recomposer2, list, list2, list3, mutableScatterSet3, mutableScatterSet4, mutableScatterSet, mutableScatterSet2);
                                list.clear();
                            } finally {
                            }
                        }
                    }
                } finally {
                }
                break;
            default:
                ArticlesState articlesState = (ArticlesState) this.f$0;
                Function0 function0 = (Function0) this.f$1;
                ArrayList arrayList = (ArrayList) this.f$2;
                String str = (String) this.f$3;
                Function1 function1 = (Function1) this.f$4;
                Modifier modifier = (Modifier) this.f$5;
                Function0 function02 = (Function0) this.f$6;
                InfiniteTransition infiniteTransition = (InfiniteTransition) this.f$7;
                Function1 function12 = (Function1) this.f$8;
                LazyStaggeredGridIntervalContent lazyStaggeredGridIntervalContent = (LazyStaggeredGridIntervalContent) obj;
                lazyStaggeredGridIntervalContent.getClass();
                StatusLine statusLine = lazyStaggeredGridIntervalContent.intervals;
                lazyStaggeredGridIntervalContent.intervals.addInterval(1, new LazyStaggeredGridInterval(null, new BasicTextKt$$ExternalSyntheticLambda3(12), new AppBarKt$$ExternalSyntheticLambda11(16, StaggeredGridItemSpan.FullLine), new ComposableLambdaImpl(new LazyListIntervalContent$$ExternalSyntheticLambda2(new ComposableLambdaImpl(new TextFieldImplKt$$ExternalSyntheticLambda9(c2 == true ? 1 : 0, function0), true, 1384178316), 1), true, 1062451479)));
                lazyStaggeredGridIntervalContent.intervals.addInterval(1, new LazyStaggeredGridInterval(null, new BasicTextKt$$ExternalSyntheticLambda3(12), new AppBarKt$$ExternalSyntheticLambda11(16, StaggeredGridItemSpan.FullLine), new ComposableLambdaImpl(new LazyListIntervalContent$$ExternalSyntheticLambda2(new ComposableLambdaImpl(new AboutActivityKt$$ExternalSyntheticLambda2((List) arrayList, str, function1, i3), true, 36363701), 1), true, 1062451479)));
                if (articlesState instanceof ArticlesState.Error) {
                    lazyStaggeredGridIntervalContent.intervals.addInterval(1, new LazyStaggeredGridInterval(null, new BasicTextKt$$ExternalSyntheticLambda3(12), new AppBarKt$$ExternalSyntheticLambda11(16, StaggeredGridItemSpan.FullLine), new ComposableLambdaImpl(new LazyListIntervalContent$$ExternalSyntheticLambda2(new ComposableLambdaImpl(new AboutActivityKt$$ExternalSyntheticLambda2(modifier, articlesState, function02, 9), true, -829797356), 1), true, 1062451479)));
                } else if (articlesState.equals(ArticlesState.Loading.INSTANCE)) {
                    statusLine.addInterval(10, new LazyStaggeredGridInterval(null, LazyStaggeredGridScope$items$1.INSTANCE, null, new ComposableLambdaImpl(new InterestSelectionScreenKt$$ExternalSyntheticLambda15(infiniteTransition, 0), true, -1754260028)));
                } else {
                    if (!(articlesState instanceof ArticlesState.Success)) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    List list4 = ((ArticlesState.Success) articlesState).articles;
                    statusLine.addInterval(list4.size(), new LazyStaggeredGridInterval(null, new LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3(list4, 2), null, new ComposableLambdaImpl(new WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4(list4, articlesState, function12, 1), true, -334987442)));
                    lazyStaggeredGridIntervalContent.intervals.addInterval(1, new LazyStaggeredGridInterval(null, new BasicTextKt$$ExternalSyntheticLambda3(12), new AppBarKt$$ExternalSyntheticLambda11(16, StaggeredGridItemSpan.FullLine), new ComposableLambdaImpl(new LazyListIntervalContent$$ExternalSyntheticLambda2(InterestSelectionScreenKt.lambda$121763788, 1), true, 1062451479)));
                }
                return Unit.INSTANCE;
        }
    }
}
