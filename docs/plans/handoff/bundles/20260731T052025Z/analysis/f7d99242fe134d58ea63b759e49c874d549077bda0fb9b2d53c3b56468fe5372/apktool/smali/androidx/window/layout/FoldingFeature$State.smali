.class public final Landroidx/window/layout/FoldingFeature$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/window/layout/WindowInfoTracker;


# static fields
.field public static final FLAT:Landroidx/window/layout/FoldingFeature$State;

.field public static final FOLD:Landroidx/window/layout/FoldingFeature$State;

.field public static final HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

.field public static final HINGE:Landroidx/window/layout/FoldingFeature$State;


# instance fields
.field public final synthetic $r8$classId:I

.field public final description:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/window/layout/FoldingFeature$State;

    .line 2
    .line 3
    const-string v1, "FLAT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroidx/window/layout/FoldingFeature$State;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    .line 10
    .line 11
    new-instance v0, Landroidx/window/layout/FoldingFeature$State;

    .line 12
    .line 13
    const-string v1, "HALF_OPENED"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroidx/window/layout/FoldingFeature$State;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    .line 19
    .line 20
    new-instance v0, Landroidx/window/layout/FoldingFeature$State;

    .line 21
    .line 22
    const-string v1, "FOLD"

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-direct {v0, v1, v2}, Landroidx/window/layout/FoldingFeature$State;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Landroidx/window/layout/FoldingFeature$State;->FOLD:Landroidx/window/layout/FoldingFeature$State;

    .line 29
    .line 30
    new-instance v0, Landroidx/window/layout/FoldingFeature$State;

    .line 31
    .line 32
    const-string v1, "HINGE"

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Landroidx/window/layout/FoldingFeature$State;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Landroidx/window/layout/FoldingFeature$State;->HINGE:Landroidx/window/layout/FoldingFeature$State;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Landroidx/window/layout/WindowMetricsCalculatorCompat;Landroidx/window/layout/adapter/WindowBackend;Landroidx/collection/internal/Lock;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    iput p1, p0, Landroidx/window/layout/FoldingFeature$State;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Landroidx/window/layout/FoldingFeature$State;->description:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 10
    iput p2, p0, Landroidx/window/layout/FoldingFeature$State;->$r8$classId:I

    iput-object p1, p0, Landroidx/window/layout/FoldingFeature$State;->description:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/window/layout/FoldingFeature$State;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/window/layout/FoldingFeature$State;->description:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    return-object v1

    .line 16
    :pswitch_1
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
