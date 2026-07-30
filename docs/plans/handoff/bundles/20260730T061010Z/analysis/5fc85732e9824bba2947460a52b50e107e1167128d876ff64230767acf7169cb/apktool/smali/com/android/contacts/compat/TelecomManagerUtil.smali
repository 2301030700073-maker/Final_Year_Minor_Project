.class public Lcom/android/contacts/compat/TelecomManagerUtil;
.super Ljava/lang/Object;
.source "TelecomManagerUtil.java"


# direct methods
.method public static createManageBlockedNumbersIntent(Landroid/telecom/TelecomManager;)Landroid/content/Intent;
    .locals 1

    .line 29
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isNCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->createManageBlockedNumbersIntent()Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
