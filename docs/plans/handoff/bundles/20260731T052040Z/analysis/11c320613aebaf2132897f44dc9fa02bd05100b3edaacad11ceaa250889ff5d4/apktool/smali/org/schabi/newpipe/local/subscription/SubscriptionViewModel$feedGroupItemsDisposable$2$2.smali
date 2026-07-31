.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$2;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$2;

    .line 2
    .line 3
    const-string v4, "<init>(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V"

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const-class v2, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    .line 8
    .line 9
    const-string v3, "<init>"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$2;->INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$2;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    .line 7
    .line 8
    iget-wide v0, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->uid:J

    .line 9
    .line 10
    iget-object v2, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->name:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 13
    .line 14
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;-><init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method
