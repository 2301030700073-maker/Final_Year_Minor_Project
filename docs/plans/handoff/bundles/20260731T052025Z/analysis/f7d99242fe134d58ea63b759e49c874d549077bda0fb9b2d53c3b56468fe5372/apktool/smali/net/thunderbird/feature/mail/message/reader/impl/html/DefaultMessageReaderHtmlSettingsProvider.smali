.class public final Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final themeManager:Lnet/thunderbird/core/ui/theme/api/ThemeManager;

.field public final visualSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/ui/theme/api/ThemeManager;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;->themeManager:Lnet/thunderbird/core/ui/theme/api/ThemeManager;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;->visualSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create()Lnet/thunderbird/core/common/mail/html/HtmlSettings;
    .locals 3

    .line 1
    new-instance v0, Lnet/thunderbird/core/common/mail/html/HtmlSettings;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;->themeManager:Lnet/thunderbird/core/ui/theme/api/ThemeManager;

    .line 4
    .line 5
    check-cast v1, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->getMessageViewTheme()Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lnet/thunderbird/core/ui/theme/api/Theme;->DARK:Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;->visualSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 19
    .line 20
    check-cast p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 27
    .line 28
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isUseMessageViewFixedWidthFont:Z

    .line 29
    .line 30
    invoke-direct {v0, v1, p0}, Lnet/thunderbird/core/common/mail/html/HtmlSettings;-><init>(ZZ)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
