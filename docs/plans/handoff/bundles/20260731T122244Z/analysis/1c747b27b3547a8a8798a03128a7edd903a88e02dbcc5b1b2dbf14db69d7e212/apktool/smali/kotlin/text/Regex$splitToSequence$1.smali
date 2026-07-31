.class final Lkotlin/text/Regex$splitToSequence$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Regex.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/Regex;->splitToSequence(Ljava/lang/CharSequence;I)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.text.Regex$splitToSequence$1"
    f = "Regex.kt"
    i = {}
    l = {
        0xf3,
        0xfb,
        0xff
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $input:Ljava/lang/CharSequence;

.field final synthetic $limit:I

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lkotlin/text/Regex;


# direct methods
.method constructor <init>(Lkotlin/text/Regex;Ljava/lang/CharSequence;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlin/text/Regex$splitToSequence$1;->this$0:Lkotlin/text/Regex;

    iput-object p2, p0, Lkotlin/text/Regex$splitToSequence$1;->$input:Ljava/lang/CharSequence;

    iput p3, p0, Lkotlin/text/Regex$splitToSequence$1;->$limit:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex$splitToSequence$1;

    iget-object v1, p0, Lkotlin/text/Regex$splitToSequence$1;->this$0:Lkotlin/text/Regex;

    iget-object v2, p0, Lkotlin/text/Regex$splitToSequence$1;->$input:Ljava/lang/CharSequence;

    iget v3, p0, Lkotlin/text/Regex$splitToSequence$1;->$limit:I

    invoke-direct {v0, v1, v2, v3, p2}, Lkotlin/text/Regex$splitToSequence$1;-><init>(Lkotlin/text/Regex;Ljava/lang/CharSequence;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/text/Regex$splitToSequence$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/text/Regex$splitToSequence$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/text/Regex$splitToSequence$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/text/Regex$splitToSequence$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 240
    iget v1, p0, Lkotlin/text/Regex$splitToSequence$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 256
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lkotlin/text/Regex$splitToSequence$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v0    # "this":Lkotlin/text/Regex$splitToSequence$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lkotlin/text/Regex$splitToSequence$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget v3, v1, Lkotlin/text/Regex$splitToSequence$1;->I$0:I

    iget-object v4, v1, Lkotlin/text/Regex$splitToSequence$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/regex/Matcher;

    iget-object v5, v1, Lkotlin/text/Regex$splitToSequence$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lkotlin/text/Regex$splitToSequence$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object v0, p0

    .restart local v0    # "this":Lkotlin/text/Regex$splitToSequence$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v0    # "this":Lkotlin/text/Regex$splitToSequence$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lkotlin/text/Regex$splitToSequence$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lkotlin/text/Regex$splitToSequence$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/sequences/SequenceScope;

    .line 241
    .local v3, "$this$sequence":Lkotlin/sequences/SequenceScope;
    iget-object v4, v1, Lkotlin/text/Regex$splitToSequence$1;->this$0:Lkotlin/text/Regex;

    invoke-static {v4}, Lkotlin/text/Regex;->access$getNativePattern$p(Lkotlin/text/Regex;)Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v5, v1, Lkotlin/text/Regex$splitToSequence$1;->$input:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 242
    .local v4, "matcher":Ljava/util/regex/Matcher;
    iget v5, v1, Lkotlin/text/Regex$splitToSequence$1;->$limit:I

    if-eq v5, v2, :cond_5

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_4

    .line 247
    .end local v3    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    const/4 v5, 0x0

    .line 248
    .local v5, "nextStart":I
    const/4 v6, 0x0

    move v9, v5

    move-object v5, v3

    move v3, v6

    move v6, v9

    .line 250
    .end local v5    # "nextStart":I
    .local v3, "splitCount":I
    .local v6, "nextStart":I
    :goto_0
    nop

    .line 251
    iget-object v7, v1, Lkotlin/text/Regex$splitToSequence$1;->$input:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-interface {v7, v6, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v3    # "splitCount":I
    .end local v6    # "nextStart":I
    iput-object v5, v1, Lkotlin/text/Regex$splitToSequence$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lkotlin/text/Regex$splitToSequence$1;->L$1:Ljava/lang/Object;

    iput v3, v1, Lkotlin/text/Regex$splitToSequence$1;->I$0:I

    const/4 v7, 0x2

    iput v7, v1, Lkotlin/text/Regex$splitToSequence$1;->label:I

    invoke-virtual {v5, v6, v1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_1

    .line 240
    return-object v0

    .line 252
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    .line 253
    add-int/2addr v3, v2

    iget v7, v1, Lkotlin/text/Regex$splitToSequence$1;->$limit:I

    sub-int/2addr v7, v2

    if-eq v3, v7, :cond_3

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .restart local v3    # "splitCount":I
    .restart local v6    # "nextStart":I
    :cond_2
    goto :goto_0

    .line 255
    .end local v3    # "splitCount":I
    .end local v6    # "nextStart":I
    :cond_3
    :goto_2
    iget-object v2, v1, Lkotlin/text/Regex$splitToSequence$1;->$input:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v2, v6, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v1, Lkotlin/text/Regex$splitToSequence$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lkotlin/text/Regex$splitToSequence$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v1, Lkotlin/text/Regex$splitToSequence$1;->label:I

    invoke-virtual {v5, v2, v1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    .line 240
    return-object v0

    .line 255
    :cond_4
    move-object v0, v1

    .line 256
    .end local v1    # "this":Lkotlin/text/Regex$splitToSequence$1;
    .restart local v0    # "this":Lkotlin/text/Regex$splitToSequence$1;
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 243
    .end local v0    # "this":Lkotlin/text/Regex$splitToSequence$1;
    .restart local v1    # "this":Lkotlin/text/Regex$splitToSequence$1;
    .local v3, "$this$sequence":Lkotlin/sequences/SequenceScope;
    :cond_5
    :goto_4
    iget-object v4, v1, Lkotlin/text/Regex$splitToSequence$1;->$input:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput v2, v1, Lkotlin/text/Regex$splitToSequence$1;->label:I

    invoke-virtual {v3, v4, v1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v3    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    if-ne v2, v0, :cond_6

    .line 240
    return-object v0

    .line 243
    :cond_6
    move-object v0, v1

    .line 244
    .end local v1    # "this":Lkotlin/text/Regex$splitToSequence$1;
    .restart local v0    # "this":Lkotlin/text/Regex$splitToSequence$1;
    :goto_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
