.class public final Lorg/wikipedia/views/WikiArticleCardView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000e\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\r\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00080\u00130\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0018\u001a\u00020\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/wikipedia/views/WikiArticleCardView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "title",
        "",
        "setTitle",
        "(Ljava/lang/String;)V",
        "description",
        "setDescription",
        "Lorg/wikipedia/views/FaceAndColorDetectImageView;",
        "getImageView",
        "()Lorg/wikipedia/views/FaceAndColorDetectImageView;",
        "",
        "Landroid/util/Pair;",
        "Landroid/view/View;",
        "getSharedElements",
        "()[Landroid/util/Pair;",
        "Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;",
        "binding",
        "Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;",
        "getBinding",
        "()Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const p2, 0x7f0c05fd

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    const p1, 0x7f090073

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    move-object v2, p2

    .line 25
    check-cast v2, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const p1, 0x7f090076

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    const p1, 0x7f090077

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Landroid/widget/TextView;

    .line 46
    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    const p1, 0x7f090078

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    move-object v4, p2

    .line 57
    check-cast v4, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 58
    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    const p1, 0x7f090079

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    move-object v5, p2

    .line 69
    check-cast v5, Landroid/widget/FrameLayout;

    .line 70
    .line 71
    if-eqz v5, :cond_0

    .line 72
    .line 73
    const p1, 0x7f090080

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    move-object v6, p2

    .line 81
    check-cast v6, Landroid/widget/TextView;

    .line 82
    .line 83
    if-eqz v6, :cond_0

    .line 84
    .line 85
    new-instance v0, Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;

    .line 86
    .line 87
    move-object v1, p0

    .line 88
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;-><init>(Lorg/wikipedia/views/WikiArticleCardView;Lorg/wikipedia/views/GoneIfEmptyTextView;Landroid/view/View;Lorg/wikipedia/views/FaceAndColorDetectImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, v1, Lorg/wikipedia/views/WikiArticleCardView;->binding:Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;

    .line 92
    .line 93
    return-void

    .line 94
    :cond_0
    move-object v1, p0

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string p1, "Missing required view with ID: "

    .line 104
    .line 105
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 p0, 0x0

    .line 113
    throw p0
.end method


# virtual methods
.method public final getBinding()Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/WikiArticleCardView;->binding:Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getImageView()Lorg/wikipedia/views/FaceAndColorDetectImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/WikiArticleCardView;->binding:Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;->articleImage:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getSharedElements()[Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/views/WikiArticleCardView;->binding:Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;->articleTitle:Landroid/widget/TextView;

    .line 11
    .line 12
    iget-object v2, p0, Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;->articleDescription:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;->articleImage:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    new-array v3, v3, [Landroid/view/View;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v1, v3, v4

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    aput-object v2, v3, v1

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    aput-object p0, v3, v1

    .line 27
    .line 28
    invoke-static {v0, v3}, Lokhttp3/Cookie$Companion;->getSharedElements(Landroid/content/Context;[Landroid/view/View;)[Landroid/util/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/WikiArticleCardView;->binding:Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;->articleDescription:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/views/WikiArticleCardView;->binding:Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;->articleTitle:Landroid/widget/TextView;

    .line 7
    .line 8
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 9
    .line 10
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
