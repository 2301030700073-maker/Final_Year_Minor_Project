package org.jetbrains.compose.resources;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.InputStream;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.koin.core.error.InstanceCreationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultAndroidResourceReader {
    public static final DefaultAndroidResourceReader INSTANCE = new DefaultAndroidResourceReader();

    public static InputStream getResourceAsStream(String str) {
        AssetManager assetManager;
        InputStream open;
        try {
            try {
                try {
                    Context context = AndroidContextProvider.ANDROID_CONTEXT;
                    AssetManager assets = context != null ? context.getAssets() : null;
                    if (assets == null || (open = assets.open(str)) == null) {
                        throw new FileNotFoundException("Current AssetManager is null.");
                    }
                    return open;
                } catch (NoClassDefFoundError unused) {
                    Log.d("ResourceReader", "Android Instrumentation context is not available.");
                    assetManager = null;
                    if (assetManager != null || (r2 = assetManager.open(str)) == null) {
                        throw new FileNotFoundException("Current AssetManager is null.");
                    }
                    return r2;
                }
            } catch (FileNotFoundException unused2) {
                ClassLoader classLoader = DefaultAndroidResourceReader.class.getClassLoader();
                if (classLoader == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot find class loader");
                    return null;
                }
                InputStream open2 = classLoader.getResourceAsStream(str);
                if (open2 == null) {
                    if (AndroidContextProvider.ANDROID_CONTEXT == null) {
                        throw new InstanceCreationException("Missing resource with path: ".concat(str.concat(". Android context is not initialized. If it happens in the Preview mode then call PreviewContextConfigurationEffect() function.")));
                    }
                    throw new InstanceCreationException("Missing resource with path: ".concat(str));
                }
                return open2;
            }
        } catch (FileNotFoundException unused3) {
            assetManager = AndroidContextProviderKt.getAndroidInstrumentedContext().getAssets();
            if (assetManager != null) {
            }
            throw new FileNotFoundException("Current AssetManager is null.");
        }
    }
}
