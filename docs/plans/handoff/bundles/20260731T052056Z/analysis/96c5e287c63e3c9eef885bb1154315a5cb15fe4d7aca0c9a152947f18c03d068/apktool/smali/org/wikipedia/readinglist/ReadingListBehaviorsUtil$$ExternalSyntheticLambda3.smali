.class public final synthetic Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$1:Lorg/wikipedia/readinglist/database/ReadingListPage;

.field public final synthetic f$2:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$$ExternalSyntheticLambda3;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$$ExternalSyntheticLambda3;->f$1:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$$ExternalSyntheticLambda3;->f$2:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    iget p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$$ExternalSyntheticLambda3;->f$2:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 9
    .line 10
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$$ExternalSyntheticLambda3;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$$ExternalSyntheticLambda3;->f$1:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 13
    .line 14
    invoke-static {p1, p0, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->toggleOffline(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->exceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 25
    .line 26
    new-instance v1, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 27
    .line 28
    const/4 v6, 0x7

    .line 29
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$$ExternalSyntheticLambda3;->f$1:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    iget-object v4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$$ExternalSyntheticLambda3;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x2

    .line 39
    invoke-static {p1, v0, v5, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 40
    .line 41
    .line 42
    invoke-interface {p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;->onCompleted()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
