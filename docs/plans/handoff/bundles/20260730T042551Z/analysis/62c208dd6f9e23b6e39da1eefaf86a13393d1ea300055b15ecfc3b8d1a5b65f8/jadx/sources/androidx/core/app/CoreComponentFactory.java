package androidx.core.app;

import android.app.Activity;
import android.app.AppComponentFactory;
import android.app.Application;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.Intent;

/* loaded from: classes.dex */
public class CoreComponentFactory extends AppComponentFactory {

    /* renamed from: androidx.core.app.CoreComponentFactory$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do, reason: not valid java name */
        Object m3703do();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    public static <T> T m3702do(T t) {
        T t2;
        return (!(t instanceof Cdo) || (t2 = (T) ((Cdo) t).m3703do()) == null) ? t : t2;
    }

    @Override // android.app.AppComponentFactory
    public final Activity instantiateActivity(ClassLoader classLoader, String str, Intent intent) {
        return (Activity) m3702do(super.instantiateActivity(classLoader, str, intent));
    }

    @Override // android.app.AppComponentFactory
    public final Application instantiateApplication(ClassLoader classLoader, String str) {
        return (Application) m3702do(super.instantiateApplication(classLoader, str));
    }

    @Override // android.app.AppComponentFactory
    public final ContentProvider instantiateProvider(ClassLoader classLoader, String str) {
        return (ContentProvider) m3702do(super.instantiateProvider(classLoader, str));
    }

    @Override // android.app.AppComponentFactory
    public final BroadcastReceiver instantiateReceiver(ClassLoader classLoader, String str, Intent intent) {
        return (BroadcastReceiver) m3702do(super.instantiateReceiver(classLoader, str, intent));
    }

    @Override // android.app.AppComponentFactory
    public final Service instantiateService(ClassLoader classLoader, String str, Intent intent) {
        return (Service) m3702do(super.instantiateService(classLoader, str, intent));
    }
}
