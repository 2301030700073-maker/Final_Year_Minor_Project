.class public final Landroidx/work/SystemClock;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Landroidx/work/SystemClock;

.field public static final IN_PROGRESS:Landroidx/work/Operation$State$SUCCESS;

.field public static final SUCCESS:Landroidx/work/Operation$State$SUCCESS;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/work/SystemClock;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/work/SystemClock;->INSTANCE:Landroidx/work/SystemClock;

    .line 7
    .line 8
    new-instance v0, Landroidx/work/Operation$State$SUCCESS;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Landroidx/work/Operation$State$SUCCESS;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/work/SystemClock;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    .line 15
    .line 16
    new-instance v0, Landroidx/work/Operation$State$SUCCESS;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1}, Landroidx/work/Operation$State$SUCCESS;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/work/SystemClock;->IN_PROGRESS:Landroidx/work/Operation$State$SUCCESS;

    .line 23
    .line 24
    return-void
.end method
