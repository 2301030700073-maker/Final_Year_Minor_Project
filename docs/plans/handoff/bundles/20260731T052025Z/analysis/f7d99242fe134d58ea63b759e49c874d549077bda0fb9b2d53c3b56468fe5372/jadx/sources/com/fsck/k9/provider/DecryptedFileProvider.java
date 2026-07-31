package com.fsck.k9.provider;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import androidx.core.content.FileProvider;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.message.MessageBuilder;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import kotlin.io.CloseableKt;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import org.apache.james.mime4j.codec.Base64InputStream;
import org.apache.james.mime4j.codec.QuotedPrintableInputStream;
import org.apache.james.mime4j.util.MimeUtil;
import org.openintents.openpgp.util.ParcelFileDescriptorUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class DecryptedFileProvider extends FileProvider {
    public static String AUTHORITY;
    public static DecryptedFileProviderCleanupReceiver cleanupReceiver;
    public static final Object cleanupReceiverMonitor = new Object();
    public static final GeneralSettingsManager generalSettingManager = (GeneralSettingsManager) CloseableKt.get$default(GeneralSettingsManager.class);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DecryptedFileProviderCleanupReceiver extends BroadcastReceiver {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ DecryptedFileProviderCleanupReceiver(int i) {
            this.$r8$classId = i;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            switch (this.$r8$classId) {
                case 0:
                    if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                        UriKt$$ExternalSyntheticBUOutline0.m("onReceive called with action that isn't screen off!");
                        break;
                    } else {
                        Log.d("Cleaning up temp files", new Object[0]);
                        if (DecryptedFileProvider.deleteOldTemporaryFiles(context)) {
                            DecryptedFileProvider.unregisterFileCleanupReceiver(context);
                            break;
                        }
                    }
                    break;
                default:
                    if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                        UriKt$$ExternalSyntheticBUOutline0.m("onReceive called with action that isn't screen off!");
                        break;
                    } else {
                        Log.d("Cleaning up temp files", new Object[0]);
                        if (AttachmentTempFileProvider.deleteOldTemporaryFiles(context)) {
                            AttachmentTempFileProvider.unregisterFileCleanupReceiver(context);
                            break;
                        }
                    }
                    break;
            }
        }
    }

    public static boolean deleteOldTemporaryFiles(Context context) {
        File decryptedTempDirectory = getDecryptedTempDirectory(context);
        long currentTimeMillis = System.currentTimeMillis() - 180000;
        boolean z = true;
        for (File file : decryptedTempDirectory.listFiles()) {
            if (file.lastModified() < currentTimeMillis) {
                if (!file.delete()) {
                    Log.e("Failed to delete temporary file", new Object[0]);
                }
            } else if (((DefaultGeneralSettingsManager) generalSettingManager).getConfig().debugging.isDebugLoggingEnabled) {
                Log.e("Not deleting temp file (for another %s minutes)", String.format(Locale.ENGLISH, "%.2f", Double.valueOf(((r8 - currentTimeMillis) / 1000) / 60.0d)));
            }
            z = false;
        }
        return z;
    }

    public static File getDecryptedTempDirectory(Context context) {
        File file = new File(context.getCacheDir(), "decrypted");
        if (!file.exists() && !file.mkdir()) {
            Log.e("Error creating directory: %s", file.getAbsolutePath());
        }
        return file;
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
        AUTHORITY = ViewSizeResolver.CC.m(getContext().getPackageName(), ".decryptedfileprovider");
        return true;
    }

    @Override // android.content.ContentProvider, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        Context context;
        if (i >= 80 && (context = getContext()) != null) {
            new MessageBuilder.AnonymousClass1(2, context).execute(new Void[0]);
            unregisterFileCleanupReceiver(context);
        }
    }

    @Override // androidx.core.content.FileProvider, android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) {
        InputStream quotedPrintableInputStream;
        ParcelFileDescriptor openFile = super.openFile(uri, "r");
        String queryParameter = uri.getQueryParameter("encoding");
        int i = MimeUtil.$r8$clinit;
        if ("base64".equalsIgnoreCase(queryParameter)) {
            quotedPrintableInputStream = new Base64InputStream(new ParcelFileDescriptor.AutoCloseInputStream(openFile), 0);
        } else {
            if (!"quoted-printable".equalsIgnoreCase(queryParameter)) {
                if (!TextUtils.isEmpty(queryParameter)) {
                    Log.e("unsupported encoding, returning raw stream", new Object[0]);
                }
                return openFile;
            }
            quotedPrintableInputStream = new QuotedPrintableInputStream(new ParcelFileDescriptor.AutoCloseInputStream(openFile));
        }
        try {
            ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
            ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
            new ParcelFileDescriptorUtil.TransferThread(quotedPrintableInputStream, new ParcelFileDescriptor.AutoCloseOutputStream(createPipe[1])).start();
            return parcelFileDescriptor;
        } catch (IOException unused) {
            throw new FileNotFoundException();
        }
    }
}
