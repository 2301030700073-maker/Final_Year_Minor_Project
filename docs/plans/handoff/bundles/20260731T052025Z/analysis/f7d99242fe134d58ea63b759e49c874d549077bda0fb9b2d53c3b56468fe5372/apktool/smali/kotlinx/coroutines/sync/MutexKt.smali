.class public abstract Lkotlinx/coroutines/sync/MutexKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final NO_OWNER:Lcom/fsck/k9/mailstore/LocalStore$8;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "NO_OWNER"

    .line 6
    .line 7
    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lkotlinx/coroutines/sync/MutexKt;->NO_OWNER:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 11
    .line 12
    return-void
.end method
