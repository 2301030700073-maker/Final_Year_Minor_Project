.class public final synthetic Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/controller/MessagingController;

.field public final synthetic f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/io/Serializable;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/Object;Ljava/io/Serializable;ZI)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$3:Ljava/io/Serializable;

    .line 10
    .line 11
    iput-boolean p5, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$4:Z

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$3:Ljava/io/Serializable;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 11
    .line 12
    move-object v7, v1

    .line 13
    check-cast v7, Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-boolean v8, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$4:Z

    .line 16
    .line 17
    iget-wide v5, v2, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 18
    .line 19
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 22
    .line 23
    invoke-virtual/range {v3 .. v8}, Lcom/fsck/k9/controller/MessagingController;->deleteMessagesSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/ArrayList;Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    move-object v11, v2

    .line 28
    check-cast v11, Ljava/util/List;

    .line 29
    .line 30
    move-object v12, v1

    .line 31
    check-cast v12, Lnet/thunderbird/core/common/mail/Flag;

    .line 32
    .line 33
    iget-boolean v13, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$4:Z

    .line 34
    .line 35
    const/4 v14, 0x1

    .line 36
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 37
    .line 38
    iget-object v10, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 39
    .line 40
    invoke-virtual/range {v9 .. v14}, Lcom/fsck/k9/controller/MessagingController;->setFlagSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;ZZ)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_1
    check-cast v2, Ljava/util/List;

    .line 45
    .line 46
    move-object v3, v1

    .line 47
    check-cast v3, Lnet/thunderbird/core/common/mail/Flag;

    .line 48
    .line 49
    iget-boolean v4, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$4:Z

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 55
    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->setFlagSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;ZZ)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
