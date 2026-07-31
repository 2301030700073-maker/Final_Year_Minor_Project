.class public final Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveNode;
.super Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveNode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveNode;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;-><init>(III)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveNode;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveNode;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final execute(Lio/reactivex/rxjava3/internal/util/OpenHashSet;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Lorg/schabi/newpipe/databinding/ActivityErrorBinding;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/internal/util/OpenHashSet;->getInt(I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    const/4 p3, 0x1

    .line 7
    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/internal/util/OpenHashSet;->getInt(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-interface {p2, p0, p1}, Landroidx/compose/runtime/Applier;->remove(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
