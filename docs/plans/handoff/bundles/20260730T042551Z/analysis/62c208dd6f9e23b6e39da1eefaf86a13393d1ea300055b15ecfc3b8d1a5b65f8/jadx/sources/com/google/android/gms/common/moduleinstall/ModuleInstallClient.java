package com.google.android.gms.common.moduleinstall;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.common.api.OptionalModuleApi;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import defpackage.FG;

/* loaded from: classes.dex */
public interface ModuleInstallClient extends HasApiKey<Api.ApiOptions.NoOptions> {
    FG<ModuleAvailabilityResponse> areModulesAvailable(OptionalModuleApi... optionalModuleApiArr);

    FG<Void> deferredInstall(OptionalModuleApi... optionalModuleApiArr);

    FG<ModuleInstallIntentResponse> getInstallModulesIntent(OptionalModuleApi... optionalModuleApiArr);

    @ResultIgnorabilityUnspecified
    FG<ModuleInstallResponse> installModules(ModuleInstallRequest moduleInstallRequest);

    FG<Void> releaseModules(OptionalModuleApi... optionalModuleApiArr);

    @ResultIgnorabilityUnspecified
    FG<Boolean> unregisterListener(InstallStatusListener installStatusListener);
}
