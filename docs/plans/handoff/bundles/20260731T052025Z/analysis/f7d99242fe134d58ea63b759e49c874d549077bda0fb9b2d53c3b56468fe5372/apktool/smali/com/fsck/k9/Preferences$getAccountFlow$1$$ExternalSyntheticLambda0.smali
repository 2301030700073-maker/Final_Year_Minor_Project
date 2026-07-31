.class public final synthetic Lcom/fsck/k9/Preferences$getAccountFlow$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/android/account/AccountsChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/fsck/k9/Preferences;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/Preferences;Ljava/lang/String;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/Preferences;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1$$ExternalSyntheticLambda0;->f$2:Lkotlinx/coroutines/channels/ProducerScope;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAccountsChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/Preferences;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1$$ExternalSyntheticLambda0;->f$2:Lkotlinx/coroutines/channels/ProducerScope;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0, p0}, Lokhttp3/Handshake$Companion;->trySendBlocking(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->close(Ljava/lang/Throwable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
