.class public final Lnet/thunderbird/app/common/startup/DefaultStartupRouter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final accountRemover:Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/app/common/startup/DefaultStartupRouter;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/app/common/startup/DefaultStartupRouter;->accountRemover:Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;

    .line 7
    .line 8
    return-void
.end method
