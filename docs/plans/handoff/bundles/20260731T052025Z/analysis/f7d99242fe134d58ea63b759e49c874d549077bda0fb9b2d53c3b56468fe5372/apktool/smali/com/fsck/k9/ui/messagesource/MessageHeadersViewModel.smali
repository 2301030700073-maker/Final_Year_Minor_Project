.class public final Lcom/fsck/k9/ui/messagesource/MessageHeadersViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public messageHeaderLiveData:Landroidx/lifecycle/CoroutineLiveData;

.field public final messageRepository:Lcom/fsck/k9/mailstore/MessageRepository;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/MessageRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messagesource/MessageHeadersViewModel;->messageRepository:Lcom/fsck/k9/mailstore/MessageRepository;

    .line 5
    .line 6
    return-void
.end method
