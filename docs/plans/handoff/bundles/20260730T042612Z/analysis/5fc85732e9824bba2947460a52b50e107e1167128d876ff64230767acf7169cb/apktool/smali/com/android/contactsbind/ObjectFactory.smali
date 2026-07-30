.class public Lcom/android/contactsbind/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# direct methods
.method public static getAssistantFragment()Landroid/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeviceLocalAccountTypeFactory(Landroid/content/Context;)Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;
    .locals 1

    .line 33
    new-instance v0, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$Default;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$Default;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getLogger()Lcom/android/contacts/logging/Logger;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getWelcomeUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
