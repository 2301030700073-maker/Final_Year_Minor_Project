package coil3.decode;

import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.graphics.BlendMode;
import android.graphics.ImageDecoder;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.os.Build;
import android.os.Process;
import android.os.Trace;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.contentcapture.ContentCaptureSession;
import androidx.compose.ui.Modifier;
import androidx.core.app.LocaleManagerCompat$Api33Impl;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.os.LocaleListCompat;
import androidx.core.os.LocaleListInterface;
import androidx.room.Room;
import androidx.transition.Transition;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.foreground.SystemForegroundService;
import coil3.request.Options;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import net.newpipe.app.AppKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.FileSystem;
import okio.Path;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class StaticImageDecoderKt {
    public static int checkSelfPermission(Context context, String str) {
        if (str != null) {
            return (Build.VERSION.SDK_INT >= 33 || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) ? context.checkPermission(str, Process.myPid(), Process.myUid()) : new NotificationManagerCompat(context).areNotificationsEnabled() ? 0 : -1;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("permission must be non-null");
        return 0;
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
        throw new UnsupportedOperationException("Method not decompiled: coil3.decode.StaticImageDecoderKt.getColorStateList(android.content.Context, int):android.content.res.ColorStateList");
    }

    public static ContentCaptureSession getContentCaptureSession(View view) {
        return view.getContentCaptureSession();
    }

    public static Context getContextForLanguage(Context context) {
        LocaleListCompat forLanguageTags;
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            Object systemService = context.getSystemService("locale");
            forLanguageTags = systemService != null ? LocaleListCompat.wrap(LocaleManagerCompat$Api33Impl.localeManagerGetApplicationLocales(systemService)) : LocaleListCompat.sEmptyLocaleList;
        } else {
            forLanguageTags = LocaleListCompat.forLanguageTags(NavUtils.readLocales(context));
        }
        if (i > 32) {
            return context;
        }
        LocaleListInterface localeListInterface = forLanguageTags.mImpl;
        if (localeListInterface.isEmpty()) {
            return context;
        }
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        if (i >= 24) {
            Utility.setLocales(configuration, forLanguageTags);
        } else if (!localeListInterface.isEmpty()) {
            configuration.setLocale(localeListInterface.get(0));
        }
        return context.createConfigurationContext(configuration);
    }

    public static float getTransitionAlpha(View view) {
        return view.getTransitionAlpha();
    }

    public static boolean isEnabled() {
        return Trace.isEnabled();
    }

    public static String obtainAndCheckReceiverPermission(Context context) {
        String str = context.getApplicationContext().getPackageName() + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
        if (AppKt.checkSelfPermission(context, str) == 0) {
            return str;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            str = context.getOpPackageName() + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
            if (AppKt.checkSelfPermission(context, str) == 0) {
                return str;
            }
        }
        Node$$ExternalSyntheticBUOutline0.m811m(Modifier.CC.m("Permission ", str, " is required by your application to receive broadcasts, please add it to your manifest"));
        return null;
    }

    public static Insets of(int i, int i2, int i3, int i4) {
        return Insets.of(i, i2, i3, i4);
    }

    public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i) {
        Intent registerReceiver;
        int i2 = i & 2;
        if (i2 == 0 && (i & 4) == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("One of either RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED is required");
            return null;
        }
        if (i2 != 0 && (i & 4) != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Cannot specify both RECEIVER_EXPORTED and RECEIVER_NOT_EXPORTED");
            return null;
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 33) {
            return i3 >= 26 ? Transition.Impl26.registerReceiver(context, broadcastReceiver, intentFilter, i) : (i & 4) != 0 ? context.registerReceiver(broadcastReceiver, intentFilter, obtainAndCheckReceiverPermission(context), null) : context.registerReceiver(broadcastReceiver, intentFilter, null, null);
        }
        registerReceiver = context.registerReceiver(broadcastReceiver, intentFilter, null, null, i);
        return registerReceiver;
    }

    public static void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    public static void setPaintBlendMode(Paint paint) {
        paint.setBlendMode(BlendMode.SRC);
    }

    public static void setTransitionAlpha(View view, float f) {
        view.setTransitionAlpha(f);
    }

    public static void setTransitionVisibility(int i, View view) {
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

    public static void startForegroundService(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            Transition.Impl26.startForegroundService(context, intent);
        } else {
            context.startService(intent);
        }
    }

    public static void suppressLayout(ViewGroup viewGroup, boolean z) {
        viewGroup.suppressLayout(z);
    }

    public static final ImageDecoder.Source toImageDecoderSourceOrNull(ImageSource imageSource, Options options) {
        Path fileOrNull;
        if (imageSource.getFileSystem() == FileSystem.SYSTEM && (fileOrNull = imageSource.fileOrNull()) != null) {
            return ImageDecoder.createSource(fileOrNull.toFile());
        }
        Room metadata = imageSource.getMetadata();
        if (metadata instanceof AssetMetadata) {
            return ImageDecoder.createSource(options.context.getAssets(), ((AssetMetadata) metadata).filePath);
        }
        if ((metadata instanceof ContentMetadata) && Build.VERSION.SDK_INT >= 29) {
            try {
                AssetFileDescriptor assetFileDescriptor = ((ContentMetadata) metadata).assetFileDescriptor;
                Os.lseek(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), OsConstants.SEEK_SET);
                return ImageDecoder.createSource(new StaticImageDecoderKt$$ExternalSyntheticLambda0(assetFileDescriptor, 0));
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
        if (metadata instanceof ByteBufferMetadata) {
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
