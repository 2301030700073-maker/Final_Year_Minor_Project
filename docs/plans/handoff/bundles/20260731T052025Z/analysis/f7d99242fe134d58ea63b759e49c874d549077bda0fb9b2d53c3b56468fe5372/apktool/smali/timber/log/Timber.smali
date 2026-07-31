.class public abstract Ltimber/log/Timber;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final Forest:Ltimber/log/Timber$Forest;

.field public static volatile treeArray:[Ltimber/log/Timber$Tree;

.field public static final trees:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltimber/log/Timber$Forest;

    .line 2
    .line 3
    invoke-direct {v0}, Ltimber/log/Timber$Tree;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ltimber/log/Timber;->trees:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [Ltimber/log/Timber$Tree;

    .line 17
    .line 18
    sput-object v0, Ltimber/log/Timber;->treeArray:[Ltimber/log/Timber$Tree;

    .line 19
    .line 20
    return-void
.end method
