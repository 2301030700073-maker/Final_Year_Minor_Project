.class public interface abstract Lnet/thunderbird/core/featureflag/FeatureFlagResult;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public abstract isDisabled()Z
.end method

.method public abstract isDisabledOrUnavailable()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract onDisabledOrUnavailable(Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;
.end method

.method public abstract onEnabled(Lkotlin/jvm/functions/Function0;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;
.end method

.method public abstract whenEnabledOrNot(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
.end method
