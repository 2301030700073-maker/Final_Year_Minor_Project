package androidx.core.content.pm;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.compose.ui.Modifier;
import androidx.core.content.pm.ShortcutInfoCompat;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ShortcutManagerCompat {
    public static volatile ArrayList sShortcutInfoChangeListeners;
    public static volatile ShortcutInfoCompatSaver$NoopImpl sShortcutInfoCompatSaver;

    public static ArrayList getDynamicShortcuts(Context context) {
        if (Build.VERSION.SDK_INT < 25) {
            try {
                getShortcutInfoSaverInstance(context).getClass();
                return new ArrayList();
            } catch (Exception unused) {
                return new ArrayList();
            }
        }
        List<ShortcutInfo> dynamicShortcuts = ((ShortcutManager) context.getSystemService(ShortcutManager.class)).getDynamicShortcuts();
        ArrayList arrayList = new ArrayList(dynamicShortcuts.size());
        Iterator<ShortcutInfo> it = dynamicShortcuts.iterator();
        while (it.hasNext()) {
            ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat.Builder(context, it.next()).mInfo;
            if (TextUtils.isEmpty(shortcutInfoCompat.mLabel)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Shortcut must have a non-empty label");
                return null;
            }
            Intent[] intentArr = shortcutInfoCompat.mIntents;
            if (intentArr == null || intentArr.length == 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Shortcut must have an intent");
                return null;
            }
            arrayList.add(shortcutInfoCompat);
        }
        return arrayList;
    }

    public static List getShortcutInfoListeners(Context context) {
        Bundle bundle;
        String string;
        if (sShortcutInfoChangeListeners == null) {
            ArrayList arrayList = new ArrayList();
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("androidx.core.content.pm.SHORTCUT_LISTENER");
            intent.setPackage(context.getPackageName());
            Iterator<ResolveInfo> it = packageManager.queryIntentActivities(intent, 128).iterator();
            while (it.hasNext()) {
                ActivityInfo activityInfo = it.next().activityInfo;
                if (activityInfo != null && (bundle = activityInfo.metaData) != null && (string = bundle.getString("androidx.core.content.pm.shortcut_listener_impl")) != null) {
                    try {
                        if (Class.forName(string, false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context) != null) {
                            throw new ClassCastException();
                        }
                        arrayList.add(null);
                    } catch (Exception unused) {
                        continue;
                    }
                }
            }
            if (sShortcutInfoChangeListeners == null) {
                sShortcutInfoChangeListeners = arrayList;
            }
        }
        return sShortcutInfoChangeListeners;
    }

    public static ShortcutInfoCompatSaver$NoopImpl getShortcutInfoSaverInstance(Context context) {
        if (sShortcutInfoCompatSaver == null) {
            try {
                sShortcutInfoCompatSaver = (ShortcutInfoCompatSaver$NoopImpl) Class.forName("androidx.sharetarget.ShortcutInfoCompatSaverImpl", false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context);
            } catch (Exception unused) {
            }
            if (sShortcutInfoCompatSaver == null) {
                sShortcutInfoCompatSaver = new ShortcutInfoCompatSaver$NoopImpl();
            }
        }
        return sShortcutInfoCompatSaver;
    }

    public static void reportShortcutUsed(Context context, String str) {
        context.getClass();
        str.getClass();
        if (Build.VERSION.SDK_INT >= 25) {
            ((ShortcutManager) context.getSystemService(ShortcutManager.class)).reportShortcutUsed(str);
        }
        Iterator it = ((ArrayList) getShortcutInfoListeners(context)).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                ContextsKt$$ExternalSyntheticBUOutline0.m$1();
            } else {
                Collections.singletonList(str);
                throw null;
            }
        }
    }

    public static void setDynamicShortcuts(Context context, List list) {
        if (Build.VERSION.SDK_INT <= 32) {
            ArrayList arrayList = new ArrayList(list);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((ShortcutInfoCompat) it.next()).getClass();
            }
            list = arrayList;
        }
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList2 = new ArrayList(list.size());
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((ShortcutInfoCompat) it2.next()).toShortcutInfo());
            }
            if (!((ShortcutManager) context.getSystemService(ShortcutManager.class)).setDynamicShortcuts(arrayList2)) {
                return;
            }
        }
        getShortcutInfoSaverInstance(context).getClass();
        getShortcutInfoSaverInstance(context).getClass();
        Iterator it3 = ((ArrayList) getShortcutInfoListeners(context)).iterator();
        if (it3.hasNext()) {
            throw Modifier.CC.m(it3);
        }
    }
}
