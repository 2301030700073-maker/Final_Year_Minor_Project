package com.android.quickstep;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Rect;
import android.net.Uri;
import android.util.Log;
import com.android.launcher3.util.Executors;
import com.android.quickstep.ImageActionsApi;
import com.android.quickstep.util.ImageActionUtils;
import com.android.systemui.shared.recents.model.Task;
import java.util.function.BiFunction;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class ImageActionsApi {
    public static final String TAG = "com.google.android.apps.nexuslauncherImageActionsApi";
    public final Supplier mBitmapSupplier;
    public final Context mContext;
    public final SystemUiProxy mSystemUiProxy;

    public ImageActionsApi(Context context, Supplier supplier) {
        this.mContext = context;
        this.mBitmapSupplier = supplier;
        this.mSystemUiProxy = (SystemUiProxy) SystemUiProxy.INSTANCE.b(context);
    }

    public /* synthetic */ void a(Rect rect, Intent intent) {
        ImageActionUtils.persistBitmapAndStartActivity(this.mContext, (Bitmap) this.mBitmapSupplier.get(), rect, intent, new BiFunction() { // from class: c.a.b.o0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Intent intent2 = (Intent) obj2;
                intent2.addFlags(1).putExtra("android.intent.extra.STREAM", (Uri) obj);
                return new Intent[]{intent2};
            }
        }, TAG);
    }

    public void saveScreenshot(Bitmap bitmap, Rect rect, Insets insets, Task.TaskKey taskKey) {
        ImageActionUtils.saveScreenshot(this.mSystemUiProxy, bitmap, rect, insets, taskKey);
    }

    public void shareWithExplicitIntent(final Rect rect, final Intent intent) {
        if (this.mBitmapSupplier.get() == null) {
            Log.e(TAG, "No snapshot available, not starting share.");
        } else {
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.b.n0
                @Override // java.lang.Runnable
                public final void run() {
                    ImageActionsApi.this.a(rect, intent);
                }
            });
        }
    }

    public void startShareActivity() {
        ImageActionUtils.startShareActivity(this.mContext, this.mBitmapSupplier, null, null, TAG);
    }
}
