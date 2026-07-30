package com.android.launcher3.shortcuts;

import android.content.Context;
import android.content.pm.LauncherApps;
import android.os.UserHandle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class ShortcutRequest {
    public final Context mContext;
    public final UserHandle mUserHandle;
    public final LauncherApps.ShortcutQuery mQuery = new LauncherApps.ShortcutQuery();
    public boolean mFailed = false;

    public ShortcutRequest(Context context, UserHandle userHandle) {
        this.mContext = context;
        this.mUserHandle = userHandle;
    }

    public ShortcutRequest forPackage(String str, List list) {
        if (str != null) {
            this.mQuery.setPackage(str);
            this.mQuery.setShortcutIds(list);
        }
        return this;
    }

    public QueryResult query(int i) {
        if (this.mFailed) {
            return QueryResult.DEFAULT;
        }
        this.mQuery.setQueryFlags(i);
        try {
            return new QueryResult(((LauncherApps) this.mContext.getSystemService(LauncherApps.class)).getShortcuts(this.mQuery, this.mUserHandle));
        } catch (IllegalStateException | SecurityException e) {
            Log.e("ShortcutRequest", "Failed to query for shortcuts", e);
            return QueryResult.DEFAULT;
        }
    }

    public class QueryResult extends ArrayList {
        public static final QueryResult DEFAULT = new QueryResult(false);
        public final boolean mWasSuccess;

        public QueryResult(List list) {
            super(list == null ? Collections.emptyList() : list);
            this.mWasSuccess = true;
        }

        public boolean wasSuccess() {
            return this.mWasSuccess;
        }

        public QueryResult(boolean z) {
            this.mWasSuccess = z;
        }
    }
}
