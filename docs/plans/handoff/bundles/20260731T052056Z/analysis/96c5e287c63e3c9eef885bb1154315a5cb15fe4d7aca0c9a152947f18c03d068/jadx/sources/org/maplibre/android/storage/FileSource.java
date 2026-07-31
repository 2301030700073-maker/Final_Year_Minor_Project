package org.maplibre.android.storage;

import android.content.Context;
import android.os.AsyncTask;
import java.util.concurrent.locks.ReentrantLock;
import org.maplibre.android.MapLibre;
import org.maplibre.android.util.TileServerOptions;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class FileSource {
    public static FileSource INSTANCE;
    public static String internalCachePath;
    public static String resourcesCachePath;
    private long nativePtr;
    public static final ReentrantLock resourcesCachePathLoaderLock = new ReentrantLock();
    public static final ReentrantLock internalCachePathLoaderLock = new ReentrantLock();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FileDirsPathsTask extends AsyncTask {
        @Override // android.os.AsyncTask
        public final Object doInBackground(Object[] objArr) {
            Context[] contextArr = (Context[]) objArr;
            FileSource.getResourcesCachePath(contextArr[0]);
            Context context = contextArr[0];
            ReentrantLock reentrantLock = FileSource.internalCachePathLoaderLock;
            reentrantLock.lock();
            try {
                if (FileSource.internalCachePath == null) {
                    FileSource.internalCachePath = context.getCacheDir().getAbsolutePath();
                }
                reentrantLock.unlock();
                return null;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface ResourceTransformCallback {
        String onURL(int i, String str);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface ResourcesCachePathChangeCallback {
        void onError(String str);

        void onSuccess(String str);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getCachePath(android.content.Context r8) {
        /*
            java.lang.String r0 = "MapboxSharedPreferences"
            r1 = 0
            android.content.SharedPreferences r2 = r8.getSharedPreferences(r0, r1)
            java.lang.String r3 = "fileSourceResourcesCachePath"
            r4 = 0
            java.lang.String r2 = r2.getString(r3, r4)
            if (r2 == 0) goto L21
            boolean r5 = r2.isEmpty()
            if (r5 == 0) goto L17
            goto L21
        L17:
            java.io.File r5 = new java.io.File
            r5.<init>(r2)
            boolean r5 = r5.canWrite()
            goto L22
        L21:
            r5 = r1
        L22:
            if (r5 != 0) goto L94
            java.lang.String r2 = "Mbgl-FileSource"
            android.content.pm.PackageManager r5 = r8.getPackageManager()     // Catch: java.lang.Exception -> L3f android.content.pm.PackageManager.NameNotFoundException -> L41
            java.lang.String r6 = r8.getPackageName()     // Catch: java.lang.Exception -> L3f android.content.pm.PackageManager.NameNotFoundException -> L41
            r7 = 128(0x80, float:1.8E-43)
            android.content.pm.ApplicationInfo r5 = r5.getApplicationInfo(r6, r7)     // Catch: java.lang.Exception -> L3f android.content.pm.PackageManager.NameNotFoundException -> L41
            android.os.Bundle r5 = r5.metaData     // Catch: java.lang.Exception -> L3f android.content.pm.PackageManager.NameNotFoundException -> L41
            if (r5 == 0) goto L54
            java.lang.String r6 = "com.mapbox.SetStorageExternal"
            boolean r5 = r5.getBoolean(r6, r1)     // Catch: java.lang.Exception -> L3f android.content.pm.PackageManager.NameNotFoundException -> L41
            goto L55
        L3f:
            r5 = move-exception
            goto L43
        L41:
            r5 = move-exception
            goto L4c
        L43:
            java.lang.String r6 = "Failed to read the storage key: "
            org.maplibre.android.log.Logger.e(r2, r6, r5)
            kotlin.text.UStringsKt.strictModeViolation(r5)
            goto L54
        L4c:
            java.lang.String r6 = "Failed to read the package metadata: "
            org.maplibre.android.log.Logger.e(r2, r6, r5)
            kotlin.text.UStringsKt.strictModeViolation(r5)
        L54:
            r5 = r1
        L55:
            if (r5 == 0) goto L7d
            java.lang.String r5 = android.os.Environment.getExternalStorageState()
            java.lang.String r6 = "mounted"
            boolean r6 = r6.equals(r5)
            if (r6 != 0) goto L72
            java.lang.String r6 = "mounted_ro"
            boolean r5 = r6.equals(r5)
            if (r5 == 0) goto L6c
            goto L72
        L6c:
            java.lang.String r4 = "External storage was requested but it isn't readable. For API level < 18 make sure you've requested READ_EXTERNAL_STORAGE or WRITE_EXTERNAL_STORAGE permissions in your app Manifest (defaulting to internal storage)."
            org.maplibre.android.log.Logger.w(r2, r4)
            goto L7d
        L72:
            java.io.File r2 = r8.getExternalFilesDir(r4)
            if (r2 == 0) goto L7d
            java.lang.String r2 = r2.getAbsolutePath()
            goto L85
        L7d:
            java.io.File r2 = r8.getFilesDir()
            java.lang.String r2 = r2.getAbsolutePath()
        L85:
            android.content.SharedPreferences r8 = r8.getSharedPreferences(r0, r1)
            android.content.SharedPreferences$Editor r8 = r8.edit()
            android.content.SharedPreferences$Editor r8 = r8.remove(r3)
            r8.apply()
        L94:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.maplibre.android.storage.FileSource.getCachePath(android.content.Context):java.lang.String");
    }

    public static synchronized FileSource getInstance(Context context) {
        FileSource fileSource;
        synchronized (FileSource.class) {
            fileSource = INSTANCE;
            if (fileSource == null) {
                String resourcesCachePath2 = getResourcesCachePath(context);
                fileSource = new FileSource();
                fileSource.initialize(MapLibre.getApiKey(), resourcesCachePath2, MapLibre.getTileServerOptions());
                INSTANCE = fileSource;
            }
        }
        return fileSource;
    }

    public static String getResourcesCachePath(Context context) {
        ReentrantLock reentrantLock = resourcesCachePathLoaderLock;
        reentrantLock.lock();
        try {
            String str = resourcesCachePath;
            if (str == null) {
                str = getCachePath(context);
                resourcesCachePath = str;
            }
            return str;
        } finally {
            reentrantLock.unlock();
        }
    }

    private native void initialize(String str, String str2, TileServerOptions tileServerOptions);

    private native void setResourceCachePath(String str, ResourcesCachePathChangeCallback resourcesCachePathChangeCallback);

    public native void activate();

    public native void deactivate();

    public native void finalize();

    public native String getApiBaseUrl();

    public native String getApiKey();

    public native boolean isActivated();

    public native void setApiBaseUrl(String str);

    public native void setApiKey(String str);

    public native void setResourceTransform(ResourceTransformCallback resourceTransformCallback);

    public native void setTileServerOptions(TileServerOptions tileServerOptions);
}
