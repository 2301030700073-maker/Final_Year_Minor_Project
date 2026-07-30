.class public Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$Default;
.super Ljava/lang/Object;
.source "DeviceLocalAccountTypeFactory.java"

# interfaces
.implements Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$Default;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public classifyAccount(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;
    .locals 2

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Lcom/android/contacts/model/account/DeviceLocalAccountType;

    iget-object v0, p0, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$Default;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/contacts/model/account/DeviceLocalAccountType;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a device account type."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
