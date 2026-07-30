package com.android.quickstep.util;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.util.ActivityTracker;
import java.util.function.BiPredicate;

/* loaded from: classes.dex */
public class ActivityInitListener implements ActivityTracker.SchedulerCallback {
    public final ActivityTracker mActivityTracker;
    public boolean mIsRegistered = false;
    public BiPredicate mOnInitListener;

    public ActivityInitListener(BiPredicate biPredicate, ActivityTracker activityTracker) {
        this.mOnInitListener = biPredicate;
        this.mActivityTracker = activityTracker;
    }

    public boolean handleInit(BaseActivity baseActivity, boolean z) {
        return this.mOnInitListener.test(baseActivity, Boolean.valueOf(z));
    }

    @Override // com.android.launcher3.util.ActivityTracker.SchedulerCallback
    public final boolean init(BaseActivity baseActivity, boolean z) {
        if (this.mIsRegistered) {
            return handleInit(baseActivity, z);
        }
        return false;
    }

    public void register(Intent intent) {
        this.mIsRegistered = true;
        this.mActivityTracker.runCallbackWhenActivityExists(this, intent);
    }

    public void registerAndStartActivity(Intent intent, RemoteAnimationProvider remoteAnimationProvider, Context context, Handler handler, long j) {
        this.mIsRegistered = true;
        context.startActivity(addToIntent(new Intent(intent)), remoteAnimationProvider.toActivityOptions(handler, j, context).toBundle());
    }

    public void unregister() {
        this.mIsRegistered = false;
        this.mOnInitListener = null;
    }
}
