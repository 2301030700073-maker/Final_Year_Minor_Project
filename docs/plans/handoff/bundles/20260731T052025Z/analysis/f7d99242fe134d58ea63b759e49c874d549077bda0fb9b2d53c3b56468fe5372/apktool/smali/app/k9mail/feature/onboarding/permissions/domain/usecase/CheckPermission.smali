.class public final Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final permissionChecker:Lapp/k9mail/core/android/permissions/AndroidPermissionChecker;


# direct methods
.method public constructor <init>(Lapp/k9mail/core/android/permissions/AndroidPermissionChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;->permissionChecker:Lapp/k9mail/core/android/permissions/AndroidPermissionChecker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Lapp/k9mail/core/android/permissions/Permission;)Lapp/k9mail/core/android/permissions/PermissionState;
    .locals 3

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;->permissionChecker:Lapp/k9mail/core/android/permissions/AndroidPermissionChecker;

    .line 2
    .line 3
    iget-object p0, p0, Lapp/k9mail/core/android/permissions/AndroidPermissionChecker;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sget-object v0, Lapp/k9mail/core/android/permissions/PermissionState;->Denied:Lapp/k9mail/core/android/permissions/PermissionState;

    .line 10
    .line 11
    sget-object v1, Lapp/k9mail/core/android/permissions/PermissionState;->Granted:Lapp/k9mail/core/android/permissions/PermissionState;

    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne p1, v2, :cond_2

    .line 17
    .line 18
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v2, 0x21

    .line 21
    .line 22
    if-lt p1, v2, :cond_1

    .line 23
    .line 24
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroidx/tracing/TraceApi29Impl;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_0
    return-object v0

    .line 34
    :cond_1
    sget-object p0, Lapp/k9mail/core/android/permissions/PermissionState;->GrantedImplicitly:Lapp/k9mail/core/android/permissions/PermissionState;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return-object p0

    .line 42
    :cond_3
    const-string p1, "android.permission.READ_CONTACTS"

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroidx/tracing/TraceApi29Impl;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_4

    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_4
    return-object v0
.end method
