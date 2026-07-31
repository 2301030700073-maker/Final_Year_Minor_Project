.class public abstract Landroidx/core/text/TextDirectionHeuristicsCompat;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final FIRSTSTRONG_LTR:Lcom/fsck/k9/mailstore/LocalFolder$8;

.field public static final FIRSTSTRONG_RTL:Lcom/fsck/k9/mailstore/LocalFolder$8;

.field public static final LTR:Lcom/fsck/k9/mailstore/LocalFolder$8;

.field public static final RTL:Lcom/fsck/k9/mailstore/LocalFolder$8;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;Z)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 9
    .line 10
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;Z)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 17
    .line 18
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 19
    .line 20
    sget-object v1, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;Z)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 26
    .line 27
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 28
    .line 29
    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;Z)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 33
    .line 34
    return-void
.end method
