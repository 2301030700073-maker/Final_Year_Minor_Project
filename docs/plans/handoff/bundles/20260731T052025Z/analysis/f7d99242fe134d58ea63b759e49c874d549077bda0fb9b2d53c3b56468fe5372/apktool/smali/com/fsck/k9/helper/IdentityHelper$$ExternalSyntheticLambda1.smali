.class public final synthetic Lcom/fsck/k9/helper/IdentityHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/core/android/account/LegacyAccountDto;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/helper/IdentityHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/helper/IdentityHelper$$ExternalSyntheticLambda1;->f$0:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/helper/IdentityHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/helper/IdentityHelper$$ExternalSyntheticLambda1;->f$0:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    check-cast p1, Lcom/fsck/k9/mail/Address;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->findIdentity(Lcom/fsck/k9/mail/Address;)Lnet/thunderbird/core/android/account/Identity;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
