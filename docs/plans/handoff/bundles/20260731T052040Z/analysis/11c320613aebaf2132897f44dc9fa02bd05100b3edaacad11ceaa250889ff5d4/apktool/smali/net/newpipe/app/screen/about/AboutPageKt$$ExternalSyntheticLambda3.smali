.class public final synthetic Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .locals 1

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    .line 7
    .line 8
    iget-object p0, p0, Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Lorg/koin/core/KoinApplication;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-array v0, v2, [Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    aput-object p0, v0, v4

    .line 22
    .line 23
    aget-object p0, v0, v4

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1, v3}, Lorg/koin/core/KoinApplication;->modules(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v0, Lnet/newpipe/app/screen/about/AboutPageKt;->lambda$776903718:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 40
    .line 41
    invoke-static {p1, v0}, Landroidx/compose/ui/Modifier$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 45
    .line 46
    const/4 v5, 0x4

    .line 47
    invoke-direct {v0, v5}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    new-instance v7, Landroidx/compose/runtime/Latch$await$2$2;

    .line 55
    .line 56
    invoke-direct {v7, v0, v3, v5}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lnet/newpipe/app/screen/about/AboutPageKt$AboutPageContent$lambda$1$0$$inlined$items$default$3;

    .line 60
    .line 61
    invoke-direct {v0, v4, v3}, Lnet/newpipe/app/screen/about/AboutPageKt$AboutPageContent$lambda$1$0$$inlined$items$default$3;-><init>(ILjava/util/List;)V

    .line 62
    .line 63
    .line 64
    new-instance v4, Lnet/newpipe/app/screen/about/AboutPageKt$AboutPageContent$lambda$1$0$$inlined$items$default$4;

    .line 65
    .line 66
    invoke-direct {v4, v3, p0}, Lnet/newpipe/app/screen/about/AboutPageKt$AboutPageContent$lambda$1$0$$inlined$items$default$4;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 67
    .line 68
    .line 69
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 70
    .line 71
    const v3, 0x2fd4df92

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v3, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->intervals:Lcom/grack/nanojson/JsonParser;

    .line 78
    .line 79
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListInterval;

    .line 80
    .line 81
    invoke-direct {v2, v7, v0, p0}, Landroidx/compose/foundation/lazy/LazyListInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v6, v2}, Lcom/grack/nanojson/JsonParser;->addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    .line 85
    .line 86
    .line 87
    return-object v1

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
