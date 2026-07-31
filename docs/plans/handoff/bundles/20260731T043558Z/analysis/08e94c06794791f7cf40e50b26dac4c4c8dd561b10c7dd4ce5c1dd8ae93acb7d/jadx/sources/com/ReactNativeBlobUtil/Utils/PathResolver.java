package com.ReactNativeBlobUtil.Utils;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import androidx.media3.common.MimeTypes;
import com.ReactNativeBlobUtil.ReactNativeBlobUtilUtils;
import io.sentry.instrumentation.file.SentryFileOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class PathResolver {
    public static String getRealPathFromURI(Context context, Uri uri) {
        Long valueOf;
        String contentName;
        Uri uri2 = null;
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (isExternalStorageDocument(uri)) {
                String[] split = DocumentsContract.getDocumentId(uri).split(":");
                if ("primary".equalsIgnoreCase(split[0])) {
                    File externalFilesDir = context.getExternalFilesDir(null);
                    if (externalFilesDir != null) {
                        return externalFilesDir + "/" + split[1];
                    }
                    return "";
                }
            } else {
                if (isDownloadsDocument(uri)) {
                    try {
                        String documentId = DocumentsContract.getDocumentId(uri);
                        if (documentId != null && documentId.startsWith("raw:/")) {
                            return Uri.parse(documentId).getPath();
                        }
                        if (documentId != null && documentId.startsWith("msf:")) {
                            valueOf = Long.valueOf(documentId.split(":")[1]);
                        } else {
                            valueOf = Long.valueOf(documentId);
                        }
                        return getDataColumn(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), valueOf.longValue()), null, null);
                    } catch (Exception unused) {
                        return null;
                    }
                }
                if (isMediaDocument(uri)) {
                    String[] split2 = DocumentsContract.getDocumentId(uri).split(":");
                    String str = split2[0];
                    if ("image".equals(str)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if ("video".equals(str)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if (MimeTypes.BASE_TYPE_AUDIO.equals(str)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return getDataColumn(context, uri2, "_id=?", new String[]{split2[1]});
                }
                if ("content".equalsIgnoreCase(uri.getScheme())) {
                    if (isGooglePhotosUri(uri)) {
                        return uri.getLastPathSegment();
                    }
                    return getDataColumn(context, uri, null, null);
                }
                try {
                    InputStream openInputStream = context.getContentResolver().openInputStream(uri);
                    if (openInputStream != null && (contentName = getContentName(context.getContentResolver(), uri)) != null) {
                        File file = new File(context.getCacheDir(), contentName);
                        FileOutputStream create = SentryFileOutputStream.Factory.create(new FileOutputStream(file), file);
                        byte[] bArr = new byte[1024];
                        while (openInputStream.read(bArr) > 0) {
                            create.write(bArr);
                        }
                        create.close();
                        openInputStream.close();
                        return file.getAbsolutePath();
                    }
                } catch (Exception e) {
                    ReactNativeBlobUtilUtils.emitWarningEvent(e.toString());
                    return null;
                }
            }
        } else {
            if ("content".equalsIgnoreCase(uri.getScheme())) {
                if (isGooglePhotosUri(uri)) {
                    return uri.getLastPathSegment();
                }
                return getDataColumn(context, uri, null, null);
            }
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
        }
        return null;
    }

    private static String getContentName(ContentResolver contentResolver, Uri uri) {
        Cursor query = contentResolver.query(uri, null, null, null, null);
        query.moveToFirst();
        int columnIndex = query.getColumnIndex("_display_name");
        if (columnIndex < 0) {
            return null;
        }
        String string = query.getString(columnIndex);
        query.close();
        return string;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getDataColumn(android.content.Context r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) {
        /*
            r0 = 1
            java.lang.String[] r3 = new java.lang.String[r0]
            r0 = 0
            java.lang.String r7 = "_data"
            r3[r0] = r7
            r0 = 0
            android.content.ContentResolver r1 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            r6 = 0
            r2 = r9
            r4 = r10
            r5 = r11
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            if (r8 == 0) goto L28
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Exception -> L26 java.lang.Throwable -> L3b
            if (r9 == 0) goto L28
            int r9 = r8.getColumnIndexOrThrow(r7)     // Catch: java.lang.Exception -> L26 java.lang.Throwable -> L3b
            java.lang.String r0 = r8.getString(r9)     // Catch: java.lang.Exception -> L26 java.lang.Throwable -> L3b
            goto L28
        L26:
            r9 = move-exception
            goto L32
        L28:
            if (r8 == 0) goto L2d
            r8.close()
        L2d:
            return r0
        L2e:
            r9 = move-exception
            goto L3d
        L30:
            r9 = move-exception
            r8 = r0
        L32:
            r9.printStackTrace()     // Catch: java.lang.Throwable -> L3b
            if (r8 == 0) goto L3a
            r8.close()
        L3a:
            return r0
        L3b:
            r9 = move-exception
            r0 = r8
        L3d:
            if (r0 == 0) goto L42
            r0.close()
        L42:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ReactNativeBlobUtil.Utils.PathResolver.getDataColumn(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
    }

    public static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static boolean isGooglePhotosUri(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }
}
