.class public final Lcom/fsck/k9/view/WebViewConfigProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final themeManager:Lnet/thunderbird/core/ui/theme/manager/ThemeManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/ui/theme/manager/ThemeManager;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/view/WebViewConfigProvider;->themeManager:Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/view/WebViewConfigProvider;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createWebViewConfig(Lnet/thunderbird/core/ui/theme/api/Theme;)Lcom/fsck/k9/view/WebViewConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/fsck/k9/view/WebViewConfig;

    .line 2
    .line 3
    sget-object v1, Lnet/thunderbird/core/ui/theme/api/Theme;->DARK:Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/view/WebViewConfigProvider;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 11
    .line 12
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 19
    .line 20
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 21
    .line 22
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isAutoFitWidth:Z

    .line 23
    .line 24
    sget-object v1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 25
    .line 26
    iget v1, v1, Lcom/fsck/k9/FontSizes;->messageViewContentAsPercent:I

    .line 27
    .line 28
    invoke-direct {v0, v1, p1, p0}, Lcom/fsck/k9/view/WebViewConfig;-><init>(IZZ)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
