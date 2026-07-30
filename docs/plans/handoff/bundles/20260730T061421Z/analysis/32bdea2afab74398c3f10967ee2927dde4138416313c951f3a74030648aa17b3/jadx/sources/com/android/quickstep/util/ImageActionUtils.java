package com.android.quickstep.util;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.net.Uri;
import android.util.Log;
import androidx.core.content.FileProvider;
import c.a.c.a.a;
import com.android.launcher3.util.Executors;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.util.ImageActionUtils;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.utilities.BitmapUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.function.BiFunction;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class ImageActionUtils {
    public static final String AUTHORITY = "com.google.android.apps.nexuslauncher.overview.fileprovider";
    public static final String BASE_NAME = "overview_image_";
    public static final long FILE_LIFE = 86400000;
    public static final String SUB_FOLDER = "Overview";

    public static void clearOldCacheFiles(final Context context) {
        Executors.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: c.a.b.c2.b
            @Override // java.lang.Runnable
            public final void run() {
                File[] listFiles = new File(context.getCacheDir(), ImageActionUtils.SUB_FOLDER).listFiles(new FilenameFilter() { // from class: c.a.b.c2.a
                    @Override // java.io.FilenameFilter
                    public final boolean accept(File file, String str) {
                        return str.startsWith(ImageActionUtils.BASE_NAME);
                    }
                });
                if (listFiles != null) {
                    for (File file : listFiles) {
                        if (file.lastModified() + ImageActionUtils.FILE_LIFE < System.currentTimeMillis()) {
                            file.delete();
                        }
                    }
                }
            }
        });
    }

    public static Bitmap cropBitmap(Bitmap bitmap, Rect rect) {
        Rect rect2 = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        if (rect == null) {
            rect = new Rect(rect2);
        }
        if (rect.equals(rect2)) {
            return bitmap;
        }
        if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
            return Bitmap.createBitmap(bitmap, rect.left, rect.top, rect.width(), rect.height());
        }
        Picture picture = new Picture();
        picture.beginRecording(rect.width(), rect.height()).drawBitmap(bitmap, -rect.left, -rect.top, (Paint) null);
        picture.endRecording();
        return Bitmap.createBitmap(picture, rect.width(), rect.height(), Bitmap.Config.ARGB_8888);
    }

    public static Uri getImageUri(Bitmap bitmap, Rect rect, Context context, String str) {
        clearOldCacheFiles(context);
        Bitmap cropBitmap = cropBitmap(bitmap, rect);
        int hashCode = rect == null ? 0 : rect.hashCode();
        StringBuilder f = a.f(BASE_NAME);
        f.append(bitmap.hashCode());
        f.append("_");
        f.append(hashCode);
        f.append(".png");
        String sb = f.toString();
        File file = new File(context.getCacheDir(), SUB_FOLDER);
        file.mkdir();
        File file2 = new File(file, sb);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                cropBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.close();
            } finally {
            }
        } catch (IOException e) {
            Log.e(str, "Error saving image", e);
        }
        return FileProvider.a(context, AUTHORITY).b(file2);
    }

    public static Intent[] getShareIntentForImageUri(Uri uri, Intent intent) {
        if (intent == null) {
            intent = new Intent();
        }
        intent.setAction("android.intent.action.SEND").setComponent(null).addFlags(268435456).addFlags(1).setType("image/png").putExtra("android.intent.extra.STREAM", uri).setClipData(new ClipData(new ClipDescription("content", new String[]{"image/png"}), new ClipData.Item(uri)));
        return new Intent[]{Intent.createChooser(intent, null).addFlags(268435456)};
    }

    public static void persistBitmapAndStartActivity(Context context, Bitmap bitmap, Rect rect, Intent intent, BiFunction biFunction, String str) {
        Intent[] intentArr = (Intent[]) biFunction.apply(getImageUri(bitmap, rect, context, str), intent);
        if (intentArr.length == 1) {
            context.startActivity(intentArr[0]);
        } else {
            context.startActivities(intentArr);
        }
    }

    public static void saveScreenshot(SystemUiProxy systemUiProxy, Bitmap bitmap, Rect rect, Insets insets, Task.TaskKey taskKey) {
        systemUiProxy.handleImageBundleAsScreenshot(BitmapUtil.hardwareBitmapToBundle(bitmap), rect, insets, taskKey);
    }

    public static void startShareActivity(final Context context, final Supplier supplier, final Rect rect, final Intent intent, final String str) {
        if (supplier.get() == null) {
            Log.e(str, "No snapshot available, not starting share.");
        } else {
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.b.c2.c
                @Override // java.lang.Runnable
                public final void run() {
                    Context context2 = context;
                    Supplier supplier2 = supplier;
                    ImageActionUtils.persistBitmapAndStartActivity(context2, (Bitmap) supplier2.get(), rect, intent, new BiFunction() { // from class: c.a.b.c2.d
                        @Override // java.util.function.BiFunction
                        public final Object apply(Object obj, Object obj2) {
                            return ImageActionUtils.getShareIntentForImageUri((Uri) obj, (Intent) obj2);
                        }
                    }, str);
                }
            });
        }
    }
}
