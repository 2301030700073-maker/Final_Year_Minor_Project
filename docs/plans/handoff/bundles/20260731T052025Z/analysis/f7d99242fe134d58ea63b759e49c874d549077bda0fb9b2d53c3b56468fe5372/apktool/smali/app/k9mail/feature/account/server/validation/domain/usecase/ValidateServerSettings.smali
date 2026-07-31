.class public final Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final authStateStorage:Lcom/fsck/k9/mail/oauth/AuthStateStorage;

.field public final coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final imapValidator:Lokhttp3/Dispatcher;

.field public final pop3Validator:Landroidx/work/Configuration$Builder;

.field public final smtpValidator:Lcom/google/zxing/BinaryBitmap;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/oauth/AuthStateStorage;Lokhttp3/Dispatcher;Landroidx/work/Configuration$Builder;Lcom/google/zxing/BinaryBitmap;)V
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
    iput-object p1, p0, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;->authStateStorage:Lcom/fsck/k9/mail/oauth/AuthStateStorage;

    .line 12
    .line 13
    iput-object p2, p0, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;->imapValidator:Lokhttp3/Dispatcher;

    .line 14
    .line 15
    iput-object p3, p0, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;->pop3Validator:Landroidx/work/Configuration$Builder;

    .line 16
    .line 17
    iput-object p4, p0, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;->smtpValidator:Lcom/google/zxing/BinaryBitmap;

    .line 18
    .line 19
    iput-object v0, p0, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 20
    .line 21
    return-void
.end method
