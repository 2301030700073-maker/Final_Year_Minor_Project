.class public final Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;
.super Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

.field public final binding:Lokhttp3/Request$Builder;

.field public dialog:Landroidx/appcompat/app/AlertDialog;

.field public final pageTitle:Lorg/wikipedia/page/PageTitle;

.field public reported:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    iput-object p3, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 15
    .line 16
    iput-object p4, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const p4, 0x7f0c0178

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p3, p4, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    const p4, 0x7f0900c6

    .line 31
    .line 32
    .line 33
    invoke-static {p3, p4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v4, v0

    .line 38
    check-cast v4, Landroid/widget/CheckBox;

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    const p4, 0x7f0901d1

    .line 43
    .line 44
    .line 45
    invoke-static {p3, p4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    move-object v5, v0

    .line 50
    check-cast v5, Landroid/widget/CheckBox;

    .line 51
    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    const p4, 0x7f0902e4

    .line 55
    .line 56
    .line 57
    invoke-static {p3, p4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v6, v0

    .line 62
    check-cast v6, Landroid/widget/CheckBox;

    .line 63
    .line 64
    if-eqz v6, :cond_0

    .line 65
    .line 66
    const p4, 0x7f090461

    .line 67
    .line 68
    .line 69
    invoke-static {p3, p4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v7, v0

    .line 74
    check-cast v7, Landroid/widget/CheckBox;

    .line 75
    .line 76
    if-eqz v7, :cond_0

    .line 77
    .line 78
    const p4, 0x7f09063e

    .line 79
    .line 80
    .line 81
    invoke-static {p3, p4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v8, v0

    .line 86
    check-cast v8, Lcom/google/android/material/textfield/TextInputLayout;

    .line 87
    .line 88
    if-eqz v8, :cond_0

    .line 89
    .line 90
    const p4, 0x7f09063f

    .line 91
    .line 92
    .line 93
    invoke-static {p3, p4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 98
    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    new-instance v2, Lokhttp3/Request$Builder;

    .line 102
    .line 103
    move-object v3, p3

    .line 104
    check-cast v3, Landroid/widget/ScrollView;

    .line 105
    .line 106
    invoke-direct/range {v2 .. v8}, Lokhttp3/Request$Builder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 107
    .line 108
    .line 109
    iput-object v2, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->binding:Lokhttp3/Request$Builder;

    .line 110
    .line 111
    iget-object p3, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p3, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 114
    .line 115
    iput-object v3, p3, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 116
    .line 117
    iget-object p3, p3, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 118
    .line 119
    const p4, 0x7f120901

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;

    .line 127
    .line 128
    const/4 v5, 0x1

    .line 129
    move-object v1, p0

    .line 130
    move-object v3, p1

    .line 131
    move-object v2, p2

    .line 132
    move-object v4, p5

    .line 133
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, p3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    iget-object p0, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 142
    .line 143
    iget-object p0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 144
    .line 145
    const p1, 0x7f1209ac

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    new-instance p1, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 153
    .line 154
    const/16 p2, 0x11

    .line 155
    .line 156
    invoke-direct {p1, p2, v1}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    new-instance p0, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;

    .line 163
    .line 164
    const/4 p1, 0x6

    .line 165
    invoke-direct {p0, p1, v1}, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v8, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    new-instance p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;

    .line 172
    .line 173
    const/4 p1, 0x3

    .line 174
    invoke-direct {p0, p1, v1}, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 180
    .line 181
    iput-object p0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 182
    .line 183
    return-void

    .line 184
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    const-string p1, "Missing required view with ID: "

    .line 193
    .line 194
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v1
.end method


# virtual methods
.method public final getReportReasons()Ljava/util/ArrayList;
    .locals 7

    .line 1
    iget-object v0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->binding:Lokhttp3/Request$Builder;

    .line 11
    .line 12
    iget-object v2, p0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroid/widget/CheckBox;

    .line 15
    .line 16
    iget-object v3, p0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Landroid/widget/CheckBox;

    .line 19
    .line 20
    iget-object v4, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v4, Landroid/widget/CheckBox;

    .line 23
    .line 24
    iget-object v5, p0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v5, Landroid/widget/CheckBox;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object v2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v6, p0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v6, Landroid/widget/CheckBox;

    .line 43
    .line 44
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    iget-object v2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    iget-object v2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_3

    .line 115
    .line 116
    iget-object v0, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :cond_3
    iget-object p0, p0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    if-eqz p0, :cond_4

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    if-eqz p0, :cond_4

    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    goto :goto_0

    .line 157
    :cond_4
    const/4 p0, 0x0

    .line 158
    :goto_0
    if-eqz p0, :cond_6

    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_5

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_5
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :cond_6
    :goto_1
    return-object v1
.end method

.method public final show()Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 1
    invoke-super {p0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 6
    .line 7
    return-object v0
.end method
