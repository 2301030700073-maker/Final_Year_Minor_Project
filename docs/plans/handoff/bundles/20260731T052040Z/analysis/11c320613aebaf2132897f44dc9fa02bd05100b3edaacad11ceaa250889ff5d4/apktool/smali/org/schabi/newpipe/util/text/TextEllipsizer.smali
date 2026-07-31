.class public final Lorg/schabi/newpipe/util/text/TextEllipsizer;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public canBeEllipsized:Ljava/lang/Boolean;

.field public content:Lorg/schabi/newpipe/extractor/stream/Description;

.field public final disposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public final ellipsisWidthPx:F

.field public isEllipsized:Z

.field public final maxLines:I

.field public onContentChanged:Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;

.field public final paintAtContentSize:Landroid/graphics/Paint;

.field public stateChangeListener:Ljava/util/function/Consumer;

.field public streamUrl:Ljava/lang/String;

.field public streamingService:Lorg/schabi/newpipe/extractor/StreamingService;

.field public final view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;ILorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->disposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->isEllipsized:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->canBeEllipsized:Ljava/lang/Boolean;

    .line 16
    .line 17
    new-instance v1, Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->paintAtContentSize:Landroid/graphics/Paint;

    .line 23
    .line 24
    iput-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->stateChangeListener:Ljava/util/function/Consumer;

    .line 25
    .line 26
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    .line 27
    .line 28
    iput p2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->maxLines:I

    .line 29
    .line 30
    sget-object p2, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 31
    .line 32
    iput-object p2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 33
    .line 34
    iput-object p3, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->streamingService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 41
    .line 42
    .line 43
    const-string/jumbo p1, "\u2026"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->ellipsisWidthPx:F

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final linkifyContentView(Ljava/util/function/Consumer;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->isEllipsized:Z

    .line 2
    .line 3
    iget-object v5, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->disposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 4
    .line 5
    invoke-virtual {v5}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 9
    .line 10
    iget-object v3, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->streamingService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 11
    .line 12
    iget-object v4, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->streamUrl:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v6, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;

    .line 15
    .line 16
    invoke-direct {v6, p0, p1, v0}, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;Ljava/util/function/Consumer;Z)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/util/text/TextLinkifier;->fromDescription(Landroid/widget/TextView;Lorg/schabi/newpipe/extractor/stream/Description;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final toggle()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->isEllipsized:Z

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->linkifyContentView(Ljava/util/function/Consumer;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->linkifyContentView(Ljava/util/function/Consumer;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
