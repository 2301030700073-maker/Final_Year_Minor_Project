package app.k9mail.core.android.common.contact;

import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import net.thunderbird.core.common.cache.Cache;
import net.thunderbird.core.common.mail.EmailAddress;
import net.thunderbird.core.common.mail.TokensKt;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CachingContactRepository implements ContactRepository {
    public final Cache cache;
    public final ContentResolverContactDataSource dataSource;

    public CachingContactRepository(Cache cache, ContentResolverContactDataSource contentResolverContactDataSource) {
        this.cache = cache;
        this.dataSource = contentResolverContactDataSource;
    }

    public final Contact getContactFor(EmailAddress emailAddress) {
        EmailAddress emailAddress2;
        Cache cache = this.cache;
        if (cache.hasKey(emailAddress)) {
            return (Contact) cache.get(emailAddress);
        }
        Cursor cursorFor = this.dataSource.getCursorFor(emailAddress);
        try {
            Contact contact = null;
            if (cursorFor.moveToFirst()) {
                long longOrThrow = Util.getLongOrThrow(cursorFor, "_id");
                Uri lookupUri = ContactsContract.Contacts.getLookupUri(longOrThrow, Util.getStringOrNull(cursorFor, "lookup"));
                String stringOrNull = Util.getStringOrNull(cursorFor, "display_name");
                String stringOrNull2 = Util.getStringOrNull(cursorFor, "photo_uri");
                Uri parse = stringOrNull2 != null ? Uri.parse(stringOrNull2) : null;
                lookupUri.getClass();
                emailAddress2 = emailAddress;
                Contact contact2 = new Contact(longOrThrow, stringOrNull, emailAddress2, lookupUri, parse);
                cursorFor.close();
                contact = contact2;
            } else {
                emailAddress2 = emailAddress;
                cursorFor.close();
            }
            cache.set(emailAddress2, contact);
            return contact;
        } finally {
        }
    }

    public final Uri getPhotoUri(String str) {
        Contact contactFor;
        str.getClass();
        EmailAddress emailAddressOrNull = TokensKt.toEmailAddressOrNull(str);
        if (emailAddressOrNull == null || (contactFor = getContactFor(emailAddressOrNull)) == null) {
            return null;
        }
        return contactFor.photoUri;
    }

    public final boolean hasContactFor(EmailAddress emailAddress) {
        emailAddress.getClass();
        Cache cache = this.cache;
        if (cache.hasKey(emailAddress)) {
            return cache.get(emailAddress) != null;
        }
        Cursor cursorFor = this.dataSource.getCursorFor(emailAddress);
        try {
            boolean z = cursorFor.getCount() > 0;
            cursorFor.close();
            return z;
        } finally {
        }
    }
}
