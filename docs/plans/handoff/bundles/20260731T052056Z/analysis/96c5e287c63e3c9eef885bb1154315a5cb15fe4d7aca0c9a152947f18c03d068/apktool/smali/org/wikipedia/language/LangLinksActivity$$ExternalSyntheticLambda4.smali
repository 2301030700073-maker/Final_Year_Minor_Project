.class public final synthetic Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/language/LangLinksActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/language/LangLinksActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/language/LangLinksActivity;

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
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/language/LangLinksActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    sget v0, Lorg/wikipedia/language/LangLinksActivity;->$r8$clinit:I

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lorg/wikipedia/language/LangLinksActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 18
    .line 19
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lorg/wikipedia/language/LangLinksViewModel;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lorg/wikipedia/language/LangLinksViewModel;->updateLanguageItems(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :pswitch_0
    check-cast p1, Lorg/wikipedia/language/LangLinksItem;

    .line 30
    .line 31
    sget v0, Lorg/wikipedia/language/LangLinksActivity;->$r8$clinit:I

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object v0, p1, Lorg/wikipedia/language/LangLinksItem;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_0
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 43
    .line 44
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object p1, p1, Lorg/wikipedia/language/LangLinksItem;->languageCode:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v3, v2, Lorg/wikipedia/language/AppLanguageState;->_mruLanguageCodes:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-virtual {v3, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    sget-object p1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    const/16 v8, 0x3e

    .line 75
    .line 76
    const-string v4, ","

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    invoke-static/range {v3 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const v2, 0x7f12061c

    .line 85
    .line 86
    .line 87
    invoke-static {v2, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Lorg/wikipedia/history/HistoryEntry;

    .line 91
    .line 92
    const/4 v2, 0x6

    .line 93
    invoke-direct {p1, v2, v0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lorg/wikipedia/language/LangLinksActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 97
    .line 98
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lorg/wikipedia/language/LangLinksViewModel;

    .line 103
    .line 104
    iget-wide v2, v2, Lorg/wikipedia/language/LangLinksViewModel;->historyEntryId:J

    .line 105
    .line 106
    iput-wide v2, p1, Lorg/wikipedia/history/HistoryEntry;->prevId:J

    .line 107
    .line 108
    new-instance v2, Landroid/content/Intent;

    .line 109
    .line 110
    const-string v3, "org.wikipedia.load_in_current_tab"

    .line 111
    .line 112
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-class v3, Lorg/wikipedia/page/PageActivity;

    .line 116
    .line 117
    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const-string v3, "org.wikipedia.history.historyentry"

    .line 122
    .line 123
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string v2, "title"

    .line 128
    .line 129
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v2, Landroidx/paging/HintHandler;

    .line 152
    .line 153
    invoke-direct {v2, v0}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 157
    .line 158
    const/16 v3, 0x23

    .line 159
    .line 160
    if-lt v0, v3, :cond_1

    .line 161
    .line 162
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 163
    .line 164
    invoke-direct {v0, p1, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_1
    const/16 v3, 0x1e

    .line 169
    .line 170
    if-lt v0, v3, :cond_2

    .line 171
    .line 172
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 173
    .line 174
    invoke-direct {v0, p1, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_2
    const/16 v3, 0x1a

    .line 179
    .line 180
    if-lt v0, v3, :cond_3

    .line 181
    .line 182
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 183
    .line 184
    invoke-direct {v0, p1, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_3
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 189
    .line 190
    invoke-direct {v0, p1, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 191
    .line 192
    .line 193
    :goto_0
    invoke-virtual {v0}, Lcoil3/util/UtilsKt;->hide()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 197
    .line 198
    .line 199
    :goto_1
    return-object v1

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
