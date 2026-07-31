.class final Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ReactActivityDelegateWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ReactActivityDelegateWrapper;->loadAppImpl(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.ReactActivityDelegateWrapper"
    f = "ReactActivityDelegateWrapper.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x1c5
    }
    m = "loadAppImpl"
    n = {
        "this",
        "appKey"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lexpo/modules/ReactActivityDelegateWrapper;


# direct methods
.method constructor <init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/ReactActivityDelegateWrapper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->result:Ljava/lang/Object;

    iget p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->label:I

    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$loadAppImpl$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lexpo/modules/ReactActivityDelegateWrapper;->access$loadAppImpl(Lexpo/modules/ReactActivityDelegateWrapper;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
