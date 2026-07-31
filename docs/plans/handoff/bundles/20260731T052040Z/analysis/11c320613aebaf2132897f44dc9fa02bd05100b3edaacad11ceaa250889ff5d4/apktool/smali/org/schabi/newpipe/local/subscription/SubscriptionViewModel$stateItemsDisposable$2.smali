.class public final Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;->this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;->this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/Throwable;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->mutableStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;-><init>(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->mutableStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    check-cast p1, Lkotlin/Pair;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->mutableFeedGroupsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_2
    check-cast p1, Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->mutableStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$LoadedState;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$LoadedState;-><init>(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
