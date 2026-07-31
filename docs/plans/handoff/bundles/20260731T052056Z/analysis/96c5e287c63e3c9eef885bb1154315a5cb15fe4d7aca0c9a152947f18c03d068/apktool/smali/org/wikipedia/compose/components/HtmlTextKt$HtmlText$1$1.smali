.class public final Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic $annotatedString:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic $layoutResult$delegate:Landroidx/compose/runtime/MutableState;

.field public final synthetic $onLongClickLink:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1;->$layoutResult$delegate:Landroidx/compose/runtime/MutableState;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1;->$annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1;->$onLongClickLink:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1;->$onLongClickLink:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1;->$layoutResult$delegate:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1;->$annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 9
    .line 10
    invoke-direct {v0, v3, p0, v1, v2}, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, p2}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 18
    .line 19
    if-ne p0, p1, :cond_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method
