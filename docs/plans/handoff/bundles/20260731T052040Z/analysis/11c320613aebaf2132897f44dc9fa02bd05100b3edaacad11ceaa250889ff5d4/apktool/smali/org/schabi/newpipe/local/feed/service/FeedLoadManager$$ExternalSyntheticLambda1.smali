.class public final synthetic Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcoil3/network/okhttp/internal/CallsKt$await$2$1;


# direct methods
.method public synthetic constructor <init>(Lcoil3/network/okhttp/internal/CallsKt$await$2$1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda1;->f$0:Lcoil3/network/okhttp/internal/CallsKt$await$2$1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda1;->f$0:Lcoil3/network/okhttp/internal/CallsKt$await$2$1;

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Throwable;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    throw v1

    .line 18
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
