package org.acra.util;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Handler;
import androidx.core.app.ActivityRecreator;
import java.lang.reflect.Method;
import org.acra.ACRA;
import org.acra.ErrorReporter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ProcessFinisher$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Activity f$0;

    public /* synthetic */ ProcessFinisher$$ExternalSyntheticLambda0(Activity activity, int i) {
        this.$r8$classId = i;
        this.f$0 = activity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        int i = this.$r8$classId;
        Activity activity = this.f$0;
        switch (i) {
            case 0:
                activity.finish();
                ErrorReporter errorReporter = ACRA.errorReporter;
                return;
            default:
                if (activity.isFinishing()) {
                    return;
                }
                Handler handler = ActivityRecreator.mainHandler;
                Method method = ActivityRecreator.requestRelaunchActivityMethod;
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 28) {
                    activity.recreate();
                    return;
                }
                if (((i2 != 26 && i2 != 27) || method != null) && (ActivityRecreator.performStopActivity2ParamsMethod != null || ActivityRecreator.performStopActivity3ParamsMethod != null)) {
                    try {
                        Object obj2 = ActivityRecreator.tokenField.get(activity);
                        if (obj2 != null && (obj = ActivityRecreator.mainThreadField.get(activity)) != null) {
                            Application application = activity.getApplication();
                            ActivityRecreator.LifecycleCheckCallbacks lifecycleCheckCallbacks = new ActivityRecreator.LifecycleCheckCallbacks(activity);
                            application.registerActivityLifecycleCallbacks(lifecycleCheckCallbacks);
                            handler.post(new ActivityRecreator.AnonymousClass1(lifecycleCheckCallbacks, obj2, 0));
                            int i3 = 1;
                            try {
                                if ((i2 == 26 || i2 == 27) == true) {
                                    Boolean bool = Boolean.FALSE;
                                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                                } else {
                                    activity.recreate();
                                }
                                handler.post(new ActivityRecreator.AnonymousClass1(i3, application, lifecycleCheckCallbacks, null == true ? 1 : 0));
                                return;
                            } finally {
                                handler.post(new ActivityRecreator.AnonymousClass1(i3, application, lifecycleCheckCallbacks, null == true ? 1 : 0));
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
                activity.recreate();
                return;
        }
    }
}
