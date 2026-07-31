.class public interface abstract Lorg/wikipedia/dataclient/liftwing/LiftWingModelService;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007\u00c0\u0006\u0003"
    }
    d2 = {
        "Lorg/wikipedia/dataclient/liftwing/LiftWingModelService;",
        "",
        "Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;",
        "body",
        "Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Response;",
        "getDescriptionSuggestion",
        "(Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getDescriptionSuggestion(Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Response;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "models/article-descriptions:predict"
    .end annotation
.end method
