package com.fsck.k9.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences;
import com.fsck.k9.mail.FetchProfile;
import com.fsck.k9.mail.filter.CountingOutputStream;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LocalStoreProvider;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Collections;
import kotlin.io.CloseableKt;
import kotlin.math.MathKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;
import org.openintents.openpgp.util.OpenPgpApi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class RawMessageProvider extends ContentProvider {
    public static String AUTHORITY;
    public static Uri CONTENT_URI;
    public static final String[] DEFAULT_PROJECTION = {"_display_name", "_size"};

    public static LocalMessage loadMessage(MessageReference messageReference) {
        String str = messageReference.accountUuid;
        long j = messageReference.folderId;
        String str2 = messageReference.uid;
        LegacyAccountDto account = ((Preferences) CloseableKt.get$default(Preferences.class)).getAccount(str);
        if (account == null) {
            Log.w("Account not found: %s", str);
            return null;
        }
        try {
            LocalFolder localFolder = new LocalFolder(((LocalStoreProvider) CloseableKt.get$default(LocalStoreProvider.class)).getInstance(account), j);
            localFolder.open();
            LocalMessage message = localFolder.getMessage(str2);
            if (message != null && message.databaseId != 0) {
                FetchProfile fetchProfile = new FetchProfile();
                fetchProfile.add(FetchProfile.Item.BODY);
                localFolder.fetch(Collections.singletonList(message), fetchProfile);
                return message;
            }
            Log.w("Message not found: folder=%s, uid=%s", Long.valueOf(j), str2);
            return null;
        } catch (MessagingException e) {
            Log.e(e, "Error loading message: folder=%d, uid=%s", Long.valueOf(j), str2);
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return "message/rfc822";
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        AUTHORITY = ViewSizeResolver.CC.m(getContext().getPackageName(), ".rawmessageprovider");
        CONTENT_URI = Uri.parse("content://" + AUTHORITY);
        return true;
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) {
        ParcelFileDescriptor parcelFileDescriptor = null;
        try {
            final LocalMessage loadMessage = loadMessage(MathKt.parse(uri.getPathSegments().get(0)));
            OpenPgpApi.OpenPgpDataSource openPgpDataSource = loadMessage == null ? null : new OpenPgpApi.OpenPgpDataSource() { // from class: com.fsck.k9.provider.RawMessageProvider.1
                @Override // org.openintents.openpgp.util.OpenPgpApi.OpenPgpDataSource
                public final void writeTo(ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream) {
                    try {
                        LocalMessage.this.writeTo(autoCloseOutputStream);
                    } catch (MessagingException e) {
                        throw new IOException(e);
                    }
                }
            };
            if (openPgpDataSource != null) {
                parcelFileDescriptor = openPgpDataSource.startPumpThread();
            }
        } catch (IOException e) {
            Log.e(e, "Error creating ParcelFileDescriptor", new Object[0]);
        }
        if (parcelFileDescriptor != null) {
            return parcelFileDescriptor;
        }
        throw new FileNotFoundException("Message missing or cannot be opened!");
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        long j;
        if (strArr == null) {
            strArr = DEFAULT_PROJECTION;
        }
        LocalMessage loadMessage = loadMessage(MathKt.parse(uri.getPathSegments().get(0)));
        if (loadMessage == null) {
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(strArr);
        Object[] objArr = new Object[strArr.length];
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            String str3 = strArr[i];
            if ("_display_name".equals(str3)) {
                objArr[i] = CameraDevices$CC.m(new StringBuilder(), loadMessage.subject, ".eml");
            } else if ("_size".equals(str3)) {
                try {
                    CountingOutputStream countingOutputStream = new CountingOutputStream();
                    try {
                        loadMessage.writeTo(countingOutputStream);
                        j = countingOutputStream.mCount;
                        countingOutputStream.close();
                    } catch (Throwable th) {
                        try {
                            countingOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (IOException | MessagingException e) {
                    Log.w(e, "Unable to compute message size", new Object[0]);
                    j = 0;
                }
                objArr[i] = Long.valueOf(j);
            } else {
                continue;
            }
        }
        matrixCursor.addRow(objArr);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
