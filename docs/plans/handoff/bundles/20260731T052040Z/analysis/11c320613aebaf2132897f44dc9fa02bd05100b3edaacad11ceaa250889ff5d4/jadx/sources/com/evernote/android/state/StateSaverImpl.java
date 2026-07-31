package com.evernote.android.state;

import android.app.Application;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import androidx.compose.ui.Modifier;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.evernote.android.state.Injector;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
final class StateSaverImpl {
    private final Map<Class<?>, Injector> mInjectors;

    public StateSaverImpl(Map<Class<?>, Injector> map) {
        this.mInjectors = map;
    }

    private Injector getInjector(Class<?> cls) {
        Injector injector;
        Injector injector2 = this.mInjectors.get(cls);
        if (injector2 != null || this.mInjectors.containsKey(cls)) {
            return injector2;
        }
        String name = cls.getName();
        if (name.startsWith(StateSaver.ANDROID_PREFIX) || name.startsWith(StateSaver.JAVA_PREFIX)) {
            return null;
        }
        try {
            injector = (Injector) Class.forName(name.concat(StateSaver.SUFFIX)).newInstance();
        } catch (Exception unused) {
            injector = getInjector(cls.getSuperclass());
        }
        this.mInjectors.put(cls, injector);
        return injector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T extends Injector> T safeGet(Object obj, Injector injector) {
        try {
            T t = (T) getInjector(obj.getClass());
            return t == null ? injector : t;
        } catch (Exception e) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m(Modifier.CC.m(obj, "Unable to inject state for "), e);
            return null;
        }
    }

    public <T extends View> Parcelable restoreInstanceState(T t, Parcelable parcelable) {
        if (parcelable != null) {
            return ((Injector.View) safeGet(t, Injector.View.DEFAULT)).restore(t, parcelable);
        }
        return null;
    }

    public <T extends View> Parcelable saveInstanceState(T t, Parcelable parcelable) {
        return ((Injector.View) safeGet(t, Injector.View.DEFAULT)).save(t, parcelable);
    }

    public void setEnabledForAllActivitiesAndSupportFragments(Application application, boolean z) {
        AndroidLifecycleCallbacks androidLifecycleCallbacks = AndroidLifecycleCallbacks.INSTANCE;
        if (androidLifecycleCallbacks.mEnabled != z) {
            if (z) {
                application.registerActivityLifecycleCallbacks(androidLifecycleCallbacks);
            } else {
                application.unregisterActivityLifecycleCallbacks(androidLifecycleCallbacks);
            }
            androidLifecycleCallbacks.mEnabled = z;
        }
    }

    public <T> void saveInstanceState(T t, Bundle bundle) {
        ((Injector.Object) safeGet(t, Injector.Object.DEFAULT)).save(t, bundle);
    }

    public <T> void restoreInstanceState(T t, Bundle bundle) {
        if (bundle != null) {
            ((Injector.Object) safeGet(t, Injector.Object.DEFAULT)).restore(t, bundle);
        }
    }
}
