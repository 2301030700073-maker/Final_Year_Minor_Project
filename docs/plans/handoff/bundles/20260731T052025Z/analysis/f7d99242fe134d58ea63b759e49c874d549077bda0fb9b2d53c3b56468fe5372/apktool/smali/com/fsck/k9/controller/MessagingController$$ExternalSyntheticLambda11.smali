.class public final synthetic Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/controller/MessagingController;

.field public final synthetic f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Lcom/fsck/k9/activity/MessageCompose$12;I)V
    .locals 0

    .line 1
    iput p7, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    iput-wide p3, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$2:J

    .line 8
    .line 9
    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$3:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$4:Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

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
    iget v0, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$4:Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 7
    .line 8
    const/4 v7, 0x1

    .line 9
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$2:J

    .line 14
    .line 15
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$3:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v7}, Lcom/fsck/k9/controller/MessagingController;->loadMessageRemoteSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v13, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$4:Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 22
    .line 23
    const/4 v14, 0x0

    .line 24
    iget-object v8, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 25
    .line 26
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 27
    .line 28
    iget-wide v10, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$2:J

    .line 29
    .line 30
    iget-object v12, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;->f$3:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual/range {v8 .. v14}, Lcom/fsck/k9/controller/MessagingController;->loadMessageRemoteSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
