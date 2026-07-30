package com.google.android.gms.common.moduleinstall.internal;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.OptionalModuleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.moduleinstall.InstallStatusListener;
import com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallClient;
import com.google.android.gms.common.moduleinstall.ModuleInstallIntentResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallRequest;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import defpackage.FG;
import defpackage.GG;
import defpackage.LG;
import defpackage.NF;
import java.util.Arrays;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zay extends GoogleApi implements ModuleInstallClient {
    public static final /* synthetic */ int zab = 0;
    private static final Api.ClientKey zac;
    private static final Api.AbstractClientBuilder zad;
    private static final Api zae;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zac = clientKey;
        zaq zaqVar = new zaq();
        zad = zaqVar;
        zae = new Api("ModuleInstall.API", zaqVar, clientKey);
    }

    public zay(Activity activity) {
        super(activity, (Api<Api.ApiOptions.NoOptions>) zae, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public static final ApiFeatureRequest zad(boolean z, OptionalModuleApi... optionalModuleApiArr) {
        Preconditions.checkNotNull(optionalModuleApiArr, "Requested APIs must not be null.");
        Preconditions.checkArgument(optionalModuleApiArr.length > 0, "Please provide at least one OptionalModuleApi.");
        for (OptionalModuleApi optionalModuleApi : optionalModuleApiArr) {
            Preconditions.checkNotNull(optionalModuleApi, "Requested API must not be null.");
        }
        return ApiFeatureRequest.zaa(Arrays.asList(optionalModuleApiArr), z);
    }

    @Override // com.google.android.gms.common.moduleinstall.ModuleInstallClient
    public final FG<ModuleAvailabilityResponse> areModulesAvailable(OptionalModuleApi... optionalModuleApiArr) {
        final ApiFeatureRequest zad2 = zad(false, optionalModuleApiArr);
        if (zad2.getApiFeatures().isEmpty()) {
            return LG.m1320try(new ModuleAvailabilityResponse(true, 0));
        }
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.setFeatures(com.google.android.gms.internal.base.zav.zaa);
        builder.setMethodKey(27301);
        builder.setAutoResolveMissingFeatures(false);
        builder.run(new RemoteCall() { // from class: com.google.android.gms.common.moduleinstall.internal.zal
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zaf) ((zaz) obj).getService()).zae(new zar(zay.this, (GG) obj2), zad2);
            }
        });
        return doRead(builder.build());
    }

    @Override // com.google.android.gms.common.moduleinstall.ModuleInstallClient
    public final FG<Void> deferredInstall(OptionalModuleApi... optionalModuleApiArr) {
        final ApiFeatureRequest zad2 = zad(false, optionalModuleApiArr);
        if (zad2.getApiFeatures().isEmpty()) {
            return LG.m1320try(null);
        }
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.setFeatures(com.google.android.gms.internal.base.zav.zaa);
        builder.setMethodKey(27302);
        builder.setAutoResolveMissingFeatures(false);
        builder.run(new RemoteCall() { // from class: com.google.android.gms.common.moduleinstall.internal.zap
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zaf) ((zaz) obj).getService()).zag(new zas(zay.this, (GG) obj2), zad2, null);
            }
        });
        return doRead(builder.build());
    }

    @Override // com.google.android.gms.common.moduleinstall.ModuleInstallClient
    public final FG<ModuleInstallIntentResponse> getInstallModulesIntent(OptionalModuleApi... optionalModuleApiArr) {
        final ApiFeatureRequest zad2 = zad(true, optionalModuleApiArr);
        if (zad2.getApiFeatures().isEmpty()) {
            return LG.m1320try(new ModuleInstallIntentResponse(null));
        }
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.setFeatures(com.google.android.gms.internal.base.zav.zaa);
        builder.setMethodKey(27307);
        builder.run(new RemoteCall() { // from class: com.google.android.gms.common.moduleinstall.internal.zan
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zaf) ((zaz) obj).getService()).zaf(new zaw(zay.this, (GG) obj2), zad2);
            }
        });
        return doRead(builder.build());
    }

    @Override // com.google.android.gms.common.moduleinstall.ModuleInstallClient
    public final FG<ModuleInstallResponse> installModules(ModuleInstallRequest moduleInstallRequest) {
        final ApiFeatureRequest fromModuleInstallRequest = ApiFeatureRequest.fromModuleInstallRequest(moduleInstallRequest);
        final InstallStatusListener listener = moduleInstallRequest.getListener();
        Executor listenerExecutor = moduleInstallRequest.getListenerExecutor();
        if (fromModuleInstallRequest.getApiFeatures().isEmpty()) {
            return LG.m1320try(new ModuleInstallResponse(0));
        }
        if (listener == null) {
            TaskApiCall.Builder builder = TaskApiCall.builder();
            builder.setFeatures(com.google.android.gms.internal.base.zav.zaa);
            builder.setAutoResolveMissingFeatures(true);
            builder.setMethodKey(27304);
            builder.run(new RemoteCall() { // from class: com.google.android.gms.common.moduleinstall.internal.zao
                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) {
                    ((zaf) ((zaz) obj).getService()).zag(new zat(zay.this, (GG) obj2), fromModuleInstallRequest, null);
                }
            });
            return doRead(builder.build());
        }
        Preconditions.checkNotNull(listener);
        ListenerHolder registerListener = listenerExecutor == null ? registerListener(listener, "InstallStatusListener") : ListenerHolders.createListenerHolder(listener, listenerExecutor, "InstallStatusListener");
        final zaab zaabVar = new zaab(registerListener);
        final AtomicReference atomicReference = new AtomicReference();
        RemoteCall remoteCall = new RemoteCall() { // from class: com.google.android.gms.common.moduleinstall.internal.zai
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zaf) ((zaz) obj).getService()).zag(new zau(zay.this, atomicReference, (GG) obj2, listener), fromModuleInstallRequest, zaabVar);
            }
        };
        RemoteCall remoteCall2 = new RemoteCall() { // from class: com.google.android.gms.common.moduleinstall.internal.zaj
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zaf) ((zaz) obj).getService()).zai(new zav(zay.this, (GG) obj2), zaabVar);
            }
        };
        RegistrationMethods.Builder builder2 = RegistrationMethods.builder();
        builder2.withHolder(registerListener);
        builder2.setFeatures(com.google.android.gms.internal.base.zav.zaa);
        builder2.setAutoResolveMissingFeatures(true);
        builder2.register(remoteCall);
        builder2.unregister(remoteCall2);
        builder2.setMethodKey(27305);
        return doRegisterEventListener(builder2.build()).mo606while(new NF() { // from class: com.google.android.gms.common.moduleinstall.internal.zak
            @Override // defpackage.NF
            public final FG then(Object obj) {
                int i = zay.zab;
                AtomicReference atomicReference2 = atomicReference;
                return atomicReference2.get() != null ? LG.m1320try((ModuleInstallResponse) atomicReference2.get()) : LG.m1319new(new ApiException(Status.RESULT_INTERNAL_ERROR));
            }
        });
    }

    @Override // com.google.android.gms.common.moduleinstall.ModuleInstallClient
    public final FG<Void> releaseModules(OptionalModuleApi... optionalModuleApiArr) {
        final ApiFeatureRequest zad2 = zad(false, optionalModuleApiArr);
        if (zad2.getApiFeatures().isEmpty()) {
            return LG.m1320try(null);
        }
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.setFeatures(com.google.android.gms.internal.base.zav.zaa);
        builder.setMethodKey(27303);
        builder.setAutoResolveMissingFeatures(false);
        builder.run(new RemoteCall() { // from class: com.google.android.gms.common.moduleinstall.internal.zam
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zaf) ((zaz) obj).getService()).zah(new zax(zay.this, (GG) obj2), zad2);
            }
        });
        return doRead(builder.build());
    }

    @Override // com.google.android.gms.common.moduleinstall.ModuleInstallClient
    @ResultIgnorabilityUnspecified
    public final FG<Boolean> unregisterListener(InstallStatusListener installStatusListener) {
        return doUnregisterEventListener(ListenerHolders.createListenerKey(installStatusListener, "InstallStatusListener"), 27306);
    }

    public zay(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) zae, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }
}
