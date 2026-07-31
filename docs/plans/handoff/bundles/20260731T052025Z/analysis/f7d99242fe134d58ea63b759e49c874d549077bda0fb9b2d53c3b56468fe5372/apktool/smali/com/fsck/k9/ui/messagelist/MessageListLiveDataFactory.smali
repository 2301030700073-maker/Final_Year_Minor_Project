.class public final Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final messageListLoader:Lcom/fsck/k9/ui/messagelist/MessageListLoader;

.field public final messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListLoader;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/DefaultMessageListRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;->messageListLoader:Lcom/fsck/k9/ui/messagelist/MessageListLoader;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;->messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 9
    .line 10
    return-void
.end method
