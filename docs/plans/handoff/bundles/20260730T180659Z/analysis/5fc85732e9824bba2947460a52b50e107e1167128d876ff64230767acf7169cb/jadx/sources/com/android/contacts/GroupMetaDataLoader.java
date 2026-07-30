package com.android.contacts;

import android.content.Context;
import android.content.CursorLoader;
import android.net.Uri;
import com.android.contacts.group.GroupUtil;

/* loaded from: classes.dex */
public final class GroupMetaDataLoader extends CursorLoader {
    public static final String[] COLUMNS = {"account_name", "account_type", "data_set", "_id", "title", "auto_add", "favorites", "group_is_read_only", "deleted"};

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GroupMetaDataLoader(Context context, Uri uri) {
        super(context, uri, COLUMNS, GroupUtil.DEFAULT_SELECTION, null, GroupUtil.getGroupsSortOrder());
        ensureIsGroupUri(uri);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GroupMetaDataLoader(Context context, Uri uri, String str) {
        super(context, uri, COLUMNS, str, null, GroupUtil.getGroupsSortOrder());
        ensureIsGroupUri(uri);
    }

    private static Uri ensureIsGroupUri(Uri uri) {
        if (uri == null) {
            throw new IllegalArgumentException("Uri must not be null");
        }
        if (GroupUtil.isGroupUri(uri)) {
            return uri;
        }
        throw new IllegalArgumentException("Invalid group Uri: " + uri);
    }
}
