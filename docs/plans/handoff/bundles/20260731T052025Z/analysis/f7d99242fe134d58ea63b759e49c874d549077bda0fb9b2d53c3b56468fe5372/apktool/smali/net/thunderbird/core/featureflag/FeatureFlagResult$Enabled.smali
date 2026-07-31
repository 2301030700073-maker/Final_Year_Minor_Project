.class public final Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/featureflag/FeatureFlagResult;


# static fields
.field public static final INSTANCE:Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;->INSTANCE:Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of p0, p1, Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const p0, 0x367b1219

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final isDisabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isDisabledOrUnavailable()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final bridge onDisabledOrUnavailable(Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlinx/io/Sink$-CC;->$default$onDisabledOrUnavailable(Lnet/thunderbird/core/featureflag/FeatureFlagResult;Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final onEnabled(Lkotlin/jvm/functions/Function0;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;
    .locals 0

    .line 1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Enabled"

    .line 2
    .line 3
    return-object p0
.end method

.method public final bridge whenEnabledOrNot(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/io/Sink$-CC;->$default$whenEnabledOrNot(Lnet/thunderbird/core/featureflag/FeatureFlagResult;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
