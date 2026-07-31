.class public final Lio/reactivex/rxjava3/internal/functions/Functions$JustValue;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Lio/reactivex/rxjava3/functions/Supplier;
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final value:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/functions/Functions$JustValue;->value:Ljava/lang/Exception;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/functions/Functions$JustValue;->value:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object p0
.end method

.method public final call()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/functions/Functions$JustValue;->value:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/functions/Functions$JustValue;->value:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object p0
.end method
