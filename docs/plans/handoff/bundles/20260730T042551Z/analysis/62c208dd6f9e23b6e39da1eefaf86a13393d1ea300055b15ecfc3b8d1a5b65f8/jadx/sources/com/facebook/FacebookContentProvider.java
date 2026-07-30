package com.facebook;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import com.facebook.internal.NativeAppCallAttachmentStore;
import defpackage.C0173Do;
import defpackage.EF;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.UUID;

/* loaded from: classes.dex */
public final class FacebookContentProvider extends ContentProvider {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f9255for = 0;

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        C0173Do.m401try(uri, "uri");
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        C0173Do.m401try(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        C0173Do.m401try(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) {
        Pair pair;
        String path;
        C0173Do.m401try(uri, "uri");
        C0173Do.m401try(str, "mode");
        try {
            path = uri.getPath();
        } catch (Exception unused) {
            pair = null;
        }
        if (path == null) {
            throw new IllegalStateException("Required value was null.".toString());
        }
        String substring = path.substring(1);
        C0173Do.m399new(substring, "(this as java.lang.String).substring(startIndex)");
        Object[] array = EF.t(substring, new String[]{"/"}, 0, 6).toArray(new String[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        String[] strArr = (String[]) array;
        String str2 = strArr[0];
        String str3 = strArr[1];
        if ("..".contentEquals(str2) || "..".contentEquals(str3)) {
            throw new Exception();
        }
        pair = new Pair(UUID.fromString(str2), str3);
        if (pair == null) {
            throw new FileNotFoundException();
        }
        try {
            NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
            File openAttachment = NativeAppCallAttachmentStore.openAttachment((UUID) pair.first, (String) pair.second);
            if (openAttachment != null) {
                return ParcelFileDescriptor.open(openAttachment, 268435456);
            }
            throw new FileNotFoundException();
        } catch (FileNotFoundException e) {
            C0173Do.m397goto(e, "Got unexpected exception:");
            throw e;
        }
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        C0173Do.m401try(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        C0173Do.m401try(uri, "uri");
        return 0;
    }
}
