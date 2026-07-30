package com.android.launcher3.util;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.GraphicsUtils;

/* loaded from: classes.dex */
public class ContentWriter {
    public CommitParams mCommitParams;
    public final Context mContext;
    public BitmapInfo mIcon;
    public UserHandle mUser;
    public final ContentValues mValues;

    public final class CommitParams {
        public String[] mSelectionArgs;
        public final Uri mUri = LauncherSettings$Favorites.CONTENT_URI;
        public String mWhere;

        public CommitParams(String str, String[] strArr) {
            this.mWhere = str;
            this.mSelectionArgs = strArr;
        }
    }

    public ContentWriter(Context context) {
        this.mValues = new ContentValues();
        this.mContext = context;
    }

    public int commit() {
        if (this.mCommitParams == null) {
            return 0;
        }
        ContentResolver contentResolver = this.mContext.getContentResolver();
        Uri uri = this.mCommitParams.mUri;
        ContentValues values = getValues(this.mContext);
        CommitParams commitParams = this.mCommitParams;
        return contentResolver.update(uri, values, commitParams.mWhere, commitParams.mSelectionArgs);
    }

    public ContentValues getValues(Context context) {
        if (this.mIcon != null && !LauncherAppState.getInstance(context).mIconCache.isDefaultIcon(this.mIcon, this.mUser)) {
            this.mValues.put("icon", GraphicsUtils.flattenBitmap(this.mIcon.icon));
            this.mIcon = null;
        }
        return this.mValues;
    }

    public ContentWriter put(String str, Integer num) {
        this.mValues.put(str, num);
        return this;
    }

    public ContentWriter put(String str, String str2) {
        this.mValues.put(str, str2);
        return this;
    }

    public ContentWriter(ContentValues contentValues, Context context) {
        this.mValues = contentValues;
        this.mContext = null;
    }
}
