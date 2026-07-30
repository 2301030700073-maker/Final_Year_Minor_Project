.class public final Lcom/android/contacts/util/PhoneCapabilityTester;
.super Ljava/lang/Object;
.source "PhoneCapabilityTester.java"


# static fields
.field private static sIsInitialized:Z

.field private static sIsPhone:Z

.field private static sIsSipPhone:Z


# direct methods
.method private static initialize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "phone"

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 65
    invoke-static {v0}, Lcom/android/contacts/compat/TelephonyManagerCompat;->isVoiceCapable(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsSipPhone:Z

    .line 68
    sput-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    return-void
.end method

.method public static isCameraIntentRegistered(Landroid/content/Context;)Z
    .locals 2

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {p0, v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    .line 50
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 52
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 61
    :cond_0
    sget-boolean p0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    return p0
.end method

.method public static isSipPhone(Landroid/content/Context;)Z
    .locals 1

    .line 75
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 76
    :cond_0
    sget-boolean p0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsSipPhone:Z

    return p0
.end method
