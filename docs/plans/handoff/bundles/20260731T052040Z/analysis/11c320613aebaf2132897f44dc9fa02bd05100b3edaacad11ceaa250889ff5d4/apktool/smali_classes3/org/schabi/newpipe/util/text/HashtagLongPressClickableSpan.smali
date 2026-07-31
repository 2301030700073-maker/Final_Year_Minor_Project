.class public final Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;
.super Lorg/schabi/newpipe/util/text/LongPressClickableSpan;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final context:Landroid/content/Context;

.field public final parsedHashtag:Ljava/lang/String;

.field public final relatedInfoServiceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->parsedHashtag:Ljava/lang/String;

    .line 7
    .line 8
    iput p2, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->relatedInfoServiceId:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v0, Lorg/schabi/newpipe/MainActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "key_service_id"

    .line 11
    .line 12
    iget v2, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->relatedInfoServiceId:I

    .line 13
    .line 14
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const-string v0, "key_search_string"

    .line 18
    .line 19
    iget-object p0, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->parsedHashtag:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string p0, "key_open_search"

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->context:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->parsedHashtag:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1, p0}, Landroidx/transition/Transition$Impl26;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
