package org.wikipedia.gallery;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import androidx.appcompat.view.menu.BaseMenuWrapper;
import androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker;
import coil3.util.BitmapsKt;
import java.io.File;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.text.StringsKt;
import kotlin.uuid.UuidKt;
import org.wikipedia.R;
import org.wikipedia.gallery.ImageInfo;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MediaDownloadReceiver extends BroadcastReceiver {
    public final /* synthetic */ int $r8$classId;
    public Object callback;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onSuccess();
    }

    public /* synthetic */ MediaDownloadReceiver(int i, Object obj) {
        this.$r8$classId = i;
        this.callback = obj;
    }

    public static void download(Context context, PageTitle pageTitle, ImageInfo imageInfo) {
        String str;
        pageTitle.getClass();
        imageInfo.getClass();
        String displayText = pageTitle.getDisplayText();
        String substringAfter = StringsKt.substringAfter(displayText, "File:", displayText);
        Pattern compile = Pattern.compile("[:\\\\/*\"?|<>']");
        compile.getClass();
        String replaceAll = compile.matcher(substringAfter).replaceAll("_");
        replaceAll.getClass();
        String str2 = imageInfo.originalUrl;
        ImageInfo.Derivative bestDerivativeForSize = imageInfo.getBestDerivativeForSize();
        String str3 = imageInfo.mime;
        str3.getClass();
        if ((StringsKt.contains(str3, "ogg", false) || StringsKt.contains(str3, "video", false)) && bestDerivativeForSize != null) {
            String str4 = Environment.DIRECTORY_MOVIES;
            str4.getClass();
            String str5 = bestDerivativeForSize.src;
            str = str4;
            str2 = str5;
        } else if (StringsKt.contains(str3, "audio", false)) {
            str = Environment.DIRECTORY_MUSIC;
            str.getClass();
        } else if (StringsKt.contains(str3, "image", false)) {
            str = Environment.DIRECTORY_PICTURES;
            str.getClass();
        } else {
            str = Environment.DIRECTORY_DOWNLOADS;
            str.getClass();
        }
        Uri parse = Uri.parse(str2);
        parse.getClass();
        performDownloadRequest(context, parse, str, replaceAll, str3);
    }

    public static void notifyContentResolver(Context context, String str, String str2) {
        ContentValues contentValuesOf;
        Uri uri;
        if (StringsKt.contains(str2, "ogg", false) || StringsKt.contains(str2, "video", false)) {
            contentValuesOf = UuidKt.contentValuesOf(new Pair("_data", str), new Pair("mime_type", str2));
            uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        } else if (StringsKt.contains(str2, "audio", false)) {
            contentValuesOf = UuidKt.contentValuesOf(new Pair("_data", str), new Pair("mime_type", str2));
            uri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
        } else if (str == null || str.length() == 0) {
            contentValuesOf = new ContentValues();
            uri = null;
        } else {
            contentValuesOf = UuidKt.contentValuesOf(new Pair("_data", str), new Pair("mime_type", str2));
            uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        }
        if (uri != null) {
            try {
                context.getContentResolver().insert(uri, contentValuesOf);
            } catch (Exception unused) {
            }
        }
    }

    public static void performDownloadRequest(Context context, Uri uri, String str, String str2, String str3) {
        DownloadManager downloadManager = (DownloadManager) context.getSystemService(DownloadManager.class);
        if (downloadManager != null) {
            String string = context.getString(R.string.app_name);
            string.getClass();
            File file = new File(Environment.getExternalStoragePublicDirectory(str), string);
            File file2 = new File(file, str2);
            file.mkdir();
            DownloadManager.Request request = new DownloadManager.Request(uri);
            Uri fromFile = Uri.fromFile(file2);
            fromFile.getClass();
            request.setDestinationUri(fromFile);
            request.setNotificationVisibility(1);
            if (str3 != null) {
                request.setMimeType(str3);
            }
            request.allowScanningByMediaScanner();
            downloadManager.enqueue(request);
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        switch (this.$r8$classId) {
            case 0:
                context.getClass();
                intent.getClass();
                DownloadManager downloadManager = (DownloadManager) context.getSystemService(DownloadManager.class);
                if (downloadManager == null || !"android.intent.action.DOWNLOAD_COMPLETE".equals(intent.getAction())) {
                    return;
                }
                long longExtra = intent.getLongExtra("extra_download_id", 0L);
                DownloadManager.Query query = new DownloadManager.Query();
                query.setFilterById(longExtra);
                Cursor query2 = downloadManager.query(query);
                try {
                    if (query2.moveToFirst()) {
                        int columnIndexOrThrow = query2.getColumnIndexOrThrow("status");
                        int columnIndexOrThrow2 = query2.getColumnIndexOrThrow("local_uri");
                        int columnIndexOrThrow3 = query2.getColumnIndexOrThrow("media_type");
                        if (8 == query2.getInt(columnIndexOrThrow)) {
                            Callback callback = (Callback) this.callback;
                            if (callback != null) {
                                callback.onSuccess();
                            }
                            String string = query2.getString(columnIndexOrThrow2);
                            string.getClass();
                            Uri parse = Uri.parse(string);
                            parse.getClass();
                            String path = parse.getPath();
                            String string2 = query2.getString(columnIndexOrThrow3);
                            string2.getClass();
                            notifyContentResolver(context, path, string2);
                        }
                    }
                    query2.close();
                    return;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        ResultKt.closeFinally(query2, th);
                        throw th2;
                    }
                }
            case 1:
                ((BaseMenuWrapper) this.callback).onChange();
                return;
            default:
                context.getClass();
                intent.getClass();
                ((BroadcastReceiverConstraintTracker) this.callback).onBroadcastReceive(intent);
                return;
        }
    }

    public void register(Context context, Callback callback) {
        callback.getClass();
        IntentFilter intentFilter = new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE");
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            context.registerReceiver(this, intentFilter, null, null, 4);
        } else if (i >= 26) {
            BitmapsKt.registerReceiver(context, this, intentFilter, 4);
        } else {
            context.registerReceiver(this, intentFilter, FileUtil.obtainAndCheckReceiverPermission(context), null);
        }
        this.callback = callback;
    }
}
