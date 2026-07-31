package org.maplibre.android;

import android.content.Context;
import android.content.res.AssetManager;
import androidx.compose.ui.Modifier;
import coil3.network.HttpException;
import java.util.concurrent.locks.ReentrantLock;
import okio.Okio__JvmOkioKt;
import org.maplibre.android.constants.MapLibreConstants;
import org.maplibre.android.net.ConnectivityReceiver;
import org.maplibre.android.storage.FileSource;
import org.maplibre.android.util.DefaultStyle;
import org.maplibre.android.util.TileServerOptions;
import org.wikipedia.login.LoginClient;
import timber.log.Timber;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MapLibre {
    private static MapLibre INSTANCE = null;
    private static final String TAG = "Mbgl-MapLibre";
    private static ModuleProvider moduleProvider;
    private String apiKey;
    private Context context;
    private TileServerOptions tileServerOptions;

    public MapLibre(Context context, String str, TileServerOptions tileServerOptions) {
        this.context = context;
        this.apiKey = str;
        this.tileServerOptions = tileServerOptions;
    }

    public static String getApiKey() {
        validateMapLibre();
        return INSTANCE.apiKey;
    }

    public static Context getApplicationContext() {
        validateMapLibre();
        return INSTANCE.context;
    }

    private static AssetManager getAssetManager() {
        return getApplicationContext().getResources().getAssets();
    }

    public static synchronized MapLibre getInstance(Context context, String str, WellKnownTileServer wellKnownTileServer) {
        MapLibre mapLibre;
        synchronized (MapLibre.class) {
            try {
                Okio__JvmOkioKt.debug = Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0);
                Okio__JvmOkioKt.checkThread(TAG);
                MapLibre mapLibre2 = INSTANCE;
                if (mapLibre2 == null) {
                    Timber.plant(new Timber.Forest[0]);
                    Context applicationContext = context.getApplicationContext();
                    ReentrantLock reentrantLock = FileSource.resourcesCachePathLoaderLock;
                    Okio__JvmOkioKt.checkThread("Mbgl-FileSource");
                    new FileSource.FileDirsPathsTask().execute(applicationContext);
                    INSTANCE = new MapLibre(applicationContext, str);
                    ConnectivityReceiver.instance(applicationContext);
                } else {
                    mapLibre2.apiKey = str;
                }
                TileServerOptions tileServerOptions = TileServerOptions.get(wellKnownTileServer);
                INSTANCE.tileServerOptions = tileServerOptions;
                FileSource fileSource = FileSource.getInstance(context);
                fileSource.setTileServerOptions(tileServerOptions);
                fileSource.setApiKey(str);
                mapLibre = INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mapLibre;
    }

    public static ModuleProvider getModuleProvider() {
        ModuleProvider moduleProvider2 = moduleProvider;
        if (moduleProvider2 != null) {
            return moduleProvider2;
        }
        LoginClient loginClient = new LoginClient(11);
        moduleProvider = loginClient;
        return loginClient;
    }

    public static DefaultStyle getPredefinedStyle(String str) {
        validateMapLibre();
        TileServerOptions tileServerOptions = INSTANCE.tileServerOptions;
        if (tileServerOptions == null) {
            return null;
        }
        for (DefaultStyle defaultStyle : tileServerOptions.getDefaultStyles()) {
            if (defaultStyle.getName().equalsIgnoreCase(str)) {
                return defaultStyle;
            }
        }
        return null;
    }

    public static DefaultStyle[] getPredefinedStyles() {
        validateMapLibre();
        TileServerOptions tileServerOptions = INSTANCE.tileServerOptions;
        if (tileServerOptions != null) {
            return tileServerOptions.getDefaultStyles();
        }
        return null;
    }

    public static TileServerOptions getTileServerOptions() {
        validateMapLibre();
        return INSTANCE.tileServerOptions;
    }

    public static boolean hasInstance() {
        return INSTANCE != null;
    }

    public static boolean isApiKeyValid(String str) {
        if (str == null) {
            return false;
        }
        return !str.trim().toLowerCase(MapLibreConstants.MAPLIBRE_LOCALE).isEmpty();
    }

    public static synchronized Boolean isConnected() {
        Boolean valueOf;
        synchronized (MapLibre.class) {
            validateMapLibre();
            ConnectivityReceiver instance = ConnectivityReceiver.instance(INSTANCE.context);
            Boolean bool = instance.connected;
            valueOf = Boolean.valueOf(bool != null ? bool.booleanValue() : instance.isNetworkActive());
        }
        return valueOf;
    }

    public static void setApiKey(String str) {
        validateMapLibre();
        throwIfApiKeyInvalid(str);
        INSTANCE.apiKey = str;
        FileSource.getInstance(getApplicationContext()).setApiKey(str);
    }

    public static synchronized void setConnected(Boolean bool) {
        synchronized (MapLibre.class) {
            validateMapLibre();
            ConnectivityReceiver instance = ConnectivityReceiver.instance(INSTANCE.context);
            instance.connected = bool;
            instance.notifyListeners(bool != null ? bool.booleanValue() : instance.isNetworkActive());
        }
    }

    public static void setModuleProvider(ModuleProvider moduleProvider2) {
        moduleProvider = moduleProvider2;
    }

    public static void throwIfApiKeyInvalid(String str) {
        if (!isApiKeyValid(str)) {
            throw new HttpException(Modifier.CC.m("A valid API key is required, currently provided key is: ", str));
        }
    }

    private static void validateMapLibre() {
        if (INSTANCE == null) {
            throw new HttpException();
        }
    }

    public MapLibre(Context context, String str) {
        this.context = context;
        this.apiKey = str;
    }

    public static synchronized MapLibre getInstance(Context context) {
        MapLibre mapLibre;
        synchronized (MapLibre.class) {
            try {
                Okio__JvmOkioKt.debug = Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0);
                Okio__JvmOkioKt.checkThread(TAG);
                if (INSTANCE == null) {
                    Context applicationContext = context.getApplicationContext();
                    ReentrantLock reentrantLock = FileSource.resourcesCachePathLoaderLock;
                    Okio__JvmOkioKt.checkThread("Mbgl-FileSource");
                    new FileSource.FileDirsPathsTask().execute(applicationContext);
                    INSTANCE = new MapLibre(applicationContext, null);
                    ConnectivityReceiver.instance(applicationContext);
                }
                TileServerOptions tileServerOptions = TileServerOptions.get(WellKnownTileServer.MapLibre);
                MapLibre mapLibre2 = INSTANCE;
                mapLibre2.tileServerOptions = tileServerOptions;
                mapLibre2.apiKey = null;
                FileSource fileSource = FileSource.getInstance(context);
                fileSource.setTileServerOptions(tileServerOptions);
                fileSource.setApiKey(null);
                mapLibre = INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mapLibre;
    }
}
