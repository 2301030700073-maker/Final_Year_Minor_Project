package app.k9mail.core.android.common.contact;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import androidx.tracing.TraceApi29Impl;
import app.k9mail.core.android.common.database.EmptyCursor;
import net.thunderbird.core.common.mail.EmailAddress;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContentResolverContactDataSource {
    public static final String[] PROJECTION = {"_id", "display_name", "photo_uri", "lookup"};
    public final AndroidContactPermissionResolver contactPermissionResolver;
    public final ContentResolver contentResolver;

    public ContentResolverContactDataSource(ContentResolver contentResolver, AndroidContactPermissionResolver androidContactPermissionResolver) {
        this.contentResolver = contentResolver;
        this.contactPermissionResolver = androidContactPermissionResolver;
    }

    public final Cursor getCursorFor(EmailAddress emailAddress) {
        if (TraceApi29Impl.checkSelfPermission(this.contactPermissionResolver.context, "android.permission.READ_CONTACTS") != 0) {
            return new EmptyCursor();
        }
        Cursor query = this.contentResolver.query(Uri.withAppendedPath(ContactsContract.CommonDataKinds.Email.CONTENT_LOOKUP_URI, Uri.encode(emailAddress.getAddress())), PROJECTION, null, null, "display_name, _id");
        return query == null ? new EmptyCursor() : query;
    }
}
