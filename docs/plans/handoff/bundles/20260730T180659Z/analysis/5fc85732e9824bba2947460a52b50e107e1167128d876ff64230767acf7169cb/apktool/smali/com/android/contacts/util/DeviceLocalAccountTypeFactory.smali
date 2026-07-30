.class public interface abstract Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;
.super Ljava/lang/Object;
.source "DeviceLocalAccountTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$Default;,
        Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$Util;,
        Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$LocalAccountType;
    }
.end annotation


# static fields
.field public static final TYPE_DEVICE:I = 0x1

.field public static final TYPE_OTHER:I = 0x0

.field public static final TYPE_SIM:I = 0x2


# virtual methods
.method public abstract classifyAccount(Ljava/lang/String;)I
.end method

.method public abstract getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;
.end method
