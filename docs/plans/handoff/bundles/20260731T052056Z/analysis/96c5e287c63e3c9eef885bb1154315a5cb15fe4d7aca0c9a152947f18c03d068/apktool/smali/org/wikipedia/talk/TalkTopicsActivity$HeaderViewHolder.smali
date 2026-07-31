.class public final Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lretrofit2/Retrofit;

.field public final synthetic this$0:Lorg/wikipedia/talk/TalkTopicsActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/talk/TalkTopicsActivity;Lretrofit2/Retrofit;)V
    .locals 5

    .line 1
    iget-object v0, p2, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 6
    .line 7
    iget-object v1, p2, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/widget/LinearLayout;

    .line 10
    .line 11
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder;->binding:Lretrofit2/Retrofit;

    .line 15
    .line 16
    iget-object p2, p2, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Lorg/wikipedia/views/WikiCardView;

    .line 19
    .line 20
    new-instance v1, Landroid/util/TypedValue;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const v3, 0x7f040061

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v1, v3

    .line 42
    :goto_0
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 45
    .line 46
    invoke-virtual {p2, v1}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/4 v2, 0x4

    .line 52
    invoke-direct {v1, p1, v2}, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 59
    .line 60
    const/16 v1, 0x1b

    .line 61
    .line 62
    invoke-direct {p2, v1, p1, p0}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    new-array p0, v4, [Landroid/view/View;

    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    aput-object v0, p0, p1

    .line 72
    .line 73
    aget-object p0, p0, p1

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    const-string p0, "Attribute not found; ID=2130968673"

    .line 84
    .line 85
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v3
.end method
