.class public final Lorg/wikipedia/views/MessageCardView;
.super Lorg/wikipedia/views/WikiCardView;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u0015\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u000cJ\u0015\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0011\u0010\u000cJ\u0015\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u000cJ\u0019\u0010\u0013\u001a\u00020\n2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0013\u0010\u000cJ\u0015\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0018\u0010\u000cR\u0017\u0010\u001a\u001a\u00020\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lorg/wikipedia/views/MessageCardView;",
        "Lorg/wikipedia/views/WikiCardView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "title",
        "",
        "setMessageTitle",
        "(Ljava/lang/String;)V",
        "text",
        "setMessageText",
        "message",
        "setOnboarding",
        "setPaused",
        "setDisabled",
        "setIPBlocked",
        "Landroid/view/View$OnClickListener;",
        "onClickListener",
        "setRequiredLogin",
        "(Landroid/view/View$OnClickListener;)V",
        "setMessageLabel",
        "Lorg/wikipedia/databinding/ViewMessageCardBinding;",
        "binding",
        "Lorg/wikipedia/databinding/ViewMessageCardBinding;",
        "getBinding",
        "()Lorg/wikipedia/databinding/ViewMessageCardBinding;",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/views/WikiCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const p2, 0x7f0c05d6

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    const p2, 0x7f0900bc

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v2, v0

    .line 30
    check-cast v2, Lcom/google/android/flexbox/FlexboxLayout;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const p2, 0x7f09016c

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object v3, v0

    .line 42
    check-cast v3, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    const p2, 0x7f0902de

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v4, v0

    .line 54
    check-cast v4, Landroid/widget/ImageView;

    .line 55
    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    const p2, 0x7f090409

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    move-object v5, v0

    .line 66
    check-cast v5, Lcom/google/android/material/chip/Chip;

    .line 67
    .line 68
    if-eqz v5, :cond_0

    .line 69
    .line 70
    const p2, 0x7f09040b

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    move-object v6, v0

    .line 78
    check-cast v6, Landroid/widget/TextView;

    .line 79
    .line 80
    if-eqz v6, :cond_0

    .line 81
    .line 82
    const p2, 0x7f09040c

    .line 83
    .line 84
    .line 85
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    move-object v7, v0

    .line 90
    check-cast v7, Landroid/widget/TextView;

    .line 91
    .line 92
    if-eqz v7, :cond_0

    .line 93
    .line 94
    const p2, 0x7f09044f

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    move-object v8, v0

    .line 102
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 103
    .line 104
    if-eqz v8, :cond_0

    .line 105
    .line 106
    const p2, 0x7f090508

    .line 107
    .line 108
    .line 109
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move-object v9, v0

    .line 114
    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    .line 115
    .line 116
    if-eqz v9, :cond_0

    .line 117
    .line 118
    new-instance v1, Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 119
    .line 120
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 121
    .line 122
    invoke-direct/range {v1 .. v9}, Lorg/wikipedia/databinding/ViewMessageCardBinding;-><init>(Lcom/google/android/flexbox/FlexboxLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/google/android/material/chip/Chip;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;)V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Lorg/wikipedia/views/MessageCardView;->binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 126
    .line 127
    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const-string p1, "Missing required view with ID: "

    .line 137
    .line 138
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const/4 p0, 0x0

    .line 146
    throw p0
.end method


# virtual methods
.method public final getBinding()Lorg/wikipedia/databinding/ViewMessageCardBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/MessageCardView;->binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setDefaultState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/MessageCardView;->binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->imageView:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageTitleView:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->buttonsContainer:Lcom/google/android/flexbox/FlexboxLayout;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->positiveButton:Lcom/google/android/material/button/MaterialButton;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const v3, 0x7f1208e9

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    const v2, 0x7f0801c3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lorg/wikipedia/views/MessageCardView$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/views/MessageCardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/MessageCardView;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->containerClickArea:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    new-instance v1, Lorg/wikipedia/views/MessageCardView$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/4 v2, 0x3

    .line 55
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/views/MessageCardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/MessageCardView;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final setDisabled(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/views/MessageCardView;->setDefaultState()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/wikipedia/views/MessageCardView;->binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 8
    .line 9
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageTitleView:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const v2, 0x7f1208a1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageTextView:Landroid/widget/TextView;

    .line 26
    .line 27
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 28
    .line 29
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->imageView:Landroid/widget/ImageView;

    .line 37
    .line 38
    const p1, 0x7f0801ef

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setIPBlocked(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/views/MessageCardView;->setDefaultState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/views/MessageCardView;->binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 5
    .line 6
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->imageView:Landroid/widget/ImageView;

    .line 7
    .line 8
    iget-object v2, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageTextView:Landroid/widget/TextView;

    .line 9
    .line 10
    iget-object v3, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageTitleView:Landroid/widget/TextView;

    .line 11
    .line 12
    const/16 v4, 0x8

    .line 13
    .line 14
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 31
    .line 32
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    sget p1, Lorg/wikipedia/page/LinkMovementMethodExt;->$r8$clinit:I

    .line 40
    .line 41
    invoke-static {}, Lokio/Path$Companion;->getExternalLinkMovementMethod$default()Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const v4, 0x7f1208e5

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const v3, 0x7f1208e4

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    iget-object p1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->positiveButton:Lcom/google/android/material/button/MaterialButton;

    .line 81
    .line 82
    new-instance v0, Lorg/wikipedia/views/MessageCardView$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/views/MessageCardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/MessageCardView;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Lorg/wikipedia/views/MessageCardView$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    invoke-direct {p1, p0, v0}, Lorg/wikipedia/views/MessageCardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/MessageCardView;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final setImageResource(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/MessageCardView;->binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->imageView:Landroid/widget/ImageView;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->imageView:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->imageView:Landroid/widget/ImageView;

    .line 18
    .line 19
    const/16 p1, 0x8

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final setMessageLabel(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/MessageCardView;->binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageLabel:Lcom/google/android/material/chip/Chip;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageLabel:Lcom/google/android/material/chip/Chip;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 22
    .line 23
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setMessageText(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/views/MessageCardView;->binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageTextView:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setMessageTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/views/MessageCardView;->binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageTitleView:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setNegativeButton(ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/MessageCardView;->binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->negativeButton:Lcom/google/android/material/button/MaterialButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->negativeButton:Lcom/google/android/material/button/MaterialButton;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setOnboarding(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0801f0

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/views/MessageCardView;->setImageResource(IZ)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/views/MessageCardView;->binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageTitleView:Landroid/widget/TextView;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageTextView:Landroid/widget/TextView;

    .line 21
    .line 22
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->buttonsContainer:Lcom/google/android/flexbox/FlexboxLayout;

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final setPaused(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/views/MessageCardView;->setDefaultState()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/wikipedia/views/MessageCardView;->binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 8
    .line 9
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageTitleView:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const v2, 0x7f1208f1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageTextView:Landroid/widget/TextView;

    .line 26
    .line 27
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 28
    .line 29
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->imageView:Landroid/widget/ImageView;

    .line 37
    .line 38
    const p1, 0x7f0801f1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setPositiveButton(ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/MessageCardView;->binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->positiveButton:Lcom/google/android/material/button/MaterialButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->positiveButton:Lcom/google/android/material/button/MaterialButton;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->containerClickArea:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setRequiredLogin(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/views/MessageCardView;->binding:Lorg/wikipedia/databinding/ViewMessageCardBinding;

    .line 5
    .line 6
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->imageView:Landroid/widget/ImageView;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageTitleView:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->buttonsContainer:Lcom/google/android/flexbox/FlexboxLayout;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const v3, 0x7f1208b1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->messageTextView:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const v3, 0x7f1208b0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->imageView:Landroid/widget/ImageView;

    .line 53
    .line 54
    const v2, 0x7f0801dc

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->positiveButton:Lcom/google/android/material/button/MaterialButton;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const v2, 0x7f1208af

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, v0, Lorg/wikipedia/databinding/ViewMessageCardBinding;->containerClickArea:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
