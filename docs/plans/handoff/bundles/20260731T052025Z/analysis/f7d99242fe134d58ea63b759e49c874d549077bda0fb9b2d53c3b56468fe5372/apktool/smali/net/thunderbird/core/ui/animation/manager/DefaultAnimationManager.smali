.class public final Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/ui/animation/manager/AnimationManager;


# instance fields
.field public final visualSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;->visualSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final shouldShowAnimations()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;->visualSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 2
    .line 3
    check-cast p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 10
    .line 11
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->animationPreference:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eq p0, v0, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-ne p0, v2, :cond_0

    .line 25
    .line 26
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v1, 0x1a

    .line 29
    .line 30
    if-lt p0, v1, :cond_2

    .line 31
    .line 32
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return v1

    .line 41
    :cond_2
    return v0
.end method
