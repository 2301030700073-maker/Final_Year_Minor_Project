package com.rnmaps.maps;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.location.Address;
import android.location.Geocoder;
import android.net.Uri;
import android.util.Base64;
import android.util.DisplayMetrics;
import androidx.autofill.HintConstants;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.braze.models.IBrazeLocation;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.module.annotations.ReactModule;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import io.sentry.instrumentation.file.SentryFileOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

@ReactModule(name = MapModule.NAME)
/* loaded from: classes5.dex */
public class MapModule extends ReactContextBaseJavaModule {
    public static final String NAME = "AirMapModule";
    private static final String SNAPSHOT_FORMAT_JPG = "jpg";
    private static final String SNAPSHOT_FORMAT_PNG = "png";
    private static final String SNAPSHOT_RESULT_BASE64 = "base64";
    private static final String SNAPSHOT_RESULT_FILE = "file";

    public MapModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return NAME;
    }

    @Override // com.facebook.react.bridge.BaseJavaModule
    public Map<String, Object> getConstants() {
        HashMap hashMap = new HashMap();
        hashMap.put("legalNotice", "This license information is displayed in Settings > Google > Open Source on any device running Google Play services.");
        return hashMap;
    }

    public Activity getActivity() {
        return getCurrentActivity();
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    @ReactMethod
    public void takeSnapshot(int i, ReadableMap readableMap, final Promise promise) {
        Bitmap.CompressFormat compressFormat;
        final ReactApplicationContext reactApplicationContext = getReactApplicationContext();
        final String string = readableMap.hasKey("format") ? readableMap.getString("format") : SNAPSHOT_FORMAT_PNG;
        if (string.equals(SNAPSHOT_FORMAT_PNG)) {
            compressFormat = Bitmap.CompressFormat.PNG;
        } else {
            compressFormat = string.equals(SNAPSHOT_FORMAT_JPG) ? Bitmap.CompressFormat.JPEG : null;
        }
        final Bitmap.CompressFormat compressFormat2 = compressFormat;
        final double d = readableMap.hasKey("quality") ? readableMap.getDouble("quality") : 1.0d;
        DisplayMetrics displayMetrics = reactApplicationContext.getResources().getDisplayMetrics();
        final Integer valueOf = Integer.valueOf(readableMap.hasKey("width") ? (int) (displayMetrics.density * readableMap.getDouble("width")) : 0);
        final Integer valueOf2 = Integer.valueOf(readableMap.hasKey("height") ? (int) (displayMetrics.density * readableMap.getDouble("height")) : 0);
        final String string2 = readableMap.hasKey("result") ? readableMap.getString("result") : "file";
        new MapUIBlock(i, promise, reactApplicationContext, new Function() { // from class: com.rnmaps.maps.MapModule$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Void lambda$takeSnapshot$0;
                lambda$takeSnapshot$0 = MapModule.this.lambda$takeSnapshot$0(promise, valueOf, valueOf2, string2, string, reactApplicationContext, compressFormat2, d, (MapView) obj);
                return lambda$takeSnapshot$0;
            }
        }).addToUIManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void lambda$takeSnapshot$0(final Promise promise, final Integer num, final Integer num2, final String str, final String str2, final ReactApplicationContext reactApplicationContext, final Bitmap.CompressFormat compressFormat, final double d, MapView mapView) {
        mapView.map.snapshot(new GoogleMap.SnapshotReadyCallback() { // from class: com.rnmaps.maps.MapModule.1
            @Override // com.google.android.gms.maps.GoogleMap.SnapshotReadyCallback
            public void onSnapshotReady(Bitmap bitmap) {
                if (bitmap == null) {
                    promise.reject("Failed to generate bitmap, snapshot = null");
                    return;
                }
                if (num.intValue() != 0 && num2.intValue() != 0 && (num.intValue() != bitmap.getWidth() || num2.intValue() != bitmap.getHeight())) {
                    bitmap = Bitmap.createScaledBitmap(bitmap, num.intValue(), num2.intValue(), true);
                }
                if (str.equals("file")) {
                    try {
                        File createTempFile = File.createTempFile("AirMapSnapshot", "." + str2, reactApplicationContext.getCacheDir());
                        FileOutputStream create = SentryFileOutputStream.Factory.create(new FileOutputStream(createTempFile), createTempFile);
                        bitmap.compress(compressFormat, (int) (d * 100.0d), create);
                        MapModule.closeQuietly(create);
                        promise.resolve(Uri.fromFile(createTempFile).toString());
                        return;
                    } catch (Exception e) {
                        promise.reject(e);
                        return;
                    }
                }
                if (str.equals("base64")) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap.compress(compressFormat, (int) (d * 100.0d), byteArrayOutputStream);
                    MapModule.closeQuietly(byteArrayOutputStream);
                    promise.resolve(Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2));
                }
            }
        });
        return null;
    }

    @ReactMethod
    public void getCamera(int i, final Promise promise) {
        new MapUIBlock(i, promise, getReactApplicationContext(), new Function() { // from class: com.rnmaps.maps.MapModule$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MapModule.lambda$getCamera$1(Promise.this, (MapView) obj);
            }
        }).addToUIManager();
    }

    static /* synthetic */ Void lambda$getCamera$1(Promise promise, MapView mapView) {
        CameraPosition cameraPosition = mapView.map.getCameraPosition();
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putDouble(IBrazeLocation.LATITUDE, cameraPosition.target.latitude);
        writableNativeMap.putDouble(IBrazeLocation.LONGITUDE, cameraPosition.target.longitude);
        WritableNativeMap writableNativeMap2 = new WritableNativeMap();
        writableNativeMap2.putMap(TtmlNode.CENTER, writableNativeMap);
        writableNativeMap2.putDouble("heading", cameraPosition.bearing);
        writableNativeMap2.putDouble("zoom", cameraPosition.zoom);
        writableNativeMap2.putDouble("pitch", cameraPosition.tilt);
        promise.resolve(writableNativeMap2);
        return null;
    }

    @ReactMethod
    public void getAddressFromCoordinates(int i, final ReadableMap readableMap, final Promise promise) {
        final ReactApplicationContext reactApplicationContext = getReactApplicationContext();
        new MapUIBlock(i, promise, reactApplicationContext, new Function() { // from class: com.rnmaps.maps.MapModule$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MapModule.lambda$getAddressFromCoordinates$2(ReadableMap.this, promise, reactApplicationContext, (MapView) obj);
            }
        }).addToUIManager();
    }

    static /* synthetic */ Void lambda$getAddressFromCoordinates$2(ReadableMap readableMap, Promise promise, ReactApplicationContext reactApplicationContext, MapView mapView) {
        List<Address> fromLocation;
        if (readableMap == null || !readableMap.hasKey(IBrazeLocation.LATITUDE) || !readableMap.hasKey(IBrazeLocation.LONGITUDE)) {
            promise.reject("Invalid coordinate format");
            return null;
        }
        try {
            fromLocation = new Geocoder(reactApplicationContext).getFromLocation(readableMap.getDouble(IBrazeLocation.LATITUDE), readableMap.getDouble(IBrazeLocation.LONGITUDE), 1);
        } catch (IOException unused) {
            promise.reject("Can not get address location");
        }
        if (fromLocation.isEmpty()) {
            promise.reject("Can not get address location");
            return null;
        }
        Address address = fromLocation.get(0);
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putString("name", address.getFeatureName());
        writableNativeMap.putString("locality", address.getLocality());
        writableNativeMap.putString("thoroughfare", address.getThoroughfare());
        writableNativeMap.putString("subThoroughfare", address.getSubThoroughfare());
        writableNativeMap.putString("subLocality", address.getSubLocality());
        writableNativeMap.putString("administrativeArea", address.getAdminArea());
        writableNativeMap.putString("subAdministrativeArea", address.getSubAdminArea());
        writableNativeMap.putString(HintConstants.AUTOFILL_HINT_POSTAL_CODE, address.getPostalCode());
        writableNativeMap.putString(RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, address.getCountryCode());
        writableNativeMap.putString("country", address.getCountryName());
        promise.resolve(writableNativeMap);
        return null;
    }

    @ReactMethod
    public void pointForCoordinate(int i, ReadableMap readableMap, final Promise promise) {
        ReactApplicationContext reactApplicationContext = getReactApplicationContext();
        final double d = reactApplicationContext.getResources().getDisplayMetrics().density;
        final LatLng latLng = new LatLng(readableMap.hasKey(IBrazeLocation.LATITUDE) ? readableMap.getDouble(IBrazeLocation.LATITUDE) : 0.0d, readableMap.hasKey(IBrazeLocation.LONGITUDE) ? readableMap.getDouble(IBrazeLocation.LONGITUDE) : 0.0d);
        new MapUIBlock(i, promise, reactApplicationContext, new Function() { // from class: com.rnmaps.maps.MapModule$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MapModule.lambda$pointForCoordinate$3(LatLng.this, d, promise, (MapView) obj);
            }
        }).addToUIManager();
    }

    static /* synthetic */ Void lambda$pointForCoordinate$3(LatLng latLng, double d, Promise promise, MapView mapView) {
        Point screenLocation = mapView.map.getProjection().toScreenLocation(latLng);
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putDouble("x", screenLocation.x / d);
        writableNativeMap.putDouble("y", screenLocation.y / d);
        promise.resolve(writableNativeMap);
        return null;
    }

    @ReactMethod
    public void coordinateForPoint(int i, ReadableMap readableMap, final Promise promise) {
        ReactApplicationContext reactApplicationContext = getReactApplicationContext();
        double d = reactApplicationContext.getResources().getDisplayMetrics().density;
        final Point point = new Point(readableMap.hasKey("x") ? (int) (readableMap.getDouble("x") * d) : 0, readableMap.hasKey("y") ? (int) (readableMap.getDouble("y") * d) : 0);
        new MapUIBlock(i, promise, reactApplicationContext, new Function() { // from class: com.rnmaps.maps.MapModule$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MapModule.lambda$coordinateForPoint$4(point, promise, (MapView) obj);
            }
        }).addToUIManager();
    }

    static /* synthetic */ Void lambda$coordinateForPoint$4(Point point, Promise promise, MapView mapView) {
        LatLng fromScreenLocation = mapView.map.getProjection().fromScreenLocation(point);
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putDouble(IBrazeLocation.LATITUDE, fromScreenLocation.latitude);
        writableNativeMap.putDouble(IBrazeLocation.LONGITUDE, fromScreenLocation.longitude);
        promise.resolve(writableNativeMap);
        return null;
    }

    @ReactMethod
    public void getMapBoundaries(int i, final Promise promise) {
        new MapUIBlock(i, promise, getReactApplicationContext(), new Function() { // from class: com.rnmaps.maps.MapModule$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MapModule.lambda$getMapBoundaries$5(Promise.this, (MapView) obj);
            }
        }).addToUIManager();
    }

    static /* synthetic */ Void lambda$getMapBoundaries$5(Promise promise, MapView mapView) {
        double[][] mapBoundaries = mapView.getMapBoundaries();
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        WritableNativeMap writableNativeMap2 = new WritableNativeMap();
        WritableNativeMap writableNativeMap3 = new WritableNativeMap();
        writableNativeMap2.putDouble(IBrazeLocation.LONGITUDE, mapBoundaries[0][0]);
        writableNativeMap2.putDouble(IBrazeLocation.LATITUDE, mapBoundaries[0][1]);
        writableNativeMap3.putDouble(IBrazeLocation.LONGITUDE, mapBoundaries[1][0]);
        writableNativeMap3.putDouble(IBrazeLocation.LATITUDE, mapBoundaries[1][1]);
        writableNativeMap.putMap("northEast", writableNativeMap2);
        writableNativeMap.putMap("southWest", writableNativeMap3);
        promise.resolve(writableNativeMap);
        return null;
    }
}
