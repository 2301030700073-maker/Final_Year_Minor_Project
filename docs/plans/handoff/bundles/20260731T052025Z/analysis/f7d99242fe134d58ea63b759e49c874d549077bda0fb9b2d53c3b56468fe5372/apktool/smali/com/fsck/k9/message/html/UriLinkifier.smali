.class public final Lcom/fsck/k9/message/html/UriLinkifier;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/message/html/TextToHtml$HtmlModifier;


# static fields
.field public static final INSTANCE:Lcom/fsck/k9/message/html/UriLinkifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fsck/k9/message/html/UriLinkifier;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fsck/k9/message/html/UriLinkifier;->INSTANCE:Lcom/fsck/k9/message/html/UriLinkifier;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final findModifications(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/fsck/k9/message/html/UriMatcher;->URI_SCHEME:Lkotlin/text/Regex;

    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;)Lkotlin/sequences/DistinctSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1, p1}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lkotlin/sequences/TakeWhileSequence;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-direct {p1, p0, v0, v1}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    const/16 v0, 0xa

    .line 33
    .line 34
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/fsck/k9/message/html/UriMatch;

    .line 56
    .line 57
    new-instance v1, Lcom/fsck/k9/message/html/UriLinkifier$LinkifyUri;

    .line 58
    .line 59
    iget v2, v0, Lcom/fsck/k9/message/html/UriMatch;->startIndex:I

    .line 60
    .line 61
    iget v3, v0, Lcom/fsck/k9/message/html/UriMatch;->endIndex:I

    .line 62
    .line 63
    iget-object v0, v0, Lcom/fsck/k9/message/html/UriMatch;->uri:Ljava/lang/CharSequence;

    .line 64
    .line 65
    invoke-direct {v1, v2, v3, v0}, Lcom/fsck/k9/message/html/UriLinkifier$LinkifyUri;-><init>(IILjava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    return-object p1
.end method
