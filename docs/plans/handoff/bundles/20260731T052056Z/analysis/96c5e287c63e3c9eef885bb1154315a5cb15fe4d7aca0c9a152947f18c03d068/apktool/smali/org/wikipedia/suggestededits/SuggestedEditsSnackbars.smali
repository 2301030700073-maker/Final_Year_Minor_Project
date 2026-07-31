.class public final Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final snackbarSessionMap:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->snackbarSessionMap:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public static getMapKey(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, "."

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static show(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;ZLjava/lang/String;ZLorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;)V
    .locals 4

    .line 1
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz p2, :cond_7

    .line 8
    .line 9
    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq p1, p2, :cond_0

    .line 14
    .line 15
    sget-object v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 16
    .line 17
    if-ne p1, v3, :cond_2

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-le v3, v2, :cond_2

    .line 34
    .line 35
    if-ne p1, p2, :cond_1

    .line 36
    .line 37
    const p2, 0x7f120121

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const p2, 0x7f12011e

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p3}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    new-array v0, v2, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object p3, v0, v1

    .line 55
    .line 56
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    goto :goto_3

    .line 61
    :cond_2
    if-nez p1, :cond_3

    .line 62
    .line 63
    const/4 p2, -0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    sget-object p2, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    aget p2, p2, p3

    .line 72
    .line 73
    :goto_1
    if-eq p2, v2, :cond_5

    .line 74
    .line 75
    const/4 p3, 0x2

    .line 76
    if-eq p2, p3, :cond_4

    .line 77
    .line 78
    const p2, 0x7f12011f

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    const p2, 0x7f120120

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    const p2, 0x7f120122

    .line 87
    .line 88
    .line 89
    :goto_2
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    const/16 p3, 0xc

    .line 97
    .line 98
    invoke-static {p0, p2, v1, p3}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    if-eqz p4, :cond_6

    .line 103
    .line 104
    if-eqz p5, :cond_6

    .line 105
    .line 106
    new-instance p3, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    const/16 p4, 0x18

    .line 109
    .line 110
    invoke-direct {p3, p4, p5}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    const p4, 0x7f120889

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p4, p3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    new-instance p3, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;

    .line 120
    .line 121
    invoke-direct {p3, p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;-><init>(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_7
    invoke-static {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->showFeedLinkSnackbar(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public static synthetic show$default(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Ljava/lang/String;I)V
    .locals 6

    .line 1
    and-int/lit8 p3, p3, 0x8

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    move-object v3, p2

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->show(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;ZLjava/lang/String;ZLorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static showFeedLinkSnackbar(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-static {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->getMapKey(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v3, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->snackbarSessionMap:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-object v4, v1

    .line 24
    :cond_0
    check-cast v4, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v4, 0x2

    .line 31
    if-ge v2, v4, :cond_2

    .line 32
    .line 33
    const v2, 0x7f120123

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const/16 v5, 0xc

    .line 44
    .line 45
    invoke-static {p0, v2, v0, v5}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 50
    .line 51
    const/16 v5, 0x19

    .line 52
    .line 53
    invoke-direct {v2, v5, p0, p1}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const v5, 0x7f120916

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v5, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lorg/wikipedia/talk/TalkTopicActivity$showUndoSnackbar$2;

    .line 63
    .line 64
    invoke-direct {v2, p0, v4}, Lorg/wikipedia/talk/TalkTopicActivity$showUndoSnackbar$2;-><init>(Landroid/app/Activity;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 71
    .line 72
    .line 73
    invoke-static {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->getMapKey(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->getMapKey(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_1

    .line 86
    .line 87
    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    move-object v1, p1

    .line 92
    :goto_0
    check-cast v1, Ljava/lang/Number;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    add-int/lit8 p0, p0, 0x1

    .line 99
    .line 100
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_2
    invoke-static {p0}, Lokhttp3/Headers$Companion;->maybeShowTempAccountWelcome(Landroid/app/Activity;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method
