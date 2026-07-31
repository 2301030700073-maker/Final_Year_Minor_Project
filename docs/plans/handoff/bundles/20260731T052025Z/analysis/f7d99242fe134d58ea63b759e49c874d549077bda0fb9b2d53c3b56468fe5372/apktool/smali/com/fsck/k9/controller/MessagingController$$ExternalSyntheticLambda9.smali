.class public final synthetic Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/controller/MessagingController$MessageActor;


# instance fields
.field public final synthetic f$0:Lcom/fsck/k9/controller/MessagingController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/controller/MessagingController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final act(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/ArrayList;)V
    .locals 7

    .line 1
    invoke-static {p1, p3}, Lcom/fsck/k9/controller/MessagingController;->suppressMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;

    .line 5
    .line 6
    const/4 v6, 0x2

    .line 7
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 8
    .line 9
    iget-boolean v5, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;->f$1:Z

    .line 10
    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move-object v4, p3

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda12;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/Object;Ljava/io/Serializable;ZI)V

    .line 15
    .line 16
    .line 17
    const-string p0, "deleteMessages"

    .line 18
    .line 19
    invoke-virtual {v1, p0, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
