.class public final Landroidx/work/OneTimeWorkRequest;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final id:Ljava/util/UUID;

.field public final tags:Ljava/util/LinkedHashSet;

.field public final workSpec:Landroidx/work/impl/model/WorkSpec;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/LinkedHashSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/OneTimeWorkRequest;->id:Ljava/util/UUID;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/OneTimeWorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/OneTimeWorkRequest;->tags:Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    return-void
.end method
