.class public final Lcom/fsck/k9/message/quote/QuoteDateFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/message/quote/QuoteDateFormatter;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object p0, p0, Lcom/fsck/k9/message/quote/QuoteDateFormatter;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getSettings()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 15
    .line 16
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/privacy/PrivacySettings;->isHideTimeZone:Z

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const-string p0, "UTC"

    .line 21
    .line 22
    invoke-static {p0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :catch_0
    const-string p0, ""

    .line 41
    .line 42
    return-object p0
.end method
