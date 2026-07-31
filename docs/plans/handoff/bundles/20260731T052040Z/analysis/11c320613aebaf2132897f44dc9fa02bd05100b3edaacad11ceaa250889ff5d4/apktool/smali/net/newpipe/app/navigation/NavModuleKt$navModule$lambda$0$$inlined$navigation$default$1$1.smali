.class public final Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $scope:Lorg/koin/core/scope/Scope;


# direct methods
.method public synthetic constructor <init>(Lorg/koin/core/scope/Scope;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1;->$scope:Lorg/koin/core/scope/Scope;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1;->$scope:Lorg/koin/core/scope/Scope;

    .line 6
    .line 7
    const v2, 0x799a646f

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Landroidx/navigation3/runtime/EntryProviderScope;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$1;

    .line 20
    .line 21
    invoke-direct {v0, p0, v3}, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$1;-><init>(Lorg/koin/core/scope/Scope;I)V

    .line 22
    .line 23
    .line 24
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 25
    .line 26
    invoke-direct {p0, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;->INSTANCE$1:Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;

    .line 30
    .line 31
    const-class v2, Lnet/newpipe/app/navigation/Destination$Settings;

    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p1, v2, v0, p0}, Landroidx/navigation3/runtime/EntryProviderScope;->addEntryProvider(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :pswitch_0
    check-cast p1, Landroidx/navigation3/runtime/EntryProviderScope;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance v0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$1;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-direct {v0, p0, v4}, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$1;-><init>(Lorg/koin/core/scope/Scope;I)V

    .line 50
    .line 51
    .line 52
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 53
    .line 54
    invoke-direct {p0, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;->INSTANCE:Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;

    .line 58
    .line 59
    const-class v2, Lnet/newpipe/app/navigation/Destination$About;

    .line 60
    .line 61
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p1, v2, v0, p0}, Landroidx/navigation3/runtime/EntryProviderScope;->addEntryProvider(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
