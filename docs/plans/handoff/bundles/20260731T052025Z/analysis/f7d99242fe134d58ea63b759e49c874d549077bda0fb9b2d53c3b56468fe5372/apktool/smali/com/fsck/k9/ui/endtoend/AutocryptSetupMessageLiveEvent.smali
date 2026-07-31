.class public final Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;
.super Lcom/fsck/k9/helper/SingleLiveEvent;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final eventScope:Lkotlinx/coroutines/CoroutineScope;

.field public final messageCreator:Lcom/fsck/k9/autocrypt/AutocryptTransferMessageCreator;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/autocrypt/AutocryptTransferMessageCreator;)V
    .locals 2

    .line 1
    invoke-static {}, Lkotlinx/coroutines/JobKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v1}, Lcom/fsck/k9/helper/SingleLiveEvent;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;->messageCreator:Lcom/fsck/k9/autocrypt/AutocryptTransferMessageCreator;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;->eventScope:Lkotlinx/coroutines/CoroutineScope;

    .line 12
    .line 13
    return-void
.end method
