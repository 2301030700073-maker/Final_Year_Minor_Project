.class public final Lcom/fsck/k9/message/html/DisplayHtml;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cssClassNameProvider:Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

.field public final cssStyleProviders:Ljava/util/List;

.field public final htmlSettings:Lnet/thunderbird/core/common/mail/html/HtmlSettings;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/common/mail/html/HtmlSettings;Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/message/html/DisplayHtml;->htmlSettings:Lnet/thunderbird/core/common/mail/html/HtmlSettings;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/message/html/DisplayHtml;->cssClassNameProvider:Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/message/html/DisplayHtml;->cssStyleProviders:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getHeadHtml()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v4, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    invoke-direct {v4, v0, p0}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/16 v5, 0x1e

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fsck/k9/message/html/DisplayHtml;->cssStyleProviders:Ljava/util/List;

    .line 10
    .line 11
    const-string v1, "\n"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "\n            |<meta name=\"viewport\" content=\"width=device-width\"/>\n            |"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, "\n        "

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public final wrapMessageContent(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fsck/k9/message/html/DisplayHtml;->getHeadHtml()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/fsck/k9/message/html/DisplayHtml;->cssClassNameProvider:Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 9
    .line 10
    iget-object v1, p0, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;->rootClassName:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p0, p0, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;->mainContentClassName:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "\n            |  </head>\n            |  <body class=\""

    .line 15
    .line 16
    const-string v3, " "

    .line 17
    .line 18
    const-string v4, "\n            |<html dir=\"auto\">\n            |  <head>\n            |    "

    .line 19
    .line 20
    invoke-static {v4, v0, v2, v1, v3}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, "\">\n            |    "

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, "\n            |  </body>\n            |</html>\n        "

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
