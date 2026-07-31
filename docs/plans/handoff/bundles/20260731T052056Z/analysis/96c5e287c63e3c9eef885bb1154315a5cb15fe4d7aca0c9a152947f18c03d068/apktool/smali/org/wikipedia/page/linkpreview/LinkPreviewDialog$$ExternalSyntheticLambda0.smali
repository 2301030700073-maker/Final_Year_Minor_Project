.class public final synthetic Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v3, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 14
    .line 15
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->requestStubArticleEditLauncher:Landroidx/fragment/app/Fragment$10;

    .line 16
    .line 17
    sget v0, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->LINK_PREVIEW_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/16 v6, 0x1c0

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;ILjava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    new-instance p1, Lokhttp3/Request$Builder;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object v2, v2, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewOverflowButton:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-direct {p1, v1, v2, v0}, Lokhttp3/Request$Builder;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Landroidx/appcompat/view/SupportMenuInflater;

    .line 56
    .line 57
    invoke-direct {v2, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 63
    .line 64
    const v3, 0x7f0e0013

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/view/SupportMenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    .line 69
    .line 70
    const v2, 0x7f0903bb

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-boolean v3, v3, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->fromPlaces:Z

    .line 82
    .line 83
    const/4 v4, 0x1

    .line 84
    xor-int/2addr v3, v4

    .line 85
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 86
    .line 87
    .line 88
    const v2, 0x7f0903bf

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-boolean v3, v3, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->fromPlaces:Z

    .line 100
    .line 101
    xor-int/2addr v3, v4

    .line 102
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 103
    .line 104
    .line 105
    const v2, 0x7f0903c1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    iget-boolean v5, v5, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->fromPlaces:Z

    .line 117
    .line 118
    if-eqz v5, :cond_0

    .line 119
    .line 120
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_0

    .line 125
    .line 126
    move v5, v4

    .line 127
    goto :goto_0

    .line 128
    :cond_0
    move v5, v0

    .line 129
    :goto_0
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget-boolean v3, v3, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->isWatched:Z

    .line 141
    .line 142
    if-eqz v3, :cond_1

    .line 143
    .line 144
    const v3, 0x7f120400

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_1
    const v3, 0x7f120403

    .line 149
    .line 150
    .line 151
    :goto_1
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 156
    .line 157
    .line 158
    const v2, 0x7f0903be

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    iget-boolean v3, v3, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->fromPlaces:Z

    .line 170
    .line 171
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 172
    .line 173
    .line 174
    const v2, 0x7f0903c0

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    iget-boolean v3, v3, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->fromPlaces:Z

    .line 186
    .line 187
    if-nez v3, :cond_2

    .line 188
    .line 189
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    iget-object v3, v3, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->location:Landroid/location/Location;

    .line 194
    .line 195
    if-eqz v3, :cond_2

    .line 196
    .line 197
    move v0, v4

    .line 198
    :cond_2
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 199
    .line 200
    .line 201
    const v0, 0x7f0903bd

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    iget-boolean v1, v1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->fromPlaces:Z

    .line 213
    .line 214
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 215
    .line 216
    .line 217
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->menuListener:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;

    .line 218
    .line 219
    iput-object p0, p1, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 220
    .line 221
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->show()V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->goToLinkedPage(Z)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
