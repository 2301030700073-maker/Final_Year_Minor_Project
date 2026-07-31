.class public final Lnet/thunderbird/core/ui/theme/manager/ThemeManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/ui/theme/api/ThemeManager;


# instance fields
.field public final appCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final context:Landroid/content/Context;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lapp/k9mail/provider/K9ThemeProvider;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 7
    .line 8
    iput-object p4, p0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->appCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getAppTheme()Lnet/thunderbird/core/ui/theme/api/Theme;
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 10
    .line 11
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 12
    .line 13
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget-object v1, Lnet/thunderbird/core/ui/theme/api/Theme;->LIGHT:Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 20
    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    sget-object v3, Lnet/thunderbird/core/ui/theme/api/Theme;->DARK:Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 25
    .line 26
    if-eq v0, v2, :cond_3

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    if-ne v0, v2, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->context:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 42
    .line 43
    and-int/lit8 p0, p0, 0x30

    .line 44
    .line 45
    const/16 v0, 0x10

    .line 46
    .line 47
    if-eq p0, v0, :cond_1

    .line 48
    .line 49
    const/16 v0, 0x20

    .line 50
    .line 51
    if-eq p0, v0, :cond_0

    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_0
    return-object v3

    .line 55
    :cond_1
    return-object v1

    .line 56
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0

    .line 61
    :cond_3
    return-object v3

    .line 62
    :cond_4
    return-object v1
.end method

.method public final getMessageViewTheme()Lnet/thunderbird/core/ui/theme/api/Theme;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 10
    .line 11
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 12
    .line 13
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->getAppTheme()Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :cond_1
    sget-object p0, Lnet/thunderbird/core/ui/theme/api/Theme;->DARK:Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_2
    sget-object p0, Lnet/thunderbird/core/ui/theme/api/Theme;->LIGHT:Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 41
    .line 42
    return-object p0
.end method

.method public final getSubThemeResourceId(Lnet/thunderbird/core/preference/SubTheme;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    if-eq p0, p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    const p0, 0x7f13031b

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    const p0, 0x7f130318

    .line 23
    .line 24
    .line 25
    return p0

    .line 26
    :cond_2
    const p0, 0x7f13031e

    .line 27
    .line 28
    .line 29
    return p0
.end method
