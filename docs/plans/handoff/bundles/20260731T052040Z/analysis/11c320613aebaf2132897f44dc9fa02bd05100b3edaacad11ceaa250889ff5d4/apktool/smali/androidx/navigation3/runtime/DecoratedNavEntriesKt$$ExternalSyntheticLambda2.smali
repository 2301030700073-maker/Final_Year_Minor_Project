.class public final synthetic Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Ljava/util/Set;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda2;->f$2:Ljava/util/Set;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda2;->f$3:Ljava/util/Set;

    .line 11
    .line 12
    iput p5, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda2;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda2;->f$4:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    iget-object v0, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda2;->f$2:Ljava/util/Set;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda2;->f$3:Ljava/util/Set;

    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Landroidx/core/os/BundleKt;->PrepareBackStack(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Landroidx/compose/runtime/Composer;I)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method
