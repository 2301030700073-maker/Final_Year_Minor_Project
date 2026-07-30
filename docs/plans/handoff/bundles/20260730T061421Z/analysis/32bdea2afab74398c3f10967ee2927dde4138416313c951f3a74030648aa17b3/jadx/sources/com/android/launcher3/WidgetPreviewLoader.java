package com.android.launcher3;

import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.CancellationSignal;
import android.os.Process;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import c.a.c.a.a;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.SQLiteCacheHelper;
import com.android.launcher3.widget.WidgetCell;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.Collections;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public class WidgetPreviewLoader {
    public final Context mContext;
    public final CacheDb mDb;
    public final IconCache mIconCache;
    public final UserCache mUserCache;
    public final HashMap mPackageVersions = new HashMap();
    public final Set mUnusedBitmaps = Collections.newSetFromMap(new WeakHashMap());
    public final UserHandle mMyUser = Process.myUserHandle();
    public final ArrayMap mUserBadges = new ArrayMap();

    public class CacheDb extends SQLiteCacheHelper {
        public CacheDb(Context context) {
            super(context, "widgetpreviews.db", 9, "shortcut_and_widget_previews");
        }

        @Override // com.android.launcher3.util.SQLiteCacheHelper
        public void onCreateTable(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS shortcut_and_widget_previews (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, size TEXT NOT NULL, packageName TEXT NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, preview_bitmap BLOB, PRIMARY KEY (componentName, profileId, size) );");
        }
    }

    public class PreviewLoadTask extends AsyncTask implements CancellationSignal.OnCancelListener {
        public final BaseActivity mActivity;
        public Bitmap mBitmapToRecycle;
        public final WidgetCell mCaller;
        public final WidgetItem mInfo;
        public final WidgetCacheKey mKey;
        public final int mPreviewHeight;
        public final int mPreviewWidth;
        public boolean mSaveToDB = false;
        public long[] mVersions;

        public PreviewLoadTask(WidgetCacheKey widgetCacheKey, WidgetItem widgetItem, int i, int i2, WidgetCell widgetCell) {
            this.mKey = widgetCacheKey;
            this.mInfo = widgetItem;
            this.mPreviewHeight = i2;
            this.mPreviewWidth = i;
            this.mCaller = widgetCell;
            this.mActivity = BaseActivity.fromContext(widgetCell.getContext());
        }

        /* JADX WARN: Code restructure failed: missing block: B:90:0x00c9, code lost:
        
            if (r13 == null) goto L48;
         */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00d5 A[ADDED_TO_REGION] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object doInBackground(java.lang.Object[] r13) {
            /*
                Method dump skipped, instructions count: 470
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.WidgetPreviewLoader.PreviewLoadTask.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        @Override // android.os.CancellationSignal.OnCancelListener
        public void onCancel() {
            cancel(true);
            if (this.mBitmapToRecycle != null) {
                LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
                looperExecutor.mHandler.post(new Runnable() { // from class: com.android.launcher3.WidgetPreviewLoader.PreviewLoadTask.3
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (WidgetPreviewLoader.this.mUnusedBitmaps) {
                            WidgetPreviewLoader.this.mUnusedBitmaps.add(PreviewLoadTask.this.mBitmapToRecycle);
                        }
                        PreviewLoadTask.this.mBitmapToRecycle = null;
                    }
                });
            }
        }

        @Override // android.os.AsyncTask
        public void onCancelled(Object obj) {
            final Bitmap bitmap = (Bitmap) obj;
            if (bitmap != null) {
                LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
                looperExecutor.mHandler.post(new Runnable() { // from class: com.android.launcher3.WidgetPreviewLoader.PreviewLoadTask.2
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (WidgetPreviewLoader.this.mUnusedBitmaps) {
                            WidgetPreviewLoader.this.mUnusedBitmaps.add(bitmap);
                        }
                    }
                });
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Object obj) {
            final Bitmap bitmap = (Bitmap) obj;
            this.mCaller.applyPreview(bitmap);
            if (this.mVersions == null) {
                this.mBitmapToRecycle = bitmap;
                return;
            }
            LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
            looperExecutor.mHandler.post(new Runnable() { // from class: com.android.launcher3.WidgetPreviewLoader.PreviewLoadTask.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!PreviewLoadTask.this.isCancelled()) {
                        PreviewLoadTask previewLoadTask = PreviewLoadTask.this;
                        if (previewLoadTask.mSaveToDB) {
                            WidgetPreviewLoader widgetPreviewLoader = WidgetPreviewLoader.this;
                            WidgetCacheKey widgetCacheKey = previewLoadTask.mKey;
                            long[] jArr = previewLoadTask.mVersions;
                            Bitmap bitmap2 = bitmap;
                            Objects.requireNonNull(widgetPreviewLoader);
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("componentName", widgetCacheKey.componentName.flattenToShortString());
                            contentValues.put("profileId", Long.valueOf(widgetPreviewLoader.mUserCache.getSerialNumberForUser(widgetCacheKey.user)));
                            contentValues.put("size", widgetCacheKey.size);
                            contentValues.put("packageName", widgetCacheKey.componentName.getPackageName());
                            contentValues.put("version", Long.valueOf(jArr[0]));
                            contentValues.put("lastUpdated", Long.valueOf(jArr[1]));
                            contentValues.put("preview_bitmap", GraphicsUtils.flattenBitmap(bitmap2));
                            widgetPreviewLoader.mDb.insertOrReplace(contentValues);
                            PreviewLoadTask.this.mBitmapToRecycle = bitmap;
                            return;
                        }
                    }
                    synchronized (WidgetPreviewLoader.this.mUnusedBitmaps) {
                        WidgetPreviewLoader.this.mUnusedBitmaps.add(bitmap);
                    }
                }
            });
        }
    }

    public final class WidgetCacheKey extends ComponentKey {
        public final String size;

        public WidgetCacheKey(ComponentName componentName, UserHandle userHandle, String str) {
            super(componentName, userHandle);
            this.size = str;
        }

        @Override // com.android.launcher3.util.ComponentKey
        public boolean equals(Object obj) {
            return super.equals(obj) && ((WidgetCacheKey) obj).size.equals(this.size);
        }

        @Override // com.android.launcher3.util.ComponentKey
        public int hashCode() {
            return this.size.hashCode() ^ this.mHashCode;
        }
    }

    public WidgetPreviewLoader(Context context, IconCache iconCache) {
        this.mContext = context;
        this.mIconCache = iconCache;
        this.mUserCache = (UserCache) UserCache.INSTANCE.b(context);
        this.mDb = new CacheDb(context);
    }

    public final RectF drawBoxWithShadow(Canvas canvas, int i, int i2) {
        Resources resources = this.mContext.getResources();
        RectF rectF = new RectF();
        float dimension = resources.getDimension(R.dimen.widget_preview_shadow_blur);
        float dimension2 = resources.getDimension(R.dimen.widget_preview_corner_radius);
        float dimension3 = resources.getDimension(R.dimen.widget_preview_key_shadow_distance);
        rectF.set(dimension, dimension, i - dimension, (i2 - dimension) - dimension3);
        Paint paint = new Paint(3);
        paint.setColor(-1);
        paint.setShadowLayer(dimension, RecentsState.NO_OFFSET, dimension3, GraphicsUtils.setColorAlphaBound(-16777216, 61));
        canvas.drawRoundRect(rectF, dimension2, dimension2, paint);
        paint.setShadowLayer(dimension, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, GraphicsUtils.setColorAlphaBound(-16777216, 30));
        canvas.drawRoundRect(rectF, dimension2, dimension2, paint);
        if (Color.alpha(-1) < 255) {
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            paint.clearShadowLayer();
            paint.setColor(-16777216);
            canvas.drawRoundRect(rectF, dimension2, dimension2, paint);
            paint.setXfermode(null);
            paint.setColor(-1);
            canvas.drawRoundRect(rectF, dimension2, dimension2, paint);
        }
        return rectF;
    }

    public Pair generateWidgetPreview(BaseActivity baseActivity, LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, int i, Bitmap bitmap, int[] iArr) {
        Drawable drawable;
        int i2;
        int i3;
        Canvas canvas;
        Bitmap bitmap2;
        Bitmap bitmap3 = bitmap;
        int i4 = i < 0 ? Integer.MAX_VALUE : i;
        if (((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).previewImage != 0) {
            try {
                drawable = launcherAppWidgetProviderInfo.loadPreviewImage(this.mContext, 0);
            } catch (OutOfMemoryError e) {
                StringBuilder f = a.f("Error loading widget preview for: ");
                f.append(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider);
                Log.w("WidgetPreviewLoader", f.toString(), e);
                drawable = null;
            }
            if (drawable != null) {
                drawable = mutateOnMainThread(drawable);
            } else {
                StringBuilder f2 = a.f("Can't load widget preview drawable 0x");
                f2.append(Integer.toHexString(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).previewImage));
                f2.append(" for provider: ");
                f2.append(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider);
                Log.w("WidgetPreviewLoader", f2.toString());
            }
        } else {
            drawable = null;
        }
        boolean z = drawable != null;
        int i5 = launcherAppWidgetProviderInfo.spanX;
        int i6 = launcherAppWidgetProviderInfo.spanY;
        boolean z2 = z || ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).previewImage == 0;
        if (!z || drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            DeviceProfile deviceProfile = baseActivity.getDeviceProfile();
            int min = Math.min(deviceProfile.cellWidthPx, deviceProfile.cellHeightPx);
            i2 = min * i6;
            i3 = min * i5;
        } else {
            i3 = drawable.getIntrinsicWidth();
            i2 = drawable.getIntrinsicHeight();
        }
        if (iArr != null) {
            iArr[0] = i3;
        }
        float f3 = i3 > i4 ? i4 / i3 : 1.0f;
        if (f3 != 1.0f) {
            i3 = Math.max((int) (i3 * f3), 1);
            i2 = Math.max((int) (i2 * f3), 1);
        }
        Canvas canvas2 = new Canvas();
        if (bitmap3 == null) {
            bitmap3 = Bitmap.createBitmap(i3, i2, Bitmap.Config.ARGB_8888);
            canvas2.setBitmap(bitmap3);
        } else {
            if (bitmap.getHeight() > i2) {
                bitmap3.reconfigure(bitmap.getWidth(), i2, bitmap.getConfig());
            }
            canvas2.setBitmap(bitmap3);
            canvas2.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        int width = (bitmap3.getWidth() - i3) / 2;
        if (z) {
            drawable.setBounds(width, 0, i3 + width, i2);
            drawable.draw(canvas2);
        } else {
            RectF drawBoxWithShadow = drawBoxWithShadow(canvas2, i3, i2);
            Paint paint = new Paint(1);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(this.mContext.getResources().getDimension(R.dimen.widget_preview_cell_divider_width));
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            float f4 = drawBoxWithShadow.left;
            float width2 = drawBoxWithShadow.width() / i5;
            int i7 = 1;
            while (i7 < i5) {
                f4 += width2;
                canvas2.drawLine(f4, RecentsState.NO_OFFSET, f4, i2, paint);
                i7++;
                canvas2 = canvas2;
            }
            Canvas canvas3 = canvas2;
            float f5 = drawBoxWithShadow.top;
            float height = drawBoxWithShadow.height() / i6;
            for (int i8 = 1; i8 < i6; i8++) {
                f5 += height;
                canvas3.drawLine(RecentsState.NO_OFFSET, f5, i3, f5, paint);
            }
            try {
                Drawable fullResIcon = this.mIconCache.getFullResIcon(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider.getPackageName(), ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).icon);
                if (fullResIcon != null) {
                    int min2 = (int) Math.min(baseActivity.getDeviceProfile().iconSizePx * f3, Math.min(drawBoxWithShadow.width(), drawBoxWithShadow.height()));
                    Drawable mutateOnMainThread = mutateOnMainThread(fullResIcon);
                    int i9 = (i3 - min2) / 2;
                    int i10 = (i2 - min2) / 2;
                    mutateOnMainThread.setBounds(i9, i10, i9 + min2, min2 + i10);
                    canvas = canvas3;
                    try {
                        mutateOnMainThread.draw(canvas);
                    } catch (Resources.NotFoundException unused) {
                        bitmap2 = null;
                        z2 = false;
                        canvas.setBitmap(bitmap2);
                        return new Pair(bitmap3, Boolean.valueOf(z2));
                    }
                } else {
                    canvas = canvas3;
                }
                bitmap2 = null;
            } catch (Resources.NotFoundException unused2) {
                canvas = canvas3;
            }
            canvas.setBitmap(bitmap2);
        }
        return new Pair(bitmap3, Boolean.valueOf(z2));
    }

    public long[] getPackageVersion(String str) {
        long[] jArr;
        synchronized (this.mPackageVersions) {
            jArr = (long[]) this.mPackageVersions.get(str);
            if (jArr == null) {
                jArr = new long[2];
                try {
                    PackageInfo packageInfo = this.mContext.getPackageManager().getPackageInfo(str, QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED);
                    jArr[0] = packageInfo.versionCode;
                    jArr[1] = packageInfo.lastUpdateTime;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e("WidgetPreviewLoader", "PackageInfo not found", e);
                }
                this.mPackageVersions.put(str, jArr);
            }
        }
        return jArr;
    }

    public final Drawable mutateOnMainThread(final Drawable drawable) {
        try {
            LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
            Objects.requireNonNull(drawable);
            return (Drawable) looperExecutor.submit(new Callable() { // from class: c.a.a.a
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return drawable.mutate();
                }
            }).get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new RuntimeException(e);
        } catch (ExecutionException e2) {
            throw new RuntimeException(e2);
        }
    }

    public final void removePackage(String str, long j) {
        synchronized (this.mPackageVersions) {
            this.mPackageVersions.remove(str);
        }
        this.mDb.delete("packageName = ? AND profileId = ?", new String[]{str, Long.toString(j)});
    }
}
