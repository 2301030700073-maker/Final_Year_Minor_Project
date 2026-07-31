.class public final Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;
.super Landroid/view/ActionProvider;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final backLinksList:Ljava/util/ArrayList;

.field public final binding:Lokhttp3/Request$Builder;

.field public currentPos:I

.field public final referenceAnchor:Ljava/lang/String;

.field public final referenceText:Ljava/lang/String;

.field public final synthetic this$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->referenceAnchor:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->referenceText:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->backLinksList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const p2, 0x7f0c02e5

    .line 17
    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    const/4 p4, 0x0

    .line 21
    invoke-virtual {p1, p2, p4, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    move-object v1, p1

    .line 26
    check-cast v1, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    const p2, 0x7f090252

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    move-object v2, p3

    .line 36
    check-cast v2, Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    const p2, 0x7f090253

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    move-object v3, p3

    .line 48
    check-cast v3, Landroid/widget/ImageView;

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    const p2, 0x7f09056b

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    move-object v4, p3

    .line 60
    check-cast v4, Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz v4, :cond_0

    .line 63
    .line 64
    const p2, 0x7f09056e

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    move-object v5, p3

    .line 72
    check-cast v5, Landroid/widget/TextView;

    .line 73
    .line 74
    if-eqz v5, :cond_0

    .line 75
    .line 76
    new-instance v0, Lokhttp3/Request$Builder;

    .line 77
    .line 78
    invoke-direct/range {v0 .. v5}, Lokhttp3/Request$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->binding:Lokhttp3/Request$Builder;

    .line 82
    .line 83
    return-void

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string p1, "Missing required view with ID: "

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p4
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->binding:Lokhttp3/Request$Builder;

    .line 5
    .line 6
    iget-object v1, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->backLinksList:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_5

    .line 23
    .line 24
    iget p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->currentPos:I

    .line 25
    .line 26
    add-int/lit8 p1, p1, -0x1

    .line 27
    .line 28
    iput p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->currentPos:I

    .line 29
    .line 30
    if-gez p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    add-int/lit8 p1, p1, -0x1

    .line 37
    .line 38
    :cond_0
    iput p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->currentPos:I

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->scrollTo(I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v1, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_5

    .line 59
    .line 60
    iget p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->currentPos:I

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x1

    .line 63
    .line 64
    iput p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->currentPos:I

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-lt p1, v0, :cond_2

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->currentPos:I

    .line 75
    .line 76
    :goto_0
    iput p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->currentPos:I

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->scrollTo(I)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    iget-object v0, v0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 93
    .line 94
    iget-object v0, p1, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->referenceAnchor:Ljava/lang/String;

    .line 99
    .line 100
    const/16 v1, 0x23

    .line 101
    .line 102
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string/jumbo v2, "var el = document.getElementById(\'"

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p0, "\');window.scrollTo(0, el.offsetTop - (screen.height / 2));setTimeout(function(){ el.style.backgroundColor=\'#fc3\';    setTimeout(function(){ el.style.backgroundColor=null; }, 500);}, 250);"

    .line 118
    .line 119
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {v0, p0}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    if-eqz p0, :cond_5

    .line 134
    .line 135
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 136
    .line 137
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->onPageCloseActionMode()V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_4
    const-string p0, "bridge"

    .line 142
    .line 143
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/4 p0, 0x0

    .line 147
    throw p0

    .line 148
    :cond_5
    return-void
.end method

.method public final onCreateActionView()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->binding:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    iget-object v1, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 25
    .line 26
    const v3, 0x7f12081f

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " "

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->referenceText:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->backLinksList:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->scrollTo(I)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object p0, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p0, Landroid/widget/LinearLayout;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    return-object p0
.end method

.method public final overridesItemVisibility()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final scrollTo(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->backLinksList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->binding:Lokhttp3/Request$Builder;

    .line 12
    .line 13
    iget-object v2, v2, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Landroid/widget/TextView;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    add-int/2addr p1, v3

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    move v0, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v4, 0x2

    .line 41
    new-array v4, v4, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object p1, v4, v5

    .line 44
    .line 45
    aput-object v0, v4, v3

    .line 46
    .line 47
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 48
    .line 49
    const p1, 0x7f120243

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    const-string p1, "\""

    .line 64
    .line 65
    const-string v0, "\\\""

    .line 66
    .line 67
    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "pcs.c1.Page.prepareForScrollToAnchor(\""

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, "\", { highlight: true } )"

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    const-string p0, "bridge"

    .line 95
    .line 96
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 p0, 0x0

    .line 100
    throw p0

    .line 101
    :cond_2
    return-void
.end method
