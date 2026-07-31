package org.maplibre.android.maps;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.text.TextUtils;
import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;
import coil3.network.HttpException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.text.UStringsKt;
import org.maplibre.android.LibraryLoader;
import org.maplibre.android.annotations.Marker;
import org.maplibre.android.annotations.Polygon;
import org.maplibre.android.annotations.Polyline;
import org.maplibre.android.camera.CameraPosition;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.geometry.LatLngBounds;
import org.maplibre.android.geometry.ProjectedMeters;
import org.maplibre.android.log.Logger;
import org.maplibre.android.maps.MapView;
import org.maplibre.android.maps.renderer.MapRenderer;
import org.maplibre.android.storage.FileSource;
import org.maplibre.android.style.layers.Layer;
import org.maplibre.android.style.layers.TransitionOptions;
import org.maplibre.android.style.light.Light;
import org.maplibre.android.style.sources.Source;
import org.maplibre.android.tile.TileOperation;
import org.maplibre.geojson.Feature;
import org.maplibre.geojson.Geometry;
import org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda4;
import org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
final class NativeMapView implements NativeMap {
    public boolean destroyed;
    public double[] edgeInsets;
    public final FileSource fileSource;
    public final MapRenderer mapRenderer;
    private long nativePtr;
    public final float pixelRatio;
    public YearInReviewGeoSlideKt$$ExternalSyntheticLambda5 snapshotReadyCallback;
    public final MapChangeReceiver stateCallback;
    public final Thread thread;
    public MapView viewCallback;

    static {
        LibraryLoader.load();
    }

    public NativeMapView(Context context, MapLibreMapOptions mapLibreMapOptions, MapView mapView, MapChangeReceiver mapChangeReceiver, MapRenderer mapRenderer) {
        NativeMapOptions nativeMapOptions = new NativeMapOptions(mapLibreMapOptions);
        this.destroyed = false;
        this.nativePtr = 0L;
        this.mapRenderer = mapRenderer;
        this.viewCallback = mapView;
        FileSource fileSource = FileSource.getInstance(context);
        this.fileSource = fileSource;
        this.pixelRatio = nativeMapOptions.pixelRatio();
        this.thread = Thread.currentThread();
        this.stateCallback = mapChangeReceiver;
        nativeInitialize(this, fileSource, mapRenderer, nativeMapOptions);
    }

    private native void nativeAddAnnotationIcon(String str, int i, int i2, float f, byte[] bArr);

    private native void nativeAddImage(String str, Bitmap bitmap, float f, boolean z);

    private native void nativeAddImages(Image[] imageArr);

    private native void nativeAddLayer(long j, String str);

    private native void nativeAddLayerAbove(long j, String str);

    private native void nativeAddLayerAt(long j, int i);

    private native long[] nativeAddMarkers(Marker[] markerArr);

    private native long[] nativeAddPolygons(Polygon[] polygonArr);

    private native long[] nativeAddPolylines(Polyline[] polylineArr);

    private native void nativeAddSource(Source source, long j);

    private native void nativeCancelTransitions();

    private native void nativeClearActionJournalLog();

    private native void nativeDestroy();

    private native void nativeEaseTo(double d, double d2, double d3, long j, double d4, double d5, double[] dArr, boolean z);

    private native void nativeEnableRenderingStatsView(boolean z);

    private native void nativeFlyTo(double d, double d2, double d3, long j, double d4, double d5, double[] dArr);

    private native String[] nativeGetActionJournalLog();

    private native String[] nativeGetActionJournalLogFiles();

    private native double nativeGetBearing();

    private native CameraPosition nativeGetCameraForGeometry(Geometry geometry, double d, double d2, double d3, double d4, double d5, double d6);

    private native CameraPosition nativeGetCameraForLatLngBounds(LatLngBounds latLngBounds, double d, double d2, double d3, double d4, double d5, double d6);

    private native CameraPosition nativeGetCameraPosition();

    private native boolean nativeGetDebug();

    private native Bitmap nativeGetImage(String str);

    private native LatLng nativeGetLatLng();

    private native Layer nativeGetLayer(String str);

    private native Layer[] nativeGetLayers();

    private native Light nativeGetLight();

    private native double nativeGetMaxPitch();

    private native double nativeGetMaxZoom();

    private native double nativeGetMetersPerPixelAtLatitude(double d, double d2);

    private native double nativeGetMinPitch();

    private native double nativeGetMinZoom();

    private native double nativeGetPitch();

    private native boolean nativeGetPrefetchTiles();

    private native int nativeGetPrefetchZoomDelta();

    private native Source nativeGetSource(String str);

    private native Source[] nativeGetSources();

    private native String nativeGetStyleJson();

    private native String nativeGetStyleUrl();

    private native boolean nativeGetTileCacheEnabled();

    private native double nativeGetTileLodMinRadius();

    private native double nativeGetTileLodPitchThreshold();

    private native double nativeGetTileLodScale();

    private native double nativeGetTileLodZoomShift();

    private native double nativeGetTopOffsetPixelsForAnnotationSymbol(String str);

    private native long nativeGetTransitionDelay();

    private native long nativeGetTransitionDuration();

    private native TransitionOptions nativeGetTransitionOptions();

    private native void nativeGetVisibleCoordinateBounds(double[] dArr);

    private native double nativeGetZoom();

    private native void nativeInitialize(NativeMapView nativeMapView, FileSource fileSource, MapRenderer mapRenderer, NativeMapOptions nativeMapOptions);

    private native boolean nativeIsFullyLoaded();

    private native boolean nativeIsRenderingStatsViewEnabled();

    private native void nativeJumpTo(double d, double d2, double d3, double d4, double d5, double[] dArr);

    private native LatLng nativeLatLngForPixel(float f, float f2);

    private native LatLng nativeLatLngForProjectedMeters(double d, double d2);

    private native void nativeLatLngsForPixels(double[] dArr, double[] dArr2, float f);

    private native void nativeMoveBy(double d, double d2, long j);

    private native void nativeOnLowMemory();

    private native PointF nativePixelForLatLng(double d, double d2);

    private native void nativePixelsForLatLngs(double[] dArr, double[] dArr2, float f);

    private native ProjectedMeters nativeProjectedMetersForLatLng(double d, double d2);

    private native long[] nativeQueryPointAnnotations(RectF rectF);

    private native Feature[] nativeQueryRenderedFeaturesForBox(float f, float f2, float f3, float f4, String[] strArr, Object[] objArr);

    private native Feature[] nativeQueryRenderedFeaturesForPoint(float f, float f2, String[] strArr, Object[] objArr);

    private native long[] nativeQueryShapeAnnotations(RectF rectF);

    private native void nativeRemoveAnnotationIcon(String str);

    private native void nativeRemoveAnnotations(long[] jArr);

    private native void nativeRemoveImage(String str);

    private native boolean nativeRemoveLayer(long j);

    private native boolean nativeRemoveLayerAt(int i);

    private native boolean nativeRemoveSource(Source source, long j);

    private native void nativeResetNorth();

    private native void nativeResetPosition();

    private native void nativeResetZoom();

    private native void nativeResizeView(int i, int i2);

    private native void nativeRotateBy(double d, double d2, double d3, double d4, long j);

    private native void nativeSetBearing(double d, long j);

    private native void nativeSetBearingXY(double d, double d2, double d3, long j);

    private native void nativeSetDebug(boolean z);

    private native void nativeSetFrustumOffset(RectF rectF);

    private native void nativeSetGestureInProgress(boolean z);

    private native void nativeSetLatLng(double d, double d2, double[] dArr, long j);

    private native void nativeSetLatLngBounds(LatLngBounds latLngBounds);

    private native void nativeSetMaxPitch(double d);

    private native void nativeSetMaxZoom(double d);

    private native void nativeSetMinPitch(double d);

    private native void nativeSetMinZoom(double d);

    private native void nativeSetPitch(double d, long j);

    private native void nativeSetPrefetchTiles(boolean z);

    private native void nativeSetPrefetchZoomDelta(int i);

    private native void nativeSetReachability(boolean z);

    private native void nativeSetStyleJson(String str);

    private native void nativeSetStyleUrl(String str);

    private native void nativeSetTileCacheEnabled(boolean z);

    private native void nativeSetTileLodMinRadius(double d);

    private native void nativeSetTileLodPitchThreshold(double d);

    private native void nativeSetTileLodScale(double d);

    private native void nativeSetTileLodZoomShift(double d);

    private native void nativeSetTransitionDelay(long j);

    private native void nativeSetTransitionDuration(long j);

    private native void nativeSetTransitionOptions(TransitionOptions transitionOptions);

    private native void nativeSetVisibleCoordinateBounds(LatLng[] latLngArr, RectF rectF, double d, long j);

    private native void nativeSetZoom(double d, double d2, double d3, long j);

    private native void nativeTakeSnapshot();

    private native void nativeTriggerRepaint();

    private native void nativeUpdateMarker(long j, double d, double d2, String str);

    private native void nativeUpdatePolygon(long j, Polygon polygon);

    private native void nativeUpdatePolyline(long j, Polyline polyline);

    private void onCameraDidChange(boolean z) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onCameraDidChangeListenerList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    ((MapView.OnCameraDidChangeListener) it.next()).onCameraDidChange(z);
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onCameraDidChange", th);
                throw th;
            }
        }
    }

    private void onCameraIsChanging() {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onCameraIsChangingListenerList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    MapLibreMap mapLibreMap = MapView.this.maplibreMap;
                    if (mapLibreMap != null) {
                        mapLibreMap.onUpdateRegionChange();
                    }
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onCameraIsChanging", th);
                throw th;
            }
        }
    }

    private void onCameraWillChange(boolean z) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onCameraWillChangeListenerList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onCameraWillChange", th);
                throw th;
            }
        }
    }

    private boolean onCanRemoveUnusedStyleImage(String str) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver == null) {
            return true;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onCanRemoveUnusedStyleImageListenerList;
        if (copyOnWriteArrayList.isEmpty()) {
            return true;
        }
        try {
            if (copyOnWriteArrayList.isEmpty()) {
                return true;
            }
            Iterator it = copyOnWriteArrayList.iterator();
            if (!it.hasNext()) {
                return true;
            }
            if (it.next() == null) {
                throw null;
            }
            throw new ClassCastException();
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onCanRemoveUnusedStyleImage", th);
            throw th;
        }
    }

    private void onDidBecomeIdle() {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onDidBecomeIdleListenerList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onDidBecomeIdle", th);
                throw th;
            }
        }
    }

    private void onDidFailLoadingMap(String str) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onDidFailLoadingMapListenerList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    MapLibreMap mapLibreMap = MapView.this.maplibreMap;
                    if (mapLibreMap != null) {
                        mapLibreMap.styleLoadedCallback = null;
                    }
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onDidFailLoadingMap", th);
                throw th;
            }
        }
    }

    private void onDidFinishLoadingMap() {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onDidFinishLoadingMapListenerList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    MapLibreMap mapLibreMap = MapView.this.maplibreMap;
                    if (mapLibreMap != null) {
                        mapLibreMap.onUpdateRegionChange();
                    }
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onDidFinishLoadingMap", th);
                throw th;
            }
        }
    }

    private void onDidFinishLoadingStyle() {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onDidFinishLoadingStyleListenerList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    ((MapView.OnDidFinishLoadingStyleListener) it.next()).onDidFinishLoadingStyle();
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onDidFinishLoadingStyle", th);
                throw th;
            }
        }
    }

    private void onDidFinishRenderingFrame(boolean z, RenderingStats renderingStats) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onDidFinishRenderingFrameWithStatsList;
            CopyOnWriteArrayList copyOnWriteArrayList2 = (CopyOnWriteArrayList) mapChangeReceiver.onDidFinishRenderingFrameList;
            try {
                if (!copyOnWriteArrayList2.isEmpty()) {
                    Iterator it = copyOnWriteArrayList2.iterator();
                    if (it.hasNext()) {
                        if (it.next() != null) {
                            throw new ClassCastException();
                        }
                        double d = renderingStats.encodingTime;
                        throw null;
                    }
                }
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it2 = copyOnWriteArrayList.iterator();
                while (it2.hasNext()) {
                    ((MapView.OnDidFinishRenderingFrameWithStatsListener) it2.next()).onDidFinishRenderingFrame();
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onDidFinishRenderingFrame", th);
                throw th;
            }
        }
    }

    private void onDidFinishRenderingMap(boolean z) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onDidFinishRenderingMapListenerList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    YearInReviewGeoSlideKt$$ExternalSyntheticLambda4 yearInReviewGeoSlideKt$$ExternalSyntheticLambda4 = (YearInReviewGeoSlideKt$$ExternalSyntheticLambda4) it.next();
                    MapLibreMap mapLibreMap = yearInReviewGeoSlideKt$$ExternalSyntheticLambda4.f$0;
                    YearInReviewGeoSlideKt$$ExternalSyntheticLambda5 yearInReviewGeoSlideKt$$ExternalSyntheticLambda5 = new YearInReviewGeoSlideKt$$ExternalSyntheticLambda5(yearInReviewGeoSlideKt$$ExternalSyntheticLambda4.f$1);
                    if (mapLibreMap.started) {
                        NativeMapView nativeMapView = (NativeMapView) mapLibreMap.nativeMapView;
                        if (!nativeMapView.checkState("addSnapshotCallback")) {
                            nativeMapView.snapshotReadyCallback = yearInReviewGeoSlideKt$$ExternalSyntheticLambda5;
                            nativeMapView.nativeTakeSnapshot();
                        }
                    }
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onDidFinishRenderingMap", th);
                throw th;
            }
        }
    }

    private void onGlyphsError(String[] strArr, int i, int i2) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onGlyphsErrorList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onGlyphsError", th);
                throw th;
            }
        }
    }

    private void onGlyphsLoaded(String[] strArr, int i, int i2) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onGlyphsLoadedList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onGlyphsLoaded", th);
                throw th;
            }
        }
    }

    private void onGlyphsRequested(String[] strArr, int i, int i2) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onGlyphsRequestedList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onGlyphsRequested", th);
                throw th;
            }
        }
    }

    private void onPostCompileShader(int i, int i2, String str) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onPostCompileShaderList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onPostCompileShader", th);
                throw th;
            }
        }
    }

    private void onPreCompileShader(int i, int i2, String str) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onPreCompileShaderList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onPreCompileShader", th);
                throw th;
            }
        }
    }

    private void onShaderCompileFailed(int i, int i2, String str) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onShaderCompileFailedList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onShaderCompileFailed", th);
                throw th;
            }
        }
    }

    private void onSourceChanged(String str) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onSourceChangedListenerList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onSourceChanged", th);
                throw th;
            }
        }
    }

    private void onSpriteError(String str, String str2) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onSpriteErrorList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onSpriteError", th);
                throw th;
            }
        }
    }

    private void onSpriteLoaded(String str, String str2) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onSpriteLoadedList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onSpriteLoaded", th);
                throw th;
            }
        }
    }

    private void onSpriteRequested(String str, String str2) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onSpriteRequestedList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onSpriteRequested", th);
                throw th;
            }
        }
    }

    private void onStyleImageMissing(String str) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onStyleImageMissingListenerList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onStyleImageMissing", th);
                throw th;
            }
        }
    }

    private void onTileAction(TileOperation tileOperation, int i, int i2, int i3, int i4, int i5, String str) {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onTileActionList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onTileAction", th);
                throw th;
            }
        }
    }

    private void onWillStartLoadingMap() {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onWillStartLoadingMapListenerList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onWillStartLoadingMap", th);
                throw th;
            }
        }
    }

    private void onWillStartRenderingFrame() {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onWillStartRenderingFrameList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onWillStartRenderingFrame", th);
                throw th;
            }
        }
    }

    private void onWillStartRenderingMap() {
        MapChangeReceiver mapChangeReceiver = this.stateCallback;
        if (mapChangeReceiver != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) mapChangeReceiver.onWillStartRenderingMapListenerList;
            try {
                if (copyOnWriteArrayList.isEmpty()) {
                    return;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                Logger.e("Mbgl-MapChangeReceiver", "Exception in onWillStartRenderingMap", th);
                throw th;
            }
        }
    }

    public final void addImages(Image[] imageArr) {
        if (checkState("addImages")) {
            return;
        }
        nativeAddImages(imageArr);
    }

    public final void addLayer(Layer layer) {
        if (checkState("addLayer")) {
            return;
        }
        nativeAddLayer(layer.getNativePtr(), null);
    }

    public final void addLayerAbove(Layer layer, String str) {
        if (checkState("addLayerAbove")) {
            return;
        }
        nativeAddLayerAbove(layer.getNativePtr(), str);
    }

    public final void addLayerBelow(Layer layer, String str) {
        if (checkState("addLayerBelow")) {
            return;
        }
        nativeAddLayer(layer.getNativePtr(), str);
    }

    public final long addMarker(Marker marker) {
        if (checkState("addMarker")) {
            return 0L;
        }
        return nativeAddMarkers(new Marker[]{marker})[0];
    }

    public final void addSource(Source source) {
        if (checkState("addSource")) {
            return;
        }
        nativeAddSource(source, source.getNativePtr());
    }

    public final void cancelTransitions() {
        if (checkState("cancelTransitions")) {
            return;
        }
        nativeCancelTransitions();
    }

    public final boolean checkState(String str) {
        if (this.thread != Thread.currentThread()) {
            throw new HttpException(Animation.CC.m("Map interactions should happen on the UI thread. Method invoked from wrong thread is ", str, "."));
        }
        if (this.destroyed && !TextUtils.isEmpty(str)) {
            String str2 = "You're calling `" + str + "` after the `MapView` was destroyed, were you invoking it after `onDestroy()`?";
            Logger.e("Mbgl-NativeMapView", str2);
            if (UStringsKt.strictModeEnabled) {
                throw new HttpException(str2);
            }
        }
        return this.destroyed;
    }

    public final void destroy() {
        this.destroyed = true;
        this.viewCallback = null;
        nativeDestroy();
    }

    public final void easeTo(LatLng latLng, double d, double d2, double d3, double[] dArr, long j) {
        if (checkState("easeTo")) {
            return;
        }
        nativeEaseTo(d2, latLng.getLatitude(), latLng.getLongitude(), j, d3, d, getAnimationPaddingAndClearCachedInsets(dArr), true);
    }

    public final void flyTo(LatLng latLng, double d, double d2, double d3, double[] dArr, long j) {
        if (checkState("flyTo")) {
            return;
        }
        nativeFlyTo(d2, latLng.getLatitude(), latLng.getLongitude(), j, d3, d, getAnimationPaddingAndClearCachedInsets(dArr));
    }

    public final double[] getAnimationPaddingAndClearCachedInsets(double[] dArr) {
        if (dArr == null) {
            dArr = this.edgeInsets;
        }
        this.edgeInsets = null;
        if (dArr == null) {
            return null;
        }
        double d = dArr[1];
        float f = this.pixelRatio;
        return new double[]{d / f, dArr[0] / f, dArr[3] / f, dArr[2] / f};
    }

    public final double getBearing() {
        if (checkState("getBearing")) {
            return 0.0d;
        }
        return nativeGetBearing();
    }

    public final CameraPosition getCameraForLatLngBounds(LatLngBounds latLngBounds, int[] iArr, double d, double d2) {
        if (checkState("getCameraForLatLngBounds")) {
            return null;
        }
        float f = iArr[1];
        float f2 = this.pixelRatio;
        return nativeGetCameraForLatLngBounds(latLngBounds, f / f2, iArr[0] / f2, iArr[3] / f2, iArr[2] / f2, d, d2);
    }

    public final CameraPosition getCameraPosition() {
        LatLng latLng;
        double d;
        double d2;
        double d3;
        if (checkState("getCameraValues")) {
            return new CameraPosition(null, -1.0d, -1.0d, -1.0d, null);
        }
        if (this.edgeInsets == null) {
            return nativeGetCameraPosition();
        }
        CameraPosition nativeGetCameraPosition = nativeGetCameraPosition();
        if (nativeGetCameraPosition != null) {
            double d4 = nativeGetCameraPosition.bearing;
            latLng = nativeGetCameraPosition.target;
            double d5 = nativeGetCameraPosition.tilt;
            d = nativeGetCameraPosition.zoom;
            d3 = d4;
            d2 = d5;
        } else {
            latLng = null;
            d = -1.0d;
            d2 = -1.0d;
            d3 = -1.0d;
        }
        return new CameraPosition(latLng, d, d2, d3, this.edgeInsets);
    }

    public final Layer getLayer(String str) {
        if (checkState("getLayer")) {
            return null;
        }
        return nativeGetLayer(str);
    }

    public final double getMaxZoom() {
        if (checkState("getMaxZoom")) {
            return 0.0d;
        }
        return nativeGetMaxZoom();
    }

    public final double getMetersPerPixelAtLatitude(double d) {
        if (checkState("getMetersPerPixelAtLatitude")) {
            return 0.0d;
        }
        return nativeGetMetersPerPixelAtLatitude(d, getZoom());
    }

    public final double getMinZoom() {
        if (checkState("getMinZoom")) {
            return 0.0d;
        }
        return nativeGetMinZoom();
    }

    public final double getPitch() {
        if (checkState("getPitch")) {
            return 0.0d;
        }
        return nativeGetPitch();
    }

    public final Source getSource() {
        if (checkState("getSource")) {
            return null;
        }
        return nativeGetSource("mapbox-location-source");
    }

    public final List getSources() {
        return checkState("getSources") ? new ArrayList() : Arrays.asList(nativeGetSources());
    }

    public final String getStyleUri() {
        return checkState("getStyleUri") ? "" : nativeGetStyleUrl();
    }

    public final double getZoom() {
        if (checkState("getZoom")) {
            return 0.0d;
        }
        return nativeGetZoom();
    }

    public final void jumpTo(LatLng latLng, double d, double d2, double d3, double[] dArr) {
        if (checkState("jumpTo")) {
            return;
        }
        nativeJumpTo(d3, latLng.getLatitude(), latLng.getLongitude(), d2, d, getAnimationPaddingAndClearCachedInsets(dArr));
    }

    public final LatLng latLngForPixel(PointF pointF) {
        if (checkState("latLngForPixel")) {
            return new LatLng();
        }
        float f = pointF.x;
        float f2 = this.pixelRatio;
        return nativeLatLngForPixel(f / f2, pointF.y / f2);
    }

    public final void moveBy(double d, double d2, long j) {
        if (checkState("moveBy")) {
            return;
        }
        try {
            double d3 = this.pixelRatio;
            nativeMoveBy(d / d3, d2 / d3, j);
        } catch (Error e) {
            Logger.d("Mbgl-NativeMapView", "Error when executing NativeMapView#moveBy", e);
        }
    }

    public final void onLowMemory() {
        if (checkState("onLowMemory")) {
            return;
        }
        nativeOnLowMemory();
    }

    public void onSnapshotReady(Bitmap bitmap) {
        if (checkState("OnSnapshotReady")) {
            return;
        }
        try {
            YearInReviewGeoSlideKt$$ExternalSyntheticLambda5 yearInReviewGeoSlideKt$$ExternalSyntheticLambda5 = this.snapshotReadyCallback;
            if (yearInReviewGeoSlideKt$$ExternalSyntheticLambda5 == null || bitmap == null) {
                return;
            }
            MapView mapView = this.viewCallback;
            if (mapView == null) {
                yearInReviewGeoSlideKt$$ExternalSyntheticLambda5.onSnapshotReady(bitmap);
                return;
            }
            Bitmap viewContent = mapView.getViewContent();
            if (viewContent != null) {
                YearInReviewGeoSlideKt$$ExternalSyntheticLambda5 yearInReviewGeoSlideKt$$ExternalSyntheticLambda52 = this.snapshotReadyCallback;
                Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
                Canvas canvas = new Canvas(createBitmap);
                canvas.drawBitmap(bitmap, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, (Paint) null);
                canvas.drawBitmap(viewContent, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, (Paint) null);
                yearInReviewGeoSlideKt$$ExternalSyntheticLambda52.onSnapshotReady(createBitmap);
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-NativeMapView", "Exception in onSnapshotReady", th);
            throw th;
        }
    }

    public final PointF pixelForLatLng(LatLng latLng) {
        if (checkState("pixelForLatLng")) {
            return new PointF();
        }
        PointF nativePixelForLatLng = nativePixelForLatLng(latLng.getLatitude(), latLng.getLongitude());
        float f = nativePixelForLatLng.x;
        float f2 = this.pixelRatio;
        nativePixelForLatLng.set(f * f2, nativePixelForLatLng.y * f2);
        return nativePixelForLatLng;
    }

    public final long[] queryPointAnnotations(RectF rectF) {
        return checkState("queryPointAnnotations") ? new long[0] : nativeQueryPointAnnotations(rectF);
    }

    public final List queryRenderedFeatures(RectF rectF, String[] strArr) {
        if (checkState("queryRenderedFeatures")) {
            return new ArrayList();
        }
        float f = rectF.left;
        float f2 = this.pixelRatio;
        Feature[] nativeQueryRenderedFeaturesForBox = nativeQueryRenderedFeaturesForBox(f / f2, rectF.top / f2, rectF.right / f2, rectF.bottom / f2, strArr, null);
        return nativeQueryRenderedFeaturesForBox != null ? Arrays.asList(nativeQueryRenderedFeaturesForBox) : new ArrayList();
    }

    public final long[] queryShapeAnnotations(RectF rectF) {
        return checkState("queryShapeAnnotations") ? new long[0] : nativeQueryShapeAnnotations(rectF);
    }

    public final void removeAnnotation(long j) {
        if (checkState("removeAnnotation")) {
            return;
        }
        long[] jArr = {j};
        if (checkState("removeAnnotations")) {
            return;
        }
        nativeRemoveAnnotations(jArr);
    }

    public final void removeImage(String str) {
        if (checkState("removeImage")) {
            return;
        }
        nativeRemoveImage(str);
    }

    public final boolean removeLayer(Layer layer) {
        if (checkState("removeLayer")) {
            return false;
        }
        return nativeRemoveLayer(layer.getNativePtr());
    }

    public final void resizeView(int i, int i2) {
        if (checkState("resizeView")) {
            return;
        }
        float f = this.pixelRatio;
        int ceil = (int) Math.ceil(i / f);
        int ceil2 = (int) Math.ceil(i2 / f);
        if (ceil < 0) {
            Logger.e("Mbgl-NativeMapView", "Device returned a negative width size, setting value to 0 instead of " + ceil);
            ceil = 0;
        }
        if (ceil2 < 0) {
            Logger.e("Mbgl-NativeMapView", "Device returned a negative height size, setting value to 0 instead of " + ceil2);
            ceil2 = 0;
        }
        if (ceil > 65535) {
            Logger.e("Mbgl-NativeMapView", "Device returned an out of range width size, capping value at 65535 instead of " + ceil);
            ceil = 65535;
        }
        if (ceil2 > 65535) {
            Logger.e("Mbgl-NativeMapView", "Device returned an out of range height size, capping value at 65535 instead of " + ceil2);
            ceil2 = 65535;
        }
        nativeResizeView(ceil, ceil2);
    }

    public final void setBearing(double d, double d2, double d3, long j) {
        if (checkState("setBearing")) {
            return;
        }
        double d4 = this.pixelRatio;
        nativeSetBearingXY(d, d2 / d4, d3 / d4, j);
    }

    public final void setDebug(boolean z) {
        if (checkState("setDebug")) {
            return;
        }
        nativeSetDebug(z);
    }

    public final void setGestureInProgress(boolean z) {
        if (checkState("setGestureInProgress")) {
            return;
        }
        nativeSetGestureInProgress(z);
    }

    public final void setMaxPitch(double d) {
        if (checkState("setMaxPitch")) {
            return;
        }
        nativeSetMaxPitch(d);
    }

    public final void setMaxZoom(double d) {
        if (checkState("setMaxZoom")) {
            return;
        }
        nativeSetMaxZoom(d);
    }

    public final void setMinPitch(double d) {
        if (checkState("setMinPitch")) {
            return;
        }
        nativeSetMinPitch(d);
    }

    public final void setMinZoom(double d) {
        if (checkState("setMinZoom")) {
            return;
        }
        nativeSetMinZoom(d);
    }

    public final void setPitch(double d) {
        if (checkState("setPitch")) {
            return;
        }
        nativeSetPitch(d, 0L);
    }

    public final void setPrefetchZoomDelta(int i) {
        if (checkState("nativeSetPrefetchZoomDelta")) {
            return;
        }
        nativeSetPrefetchZoomDelta(i);
    }

    public final void setReachability(boolean z) {
        if (checkState("setReachability")) {
            return;
        }
        nativeSetReachability(z);
    }

    public final void setStyleJson(String str) {
        if (checkState("setStyleJson")) {
            return;
        }
        nativeSetStyleJson(str);
    }

    public final void setStyleUri(String str) {
        if (checkState("setStyleUri")) {
            return;
        }
        nativeSetStyleUrl(str);
    }

    public final void setZoom(double d, PointF pointF) {
        if (checkState("setZoom")) {
            return;
        }
        float f = pointF.x;
        float f2 = this.pixelRatio;
        nativeSetZoom(d, f / f2, pointF.y / f2, 0L);
    }

    public final List queryRenderedFeatures(PointF pointF, String[] strArr) {
        if (checkState("queryRenderedFeatures")) {
            return new ArrayList();
        }
        float f = pointF.x;
        float f2 = this.pixelRatio;
        Feature[] nativeQueryRenderedFeaturesForPoint = nativeQueryRenderedFeaturesForPoint(f / f2, pointF.y / f2, strArr, null);
        return nativeQueryRenderedFeaturesForPoint != null ? Arrays.asList(nativeQueryRenderedFeaturesForPoint) : new ArrayList();
    }
}
