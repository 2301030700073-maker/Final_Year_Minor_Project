.class public final Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;
.super Lorg/schabi/newpipe/util/text/LongPressClickableSpan;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final context:Landroid/content/Context;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;->url:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    sget-object p1, Lorg/schabi/newpipe/util/text/InternalUrlsHandler;->AMPERSAND_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;->url:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;->context:Landroid/content/Context;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x2

    .line 25
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/4 v6, -0x1

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    move p1, v6

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    :goto_0
    :try_start_0
    invoke-static {v3}, Lus/shandian/giga/util/Utility;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4, v3}, Lorg/schabi/newpipe/extractor/StreamingService;->getLinkTypeByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    sget-object v7, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->NONE:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    if-ne v5, v7, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    sget-object v2, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 56
    .line 57
    if-ne v5, v2, :cond_3

    .line 58
    .line 59
    if-eq p1, v6, :cond_3

    .line 60
    .line 61
    invoke-static {p0, v3, v4, p1}, Lorg/schabi/newpipe/util/text/InternalUrlsHandler;->playOnPopup(Landroid/content/Context;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;I)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    new-instance p1, Landroid/content/Intent;

    .line 67
    .line 68
    const-class v2, Lorg/schabi/newpipe/RouterActivity;

    .line 69
    .line 70
    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    .line 82
    .line 83
    move v2, v1

    .line 84
    :catch_0
    :goto_1
    if-nez v2, :cond_4

    .line 85
    .line 86
    invoke-static {p0, v0}, Landroidx/transition/Transition$Impl26;->openUrlInApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;->context:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;->url:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1, p0}, Landroidx/transition/Transition$Impl26;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
