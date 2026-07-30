package com.android.launcher3.appprediction;

import android.annotation.TargetApi;
import android.app.prediction.AppPredictionContext;
import android.app.prediction.AppPredictionManager;
import android.app.prediction.AppPredictor;
import android.app.prediction.AppTarget;
import android.app.prediction.AppTargetEvent;
import android.app.prediction.AppTargetId;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.UserHandle;
import c.a.c.a.a;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.appprediction.PredictionAppTracker;
import com.android.launcher3.appprediction.PredictionUiStateManager;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.Executors;
import com.android.systemui.plugins.AppLaunchEventsPlugin;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.PluginListener;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

@TargetApi(29)
/* loaded from: classes.dex */
public class PredictionAppTracker extends AppLaunchTracker implements PluginListener {
    public final List mAppLaunchEventsPluginsList;
    public final Context mContext;
    public AppPredictor mHomeAppPredictor;
    public final Handler mMessageHandler = new Handler(Executors.UI_HELPER_EXECUTOR.getLooper(), new Handler.Callback() { // from class: c.a.a.F0.d
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            return PredictionAppTracker.a(PredictionAppTracker.this, message);
        }
    });
    public AppPredictor mRecentsOverviewPredictor;

    public PredictionAppTracker(Context context) {
        this.mContext = context;
        InvariantDeviceProfile invariantDeviceProfile = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.b(this.mContext);
        invariantDeviceProfile.mChangeListeners.add(new InvariantDeviceProfile.OnIDPChangeListener() { // from class: c.a.a.F0.g
            @Override // com.android.launcher3.InvariantDeviceProfile.OnIDPChangeListener
            public final void onIdpChanged(int i, InvariantDeviceProfile invariantDeviceProfile2) {
                PredictionAppTracker.b(PredictionAppTracker.this, i, invariantDeviceProfile2);
            }
        });
        this.mMessageHandler.sendEmptyMessage(0);
        this.mAppLaunchEventsPluginsList = new ArrayList();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(context)).mPluginManager.addPluginListener((PluginListener) this, AppLaunchEventsPlugin.class, true);
    }

    public static boolean a(PredictionAppTracker predictionAppTracker, Message message) {
        Objects.requireNonNull(predictionAppTracker);
        PredictionUiStateManager.Client client = PredictionUiStateManager.Client.HOME;
        int i = message.what;
        if (i == 0) {
            AppPredictor appPredictor = predictionAppTracker.mHomeAppPredictor;
            if (appPredictor != null) {
                appPredictor.destroy();
                predictionAppTracker.mHomeAppPredictor = null;
            }
            AppPredictor appPredictor2 = predictionAppTracker.mRecentsOverviewPredictor;
            if (appPredictor2 != null) {
                appPredictor2.destroy();
                predictionAppTracker.mRecentsOverviewPredictor = null;
            }
            int i2 = ((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.b(predictionAppTracker.mContext)).numAllAppsColumns;
            predictionAppTracker.mHomeAppPredictor = predictionAppTracker.createPredictor(client, i2);
            predictionAppTracker.mRecentsOverviewPredictor = predictionAppTracker.createPredictor(PredictionUiStateManager.Client.OVERVIEW, i2);
            return true;
        }
        if (i == 1) {
            AppPredictor appPredictor3 = predictionAppTracker.mHomeAppPredictor;
            if (appPredictor3 != null) {
                appPredictor3.destroy();
                predictionAppTracker.mHomeAppPredictor = null;
            }
            AppPredictor appPredictor4 = predictionAppTracker.mRecentsOverviewPredictor;
            if (appPredictor4 == null) {
                return true;
            }
            appPredictor4.destroy();
            predictionAppTracker.mRecentsOverviewPredictor = null;
            return true;
        }
        if (i == 2) {
            AppPredictor appPredictor5 = predictionAppTracker.mHomeAppPredictor;
            if (appPredictor5 == null) {
                return true;
            }
            appPredictor5.notifyAppTargetEvent((AppTargetEvent) message.obj);
            return true;
        }
        if (i != 3) {
            return false;
        }
        if (predictionAppTracker.mHomeAppPredictor == null) {
            return true;
        }
        if (client.id.equals((String) message.obj)) {
            predictionAppTracker.mHomeAppPredictor.requestPredictionUpdate();
            return true;
        }
        predictionAppTracker.mRecentsOverviewPredictor.requestPredictionUpdate();
        return true;
    }

    public static void b(PredictionAppTracker predictionAppTracker, int i, InvariantDeviceProfile invariantDeviceProfile) {
        Objects.requireNonNull(predictionAppTracker);
        if ((i & 1) != 0) {
            predictionAppTracker.mMessageHandler.sendEmptyMessage(0);
        }
    }

    public static /* synthetic */ void c(ComponentName componentName, UserHandle userHandle, String str, AppLaunchEventsPlugin appLaunchEventsPlugin) {
        if (str == null) {
            str = AppLaunchTracker.CONTAINER_DEFAULT;
        }
        appLaunchEventsPlugin.onDismissApp(componentName, userHandle, str);
    }

    public static /* synthetic */ void d(ComponentName componentName, UserHandle userHandle, String str, AppLaunchEventsPlugin appLaunchEventsPlugin) {
        if (str == null) {
            str = AppLaunchTracker.CONTAINER_DEFAULT;
        }
        appLaunchEventsPlugin.onStartApp(componentName, userHandle, str);
    }

    public static /* synthetic */ void e(String str, String str2, UserHandle userHandle, String str3, AppLaunchEventsPlugin appLaunchEventsPlugin) {
        if (str3 == null) {
            str3 = AppLaunchTracker.CONTAINER_DEFAULT;
        }
        appLaunchEventsPlugin.onStartShortcut(str, str2, userHandle, str3);
    }

    public final AppPredictor createPredictor(final PredictionUiStateManager.Client client, int i) {
        AppPredictionManager appPredictionManager = (AppPredictionManager) this.mContext.getSystemService(AppPredictionManager.class);
        if (appPredictionManager == null) {
            return null;
        }
        AppPredictor createAppPredictionSession = appPredictionManager.createAppPredictionSession(new AppPredictionContext.Builder(this.mContext).setUiSurface(client.id).setPredictedTargetCount(i).setExtras(getAppPredictionContextExtras(client)).build());
        Executor mainExecutor = this.mContext.getMainExecutor();
        final PredictionUiStateManager predictionUiStateManager = (PredictionUiStateManager) PredictionUiStateManager.INSTANCE.b(this.mContext);
        Objects.requireNonNull(predictionUiStateManager);
        createAppPredictionSession.registerPredictionUpdates(mainExecutor, new AppPredictor.Callback() { // from class: c.a.a.F0.n
            public final void onTargetsAvailable(List list) {
                PredictionUiStateManager predictionUiStateManager2 = PredictionUiStateManager.this;
                predictionUiStateManager2.mPredictionServicePredictions[client.ordinal()] = list;
                List[] listArr = predictionUiStateManager2.mPredictionServicePredictions;
                int length = listArr.length;
                int i2 = 0;
                boolean z = false;
                while (true) {
                    boolean z2 = true;
                    if (i2 >= length) {
                        break;
                    }
                    List list2 = listArr[i2];
                    if (list2 == null || list2.isEmpty()) {
                        z2 = false;
                    }
                    z |= z2;
                    i2++;
                }
                if (z != predictionUiStateManager2.mGettingValidPredictionResults) {
                    predictionUiStateManager2.mGettingValidPredictionResults = z;
                    Utilities.getDevicePrefs(predictionUiStateManager2.mContext).edit().putBoolean("last_prediction_enabled_state", true).apply();
                }
                predictionUiStateManager2.dispatchOnChange(true);
            }
        });
        createAppPredictionSession.requestPredictionUpdate();
        return createAppPredictionSession;
    }

    public Bundle getAppPredictionContextExtras(PredictionUiStateManager.Client client) {
        return null;
    }

    @Override // com.android.launcher3.model.AppLaunchTracker
    public void onDismissApp(final ComponentName componentName, final UserHandle userHandle, final String str) {
        if (componentName == null) {
            return;
        }
        sendEvent(new AppTarget.Builder(new AppTargetId("app: " + componentName), componentName.getPackageName(), userHandle).setClassName(componentName.getClassName()).build(), str, 2);
        this.mAppLaunchEventsPluginsList.forEach(new Consumer() { // from class: c.a.a.F0.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                PredictionAppTracker.c(componentName, userHandle, str, (AppLaunchEventsPlugin) obj);
            }
        });
    }

    @Override // com.android.systemui.plugins.PluginListener
    public /* bridge */ /* synthetic */ void onPluginConnected(Plugin plugin, Context context) {
        onPluginConnected((AppLaunchEventsPlugin) plugin);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginDisconnected(Plugin plugin) {
        this.mAppLaunchEventsPluginsList.remove((AppLaunchEventsPlugin) plugin);
    }

    @Override // com.android.launcher3.model.AppLaunchTracker
    public void onReturnedToHome() {
        String str = PredictionUiStateManager.Client.HOME.id;
        this.mMessageHandler.removeMessages(3, str);
        Message.obtain(this.mMessageHandler, 3, str).sendToTarget();
        this.mAppLaunchEventsPluginsList.forEach(new Consumer() { // from class: c.a.a.F0.q
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((AppLaunchEventsPlugin) obj).onReturnedToHome();
            }
        });
    }

    @Override // com.android.launcher3.model.AppLaunchTracker
    public void onStartApp(final ComponentName componentName, final UserHandle userHandle, final String str) {
        if (componentName != null) {
            sendEvent(new AppTarget.Builder(new AppTargetId("app:" + componentName), componentName.getPackageName(), userHandle).setClassName(componentName.getClassName()).build(), str, 1);
            this.mAppLaunchEventsPluginsList.forEach(new Consumer() { // from class: c.a.a.F0.f
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    PredictionAppTracker.d(componentName, userHandle, str, (AppLaunchEventsPlugin) obj);
                }
            });
        }
    }

    @Override // com.android.launcher3.model.AppLaunchTracker
    public void onStartShortcut(final String str, final String str2, final UserHandle userHandle, final String str3) {
        sendEvent(new AppTarget.Builder(new AppTargetId(a.e("shortcut:", str2)), str, userHandle).setClassName(str2).build(), str3, 1);
        this.mAppLaunchEventsPluginsList.forEach(new Consumer() { // from class: c.a.a.F0.h
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                PredictionAppTracker.e(str, str2, userHandle, str3, (AppLaunchEventsPlugin) obj);
            }
        });
    }

    public final void sendEvent(AppTarget appTarget, String str, int i) {
        AppTargetEvent.Builder builder = new AppTargetEvent.Builder(appTarget, i);
        if (str == null) {
            str = AppLaunchTracker.CONTAINER_DEFAULT;
        }
        Message.obtain(this.mMessageHandler, 2, builder.setLaunchLocation(str).build()).sendToTarget();
    }

    public void onPluginConnected(AppLaunchEventsPlugin appLaunchEventsPlugin) {
        this.mAppLaunchEventsPluginsList.add(appLaunchEventsPlugin);
    }
}
