.class public Lcom/android/contacts/compat/PhoneAccountSdkCompat;
.super Ljava/lang/Object;
.source "PhoneAccountSdkCompat.java"


# direct methods
.method public static getExtras(Landroid/telecom/PhoneAccount;)Landroid/os/Bundle;
    .locals 1

    .line 35
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isNCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
