.class public final synthetic Lorg/wikipedia/talk/UserTalkPopupHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$1:Lorg/wikipedia/page/PageTitle;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/page/PageTitle;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/talk/UserTalkPopupHelper$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/talk/UserTalkPopupHelper$$ExternalSyntheticLambda1;->f$1:Lorg/wikipedia/page/PageTitle;

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/talk/UserTalkPopupHelper$$ExternalSyntheticLambda1;->f$2:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    iget-object v3, p0, Lorg/wikipedia/talk/UserTalkPopupHelper$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    instance-of p1, v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsActivity;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    instance-of p1, v3, Lorg/wikipedia/suggestededits/SuggestionsActivity;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    :cond_0
    instance-of p1, v3, Lorg/wikipedia/suggestededits/SuggestionsActivity;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const-string p1, "pt_edit"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string p1, "pt_recent_changes"

    .line 19
    .line 20
    :goto_0
    const-string p2, ""

    .line 21
    .line 22
    const-string v0, "thank_confirm"

    .line 23
    .line 24
    invoke-static {v0, p1, p2}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v4, p0, Lorg/wikipedia/talk/UserTalkPopupHelper$$ExternalSyntheticLambda1;->f$1:Lorg/wikipedia/page/PageTitle;

    .line 28
    .line 29
    iget-object v1, v4, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 30
    .line 31
    iget-wide p0, p0, Lorg/wikipedia/talk/UserTalkPopupHelper$$ExternalSyntheticLambda1;->f$2:J

    .line 32
    .line 33
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    sget-object p1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 42
    .line 43
    new-instance p2, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-direct {p2, p1, v0}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    const/16 v6, 0xb

    .line 53
    .line 54
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x2

    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-static {p0, p2, v1, v0, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 60
    .line 61
    .line 62
    return-void
.end method
