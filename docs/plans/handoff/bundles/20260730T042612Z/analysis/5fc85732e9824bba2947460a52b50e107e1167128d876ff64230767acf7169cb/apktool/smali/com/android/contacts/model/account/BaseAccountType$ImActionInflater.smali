.class public Lcom/android/contacts/model/account/BaseAccountType$ImActionInflater;
.super Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 603
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    const-string v0, "data6"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    const-string v0, "data5"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 1

    const v0, 0x7f100085

    if-nez p1, :cond_0

    return v0

    .line 617
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const p1, 0x7f100089

    return p1

    :pswitch_1
    const p1, 0x7f100088

    return p1

    :pswitch_2
    const p1, 0x7f100087

    return p1

    :pswitch_3
    const p1, 0x7f10008b

    return p1

    :pswitch_4
    const p1, 0x7f10008c

    return p1

    :pswitch_5
    const p1, 0x7f10008d

    return p1

    :pswitch_6
    const p1, 0x7f10008a

    return p1

    :pswitch_7
    const p1, 0x7f100086

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
