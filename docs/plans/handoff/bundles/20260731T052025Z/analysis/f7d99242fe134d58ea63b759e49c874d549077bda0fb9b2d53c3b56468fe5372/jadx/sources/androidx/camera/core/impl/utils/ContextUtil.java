package androidx.camera.core.impl.utils;

import android.content.Context;
import android.os.Build;
import androidx.camera.camera2.compat.Api34Compat;
import androidx.core.os.BuildCompat;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ContextUtil {
    public static final Object CACHE_LOCK = new Object();
    public static final HashMap CACHED_CONTEXTS = new HashMap();

    public static Context getPersistentApplicationContext(Context context) {
        int deviceId;
        Context applicationContext = context.getApplicationContext();
        int hashCode = context.getApplicationContext().hashCode();
        int i = Build.VERSION.SDK_INT;
        Context context2 = null;
        String format = String.format("%d-%d-%s", Integer.valueOf(hashCode), Integer.valueOf(i >= 34 ? context.getDeviceId() : 0), i >= 30 ? BuildCompat.Api30Impl.getAttributionTag(context) : null);
        synchronized (CACHE_LOCK) {
            try {
                HashMap hashMap = CACHED_CONTEXTS;
                WeakReference weakReference = (WeakReference) hashMap.get(format);
                if (weakReference != null) {
                    Context context3 = (Context) weakReference.get();
                    if (context3 != null) {
                        context2 = context3;
                    } else {
                        hashMap.remove(format);
                    }
                }
                if (context2 != null) {
                    return context2;
                }
                if (i >= 34) {
                    deviceId = context.getDeviceId();
                    applicationContext = Api34Compat.createDeviceContext(applicationContext, deviceId);
                }
                if (i >= 30) {
                    String attributionTag = BuildCompat.Api30Impl.getAttributionTag(context);
                    if (!Objects.equals(attributionTag, BuildCompat.Api30Impl.getAttributionTag(applicationContext))) {
                        applicationContext = BuildCompat.Api30Impl.createAttributionContext(applicationContext, attributionTag);
                    }
                }
                hashMap.put(format, new WeakReference(applicationContext));
                return applicationContext;
            } finally {
            }
        }
    }
}
