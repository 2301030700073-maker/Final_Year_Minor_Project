package com.android.launcher3.util;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.android.launcher3.BaseActivity;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class ActivityTracker {
    public WeakReference mCurrentActivity = new WeakReference(null);

    public interface SchedulerCallback {
        default Intent addToIntent(Intent intent) {
            Bundle bundle = new Bundle();
            bundle.putBinder("launcher.scheduler_callback", new ObjectWrapper(this));
            intent.putExtras(bundle);
            return intent;
        }

        boolean init(BaseActivity baseActivity, boolean z);
    }

    public BaseActivity getCreatedActivity() {
        return (BaseActivity) this.mCurrentActivity.get();
    }

    public final boolean handleIntent(BaseActivity baseActivity, Intent intent, boolean z) {
        if (intent == null || intent.getExtras() == null) {
            return false;
        }
        IBinder binder = intent.getExtras().getBinder("launcher.scheduler_callback");
        if (!(binder instanceof ObjectWrapper)) {
            return false;
        }
        if (((SchedulerCallback) ((ObjectWrapper) binder).mObject).init(baseActivity, z)) {
            return true;
        }
        intent.getExtras().remove("launcher.scheduler_callback");
        return true;
    }

    public void runCallbackWhenActivityExists(SchedulerCallback schedulerCallback, Intent intent) {
        BaseActivity baseActivity = (BaseActivity) this.mCurrentActivity.get();
        if (baseActivity != null) {
            schedulerCallback.init(baseActivity, baseActivity.isStarted());
        } else {
            schedulerCallback.addToIntent(intent);
        }
    }
}
