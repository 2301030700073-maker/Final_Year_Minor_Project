package androidx.navigation.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.content.res.AssetFileDescriptor;
import android.net.ConnectivityManager;
import android.net.Uri;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.emoji2.text.ConcurrencyHelpers$$ExternalSyntheticLambda0;
import androidx.emoji2.text.EmojiCompat;
import androidx.tracing.TraceApi29Impl;
import androidx.work.Operation$State;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.model.AssetUriLoader;
import com.bumptech.glide.load.model.MediaStoreFileLoader;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.util.GlideSuppliers$GlideSupplier;
import com.fsck.k9.helper.FileHelper;
import com.fsck.k9.provider.AttachmentTempFileProvider;
import com.fsck.k9.provider.DecryptedFileProvider;
import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.logging.legacy.Log;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavContext implements EmojiCompat.MetadataRepoLoader, ModelLoaderFactory, GlideSuppliers$GlideSupplier {
    public final /* synthetic */ int $r8$classId;
    public final Context context;

    public NavContext(Context context) {
        this.$r8$classId = 1;
        this.context = context.getApplicationContext();
    }

    @Override // com.bumptech.glide.load.model.ModelLoaderFactory
    public ModelLoader build(MultiModelLoaderFactory multiModelLoaderFactory) {
        int i = this.$r8$classId;
        Context context = this.context;
        switch (i) {
            case 3:
                return new AssetUriLoader(context, this);
            case 4:
                return new AssetUriLoader(context, this);
            case 5:
                return new AssetUriLoader(context, this);
            case 6:
                return new MediaStoreFileLoader(context, 0);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new AssetUriLoader(context, multiModelLoaderFactory.build(Integer.class, AssetFileDescriptor.class));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new AssetUriLoader(context, multiModelLoaderFactory.build(Integer.class, InputStream.class));
            case 9:
                return new MediaStoreFileLoader(context, 1);
            default:
                return new MediaStoreFileLoader(context, 2);
        }
    }

    public File createFile() {
        Context context = this.context;
        synchronized (DecryptedFileProvider.cleanupReceiverMonitor) {
            try {
                if (DecryptedFileProvider.cleanupReceiver == null) {
                    Log.d("Registering temp file cleanup receiver", new Object[0]);
                    DecryptedFileProvider.cleanupReceiver = new DecryptedFileProvider.DecryptedFileProviderCleanupReceiver(0);
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.intent.action.SCREEN_OFF");
                    TraceApi29Impl.registerReceiver(context, DecryptedFileProvider.cleanupReceiver, intentFilter, 4);
                }
            } finally {
            }
        }
        return File.createTempFile("decrypted-", null, DecryptedFileProvider.getDecryptedTempDirectory(this.context));
    }

    @Override // com.bumptech.glide.util.GlideSuppliers$GlideSupplier
    public Object get() {
        return (ConnectivityManager) this.context.getSystemService("connectivity");
    }

    public Intent getBestViewIntent(Uri uri, String str, String str2) {
        PriorityQueue priorityQueue;
        uri.getClass();
        str2.getClass();
        String mimeTypeByExtension = FileHelper.getMimeTypeByExtension(str);
        if (FileHelper.isSameMimeType(str2, "application/octet-stream")) {
            mimeTypeByExtension.getClass();
            priorityQueue = getViewIntentForMimeType(uri, mimeTypeByExtension);
        } else {
            PriorityQueue viewIntentForMimeType = getViewIntentForMimeType(uri, str2);
            if (viewIntentForMimeType.size != 0 || Intrinsics.areEqual(mimeTypeByExtension, str2)) {
                priorityQueue = viewIntentForMimeType;
            } else {
                mimeTypeByExtension.getClass();
                priorityQueue = getViewIntentForMimeType(uri, mimeTypeByExtension);
            }
        }
        if (priorityQueue.size == 0) {
            priorityQueue = getViewIntentForMimeType(uri, "application/octet-stream");
        }
        return (Intent) priorityQueue.array;
    }

    public PriorityQueue getViewIntentForMimeType(Uri uri, String str) {
        if (!AttachmentTempFileProvider.AUTHORITY.equals(uri.getAuthority())) {
            UriKt$$ExternalSyntheticBUOutline0.m("Can only call this method for URIs within this authority!");
            return null;
        }
        if (uri.getQueryParameter("mime_type") != null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Can only call this method for not yet typed URIs!");
            return null;
        }
        Uri build = uri.buildUpon().appendQueryParameter("mime_type", str).build();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(build, str);
        intent.addFlags(1);
        intent.addFlags(268959744);
        List<ResolveInfo> queryIntentActivities = this.context.getPackageManager().queryIntentActivities(intent, 65536);
        queryIntentActivities.getClass();
        return new PriorityQueue(queryIntentActivities.size(), 12, intent);
    }

    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
    public void load(Operation$State operation$State) {
        ConcurrencyHelpers$$ExternalSyntheticLambda0 concurrencyHelpers$$ExternalSyntheticLambda0 = new ConcurrencyHelpers$$ExternalSyntheticLambda0("EmojiCompatInitializer");
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), concurrencyHelpers$$ExternalSyntheticLambda0);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new Processor$$ExternalSyntheticLambda1(this, operation$State, threadPoolExecutor, 12));
    }

    public /* synthetic */ NavContext(Context context, int i) {
        this.$r8$classId = i;
        this.context = context;
    }
}
