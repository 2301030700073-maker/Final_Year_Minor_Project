package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleDispatcher;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import java.util.List;
import kotlin.collections.EmptyList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements Initializer {
    @Override // androidx.startup.Initializer
    public final Object create(Context context) {
        context.getClass();
        AppInitializer appInitializer = AppInitializer.getInstance(context);
        appInitializer.getClass();
        if (!appInitializer.mDiscovered.contains(ProcessLifecycleInitializer.class)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
            return null;
        }
        if (!LifecycleDispatcher.initialized.getAndSet(true)) {
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            ((Application) applicationContext).registerActivityLifecycleCallbacks(new LifecycleDispatcher.DispatcherActivityCallback());
        }
        final ProcessLifecycleOwner processLifecycleOwner = ProcessLifecycleOwner.newInstance;
        processLifecycleOwner.getClass();
        processLifecycleOwner.handler = new Handler();
        processLifecycleOwner.registry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
        Context applicationContext2 = context.getApplicationContext();
        applicationContext2.getClass();
        ((Application) applicationContext2).registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1
            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                activity.getClass();
                if (Build.VERSION.SDK_INT < 29) {
                    int i = ReportFragment.$r8$clinit;
                    Fragment findFragmentByTag = activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
                    findFragmentByTag.getClass();
                    ((ReportFragment) findFragmentByTag).processListener = ProcessLifecycleOwner.this.initializationListener;
                }
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                activity.getClass();
                ProcessLifecycleOwner processLifecycleOwner2 = ProcessLifecycleOwner.this;
                int i = processLifecycleOwner2.resumedCounter - 1;
                processLifecycleOwner2.resumedCounter = i;
                if (i == 0) {
                    Handler handler = processLifecycleOwner2.handler;
                    handler.getClass();
                    handler.postDelayed(processLifecycleOwner2.delayedPauseRunnable, 700L);
                }
            }

            /* JADX WARN: Type inference failed for: r2v1, types: [androidx.lifecycle.ProcessLifecycleOwner$attach$1$onActivityPreCreated$1] */
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPreCreated(Activity activity, Bundle bundle) {
                activity.getClass();
                final ProcessLifecycleOwner processLifecycleOwner2 = ProcessLifecycleOwner.this;
                ProcessLifecycleOwner.Api29Impl.registerActivityLifecycleCallbacks(activity, new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1$onActivityPreCreated$1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostResumed(Activity activity2) {
                        activity2.getClass();
                        ProcessLifecycleOwner.this.activityResumed$lifecycle_process();
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostStarted(Activity activity2) {
                        activity2.getClass();
                        ProcessLifecycleOwner processLifecycleOwner3 = ProcessLifecycleOwner.this;
                        int i = processLifecycleOwner3.startedCounter + 1;
                        processLifecycleOwner3.startedCounter = i;
                        if (i == 1 && processLifecycleOwner3.stopSent) {
                            processLifecycleOwner3.registry.handleLifecycleEvent(Lifecycle.Event.ON_START);
                            processLifecycleOwner3.stopSent = false;
                        }
                    }
                });
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                activity.getClass();
                ProcessLifecycleOwner processLifecycleOwner2 = ProcessLifecycleOwner.this;
                int i = processLifecycleOwner2.startedCounter - 1;
                processLifecycleOwner2.startedCounter = i;
                if (i == 0 && processLifecycleOwner2.pauseSent) {
                    processLifecycleOwner2.registry.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
                    processLifecycleOwner2.stopSent = true;
                }
            }
        });
        return processLifecycleOwner;
    }

    @Override // androidx.startup.Initializer
    public final List dependencies() {
        return EmptyList.INSTANCE;
    }
}
