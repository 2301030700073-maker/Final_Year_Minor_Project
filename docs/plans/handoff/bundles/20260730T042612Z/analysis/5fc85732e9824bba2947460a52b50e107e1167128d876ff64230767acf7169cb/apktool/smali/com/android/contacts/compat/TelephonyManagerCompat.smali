.class public Lcom/android/contacts/compat/TelephonyManagerCompat;
.super Ljava/lang/Object;
.source "TelephonyManagerCompat.java"


# direct methods
.method public static isVoiceCapable(Landroid/telephony/TelephonyManager;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 46
    :cond_0
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopMr1Compatible()Z

    move-result v1

    if-nez v1, :cond_4

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "android.telephony.TelephonyManager"

    const-string v3, "isVoiceCapable"

    .line 47
    invoke-static {v2, v3, v1}, Lcom/android/contacts/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_2

    if-ne p0, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    .line 49
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p0

    return p0
.end method
