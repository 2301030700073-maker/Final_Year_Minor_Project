package com.android.contacts.util;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.Log;
import androidx.core.content.FileProvider;
import com.android.contacts.R;
import com.google.common.io.Closeables;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class ContactPhotoUtils {
    public static Uri generateTempImageUri(Context context) {
        return FileProvider.getUriForFile(context, context.getResources().getString(R.string.photo_file_provider_authority), new File(pathForTempPhoto(context, generateTempPhotoFileName())));
    }

    public static Uri generateTempCroppedImageUri(Context context) {
        return FileProvider.getUriForFile(context, context.getResources().getString(R.string.photo_file_provider_authority), new File(pathForTempPhoto(context, generateTempCroppedPhotoFileName())));
    }

    private static String pathForTempPhoto(Context context, String str) {
        File cacheDir = context.getCacheDir();
        cacheDir.mkdirs();
        return new File(cacheDir, str).getAbsolutePath();
    }

    private static String generateTempPhotoFileName() {
        Date date = new Date(System.currentTimeMillis());
        return "ContactPhoto-" + new SimpleDateFormat("'IMG'_yyyyMMdd_HHmmss", Locale.US).format(date) + ".jpg";
    }

    private static String generateTempCroppedPhotoFileName() {
        Date date = new Date(System.currentTimeMillis());
        return "ContactPhoto-" + new SimpleDateFormat("'IMG'_yyyyMMdd_HHmmss", Locale.US).format(date) + "-cropped.jpg";
    }

    public static Bitmap getBitmapFromUri(Context context, Uri uri) throws FileNotFoundException {
        InputStream openInputStream = context.getContentResolver().openInputStream(uri);
        try {
            return BitmapFactory.decodeStream(openInputStream);
        } finally {
            Closeables.closeQuietly(openInputStream);
        }
    }

    public static byte[] compressBitmap(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bitmap.getWidth() * bitmap.getHeight() * 4);
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            Log.w("ContactPhotoUtils", "Unable to serialize photo: " + e.toString());
            return null;
        }
    }

    public static void addCropExtras(Intent intent, int i) {
        intent.putExtra("crop", "true");
        intent.putExtra("scale", true);
        intent.putExtra("scaleUpIfNeeded", true);
        intent.putExtra("aspectX", 1);
        intent.putExtra("aspectY", 1);
        intent.putExtra("outputX", i);
        intent.putExtra("outputY", i);
    }

    public static void addPhotoPickerExtras(Intent intent, Uri uri) {
        intent.putExtra("output", uri);
        intent.addFlags(3);
        intent.setClipData(ClipData.newRawUri("output", uri));
    }

    public static boolean savePhotoFromUriToUri(Context context, Uri uri, Uri uri2, boolean z) {
        if (uri == null || uri2 == null || isFilePathAndNotStorage(uri)) {
            return false;
        }
        try {
            try {
                FileOutputStream createOutputStream = context.getContentResolver().openAssetFileDescriptor(uri2, "rw").createOutputStream();
                try {
                    InputStream openInputStream = context.getContentResolver().openInputStream(uri);
                    try {
                        byte[] bArr = new byte[16384];
                        int i = 0;
                        while (true) {
                            int read = openInputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            createOutputStream.write(bArr, 0, read);
                            i += read;
                        }
                        if (Log.isLoggable("ContactPhotoUtils", 2)) {
                            Log.v("ContactPhotoUtils", "Wrote " + i + " bytes for photo " + uri.toString());
                        }
                        if (openInputStream != null) {
                            openInputStream.close();
                        }
                        if (createOutputStream != null) {
                            createOutputStream.close();
                        }
                    } finally {
                    }
                } catch (Throwable th) {
                    if (createOutputStream != null) {
                        try {
                            createOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } finally {
                if (z) {
                    context.getContentResolver().delete(uri, null, null);
                }
            }
        } catch (IOException | NullPointerException e) {
            Log.e("ContactPhotoUtils", "Failed to write photo: " + uri.toString() + " because: " + e);
            if (z) {
                context.getContentResolver().delete(uri, null, null);
            }
            return false;
        }
    }

    private static boolean isFilePathAndNotStorage(Uri uri) {
        if ("file".equals(uri.getScheme())) {
            try {
                return !new File(uri.getPath()).getCanonicalFile().getCanonicalPath().startsWith("/storage/");
            } catch (IOException unused) {
            }
        }
        return false;
    }
}
