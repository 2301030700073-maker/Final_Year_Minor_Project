.class public Landroidx/navigation3/runtime/NavEntryDecorator;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final decorate:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final onPop:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation3/runtime/NavEntryDecorator;->onPop:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation3/runtime/NavEntryDecorator;->decorate:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 7
    .line 8
    return-void
.end method
