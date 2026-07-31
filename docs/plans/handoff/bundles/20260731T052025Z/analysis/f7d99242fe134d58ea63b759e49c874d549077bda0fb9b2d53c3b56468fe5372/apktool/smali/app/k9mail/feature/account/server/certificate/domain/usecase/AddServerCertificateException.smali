.class public final Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final localKeyStore:Lcom/fsck/k9/mail/ssl/LocalKeyStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/ssl/LocalKeyStore;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;->localKeyStore:Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 12
    .line 13
    iput-object v0, p0, Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 14
    .line 15
    return-void
.end method
