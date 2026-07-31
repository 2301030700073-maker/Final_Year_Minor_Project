.class public abstract Lcom/bumptech/glide/util/pool/FactoryPools;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final EMPTY_RESETTER:Landroidx/collection/internal/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/collection/internal/Lock;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bumptech/glide/util/pool/FactoryPools;->EMPTY_RESETTER:Landroidx/collection/internal/Lock;

    .line 7
    .line 8
    return-void
.end method

.method public static threadSafe(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Lcom/fsck/k9/backend/imap/ImapSync;
    .locals 6

    .line 1
    new-instance v1, Landroidx/core/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    invoke-direct {v1, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 7
    .line 8
    const/16 v5, 0xd

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    sget-object v3, Lcom/bumptech/glide/util/pool/FactoryPools;->EMPTY_RESETTER:Landroidx/collection/internal/Lock;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
