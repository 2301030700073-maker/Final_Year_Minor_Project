.class public final Landroidx/compose/ui/platform/ComposeViewContext$ProvideCompositionLocals$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $saveableStateRegistry:Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext$ProvideCompositionLocals$1$1;->$saveableStateRegistry:Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext$ProvideCompositionLocals$1$1;->$saveableStateRegistry:Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    .line 4
    .line 5
    new-instance p1, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    invoke-direct {p1, p0, v0}, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method
