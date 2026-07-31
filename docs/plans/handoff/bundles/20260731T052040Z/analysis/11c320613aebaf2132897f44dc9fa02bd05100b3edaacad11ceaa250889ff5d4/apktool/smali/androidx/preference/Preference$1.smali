.class public final Landroidx/preference/Preference$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/preference/Preference$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

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
    .locals 4

    .line 1
    iget v0, p0, Landroidx/preference/Preference$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object p0, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lcom/xwray/groupie/GroupieViewHolder;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/xwray/groupie/GroupieViewHolder;->onItemClickListener:Lcom/xwray/groupie/OnItemClickListener;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/xwray/groupie/GroupieViewHolder;->onItemClickListener:Lcom/xwray/groupie/OnItemClickListener;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/xwray/groupie/GroupieViewHolder;->item:Lcom/xwray/groupie/Item;

    .line 27
    .line 28
    invoke-interface {v0, p0, p1}, Lcom/xwray/groupie/OnItemClickListener;->onItemClick(Lcom/xwray/groupie/Item;Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :pswitch_0
    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    check-cast p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$CheckableViewHolder;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$CheckableViewHolder;->this$0:Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->onClickCheckBox(Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$CheckableViewHolder;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_2
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 47
    .line 48
    check-cast p0, Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iput-boolean v3, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 55
    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 61
    .line 62
    invoke-virtual {v0, p1, p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move v3, v2

    .line 83
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    iput-boolean v2, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 88
    .line 89
    :cond_3
    if-eqz v3, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView()V

    .line 92
    .line 93
    .line 94
    :cond_4
    return-void

    .line 95
    :pswitch_3
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 96
    .line 97
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 98
    .line 99
    if-nez p0, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 103
    .line 104
    :goto_1
    if-eqz v1, :cond_6

    .line 105
    .line 106
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 107
    .line 108
    .line 109
    :cond_6
    return-void

    .line 110
    :pswitch_4
    check-cast p0, Landroidx/appcompat/view/ActionMode;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_5
    check-cast p0, Landroidx/appcompat/app/AlertController;

    .line 117
    .line 118
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 119
    .line 120
    if-ne p1, v0, :cond_7

    .line 121
    .line 122
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 123
    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    goto :goto_2

    .line 131
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 132
    .line 133
    if-ne p1, v0, :cond_8

    .line 134
    .line 135
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 136
    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    goto :goto_2

    .line 144
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 145
    .line 146
    if-ne p1, v0, :cond_9

    .line 147
    .line 148
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 149
    .line 150
    if-eqz p1, :cond_9

    .line 151
    .line 152
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    :cond_9
    :goto_2
    if-eqz v1, :cond_a

    .line 157
    .line 158
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 159
    .line 160
    .line 161
    :cond_a
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mHandler:Lorg/schabi/newpipe/views/FocusOverlayView$1;

    .line 162
    .line 163
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 164
    .line 165
    invoke-virtual {p1, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :pswitch_6
    check-cast p0, Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 174
    .line 175
    iget-object p0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 176
    .line 177
    const p1, 0x800003

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(I)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-eqz p1, :cond_b

    .line 189
    .line 190
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    :cond_b
    if-eqz v2, :cond_c

    .line 195
    .line 196
    const/4 p1, 0x2

    .line 197
    if-eq v0, p1, :cond_c

    .line 198
    .line 199
    invoke-virtual {p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Z)V

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_c
    if-eq v0, v3, :cond_d

    .line 204
    .line 205
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer$1()V

    .line 206
    .line 207
    .line 208
    :cond_d
    :goto_3
    return-void

    .line 209
    :pswitch_7
    check-cast p0, Landroidx/preference/Preference;

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->performClick(Landroid/view/View;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
