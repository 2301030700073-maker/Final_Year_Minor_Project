package com.fsck.k9.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.fsck.k9.Preferences;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LocalStoreProvider;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import kotlin.io.CloseableKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;
import org.openintents.openpgp.util.OpenPgpApi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class AttachmentProvider extends ContentProvider {
    public static Uri CONTENT_URI;
    public static final String[] DEFAULT_PROJECTION = {"_id", "_data"};

    public static LocalStore.AnonymousClass9 getAttachmentDataSource(String str, String str2) {
        return new OpenPgpApi.OpenPgpDataSource() { // from class: com.fsck.k9.mailstore.LocalStore.9
            public final /* synthetic */ String val$partId;

            public AnonymousClass9(String str22) {
                r2 = str22;
            }

            @Override // org.openintents.openpgp.util.OpenPgpApi.OpenPgpDataSource
            public final void writeTo(ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream) {
                LocalStore localStore = LocalStore.this;
                try {
                    localStore.database.execute(false, new ImapSync(localStore, r2, autoCloseOutputStream, false, 25));
                } catch (MessagingException e) {
                    throw new IOException("Got a MessagingException while writing attachment data!", e);
                }
            }
        };
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        String str = pathSegments.get(0);
        String str2 = pathSegments.get(1);
        String str3 = pathSegments.size() < 3 ? null : pathSegments.get(2);
        LegacyAccountDto account = ((Preferences) CloseableKt.get$default(Preferences.class)).getAccount(str);
        try {
            return str3 != null ? str3 : ((LocalStore.AttachmentInfo) ((LocalStoreProvider) CloseableKt.get$default(LocalStoreProvider.class)).getInstance(account).database.execute(false, new LocalStore.AnonymousClass8(0, str2, false))).type;
        } catch (MessagingException e) {
            Log.e(e, "Unable to retrieve LocalStore for %s", account);
            return "application/octet-stream";
        }
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        CONTENT_URI = Uri.parse("content://".concat(getContext().getPackageName() + ".attachmentprovider"));
        return true;
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) {
        List<String> pathSegments = uri.getPathSegments();
        ParcelFileDescriptor parcelFileDescriptor = null;
        try {
            parcelFileDescriptor = getAttachmentDataSource(pathSegments.get(0), pathSegments.get(1)).startPumpThread();
        } catch (IOException e) {
            Log.e(e, "Error creating ParcelFileDescriptor", new Object[0]);
        } catch (MessagingException e2) {
            Log.e(e2, "Error getting InputStream for attachment", new Object[0]);
        }
        if (parcelFileDescriptor != null) {
            return parcelFileDescriptor;
        }
        throw new FileNotFoundException("Attachment missing or cannot be opened!");
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (strArr == null) {
            strArr = DEFAULT_PROJECTION;
        }
        List<String> pathSegments = uri.getPathSegments();
        String str3 = pathSegments.get(0);
        String str4 = pathSegments.get(1);
        try {
            LocalStore.AttachmentInfo attachmentInfo = (LocalStore.AttachmentInfo) ((LocalStoreProvider) CloseableKt.get$default(LocalStoreProvider.class)).getInstance(((Preferences) CloseableKt.get$default(Preferences.class)).getAccount(str3)).database.execute(false, new LocalStore.AnonymousClass8(0, str4, false));
            if (attachmentInfo == null) {
                Log.d("No attachment info for ID: %s", str4);
                return null;
            }
            MatrixCursor matrixCursor = new MatrixCursor(strArr);
            Object[] objArr = new Object[strArr.length];
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                String str5 = strArr[i];
                if ("_id".equals(str5)) {
                    objArr[i] = str4;
                } else if ("_data".equals(str5)) {
                    objArr[i] = uri.toString();
                } else if ("_display_name".equals(str5)) {
                    objArr[i] = attachmentInfo.name;
                } else if ("_size".equals(str5)) {
                    objArr[i] = Long.valueOf(attachmentInfo.size);
                }
            }
            matrixCursor.addRow(objArr);
            return matrixCursor;
        } catch (MessagingException e) {
            Log.e(e, "Unable to retrieve attachment info from local store for ID: %s", str4);
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
