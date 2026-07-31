.class public final Lcom/braze/reactbridge/ContentCardUtilKt;
.super Ljava/lang/Object;
.source "ContentCardUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/reactbridge/ContentCardUtilKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentCardUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentCardUtil.kt\ncom/braze/reactbridge/ContentCardUtilKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,92:1\n37#2,2:93\n*S KotlinDebug\n*F\n+ 1 ContentCardUtil.kt\ncom/braze/reactbridge/ContentCardUtilKt\n*L\n11#1:93,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004\u001a\u000e\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\t\u001a\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u000b\u001a\u000e\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\r\u001a\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u000f\u001a\u0006\u0010\u0010\u001a\u00020\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "mapContentCards",
        "Lcom/facebook/react/bridge/WritableArray;",
        "cardsList",
        "",
        "Lcom/braze/models/cards/Card;",
        "mapContentCard",
        "Lcom/facebook/react/bridge/WritableMap;",
        "card",
        "captionedImageCardToWritableMap",
        "Lcom/braze/models/cards/CaptionedImageCard;",
        "shortNewsCardToWritableMap",
        "Lcom/braze/models/cards/ShortNewsCard;",
        "textAnnouncementCardToWritableMap",
        "Lcom/braze/models/cards/TextAnnouncementCard;",
        "imageOnlyCardToWritableMap",
        "Lcom/braze/models/cards/ImageOnlyCard;",
        "controlCardToWritableMap",
        "braze_react-native-sdk_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final captionedImageCardToWritableMap(Lcom/braze/models/cards/CaptionedImageCard;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    const-string v0, "card"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 50
    const-string v1, "image"

    invoke-virtual {p0}, Lcom/braze/models/cards/CaptionedImageCard;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/braze/models/cards/CaptionedImageCard;->getAspectRatio()F

    move-result v1

    float-to-double v1, v1

    const-string v3, "imageAspectRatio"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 52
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/braze/models/cards/CaptionedImageCard;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "cardDescription"

    invoke-virtual {p0}, Lcom/braze/models/cards/CaptionedImageCard;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "domain"

    invoke-virtual {p0}, Lcom/braze/models/cards/CaptionedImageCard;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo p0, "type"

    const-string v1, "Captioned"

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final controlCardToWritableMap()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 88
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "type"

    const-string v2, "Control"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final imageOnlyCardToWritableMap(Lcom/braze/models/cards/ImageOnlyCard;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    const-string v0, "card"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 80
    const-string v1, "image"

    invoke-virtual {p0}, Lcom/braze/models/cards/ImageOnlyCard;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/braze/models/cards/ImageOnlyCard;->getAspectRatio()F

    move-result v1

    float-to-double v1, v1

    const-string v3, "imageAspectRatio"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 82
    const-string v1, "domain"

    invoke-virtual {p0}, Lcom/braze/models/cards/ImageOnlyCard;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo p0, "type"

    const-string v1, "ImageOnly"

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final mapContentCard(Lcom/braze/models/cards/Card;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    const-string v0, "card"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 19
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->getCreated()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "created"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 21
    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->getExpiresAt()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "expiresAt"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 22
    const-string/jumbo v1, "viewed"

    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->getViewed()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    const-string v1, "clicked"

    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->isClicked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    const-string/jumbo v1, "pinned"

    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->isPinned()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    const-string v1, "dismissed"

    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->isDismissed()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    const-string v1, "dismissible"

    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->isDismissibleByUser()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    const-string/jumbo v1, "url"

    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v1, "openURLInWebView"

    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->getOpenUriInWebView()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    const-string v1, "isControl"

    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->isControl()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 34
    invoke-interface {v1, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    const-string v2, "extras"

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 37
    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->getCardType()Lcom/braze/enums/CardType;

    move-result-object v1

    sget-object v2, Lcom/braze/reactbridge/ContentCardUtilKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/braze/enums/CardType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 42
    :pswitch_0
    invoke-static {}, Lcom/braze/reactbridge/ContentCardUtilKt;->controlCardToWritableMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p0}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_1

    .line 41
    :pswitch_1
    check-cast p0, Lcom/braze/models/cards/TextAnnouncementCard;

    invoke-static {p0}, Lcom/braze/reactbridge/ContentCardUtilKt;->textAnnouncementCardToWritableMap(Lcom/braze/models/cards/TextAnnouncementCard;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p0}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_1

    .line 40
    :pswitch_2
    check-cast p0, Lcom/braze/models/cards/ShortNewsCard;

    invoke-static {p0}, Lcom/braze/reactbridge/ContentCardUtilKt;->shortNewsCardToWritableMap(Lcom/braze/models/cards/ShortNewsCard;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p0}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_1

    .line 39
    :pswitch_3
    check-cast p0, Lcom/braze/models/cards/CaptionedImageCard;

    invoke-static {p0}, Lcom/braze/reactbridge/ContentCardUtilKt;->captionedImageCardToWritableMap(Lcom/braze/models/cards/CaptionedImageCard;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p0}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_1

    .line 38
    :pswitch_4
    check-cast p0, Lcom/braze/models/cards/ImageOnlyCard;

    invoke-static {p0}, Lcom/braze/reactbridge/ContentCardUtilKt;->imageOnlyCardToWritableMap(Lcom/braze/models/cards/ImageOnlyCard;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p0}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 45
    :goto_1
    :pswitch_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static final mapContentCards(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/braze/models/cards/Card;",
            ">;)",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    const-string v0, "cardsList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 11
    check-cast p0, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 94
    new-array v2, v1, [Lcom/braze/models/cards/Card;

    invoke-interface {p0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 11
    check-cast p0, [Lcom/braze/models/cards/Card;

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 12
    invoke-static {v3}, Lcom/braze/reactbridge/ContentCardUtilKt;->mapContentCard(Lcom/braze/models/cards/Card;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final shortNewsCardToWritableMap(Lcom/braze/models/cards/ShortNewsCard;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    const-string v0, "card"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 61
    const-string v1, "image"

    invoke-virtual {p0}, Lcom/braze/models/cards/ShortNewsCard;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/braze/models/cards/ShortNewsCard;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "cardDescription"

    invoke-virtual {p0}, Lcom/braze/models/cards/ShortNewsCard;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "domain"

    invoke-virtual {p0}, Lcom/braze/models/cards/ShortNewsCard;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo p0, "type"

    const-string v1, "Classic"

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final textAnnouncementCardToWritableMap(Lcom/braze/models/cards/TextAnnouncementCard;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    const-string v0, "card"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/braze/models/cards/TextAnnouncementCard;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "cardDescription"

    invoke-virtual {p0}, Lcom/braze/models/cards/TextAnnouncementCard;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "domain"

    invoke-virtual {p0}, Lcom/braze/models/cards/TextAnnouncementCard;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo p0, "type"

    const-string v1, "Classic"

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
