package com.facebook.internal;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3756th;

/* loaded from: classes.dex */
public final class FacebookInitProvider extends ContentProvider {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "FacebookInitProvider";

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        C0173Do.m401try(uri, "uri");
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        C0173Do.m401try(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        C0173Do.m401try(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        try {
            Context context = getContext();
            if (context == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            C3756th c3756th = C3756th.f15751do;
            synchronized (C3756th.class) {
                C3756th.m8298class(context);
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        C0173Do.m401try(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        C0173Do.m401try(uri, "uri");
        return 0;
    }
}
