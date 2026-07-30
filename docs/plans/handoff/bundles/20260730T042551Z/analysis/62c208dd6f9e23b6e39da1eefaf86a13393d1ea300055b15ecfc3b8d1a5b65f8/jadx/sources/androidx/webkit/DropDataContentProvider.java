package androidx.webkit;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import defpackage.C0687aM;
import org.chromium.support_lib_boundary.DropDataContentProviderBoundaryInterface;

/* loaded from: classes.dex */
public final class DropDataContentProvider extends ContentProvider {

    /* renamed from: do, reason: not valid java name */
    public DropDataContentProviderBoundaryInterface f8113do;

    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        return m4718do().call(str, str2, bundle);
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("delete method is not supported.");
    }

    /* renamed from: do, reason: not valid java name */
    public final DropDataContentProviderBoundaryInterface m4718do() {
        if (this.f8113do == null) {
            DropDataContentProviderBoundaryInterface mo4832else = C0687aM.Cdo.f4943do.mo4832else();
            this.f8113do = mo4832else;
            mo4832else.onCreate();
        }
        return this.f8113do;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return m4718do().getType(uri);
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Insert method is not supported.");
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) {
        return m4718do().openFile(this, uri);
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return m4718do().query(uri, strArr, str, strArr2, str2);
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("update method is not supported.");
    }
}
