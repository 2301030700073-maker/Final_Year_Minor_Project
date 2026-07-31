.class public final Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final _retainedValuesStore:Landroidx/appcompat/widget/PopupMenu$1;

.field public endRetainCancellationHandle:Landroidx/compose/runtime/CancellationHandle;

.field public isInUse:Z

.field public final retainedValuesStore:Landroidx/appcompat/widget/PopupMenu$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/appcompat/widget/PopupMenu$1;

    .line 5
    .line 6
    const/16 v1, 0x1d

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->_retainedValuesStore:Landroidx/appcompat/widget/PopupMenu$1;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->retainedValuesStore:Landroidx/appcompat/widget/PopupMenu$1;

    .line 14
    .line 15
    return-void
.end method
