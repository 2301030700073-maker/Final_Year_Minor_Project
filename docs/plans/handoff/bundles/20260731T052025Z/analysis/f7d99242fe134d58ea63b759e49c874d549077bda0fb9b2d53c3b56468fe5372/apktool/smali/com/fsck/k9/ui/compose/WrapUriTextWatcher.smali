.class public final Lcom/fsck/k9/ui/compose/WrapUriTextWatcher;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public insertedEndIndex:I

.field public insertedStartIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/fsck/k9/ui/compose/WrapUriTextWatcher;->insertedStartIndex:I

    .line 6
    .line 7
    iput v0, p0, Lcom/fsck/k9/ui/compose/WrapUriTextWatcher;->insertedEndIndex:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/compose/WrapUriTextWatcher;->insertedStartIndex:I

    .line 2
    .line 3
    iget p0, p0, Lcom/fsck/k9/ui/compose/WrapUriTextWatcher;->insertedEndIndex:I

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_4

    .line 9
    .line 10
    invoke-interface {p1, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lcom/fsck/k9/message/html/UriMatcher;->SUPPORTED_URIS:Ljava/util/Map;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/fsck/k9/message/html/UriMatcher;->URI_SCHEME:Lkotlin/text/Regex;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v2, v3, v1}, Lkotlin/text/Regex;->matchAt(ILjava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v2, v2, Lkotlin/text/MatcherMatchResult;->groups:Lkotlin/text/MatcherMatchResult$groups$1;

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-virtual {v2, v4}, Lkotlin/text/MatcherMatchResult$groups$1;->get(I)Lkotlin/text/MatchGroup;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v4, v2, Lkotlin/text/MatchGroup;->range:Lkotlin/ranges/IntRange;

    .line 40
    .line 41
    iget v4, v4, Lkotlin/ranges/IntProgression;->first:I

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v2, v2, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    .line 47
    .line 48
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 49
    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    sget-object v4, Lcom/fsck/k9/message/html/UriMatcher;->SUPPORTED_URIS:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Lcom/fsck/k9/message/html/UriParser;

    .line 64
    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    invoke-interface {v4, v3, v1}, Lcom/fsck/k9/message/html/UriParser;->parseUri(ILjava/lang/CharSequence;)Lcom/fsck/k9/message/html/UriMatch;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget v3, v2, Lcom/fsck/k9/message/html/UriMatch;->startIndex:I

    .line 75
    .line 76
    if-nez v3, :cond_4

    .line 77
    .line 78
    iget v2, v2, Lcom/fsck/k9/message/html/UriMatch;->endIndex:I

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-ne v2, v1, :cond_4

    .line 85
    .line 86
    const-string v1, ">"

    .line 87
    .line 88
    invoke-interface {p1, p0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 89
    .line 90
    .line 91
    const-string p0, "<"

    .line 92
    .line 93
    invoke-interface {p1, v0, p0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    const-string p0, "Scheme not found: "

    .line 98
    .line 99
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    if-ge p4, p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput p2, p0, Lcom/fsck/k9/ui/compose/WrapUriTextWatcher;->insertedStartIndex:I

    .line 8
    .line 9
    add-int/2addr p2, p4

    .line 10
    iput p2, p0, Lcom/fsck/k9/ui/compose/WrapUriTextWatcher;->insertedEndIndex:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/fsck/k9/ui/compose/WrapUriTextWatcher;->insertedStartIndex:I

    .line 15
    .line 16
    return-void
.end method
