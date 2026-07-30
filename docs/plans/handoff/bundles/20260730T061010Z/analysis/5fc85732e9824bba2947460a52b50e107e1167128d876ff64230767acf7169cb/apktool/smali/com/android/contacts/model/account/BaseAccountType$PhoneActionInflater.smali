.class public Lcom/android/contacts/model/account/BaseAccountType$PhoneActionInflater;
.super Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 538
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 0

    .line 546
    invoke-static {p1}, Lcom/android/contacts/util/ContactDisplayUtils;->getPhoneLabelResourceId(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 0

    .line 541
    invoke-static {p1}, Lcom/android/contacts/util/ContactDisplayUtils;->isCustomPhoneType(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
