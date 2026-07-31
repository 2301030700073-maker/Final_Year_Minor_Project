package com.fsck.k9.provider;

import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import androidx.core.content.FileProvider;
import androidx.tracing.TraceApi29Impl;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.message.MessageBuilder;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.provider.DecryptedFileProvider;
import com.jcraft.jzlib.Adler32;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import kotlin.io.CloseableKt;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import okio.ByteString;
import org.apache.commons.io.IOUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class AttachmentTempFileProvider extends FileProvider {
    public static String AUTHORITY;
    public static final Object tempFileWriteMonitor = new Object();
    public static final Object cleanupReceiverMonitor = new Object();
    public static final GeneralSettingsManager generalSettingsManager = (GeneralSettingsManager) CloseableKt.get$default(GeneralSettingsManager.class);
    public static DecryptedFileProvider.DecryptedFileProviderCleanupReceiver cleanupReceiver = null;

    public static Uri createTempUriForContentUri(Context context, Uri uri, String str) {
        Context applicationContext = context.getApplicationContext();
        Context applicationContext2 = applicationContext.getApplicationContext();
        String uri2 = uri.toString();
        ByteString byteString = ByteString.EMPTY;
        File file = new File(getTempFileDirectory(applicationContext2), Adler32.encodeUtf8(uri2).digest$okio("SHA-1").hex());
        synchronized (tempFileWriteMonitor) {
            try {
                if (!file.exists()) {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    InputStream openInputStream = context.getContentResolver().openInputStream(uri);
                    if (openInputStream == null) {
                        throw new IOException("Failed to resolve content at uri: " + uri);
                    }
                    IOUtils.copy(openInputStream, fileOutputStream);
                    fileOutputStream.close();
                    IOUtils.closeQ(openInputStream);
                }
            } finally {
            }
        }
        Uri build = FileProvider.getUriForFile(context, AUTHORITY, file).buildUpon().appendQueryParameter("displayName", str).build();
        registerFileCleanupReceiver(applicationContext);
        return build;
    }

    public static boolean deleteOldTemporaryFiles(Context context) {
        File tempFileDirectory = getTempFileDirectory(context);
        long currentTimeMillis = System.currentTimeMillis() - 180000;
        boolean z = true;
        for (File file : tempFileDirectory.listFiles()) {
            if (file.lastModified() < currentTimeMillis) {
                if (!file.delete()) {
                    Log.e("Failed to delete temporary file", new Object[0]);
                }
            } else if (((DefaultGeneralSettingsManager) generalSettingsManager).getConfig().debugging.isDebugLoggingEnabled) {
                Log.e("Not deleting temp file (for another %s minutes)", String.format(Locale.ENGLISH, "%.2f", Double.valueOf(((r8 - currentTimeMillis) / 1000) / 60.0d)));
            }
            z = false;
        }
        return z;
    }

    public static File getTempFileDirectory(Context context) {
        File file = new File(context.getCacheDir(), "temp");
        if (!file.exists() && !file.mkdir()) {
            Log.e("Error creating directory: %s", file.getAbsolutePath());
        }
        return file;
    }

    public static void registerFileCleanupReceiver(Context context) {
        synchronized (cleanupReceiverMonitor) {
            try {
                if (cleanupReceiver != null) {
                    return;
                }
                Log.d("Registering temp file cleanup receiver", new Object[0]);
                cleanupReceiver = new DecryptedFileProvider.DecryptedFileProviderCleanupReceiver(1);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                TraceApi29Impl.registerReceiver(context, cleanupReceiver, intentFilter, 4);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void unregisterFileCleanupReceiver(Context context) {
        synchronized (cleanupReceiverMonitor) {
            try {
                if (cleanupReceiver == null) {
                    return;
                }
                Log.d("Unregistering temp file cleanup receiver", new Object[0]);
                context.unregisterReceiver(cleanupReceiver);
                cleanupReceiver = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.core.content.FileProvider, android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.content.FileProvider, android.content.ContentProvider
    public final String getType(Uri uri) {
        return uri.getQueryParameter("mime_type");
    }

    @Override // androidx.core.content.FileProvider, android.content.ContentProvider
    public final boolean onCreate() {
        AUTHORITY = ViewSizeResolver.CC.m(getContext().getPackageName(), ".tempfileprovider");
        return true;
    }

    @Override // android.content.ContentProvider, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        Context context;
        if (i >= 80 && (context = getContext()) != null) {
            new MessageBuilder.AnonymousClass1(1, context).execute(new Void[0]);
            unregisterFileCleanupReceiver(context);
        }
    }
}
