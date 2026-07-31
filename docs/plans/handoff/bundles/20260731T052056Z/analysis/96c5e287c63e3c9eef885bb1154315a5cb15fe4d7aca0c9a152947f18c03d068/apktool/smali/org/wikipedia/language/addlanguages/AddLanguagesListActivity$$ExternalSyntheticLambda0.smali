.class public final synthetic Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "language_searched"

    .line 5
    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput-boolean p1, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->isLanguageSearched:Z

    .line 20
    .line 21
    return-object v3

    .line 22
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    sget v0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->$r8$clinit:I

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 30
    .line 31
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lorg/wikipedia/language/AppLanguageState;->addAppLanguageCode(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 53
    .line 54
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v0, "add_language_interactions"

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    iget-boolean v0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->isLanguageSearched:Z

    .line 64
    .line 65
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 72
    .line 73
    .line 74
    return-object v3

    .line 75
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 76
    .line 77
    sget v0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->$r8$clinit:I

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 83
    .line 84
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;

    .line 89
    .line 90
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v1, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 95
    .line 96
    new-instance v2, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 97
    .line 98
    const/16 v4, 0x12

    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    invoke-direct {v2, p0, p1, v5, v4}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 102
    .line 103
    .line 104
    const/4 p0, 0x2

    .line 105
    invoke-static {v0, v1, v5, v2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 106
    .line 107
    .line 108
    return-object v3

    .line 109
    :pswitch_2
    check-cast p1, Landroidx/fragment/app/FragmentManager$1;

    .line 110
    .line 111
    sget v0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->$r8$clinit:I

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-instance v4, Landroidx/paging/HintHandler;

    .line 128
    .line 129
    invoke-direct {v4, v0}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 130
    .line 131
    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 133
    .line 134
    const/16 v5, 0x23

    .line 135
    .line 136
    if-lt v0, v5, :cond_1

    .line 137
    .line 138
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 139
    .line 140
    invoke-direct {v0, p1, v4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    const/16 v5, 0x1e

    .line 145
    .line 146
    if-lt v0, v5, :cond_2

    .line 147
    .line 148
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 149
    .line 150
    invoke-direct {v0, p1, v4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_2
    const/16 v5, 0x1a

    .line 155
    .line 156
    if-lt v0, v5, :cond_3

    .line 157
    .line 158
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 159
    .line 160
    invoke-direct {v0, p1, v4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_3
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 165
    .line 166
    invoke-direct {v0, p1, v4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 167
    .line 168
    .line 169
    :goto_0
    invoke-virtual {v0}, Lcoil3/util/UtilsKt;->hide()V

    .line 170
    .line 171
    .line 172
    new-instance p1, Landroid/content/Intent;

    .line 173
    .line 174
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 175
    .line 176
    .line 177
    iget-boolean v0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->isLanguageSearched:Z

    .line 178
    .line 179
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 186
    .line 187
    .line 188
    return-object v3

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
