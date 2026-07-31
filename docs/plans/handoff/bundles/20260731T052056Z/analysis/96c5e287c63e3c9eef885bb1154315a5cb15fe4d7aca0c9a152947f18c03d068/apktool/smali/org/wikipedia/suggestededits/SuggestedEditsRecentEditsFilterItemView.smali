.class public final Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lretrofit2/Retrofit;

.field public callback:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView$Callback;

.field public filter:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$Filter;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f0c0317

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v1, 0x7f09055c

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v5, v2

    .line 23
    check-cast v5, Landroid/widget/ImageView;

    .line 24
    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    const v1, 0x7f09055d

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v6, v2

    .line 35
    check-cast v6, Landroid/widget/TextView;

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    const v1, 0x7f09055e

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    move-object v7, v2

    .line 47
    check-cast v7, Lorg/wikipedia/views/LangCodeView;

    .line 48
    .line 49
    if-eqz v7, :cond_0

    .line 50
    .line 51
    const v1, 0x7f09055f

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    move-object v8, v2

    .line 59
    check-cast v8, Landroid/widget/TextView;

    .line 60
    .line 61
    if-eqz v8, :cond_0

    .line 62
    .line 63
    const v1, 0x7f090560

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    move-object v9, v2

    .line 71
    check-cast v9, Landroid/widget/ImageView;

    .line 72
    .line 73
    if-eqz v9, :cond_0

    .line 74
    .line 75
    new-instance v3, Lretrofit2/Retrofit;

    .line 76
    .line 77
    move-object v4, p0

    .line 78
    invoke-direct/range {v3 .. v9}, Lretrofit2/Retrofit;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    iput-object v3, v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;->binding:Lretrofit2/Retrofit;

    .line 82
    .line 83
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    .line 84
    .line 85
    const/4 v0, -0x1

    .line 86
    const/4 v1, -0x2

    .line 87
    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    const p0, 0x7f0404e7

    .line 94
    .line 95
    .line 96
    invoke-static {p1, p0}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    invoke-virtual {v4, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 101
    .line 102
    .line 103
    const p0, 0x7f040554

    .line 104
    .line 105
    .line 106
    invoke-static {p1, p0}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    invoke-static {p1, p0}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v4, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    .line 116
    .line 117
    new-instance p0, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 118
    .line 119
    const/16 p1, 0x17

    .line 120
    .line 121
    invoke-direct {p0, p1, v4}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_0
    move-object v4, p0

    .line 129
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    const-string p1, "Missing required view with ID: "

    .line 138
    .line 139
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;->callback:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCallback(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;->callback:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final setContents(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$Filter;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;->filter:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$Filter;

    .line 5
    .line 6
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 7
    .line 8
    iget-object v1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$Filter;->filterCode:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;->find(Ljava/lang/String;)Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getTitle()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getDescription()Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;->binding:Lretrofit2/Retrofit;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v5, v3, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v0, v4

    .line 60
    :goto_0
    iget-object v5, v3, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v5, Landroid/widget/TextView;

    .line 63
    .line 64
    iget-object v6, v3, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v6, Landroid/widget/ImageView;

    .line 67
    .line 68
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 72
    .line 73
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsIncludedTypeCodes()Ljava/util/Collection;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    move v2, v4

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const/4 v2, 0x4

    .line 86
    :goto_1
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    iget-boolean p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$Filter;->isCheckBox:Z

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    const p1, 0x7f08013a

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    const p1, 0x7f080125

    .line 98
    .line 99
    .line 100
    :goto_2
    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    .line 102
    .line 103
    iget-object p1, v3, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Landroid/widget/TextView;

    .line 106
    .line 107
    const/16 v2, 0x8

    .line 108
    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    move v4, v2

    .line 113
    :goto_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const p1, 0x7f120575

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    iget-object p0, v3, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p0, Lorg/wikipedia/views/LangCodeView;

    .line 133
    .line 134
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    iget-object p0, v3, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p0, Landroid/widget/ImageView;

    .line 140
    .line 141
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final setSingleLabel(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const v1, 0x7f040520

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;->binding:Lretrofit2/Retrofit;

    .line 19
    .line 20
    iget-object v1, p0, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lorg/wikipedia/views/LangCodeView;

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Landroid/widget/ImageView;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    .line 39
    .line 40
    const v4, 0x7f0801a4

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    const-string p1, "sans-serif-medium"

    .line 64
    .line 65
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x2

    .line 73
    const/high16 v0, 0x41800000    # 16.0f

    .line 74
    .line 75
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
