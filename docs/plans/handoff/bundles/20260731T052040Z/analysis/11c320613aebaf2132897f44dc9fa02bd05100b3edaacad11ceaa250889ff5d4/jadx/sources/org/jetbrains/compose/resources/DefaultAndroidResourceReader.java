package org.jetbrains.compose.resources;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.koin.core.error.ClosedScopeException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultAndroidResourceReader implements ResourceReader {
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
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot find class loader");
                    return null;
                }
                InputStream open2 = classLoader.getResourceAsStream(str);
                if (open2 == null) {
                    if (AndroidContextProvider.ANDROID_CONTEXT != null) {
                        throw new ClosedScopeException(str);
                    }
                    str.getClass();
                    throw new ClosedScopeException(str.concat(". Android context is not initialized. If it happens in the Preview mode then call PreviewContextConfigurationEffect() function."));
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

    public final Object read(String str) {
        InputStream resourceAsStream = getResourceAsStream(str);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(8192, resourceAsStream.available()));
            byte[] bArr = new byte[8192];
            for (int read = resourceAsStream.read(bArr); read >= 0; read = resourceAsStream.read(bArr)) {
                byteArrayOutputStream.write(bArr, 0, read);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArray.getClass();
            resourceAsStream.close();
            return byteArray;
        } finally {
        }
    }
}
