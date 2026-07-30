.class public Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$Util;
.super Ljava/lang/Object;
.source "DeviceLocalAccountTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLocalAccountType(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isLocalAccountType(Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;Ljava/lang/String;)Z
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;->classifyAccount(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$Util;->isLocalAccountType(I)Z

    move-result p0

    return p0
.end method
