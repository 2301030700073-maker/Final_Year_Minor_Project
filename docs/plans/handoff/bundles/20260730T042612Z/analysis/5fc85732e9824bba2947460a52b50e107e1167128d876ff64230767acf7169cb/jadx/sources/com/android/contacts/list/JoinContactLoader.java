package com.android.contacts.list;

import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.net.Uri;

/* loaded from: classes.dex */
public class JoinContactLoader extends CursorLoader {
    private String[] mProjection;
    private Uri mSuggestionUri;

    public static class JoinContactLoaderResult extends CursorWrapper {
        public final Cursor suggestionCursor;

        public JoinContactLoaderResult(Cursor cursor, Cursor cursor2) {
            super(cursor);
            this.suggestionCursor = cursor2;
        }

        @Override // android.database.CursorWrapper, android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            try {
                if (this.suggestionCursor != null) {
                    this.suggestionCursor.close();
                }
            } finally {
                if (super.getWrappedCursor() != null) {
                    super.close();
                }
            }
        }
    }

    public JoinContactLoader(Context context) {
        super(context, null, null, null, null, null);
    }

    public void setSuggestionUri(Uri uri) {
        this.mSuggestionUri = uri;
    }

    @Override // android.content.CursorLoader
    public void setProjection(String[] strArr) {
        super.setProjection(strArr);
        this.mProjection = strArr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.content.CursorLoader, android.content.AsyncTaskLoader
    public Cursor loadInBackground() {
        Cursor query = getContext().getContentResolver().query(this.mSuggestionUri, this.mProjection, null, null, null);
        if (query == null) {
            return null;
        }
        try {
            Cursor loadInBackground = super.loadInBackground();
            if (loadInBackground != null) {
                return new JoinContactLoaderResult(loadInBackground, query);
            }
            return null;
        } finally {
            if (query != null) {
                query.close();
            }
        }
    }
}
