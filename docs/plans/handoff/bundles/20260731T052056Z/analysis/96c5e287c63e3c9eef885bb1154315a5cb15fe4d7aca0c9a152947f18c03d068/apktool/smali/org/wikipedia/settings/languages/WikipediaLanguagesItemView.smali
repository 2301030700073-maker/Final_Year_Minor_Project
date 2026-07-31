.class public final Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public binding:Lretrofit2/Retrofit;

.field public callback:Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;

.field public position:I


# virtual methods
.method public final getCallback()Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->callback:Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCallback(Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->callback:Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final setCheckBoxChecked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->binding:Lretrofit2/Retrofit;

    .line 2
    .line 3
    iget-object v0, v0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/widget/CheckBox;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->updateBackgroundColor()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setCheckBoxEnabled(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->binding:Lretrofit2/Retrofit;

    .line 2
    .line 3
    iget-object v1, v0, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/widget/TextView;

    .line 6
    .line 7
    iget-object v0, v0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/widget/CheckBox;

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    move v4, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v4, v3

    .line 19
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    move v2, v3

    .line 25
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    if-nez p1, :cond_4

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v0, Landroid/util/TypedValue;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 v1, 0x1

    .line 50
    const v2, 0x7f0404e7

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v0, 0x0

    .line 61
    :goto_1
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget p1, v0, Landroid/util/TypedValue;->data:I

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    const-string p0, "Attribute not found; ID=2130969831"

    .line 70
    .line 71
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    return-void
.end method

.method public final setDragHandleEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->binding:Lretrofit2/Retrofit;

    .line 2
    .line 3
    iget-object p0, p0, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/ImageView;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x8

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setDragHandleTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->binding:Lretrofit2/Retrofit;

    .line 2
    .line 3
    iget-object p0, p0, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final updateBackgroundColor()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->binding:Lretrofit2/Retrofit;

    .line 2
    .line 3
    iget-object v0, v0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/widget/CheckBox;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v4, 0x7f040061

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    move-object v1, v3

    .line 37
    :cond_0
    if-eqz v1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string p0, "Attribute not found; ID=2130968673"

    .line 41
    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const v4, 0x7f0404e7

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    move-object v1, v3

    .line 68
    :cond_3
    if-eqz v1, :cond_4

    .line 69
    .line 70
    :goto_0
    iget v0, v1, Landroid/util/TypedValue;->data:I

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    const-string p0, "Attribute not found; ID=2130969831"

    .line 77
    .line 78
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
