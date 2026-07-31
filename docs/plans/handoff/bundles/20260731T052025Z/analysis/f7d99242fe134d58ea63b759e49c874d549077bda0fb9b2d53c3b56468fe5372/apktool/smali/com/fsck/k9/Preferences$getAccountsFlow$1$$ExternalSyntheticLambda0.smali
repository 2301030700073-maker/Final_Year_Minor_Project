.class public final synthetic Lcom/fsck/k9/Preferences$getAccountsFlow$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/android/account/AccountsChangeListener;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic f$1:Lcom/fsck/k9/Preferences;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/fsck/k9/Preferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1$$ExternalSyntheticLambda0;->f$1:Lcom/fsck/k9/Preferences;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAccountsChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1$$ExternalSyntheticLambda0;->f$1:Lcom/fsck/k9/Preferences;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fsck/k9/Preferences;->access$getCompleteAccounts(Lcom/fsck/k9/Preferences;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountsFlow$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    .line 8
    .line 9
    invoke-static {v0, p0}, Lokhttp3/Handshake$Companion;->trySendBlocking(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method
