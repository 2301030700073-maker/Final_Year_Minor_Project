.class public final Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public L$0:Ljava/lang/String;

.field public L$1:Ljava/lang/String;

.field public L$2:Ljava/lang/String;

.field public L$3:Ljava/lang/String;

.field public L$4:Ljava/lang/String;

.field public L$5:Ljava/lang/String;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/descriptions/DescriptionEditViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->label:I

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v7, p0

    .line 19
    invoke-virtual/range {v0 .. v7}, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->postDescriptionToArticle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
