.class public final Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public onEnter:Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;

.field public final stateClass:Lkotlin/jvm/internal/ClassReference;

.field public final transitions:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/ClassReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->stateClass:Lkotlin/jvm/internal/ClassReference;

    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transitions:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lkotlin/Pair;

    .line 5
    .line 6
    iget-object v0, p0, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->stateClass:Lkotlin/jvm/internal/ClassReference;

    .line 7
    .line 8
    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Lnet/thunderbird/core/common/state/StateMachine$Transition;

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/runtime/saveable/ListSaverKt$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-direct {v0, v1, p3}, Landroidx/compose/runtime/saveable/ListSaverKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 17
    .line 18
    .line 19
    new-instance p3, Landroidx/compose/runtime/saveable/ListSaverKt$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-direct {p3, v1, p4}, Landroidx/compose/runtime/saveable/ListSaverKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, v0, p3}, Lnet/thunderbird/core/common/state/StateMachine$Transition;-><init>(Landroidx/compose/runtime/saveable/ListSaverKt$$ExternalSyntheticLambda0;Landroidx/compose/runtime/saveable/ListSaverKt$$ExternalSyntheticLambda0;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transitions:Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method
