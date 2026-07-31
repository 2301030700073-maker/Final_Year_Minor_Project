package org.maplibre.android;

import kotlin.text.UStringsKt;
import org.maplibre.android.log.Logger;
import org.maplibre.android.module.loader.LibraryLoaderProviderImpl$SystemLibraryLoader;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LibraryLoader {
    public static boolean loaded;
    public static volatile LibraryLoaderProviderImpl$SystemLibraryLoader loader;

    static {
        ((LoginClient) MapLibre.getModuleProvider()).getClass();
        loader = new LibraryLoaderProviderImpl$SystemLibraryLoader();
    }

    public static synchronized void load() {
        synchronized (LibraryLoader.class) {
            try {
                if (!loaded) {
                    loaded = true;
                    loader.getClass();
                    System.loadLibrary("maplibre");
                }
            } catch (UnsatisfiedLinkError e) {
                loaded = false;
                Logger.e("Mbgl-LibraryLoader", "Failed to load native shared library.", e);
                UStringsKt.strictModeViolation("Failed to load native shared library.", e);
                try {
                    try {
                        try {
                            Class.forName("org.junit.Test");
                        } catch (ClassNotFoundException unused) {
                        }
                    } catch (ClassNotFoundException unused2) {
                        Class.forName("android.os.Build");
                        throw e;
                    }
                } catch (ClassNotFoundException unused3) {
                    Class.forName("org.robolectric.Robolectric");
                }
            }
        }
    }
}
