package com.allproperty.android.consumer.modules.remoteconfig;

import com.allproperty.android.consumer.BuildConfig;
import com.allproperty.android.consumer.R;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.remoteconfig.ConfigUpdate;
import com.google.firebase.remoteconfig.ConfigUpdateListener;
import com.google.firebase.remoteconfig.ConfigUpdateListenerRegistration;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigSettings;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigValue;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RemoteConfig.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u000b\u001a\u00020\f2\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\f0\u000eJ\u0006\u0010\u0011\u001a\u00020\fJ\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u000fH\u0002J\u0016\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u000fJ\u0016\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0007J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001cJ\u0016\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;", "", "<init>", "()V", "remoteConfig", "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;", "MINIMUM_FETCH_INTERVAL_IN_SECONDS", "", "cacheExpiration", "configUpdateListenerRegistration", "Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;", "startConfigUpdateListener", "", "callback", "Lkotlin/Function2;", "", "Lcom/facebook/react/bridge/WritableMap;", "stopConfigUpdateListener", "fetchAndActivate", "Lcom/google/android/gms/tasks/Task;", "", "getValue", "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;", SDKConstants.PARAM_KEY, "getStringValue", "defaultValue", "getLongValue", "getIntValue", "", "getBooleanValue", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class RemoteConfig {
    private final long MINIMUM_FETCH_INTERVAL_IN_SECONDS = 43200;
    private final long cacheExpiration;
    private ConfigUpdateListenerRegistration configUpdateListenerRegistration;
    private FirebaseRemoteConfig remoteConfig;

    public RemoteConfig() {
        long j = BuildConfig.FLAVOR == "internal" ? 0L : 43200L;
        this.cacheExpiration = j;
        this.remoteConfig = FirebaseRemoteConfig.getInstance();
        FirebaseRemoteConfigSettings build = new FirebaseRemoteConfigSettings.Builder().setMinimumFetchIntervalInSeconds(j).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        this.remoteConfig.setConfigSettingsAsync(build);
        this.remoteConfig.setDefaultsAsync(R.xml.remote_config_defaults);
    }

    public final void startConfigUpdateListener(final Function2<? super String, ? super WritableMap, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.configUpdateListenerRegistration == null) {
            this.configUpdateListenerRegistration = this.remoteConfig.addOnConfigUpdateListener(new ConfigUpdateListener() { // from class: com.allproperty.android.consumer.modules.remoteconfig.RemoteConfig$startConfigUpdateListener$1
                @Override // com.google.firebase.remoteconfig.ConfigUpdateListener
                public void onUpdate(ConfigUpdate configUpdate) {
                    Intrinsics.checkNotNullParameter(configUpdate, "configUpdate");
                    Set<String> updatedKeys = configUpdate.getUpdatedKeys();
                    Intrinsics.checkNotNullExpressionValue(updatedKeys, "getUpdatedKeys(...)");
                    WritableArray createArray = Arguments.createArray();
                    Iterator<String> it = updatedKeys.iterator();
                    while (it.hasNext()) {
                        createArray.pushString(it.next());
                    }
                    WritableMap createMap = Arguments.createMap();
                    createMap.putString("resultType", "success");
                    createMap.putArray("updatedKeys", createArray);
                    Function2<String, WritableMap, Unit> function2 = callback;
                    Intrinsics.checkNotNull(createMap);
                    function2.invoke("configUpdate", createMap);
                }

                @Override // com.google.firebase.remoteconfig.ConfigUpdateListener
                public void onError(FirebaseRemoteConfigException error) {
                    Intrinsics.checkNotNullParameter(error, "error");
                    WritableMap createMap = Arguments.createMap();
                    createMap.putString("resultType", "error");
                    createMap.putString("code", error.getCode().name());
                    createMap.putString("message", error.getMessage());
                    Function2<String, WritableMap, Unit> function2 = callback;
                    Intrinsics.checkNotNull(createMap);
                    function2.invoke("configUpdate", createMap);
                }
            });
        }
    }

    public final void stopConfigUpdateListener() {
        ConfigUpdateListenerRegistration configUpdateListenerRegistration = this.configUpdateListenerRegistration;
        if (configUpdateListenerRegistration != null) {
            configUpdateListenerRegistration.remove();
        }
        this.configUpdateListenerRegistration = null;
    }

    public final Task<Boolean> fetchAndActivate() {
        int lastFetchStatus = this.remoteConfig.getInfo().getLastFetchStatus();
        boolean z = true;
        if (lastFetchStatus != 0 && lastFetchStatus != 1) {
            z = false;
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        if (z) {
            Intrinsics.checkNotNull(this.remoteConfig.fetch().addOnCompleteListener(new OnCompleteListener() { // from class: com.allproperty.android.consumer.modules.remoteconfig.RemoteConfig$$ExternalSyntheticLambda1
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    RemoteConfig.fetchAndActivate$lambda$1(RemoteConfig.this, taskCompletionSource, task);
                }
            }));
        } else {
            Intrinsics.checkNotNull(this.remoteConfig.activate().addOnCompleteListener(new OnCompleteListener() { // from class: com.allproperty.android.consumer.modules.remoteconfig.RemoteConfig$$ExternalSyntheticLambda2
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    RemoteConfig.fetchAndActivate$lambda$2(TaskCompletionSource.this, this, task);
                }
            }));
        }
        Task<Boolean> task = taskCompletionSource.getTask();
        Intrinsics.checkNotNullExpressionValue(task, "getTask(...)");
        return task;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchAndActivate$lambda$1(RemoteConfig remoteConfig, final TaskCompletionSource taskCompletionSource, Task fetchTask) {
        Intrinsics.checkNotNullParameter(fetchTask, "fetchTask");
        if (fetchTask.isSuccessful()) {
            remoteConfig.remoteConfig.activate().addOnCompleteListener(new OnCompleteListener() { // from class: com.allproperty.android.consumer.modules.remoteconfig.RemoteConfig$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    RemoteConfig.fetchAndActivate$lambda$1$lambda$0(TaskCompletionSource.this, task);
                }
            });
            return;
        }
        Exception exception = fetchTask.getException();
        if (exception == null) {
            exception = new Exception("Fetch failed");
        }
        taskCompletionSource.setException(exception);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchAndActivate$lambda$1$lambda$0(TaskCompletionSource taskCompletionSource, Task activateTask) {
        Intrinsics.checkNotNullParameter(activateTask, "activateTask");
        if (activateTask.isSuccessful()) {
            taskCompletionSource.setResult(true);
            return;
        }
        Exception exception = activateTask.getException();
        if (exception == null) {
            exception = new Exception("Activation failed");
        }
        taskCompletionSource.setException(exception);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchAndActivate$lambda$2(TaskCompletionSource taskCompletionSource, RemoteConfig remoteConfig, Task activateTask) {
        Intrinsics.checkNotNullParameter(activateTask, "activateTask");
        if (activateTask.isSuccessful()) {
            taskCompletionSource.setResult(true);
            remoteConfig.remoteConfig.fetch();
        } else {
            Exception exception = activateTask.getException();
            if (exception == null) {
                exception = new Exception("Activation failed");
            }
            taskCompletionSource.setException(exception);
        }
    }

    private final FirebaseRemoteConfigValue getValue(String key) {
        FirebaseRemoteConfigValue value = this.remoteConfig.getValue(key);
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        if (value.getSource() == 2) {
            return value;
        }
        return null;
    }

    public final String getStringValue(String key, String defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        FirebaseRemoteConfigValue value = getValue(key);
        if (value == null) {
            return defaultValue;
        }
        String asString = value.asString();
        Intrinsics.checkNotNullExpressionValue(asString, "asString(...)");
        return asString;
    }

    public final long getLongValue(String key, long defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        FirebaseRemoteConfigValue value = getValue(key);
        return value == null ? defaultValue : value.asLong();
    }

    public final int getIntValue(String key, int defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (int) getLongValue(key, defaultValue);
    }

    public final boolean getBooleanValue(String key, boolean defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        FirebaseRemoteConfigValue value = getValue(key);
        return value == null ? defaultValue : value.asBoolean();
    }
}
