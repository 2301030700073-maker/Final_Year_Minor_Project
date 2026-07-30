.class public Lcom/android/contacts/model/account/BaseAccountType$EmailActionInflater;
.super Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 562
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f10010c

    return p1

    .line 566
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const p1, 0x7f10010e

    return p1

    :cond_1
    const p1, 0x7f100110

    return p1

    :cond_2
    const p1, 0x7f100111

    return p1

    :cond_3
    const p1, 0x7f100112

    return p1

    :cond_4
    const p1, 0x7f10010f

    return p1
.end method
