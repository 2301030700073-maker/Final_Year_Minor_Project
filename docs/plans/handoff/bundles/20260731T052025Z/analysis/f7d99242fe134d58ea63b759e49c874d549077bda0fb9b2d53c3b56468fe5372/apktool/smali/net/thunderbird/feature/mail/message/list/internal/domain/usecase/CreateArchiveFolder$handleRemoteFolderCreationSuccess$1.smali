.class public final Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public J$0:J

.field public L$1:Lnet/thunderbird/core/android/account/LegacyAccount;

.field public L$2:Lkotlin/jvm/functions/Function2;

.field public L$3:Lcom/eygraber/uri/Uri$Builder;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->this$0:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->label:I

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->this$0:Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v6, p0

    .line 18
    invoke-static/range {v0 .. v6}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;->access$handleRemoteFolderCreationSuccess(Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;JLnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/core/android/account/LegacyAccount;Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
