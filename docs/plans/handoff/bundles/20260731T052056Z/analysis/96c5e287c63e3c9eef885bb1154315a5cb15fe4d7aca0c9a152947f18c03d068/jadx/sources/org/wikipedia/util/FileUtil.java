package org.wikipedia.util;

import android.app.AppOpsManager;
import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.LocusId;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.ColorFilter;
import android.graphics.ImageDecoder;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.ColorStateListDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.Trace;
import android.provider.MediaStore;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.contentcapture.ContentCaptureSession;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.core.app.NotificationCompatBuilder$Api24Impl;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.graphics.BlendModeCompat;
import androidx.core.graphics.BlendModeUtils$1;
import androidx.work.Logger$LogcatLogger;
import androidx.work.Operation$State;
import androidx.work.impl.foreground.SystemForegroundService;
import coil3.decode.AssetMetadata;
import coil3.decode.ByteBufferMetadata;
import coil3.decode.ContentMetadata;
import coil3.decode.ImageSource;
import coil3.decode.ResourceMetadata;
import coil3.decode.StaticImageDecoderKt$$ExternalSyntheticLambda0;
import coil3.request.Options;
import coil3.util.UtilsKt;
import com.google.android.material.drawable.DrawableUtils$OutlineCompatL;
import com.google.android.material.drawable.DrawableUtils$OutlineCompatR;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import kotlin.text.Charsets;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.FileSystem;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class FileUtil {
    public static int checkSelfPermission(Context context, String str) {
        boolean z;
        if (str == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("permission must be non-null");
            return 0;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 33 || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        NotificationManagerCompat notificationManagerCompat = new NotificationManagerCompat(context);
        if (i >= 24) {
            z = NotificationCompatBuilder$Api24Impl.areNotificationsEnabled(notificationManagerCompat.mNotificationManager);
        } else {
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            String packageName = context.getApplicationContext().getPackageName();
            int i2 = applicationInfo.uid;
            try {
                Class<?> cls = Class.forName(AppOpsManager.class.getName());
                Class<?> cls2 = Integer.TYPE;
                Method method = cls.getMethod("checkOpNoThrow", cls2, cls2, String.class);
                Integer num = (Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class);
                num.getClass();
                if (((Integer) method.invoke(appOpsManager, num, Integer.valueOf(i2), packageName)).intValue() != 0) {
                    z = false;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            }
            z = true;
        }
        return z ? 0 : -1;
    }

    public static Drawable compositeTwoLayeredDrawable(Drawable drawable, Drawable drawable2, int i, int i2) {
        if (drawable == null) {
            return drawable2;
        }
        if (drawable2 == null) {
            return drawable;
        }
        if (i == -1 && (i = drawable2.getIntrinsicWidth()) == -1) {
            i = drawable.getIntrinsicWidth();
        }
        if (i2 == -1 && (i2 = drawable2.getIntrinsicHeight()) == -1) {
            i2 = drawable.getIntrinsicHeight();
        }
        if (i > drawable.getIntrinsicWidth() || i2 > drawable.getIntrinsicHeight()) {
            float f = i / i2;
            if (f >= drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight()) {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                i2 = (int) (intrinsicWidth / f);
                i = intrinsicWidth;
            } else {
                i2 = drawable.getIntrinsicHeight();
                i = (int) (f * i2);
            }
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable, drawable2});
        layerDrawable.setLayerSize(1, i, i2);
        layerDrawable.setLayerGravity(1, 17);
        return layerDrawable;
    }

    public static LocusId create(String str) {
        return new LocusId(str);
    }

    public static ColorFilter createBlendModeColorFilter(int i, Object obj) {
        return new BlendModeColorFilter(i, (BlendMode) obj);
    }

    public static void createFileInDownloadsFolder(AppCompatActivity appCompatActivity, String str, String str2) {
        OutputStream openOutputStream;
        byte[] bytes;
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                ContentResolver contentResolver = appCompatActivity.getContentResolver();
                ContentValues contentValues = new ContentValues();
                contentValues.put("_display_name", str);
                contentValues.put("mime_type", "application/json");
                Uri insert = contentResolver.insert(MediaStore.Downloads.getContentUri("external_primary"), contentValues);
                if (insert == null || (openOutputStream = contentResolver.openOutputStream(insert)) == null) {
                    return;
                }
                if (str2 != null) {
                    try {
                        bytes = str2.getBytes(Charsets.UTF_8);
                        bytes.getClass();
                    } finally {
                    }
                } else {
                    bytes = null;
                }
                openOutputStream.write(bytes);
                openOutputStream.close();
                return;
            }
            File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), str);
            file.delete();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), Charsets.UTF_8), 8192);
            try {
                bufferedWriter.write(str2);
                bufferedWriter.close();
            } finally {
            }
        } catch (Exception unused) {
        }
    }

    public static Drawable createTintableMutatedDrawableIfNeeded$1(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (drawable == null) {
            return null;
        }
        if (colorStateList != null) {
            drawable = drawable.mutate();
            if (mode != null) {
                drawable.setTintMode(mode);
            }
        }
        return drawable;
    }

    public static int[] getCheckedState(int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr[i];
            if (i2 == 16842912) {
                return iArr;
            }
            if (i2 == 0) {
                int[] iArr2 = (int[]) iArr.clone();
                iArr2[i] = 16842912;
                return iArr2;
            }
        }
        int[] copyOf = Arrays.copyOf(iArr, iArr.length + 1);
        copyOf[iArr.length] = 16842912;
        return copyOf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0046, code lost:
    
        if (r5.mThemeHash == r8.hashCode()) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList getColorStateList(android.content.Context r8, int r9) {
        /*
            android.content.res.Resources r0 = r8.getResources()
            android.content.res.Resources$Theme r8 = r8.getTheme()
            androidx.core.content.res.ResourcesCompat$ColorStateListCacheKey r1 = new androidx.core.content.res.ResourcesCompat$ColorStateListCacheKey
            r1.<init>(r0, r8)
            java.lang.Object r2 = androidx.core.content.res.ResourcesCompat.sColorStateCacheLock
            monitor-enter(r2)
            java.util.WeakHashMap r3 = androidx.core.content.res.ResourcesCompat.sColorStateCaches     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r3 = r3.get(r1)     // Catch: java.lang.Throwable -> L3c
            android.util.SparseArray r3 = (android.util.SparseArray) r3     // Catch: java.lang.Throwable -> L3c
            r4 = 0
            if (r3 == 0) goto L4f
            int r5 = r3.size()     // Catch: java.lang.Throwable -> L3c
            if (r5 <= 0) goto L4f
            java.lang.Object r5 = r3.get(r9)     // Catch: java.lang.Throwable -> L3c
            androidx.core.content.res.ResourcesCompat$ColorStateListCacheEntry r5 = (androidx.core.content.res.ResourcesCompat.ColorStateListCacheEntry) r5     // Catch: java.lang.Throwable -> L3c
            if (r5 == 0) goto L4f
            android.content.res.Configuration r6 = r5.mConfiguration     // Catch: java.lang.Throwable -> L3c
            android.content.res.Configuration r7 = r0.getConfiguration()     // Catch: java.lang.Throwable -> L3c
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L4c
            if (r8 != 0) goto L3e
            int r6 = r5.mThemeHash     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L48
            goto L3e
        L3c:
            r8 = move-exception
            goto L91
        L3e:
            if (r8 == 0) goto L4c
            int r6 = r5.mThemeHash     // Catch: java.lang.Throwable -> L3c
            int r7 = r8.hashCode()     // Catch: java.lang.Throwable -> L3c
            if (r6 != r7) goto L4c
        L48:
            android.content.res.ColorStateList r3 = r5.mValue     // Catch: java.lang.Throwable -> L3c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            goto L51
        L4c:
            r3.remove(r9)     // Catch: java.lang.Throwable -> L3c
        L4f:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            r3 = r4
        L51:
            if (r3 == 0) goto L54
            return r3
        L54:
            java.lang.ThreadLocal r2 = androidx.core.content.res.ResourcesCompat.sTempTypedValue
            java.lang.Object r3 = r2.get()
            android.util.TypedValue r3 = (android.util.TypedValue) r3
            if (r3 != 0) goto L66
            android.util.TypedValue r3 = new android.util.TypedValue
            r3.<init>()
            r2.set(r3)
        L66:
            r2 = 1
            r0.getValue(r9, r3, r2)
            int r2 = r3.type
            r3 = 28
            if (r2 < r3) goto L75
            r3 = 31
            if (r2 > r3) goto L75
            goto L86
        L75:
            android.content.res.XmlResourceParser r2 = r0.getXml(r9)
            android.content.res.ColorStateList r4 = androidx.core.content.res.ColorStateListInflaterCompat.createFromXml(r0, r2, r8)     // Catch: java.lang.Exception -> L7e
            goto L86
        L7e:
            r2 = move-exception
            java.lang.String r3 = "ResourcesCompat"
            java.lang.String r5 = "Failed to inflate ColorStateList, leaving it to the framework"
            android.util.Log.w(r3, r5, r2)
        L86:
            if (r4 == 0) goto L8c
            androidx.core.content.res.ResourcesCompat.addColorStateListToCache(r1, r9, r4, r8)
            goto L90
        L8c:
            android.content.res.ColorStateList r4 = r0.getColorStateList(r9, r8)
        L90:
            return r4
        L91:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.FileUtil.getColorStateList(android.content.Context, int):android.content.res.ColorStateList");
    }

    public static ColorStateList getColorStateListOrNull(Drawable drawable) {
        if (drawable instanceof ColorDrawable) {
            return ColorStateList.valueOf(((ColorDrawable) drawable).getColor());
        }
        if (Build.VERSION.SDK_INT < 29 || !(drawable instanceof ColorStateListDrawable)) {
            return null;
        }
        return ((ColorStateListDrawable) drawable).getColorStateList();
    }

    public static ContentCaptureSession getContentCaptureSession(View view) {
        return view.getContentCaptureSession();
    }

    public static String getId(LocusId locusId) {
        return locusId.getId();
    }

    public static float getTransitionAlpha(View view) {
        return view.getTransitionAlpha();
    }

    public static boolean isEnabled() {
        return Trace.isEnabled();
    }

    public static String obtainAndCheckReceiverPermission(Context context) {
        String str = context.getApplicationContext().getPackageName() + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
        if (Operation$State.checkSelfPermission(context, str) == 0) {
            return str;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            str = context.getOpPackageName() + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
            if (Operation$State.checkSelfPermission(context, str) == 0) {
                return str;
            }
        }
        Gson$$ExternalSyntheticBUOutline0.m$1(Animation.CC.m("Permission ", str, " is required by your application to receive broadcasts, please add it to your manifest"));
        return null;
    }

    public static Object obtainBlendModeFromCompat(BlendModeCompat blendModeCompat) {
        switch (BlendModeUtils$1.$SwitchMap$androidx$core$graphics$BlendModeCompat[blendModeCompat.ordinal()]) {
            case 1:
                return BlendMode.CLEAR;
            case 2:
                return BlendMode.SRC;
            case 3:
                return BlendMode.DST;
            case 4:
                return BlendMode.SRC_OVER;
            case 5:
                return BlendMode.DST_OVER;
            case 6:
                return BlendMode.SRC_IN;
            case 7:
                return BlendMode.DST_IN;
            case 8:
                return BlendMode.SRC_OUT;
            case 9:
                return BlendMode.DST_OUT;
            case 10:
                return BlendMode.SRC_ATOP;
            case 11:
                return BlendMode.DST_ATOP;
            case 12:
                return BlendMode.XOR;
            case IMAGE_VALUE:
                return BlendMode.PLUS;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return BlendMode.MODULATE;
            case 15:
                return BlendMode.SCREEN;
            case LAZY_VERTICAL_GRID_VALUE:
                return BlendMode.OVERLAY;
            case VERTICAL_GRID_ITEM_VALUE:
                return BlendMode.DARKEN;
            case RADIO_GROUP_VALUE:
                return BlendMode.LIGHTEN;
            case RADIO_BUTTON_VALUE:
                return BlendMode.COLOR_DODGE;
            case RADIO_ROW_VALUE:
                return BlendMode.COLOR_BURN;
            case RADIO_COLUMN_VALUE:
                return BlendMode.HARD_LIGHT;
            case SIZE_BOX_VALUE:
                return BlendMode.SOFT_LIGHT;
            case 23:
                return BlendMode.DIFFERENCE;
            case 24:
                return BlendMode.EXCLUSION;
            case 25:
                return BlendMode.MULTIPLY;
            case 26:
                return BlendMode.HUE;
            case 27:
                return BlendMode.SATURATION;
            case 28:
                return BlendMode.COLOR;
            case 29:
                return BlendMode.LUMINOSITY;
            default:
                return null;
        }
    }

    public static Insets of(int i, int i2, int i3, int i4) {
        return Insets.of(i, i2, i3, i4);
    }

    public static void setBlendMode(Paint paint, Object obj) {
        paint.setBlendMode((BlendMode) obj);
    }

    public static void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    public static void setOutlineToPath(Outline outline, Path path) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            DrawableUtils$OutlineCompatR.setPath(outline, path);
            return;
        }
        if (i >= 29) {
            try {
                DrawableUtils$OutlineCompatL.setConvexPath(outline, path);
            } catch (IllegalArgumentException unused) {
            }
        } else if (path.isConvex()) {
            DrawableUtils$OutlineCompatL.setConvexPath(outline, path);
        }
    }

    public static void setTransitionAlpha(View view, float f) {
        view.setTransitionAlpha(f);
    }

    public static void setTransitionVisibility(View view, int i) {
        view.setTransitionVisibility(i);
    }

    public static void startForeground(SystemForegroundService systemForegroundService, int i, Notification notification, int i2) {
        systemForegroundService.startForeground(i, notification, i2);
    }

    public static void startForeground$1(SystemForegroundService systemForegroundService, int i, Notification notification, int i2) {
        try {
            systemForegroundService.startForeground(i, notification, i2);
        } catch (ForegroundServiceStartNotAllowedException e) {
            Logger$LogcatLogger logger$LogcatLogger = Logger$LogcatLogger.get();
            String str = SystemForegroundService.TAG;
            if (logger$LogcatLogger.mLoggingLevel <= 5) {
                Log.w(str, "Unable to start foreground service", e);
            }
        } catch (SecurityException e2) {
            Logger$LogcatLogger logger$LogcatLogger2 = Logger$LogcatLogger.get();
            String str2 = SystemForegroundService.TAG;
            if (logger$LogcatLogger2.mLoggingLevel <= 5) {
                Log.w(str2, "Unable to start foreground service", e2);
            }
        }
    }

    public static void suppressLayout(ViewGroup viewGroup, boolean z) {
        viewGroup.suppressLayout(z);
    }

    public static final ImageDecoder.Source toImageDecoderSourceOrNull(ImageSource imageSource, Options options, boolean z) {
        okio.Path fileOrNull;
        if (imageSource.getFileSystem() == FileSystem.SYSTEM && (fileOrNull = imageSource.fileOrNull()) != null) {
            return ImageDecoder.createSource(fileOrNull.toFile());
        }
        UtilsKt metadata = imageSource.getMetadata();
        if (metadata instanceof AssetMetadata) {
            return ImageDecoder.createSource(options.context.getAssets(), ((AssetMetadata) metadata).filePath);
        }
        if ((metadata instanceof ContentMetadata) && Build.VERSION.SDK_INT >= 29) {
            try {
                AssetFileDescriptor assetFileDescriptor = ((ContentMetadata) metadata).assetFileDescriptor;
                Os.lseek(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), OsConstants.SEEK_SET);
                return ImageDecoder.createSource(new StaticImageDecoderKt$$ExternalSyntheticLambda0(0, assetFileDescriptor));
            } catch (ErrnoException unused) {
                return null;
            }
        }
        if (metadata instanceof ResourceMetadata) {
            ResourceMetadata resourceMetadata = (ResourceMetadata) metadata;
            if (resourceMetadata.packageName.equals(options.context.getPackageName())) {
                return ImageDecoder.createSource(options.context.getResources(), resourceMetadata.resId);
            }
        }
        if (!(metadata instanceof ByteBufferMetadata)) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 30 || !z || ((ByteBufferMetadata) metadata).byteBuffer.isDirect()) {
            return ImageDecoder.createSource(((ByteBufferMetadata) metadata).byteBuffer);
        }
        return null;
    }

    public static final void traceValue(String str, long j) {
        if (Build.VERSION.SDK_INT >= 29) {
            Trace.setCounter(str, j);
        }
    }

    public static void transformMatrixToGlobal(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    public static void transformMatrixToLocal(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
