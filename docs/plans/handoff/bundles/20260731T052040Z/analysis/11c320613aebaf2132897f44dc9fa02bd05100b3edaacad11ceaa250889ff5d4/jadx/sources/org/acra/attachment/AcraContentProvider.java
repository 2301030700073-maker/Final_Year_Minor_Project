package org.acra.attachment;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.compose.ui.node.Owner;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.file.Directory;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AcraContentProvider extends ContentProvider {
    public static final String[] COLUMNS = {"_display_name", "_size"};
    public String authority;

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        uri.getClass();
        throw new UnsupportedOperationException("No delete supported");
    }

    public final File getFileForUri(Uri uri) {
        if (!"content".equals(uri.getScheme()) || !Intrinsics.areEqual(this.authority, uri.getAuthority())) {
            return null;
        }
        List<String> pathSegments = uri.getPathSegments();
        pathSegments.getClass();
        ArrayList arrayList = new ArrayList(pathSegments);
        if (arrayList.size() < 2) {
            return null;
        }
        Object remove = arrayList.remove(0);
        remove.getClass();
        String upperCase = ((String) remove).toUpperCase(Locale.ROOT);
        upperCase.getClass();
        try {
            Directory valueOf = Directory.valueOf(upperCase);
            Context context = getContext();
            context.getClass();
            String join = TextUtils.join(File.separator, arrayList);
            join.getClass();
            return valueOf.getFile(context, join);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        String str;
        uri.getClass();
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(uri.toString());
        if (fileExtensionFromUrl != null) {
            MimeTypeMap singleton = MimeTypeMap.getSingleton();
            String lowerCase = fileExtensionFromUrl.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            str = singleton.getMimeTypeFromExtension(lowerCase);
            if (str == null && "json".equals(fileExtensionFromUrl)) {
                str = "application/json";
            }
        } else {
            str = null;
        }
        return str == null ? "application/octet-stream" : str;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        uri.getClass();
        throw new UnsupportedOperationException("No insert supported");
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        Context context = getContext();
        context.getClass();
        this.authority = Owner.CC.m$1(context.getPackageName(), ".acra");
        ErrorReporter errorReporter = ACRA.errorReporter;
        return true;
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) {
        uri.getClass();
        str.getClass();
        File fileForUri = getFileForUri(uri);
        if (fileForUri != null) {
            if (!fileForUri.exists()) {
                fileForUri = null;
            }
            if (fileForUri != null) {
                ErrorReporter errorReporter = ACRA.errorReporter;
                ParcelFileDescriptor open = ParcelFileDescriptor.open(fileForUri, 268435456);
                open.getClass();
                return open;
            }
        }
        throw new FileNotFoundException("File represented by uri " + uri + " could not be found");
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        uri.getClass();
        ErrorReporter errorReporter = ACRA.errorReporter;
        File fileForUri = getFileForUri(uri);
        if (fileForUri == null) {
            return null;
        }
        if (strArr == null) {
            strArr = COLUMNS;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i = 0;
        while (true) {
            if (!(i < strArr.length)) {
                MatrixCursor matrixCursor = new MatrixCursor((String[]) linkedHashMap.keySet().toArray(new String[0]), 1);
                matrixCursor.addRow(linkedHashMap.values());
                return matrixCursor;
            }
            int i2 = i + 1;
            try {
                String str3 = strArr[i];
                if (Intrinsics.areEqual(str3, "_display_name")) {
                    linkedHashMap.put("_display_name", fileForUri.getName());
                } else if (Intrinsics.areEqual(str3, "_size")) {
                    linkedHashMap.put("_size", Long.valueOf(fileForUri.length()));
                }
                i = i2;
            } catch (ArrayIndexOutOfBoundsException e) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2(e.getMessage());
                return null;
            }
        }
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        uri.getClass();
        throw new UnsupportedOperationException("No update supported");
    }
}
