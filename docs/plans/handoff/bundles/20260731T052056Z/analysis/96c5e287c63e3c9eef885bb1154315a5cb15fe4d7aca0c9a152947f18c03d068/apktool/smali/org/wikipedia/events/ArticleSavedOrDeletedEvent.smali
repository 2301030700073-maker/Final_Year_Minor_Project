.class public final Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final isAdded:Z

.field public final pages:Ljava/util/List;


# direct methods
.method public varargs constructor <init>(Z[Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;->isAdded:Z

    .line 5
    .line 6
    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;->pages:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method
