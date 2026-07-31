.class final Lexpo/modules/image/ImageLoadTask$load$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ImageLoadTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/image/ImageLoadTask;->load(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "expo.modules.image.ImageLoadTask"
    f = "ImageLoadTask.kt"
    i = {}
    l = {
        0x18
    }
    m = "load"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lexpo/modules/image/ImageLoadTask;


# direct methods
.method constructor <init>(Lexpo/modules/image/ImageLoadTask;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/image/ImageLoadTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/image/ImageLoadTask$load$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/image/ImageLoadTask$load$1;->this$0:Lexpo/modules/image/ImageLoadTask;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lexpo/modules/image/ImageLoadTask$load$1;->result:Ljava/lang/Object;

    iget p1, p0, Lexpo/modules/image/ImageLoadTask$load$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lexpo/modules/image/ImageLoadTask$load$1;->label:I

    iget-object p1, p0, Lexpo/modules/image/ImageLoadTask$load$1;->this$0:Lexpo/modules/image/ImageLoadTask;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0}, Lexpo/modules/image/ImageLoadTask;->load(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
