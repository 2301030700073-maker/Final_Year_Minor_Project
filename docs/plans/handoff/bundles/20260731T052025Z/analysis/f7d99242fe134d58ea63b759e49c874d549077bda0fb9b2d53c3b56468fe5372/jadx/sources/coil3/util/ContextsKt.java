package coil3.util;

import android.app.ActivityManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.core.content.res.ResourcesCompat;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContextsKt {
    private static final int DEFAULT_MEMORY_CLASS_MEGABYTES = 256;
    private static final double LOW_MEMORY_MULTIPLIER = 0.15d;
    private static final double STANDARD_MEMORY_MULTIPLIER = 0.2d;

    public static final double defaultMemoryCacheSizePercent(Context context) {
        try {
            Object systemService = context.getSystemService((Class<Object>) ActivityManager.class);
            systemService.getClass();
            return ((ActivityManager) systemService).isLowRamDevice() ? LOW_MEMORY_MULTIPLIER : STANDARD_MEMORY_MULTIPLIER;
        } catch (Exception unused) {
            return STANDARD_MEMORY_MULTIPLIER;
        }
    }

    public static final Context getApplication(Context context) {
        return context.getApplicationContext();
    }

    public static final Drawable getDrawableCompat(Resources resources, int i, Resources.Theme theme) {
        ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
        Drawable drawable = resources.getDrawable(i, theme);
        if (drawable != null) {
            return drawable;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m("Invalid resource ID: ", i));
        return null;
    }

    public static final Lifecycle getLifecycle(Context context) {
        Object obj = context;
        while (!(obj instanceof LifecycleOwner)) {
            if (!(obj instanceof ContextWrapper)) {
                return null;
            }
            obj = ((ContextWrapper) obj).getBaseContext();
        }
        return ((LifecycleOwner) obj).getLifecycle();
    }

    public static final Drawable getXmlDrawableCompat(Context context, Resources resources, int i) {
        XmlResourceParser xml = resources.getXml(i);
        int next = xml.next();
        while (next != 2 && next != 1) {
            next = xml.next();
        }
        if (next != 2) {
            throw new XmlPullParserException("No start tag found.");
        }
        if (Build.VERSION.SDK_INT < 24) {
            String name = xml.getName();
            if (Intrinsics.areEqual(name, "vector")) {
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                Resources.Theme theme = context.getTheme();
                VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
                vectorDrawableCompat.inflate(resources, xml, asAttributeSet, theme);
                return vectorDrawableCompat;
            }
            if (Intrinsics.areEqual(name, "animated-vector")) {
                AttributeSet asAttributeSet2 = Xml.asAttributeSet(xml);
                Resources.Theme theme2 = context.getTheme();
                AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(context, 0);
                animatedVectorDrawableCompat.inflate(resources, xml, asAttributeSet2, theme2);
                return animatedVectorDrawableCompat;
            }
        }
        return getDrawableCompat(resources, i, context.getTheme());
    }

    public static final long totalAvailableMemoryBytes(Context context) {
        int i;
        try {
            Object systemService = context.getSystemService((Class<Object>) ActivityManager.class);
            systemService.getClass();
            ActivityManager activityManager = (ActivityManager) systemService;
            i = (context.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass();
        } catch (Exception unused) {
            i = DEFAULT_MEMORY_CLASS_MEGABYTES;
        }
        return i * 1048576;
    }

    public static final Drawable getDrawableCompat(Context context, int i) {
        Drawable drawable = Utf8.SafeProcessor.getDrawable(context, i);
        if (drawable != null) {
            return drawable;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m("Invalid resource ID: ", i));
        return null;
    }
}
