package com.fsck.k9.activity.loader;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.loader.content.AsyncTaskLoader;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.activity.misc.Attachment;
import com.fsck.k9.helper.FileHelper;
import com.fsck.k9.message.Attachment;
import com.google.zxing.BinaryBitmap;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Locale;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.commons.io.IOUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AttachmentInfoLoader extends AsyncTaskLoader {
    public final /* synthetic */ int $r8$classId;
    public Attachment cachedResultAttachment;
    public final Attachment sourceAttachment;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AttachmentInfoLoader(Context context, Attachment attachment, int i) {
        super(context);
        this.$r8$classId = i;
        switch (i) {
            case 1:
                super(context);
                if (attachment.state == Attachment.LoadingState.METADATA) {
                    this.sourceAttachment = attachment;
                    return;
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m("Attachment provided to content loader must be in METADATA state");
                    throw null;
                }
            default:
                if (attachment.state == Attachment.LoadingState.URI_ONLY) {
                    this.sourceAttachment = attachment;
                    return;
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m("Attachment provided to metadata loader must be in URI_ONLY state");
                    throw null;
                }
        }
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final Object loadInBackground() {
        long j;
        String str;
        int i = this.$r8$classId;
        Context context = this.mContext;
        com.fsck.k9.activity.misc.Attachment attachment = this.sourceAttachment;
        com.fsck.k9.activity.misc.Attachment attachment2 = null;
        switch (i) {
            case 0:
                try {
                    Uri uri = attachment.uri;
                    String str2 = attachment.contentType;
                    ContentResolver contentResolver = context.getContentResolver();
                    Cursor query = contentResolver.query(uri, new String[]{"_display_name", "_size"}, null, null, null);
                    if (query != null) {
                        try {
                            if (query.moveToFirst()) {
                                str = query.getString(0);
                                j = query.getInt(1);
                            } else {
                                j = -1;
                                str = null;
                            }
                            query.close();
                        } catch (Throwable th) {
                            query.close();
                            throw th;
                        }
                    } else {
                        j = -1;
                        str = null;
                    }
                    if (str == null) {
                        str = uri.getLastPathSegment();
                    }
                    String str3 = str;
                    String type = contentResolver.getType(uri);
                    if (type != null || str2 == null || str2.indexOf(42) == -1) {
                        str2 = type;
                    }
                    if (str2 == null) {
                        str2 = FileHelper.getMimeTypeByExtension(str3);
                    }
                    if (!attachment.allowMessageType && str2 != null && str2.toLowerCase(Locale.ROOT).startsWith("message/")) {
                        str2 = "application/octet-stream";
                    }
                    if (j <= 0) {
                        String uri2 = uri.toString();
                        if (uri2.startsWith("file://")) {
                            j = new File(uri2.substring(7)).length();
                        } else {
                            Log.v("Not a file: %s", uri2);
                        }
                    } else {
                        Log.v("old attachment.size: %d", Long.valueOf(j));
                    }
                    Log.v("new attachment.size: %d", Long.valueOf(j));
                    if (attachment.state == Attachment.LoadingState.URI_ONLY) {
                        attachment2 = new com.fsck.k9.activity.misc.Attachment(attachment.uri, Attachment.LoadingState.METADATA, attachment.loaderId, str2, attachment.allowMessageType, str3, Long.valueOf(j), null, attachment.isInternalAttachment);
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("deriveWithMetadataLoaded can only be called on a URI_ONLY attachment!");
                    }
                    this.cachedResultAttachment = attachment2;
                    return attachment2;
                } catch (Exception e) {
                    Log.e(e, "Error getting attachment meta data", new Object[0]);
                    com.fsck.k9.activity.misc.Attachment deriveWithLoadCancelled = attachment.deriveWithLoadCancelled();
                    this.cachedResultAttachment = deriveWithLoadCancelled;
                    return deriveWithLoadCancelled;
                }
            default:
                try {
                    File createTempFile = File.createTempFile("attachment", null, context.getCacheDir());
                    createTempFile.deleteOnExit();
                    Log.v("Saving attachment to %s", createTempFile.getAbsolutePath());
                    boolean z = attachment.isInternalAttachment;
                    Uri uri3 = attachment.uri;
                    InputStream openInputStream = z ? context.getContentResolver().openInputStream(uri3) : new BinaryBitmap(context).openInputStream(uri3);
                    if (openInputStream == null) {
                        Log.w("Error opening attachment for reading: %s", uri3);
                        com.fsck.k9.activity.misc.Attachment deriveWithLoadCancelled2 = attachment.deriveWithLoadCancelled();
                        this.cachedResultAttachment = deriveWithLoadCancelled2;
                        return deriveWithLoadCancelled2;
                    }
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                        try {
                            IOUtils.copy(openInputStream, fileOutputStream);
                            openInputStream.close();
                            String absolutePath = createTempFile.getAbsolutePath();
                            if (attachment.state == Attachment.LoadingState.METADATA) {
                                attachment2 = new com.fsck.k9.activity.misc.Attachment(attachment.uri, Attachment.LoadingState.COMPLETE, attachment.loaderId, attachment.contentType, attachment.allowMessageType, attachment.name, attachment.size, absolutePath, attachment.isInternalAttachment);
                            } else {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("deriveWithLoadComplete can only be called on a METADATA attachment!");
                            }
                            this.cachedResultAttachment = attachment2;
                            return attachment2;
                        } finally {
                            fileOutputStream.close();
                        }
                    } catch (Throwable th2) {
                        openInputStream.close();
                        throw th2;
                    }
                } catch (Exception e2) {
                    Log.e(e2, "Error saving attachment!", new Object[0]);
                    com.fsck.k9.activity.misc.Attachment deriveWithLoadCancelled3 = attachment.deriveWithLoadCancelled();
                    this.cachedResultAttachment = deriveWithLoadCancelled3;
                    return deriveWithLoadCancelled3;
                }
        }
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final void onStartLoading() {
        switch (this.$r8$classId) {
            case 0:
                com.fsck.k9.activity.misc.Attachment attachment = this.cachedResultAttachment;
                if (attachment != null) {
                    deliverResult(attachment);
                }
                if (takeContentChanged() || this.cachedResultAttachment == null) {
                    forceLoad();
                    break;
                }
                break;
            default:
                if (this.cachedResultAttachment != null) {
                    deliverResult(this.sourceAttachment);
                }
                if (takeContentChanged() || this.cachedResultAttachment == null) {
                    forceLoad();
                    break;
                }
                break;
        }
    }
}
