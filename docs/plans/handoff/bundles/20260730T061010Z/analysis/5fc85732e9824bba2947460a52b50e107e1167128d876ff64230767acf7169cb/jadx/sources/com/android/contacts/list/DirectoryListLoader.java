package com.android.contacts.list;

import android.content.AsyncTaskLoader;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Handler;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.R;
import com.android.contacts.compat.DirectoryCompat;

/* loaded from: classes.dex */
public class DirectoryListLoader extends AsyncTaskLoader<Cursor> {
    private static final String[] RESULT_PROJECTION = {"_id", "directoryType", "displayName", "photoSupport"};
    private MatrixCursor mDefaultDirectoryList;
    private int mDirectorySearchMode;
    private boolean mLocalInvisibleDirectoryEnabled;
    private final ContentObserver mObserver;

    private static final class DirectoryQuery {
        public static final String[] PROJECTION = {"_id", "packageName", "typeResourceId", "displayName", "photoSupport"};

        public static Uri getDirectoryUri(int i) {
            if (i == 3 || i == 2) {
                return ContactsContract.Directory.CONTENT_URI;
            }
            return DirectoryCompat.getContentUri();
        }
    }

    public DirectoryListLoader(Context context) {
        super(context);
        this.mObserver = new ContentObserver(new Handler()) { // from class: com.android.contacts.list.DirectoryListLoader.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z) {
                DirectoryListLoader.this.forceLoad();
            }
        };
    }

    public void setDirectorySearchMode(int i) {
        this.mDirectorySearchMode = i;
    }

    public void setLocalInvisibleDirectoryEnabled(boolean z) {
        this.mLocalInvisibleDirectoryEnabled = z;
    }

    @Override // android.content.Loader
    protected void onStartLoading() {
        getContext().getContentResolver().registerContentObserver(DirectoryQuery.getDirectoryUri(this.mDirectorySearchMode), false, this.mObserver);
        forceLoad();
    }

    @Override // android.content.Loader
    protected void onStopLoading() {
        getContext().getContentResolver().unregisterContentObserver(this.mObserver);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.content.AsyncTaskLoader
    public Cursor loadInBackground() {
        String str;
        Cursor query;
        String str2;
        String str3;
        if (this.mDirectorySearchMode == 0) {
            return getDefaultDirectories();
        }
        MatrixCursor matrixCursor = new MatrixCursor(RESULT_PROJECTION);
        Context context = getContext();
        PackageManager packageManager = context.getPackageManager();
        int i = this.mDirectorySearchMode;
        Cursor cursor = null;
        if (i != 1) {
            if (i == 2) {
                str3 = "shortcutSupport=2";
            } else {
                if (i != 3) {
                    throw new RuntimeException("Unsupported directory search mode: " + this.mDirectorySearchMode);
                }
                str3 = "shortcutSupport IN (2, 1)";
            }
            str = str3;
        } else {
            str = null;
        }
        try {
            try {
                query = context.getContentResolver().query(DirectoryQuery.getDirectoryUri(this.mDirectorySearchMode), DirectoryQuery.PROJECTION, str, null, "_id");
            } catch (Throwable th) {
                th = th;
            }
        } catch (RuntimeException unused) {
        }
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return matrixCursor;
        }
        while (query.moveToNext()) {
            try {
                try {
                    long j = query.getLong(0);
                    if (this.mLocalInvisibleDirectoryEnabled || !DirectoryCompat.isInvisibleDirectory(j)) {
                        String string = query.getString(1);
                        int i2 = query.getInt(2);
                        if (!TextUtils.isEmpty(string) && i2 != 0) {
                            try {
                                str2 = packageManager.getResourcesForApplication(string).getString(i2);
                            } catch (Exception unused2) {
                                Log.e("ContactEntryListAdapter", "Cannot obtain directory type from package: " + string);
                            }
                            matrixCursor.addRow(new Object[]{Long.valueOf(j), str2, query.getString(3), Integer.valueOf(query.getInt(4))});
                        }
                        str2 = null;
                        matrixCursor.addRow(new Object[]{Long.valueOf(j), str2, query.getString(3), Integer.valueOf(query.getInt(4))});
                    }
                } catch (RuntimeException unused3) {
                    cursor = query;
                    Log.w("ContactEntryListAdapter", "Runtime Exception when querying directory");
                    if (cursor != null) {
                        cursor.close();
                    }
                    return matrixCursor;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = query;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        if (query != null) {
            query.close();
        }
        return matrixCursor;
    }

    private Cursor getDefaultDirectories() {
        if (this.mDefaultDirectoryList == null) {
            MatrixCursor matrixCursor = new MatrixCursor(RESULT_PROJECTION);
            this.mDefaultDirectoryList = matrixCursor;
            matrixCursor.addRow(new Object[]{0L, getContext().getString(R.string.contactsList), null, null});
            this.mDefaultDirectoryList.addRow(new Object[]{1L, getContext().getString(R.string.local_invisible_directory), null, null});
        }
        return this.mDefaultDirectoryList;
    }

    @Override // android.content.Loader
    protected void onReset() {
        stopLoading();
    }
}
