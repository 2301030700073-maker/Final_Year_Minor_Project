.class public final Lnet/newpipe/app/navigation/Navigator;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final backstack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field public final onCloseRequest:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lnet/newpipe/app/navigation/Destination;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lnet/newpipe/app/navigation/Navigator;->onCloseRequest:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    new-array p2, p2, [Lnet/newpipe/app/navigation/Destination;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    aput-object p1, p2, v0

    .line 11
    .line 12
    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 13
    .line 14
    invoke-direct {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lnet/newpipe/app/navigation/Navigator;->backstack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final navigateUp()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/newpipe/app/navigation/Navigator;->backstack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lnet/newpipe/app/navigation/Navigator;->backstack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeLastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v0, Lco/touchlab/kermit/Logger$Companion;->Companion:Lco/touchlab/kermit/Logger$Companion;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v1, Lco/touchlab/kermit/Severity;->Info:Lco/touchlab/kermit/Severity;

    .line 22
    .line 23
    iget-object v2, v0, Lco/touchlab/kermit/Logger$Companion;->config:Lco/touchlab/kermit/JvmMutableLoggerConfig;

    .line 24
    .line 25
    iget-object v2, v2, Lco/touchlab/kermit/JvmMutableLoggerConfig;->_minSeverity:Lco/touchlab/kermit/Severity;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-gtz v2, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const-string v3, "Cannot remove the only entry in backstack!"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lco/touchlab/kermit/Logger$Companion;->processLog(Lco/touchlab/kermit/Severity;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p0, p0, Lnet/newpipe/app/navigation/Navigator;->onCloseRequest:Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-void
.end method
