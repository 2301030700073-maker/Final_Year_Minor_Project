package com.google.android.material.color;

import android.content.Context;
import android.content.res.loader.ResourcesLoader;
import android.content.res.loader.ResourcesProvider;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.util.Log;
import io.sentry.android.core.SentryLogcatAdapter;
import io.sentry.instrumentation.file.SentryFileOutputStream;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.util.Map;

/* loaded from: classes4.dex */
final class ColorResourcesLoaderCreator {
    private static final String TAG = "ColorResLoaderCreator";

    private ColorResourcesLoaderCreator() {
    }

    static ResourcesLoader create(Context context, Map<Integer, Integer> map) {
        FileDescriptor fileDescriptor;
        try {
            byte[] create = ColorResourcesTableCreator.create(context, map);
            Log.i(TAG, "Table created, length: " + create.length);
            if (create.length == 0) {
                return null;
            }
            try {
                fileDescriptor = Os.memfd_create("temp.arsc", 0);
                try {
                    if (fileDescriptor == null) {
                        SentryLogcatAdapter.w(TAG, "Cannot create memory file descriptor.");
                        if (fileDescriptor != null) {
                            Os.close(fileDescriptor);
                        }
                        return null;
                    }
                    FileOutputStream create2 = SentryFileOutputStream.Factory.create(new FileOutputStream(fileDescriptor), fileDescriptor);
                    try {
                        create2.write(create);
                        ParcelFileDescriptor dup = ParcelFileDescriptor.dup(fileDescriptor);
                        try {
                            ResourcesLoader resourcesLoader = new ResourcesLoader();
                            resourcesLoader.addProvider(ResourcesProvider.loadFromTable(dup, null));
                            if (dup != null) {
                                dup.close();
                            }
                            create2.close();
                            if (fileDescriptor != null) {
                                Os.close(fileDescriptor);
                            }
                            return resourcesLoader;
                        } finally {
                        }
                    } finally {
                    }
                } catch (Throwable th) {
                    th = th;
                    if (fileDescriptor != null) {
                        Os.close(fileDescriptor);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileDescriptor = null;
            }
        } catch (Exception e) {
            SentryLogcatAdapter.e(TAG, "Failed to create the ColorResourcesTableCreator.", e);
            return null;
        }
    }
}
