.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository$observeState$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Lkotlinx/coroutines/channels/ProducerCoroutine;

.field public final synthetic f$2:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Lkotlinx/coroutines/channels/ProducerCoroutine;Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository$observeState$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository$observeState$1$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository$observeState$1$$ExternalSyntheticLambda0;->f$2:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository$observeState$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository$observeState$1$$ExternalSyntheticLambda0;->f$2:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;

    .line 12
    .line 13
    invoke-static {p1}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->getCurrentState$default(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;)Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository$observeState$1$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
