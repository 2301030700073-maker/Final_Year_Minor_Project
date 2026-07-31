.class public abstract Lapp/k9mail/html/cleaner/HeadCleanerKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ALLOWED_TAGS:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "meta"

    .line 2
    .line 3
    const-string v1, "base"

    .line 4
    .line 5
    const-string v2, "style"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lapp/k9mail/html/cleaner/HeadCleanerKt;->ALLOWED_TAGS:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method
