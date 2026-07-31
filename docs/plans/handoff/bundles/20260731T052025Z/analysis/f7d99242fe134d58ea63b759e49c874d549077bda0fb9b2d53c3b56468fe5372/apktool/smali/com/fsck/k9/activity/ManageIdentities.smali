.class public Lcom/fsck/k9/activity/ManageIdentities;
.super Lcom/fsck/k9/activity/ChooseIdentity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mIdentitiesChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/activity/ChooseIdentity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final editItem(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/fsck/k9/activity/EditIdentity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "com.fsck.k9.EditIdentity_account"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentity(I)Lnet/thunderbird/core/android/account/Identity;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "com.fsck.k9.EditIdentity_identity"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const-string v1, "com.fsck.k9.EditIdentity_identity_index"

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 6
    .line 7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const v1, 0x7f0901c0

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    iget p1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/ManageIdentities;->editItem(I)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    const v1, 0x7f09046c

    .line 25
    .line 26
    .line 27
    if-ne p1, v1, :cond_1

    .line 28
    .line 29
    iget p1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 30
    .line 31
    if-lez p1, :cond_5

    .line 32
    .line 33
    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lnet/thunderbird/core/android/account/Identity;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    .line 42
    .line 43
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 44
    .line 45
    sub-int/2addr v0, v2

    .line 46
    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-boolean v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->refreshView()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const v1, 0x7f0901ae

    .line 56
    .line 57
    .line 58
    if-ne p1, v1, :cond_2

    .line 59
    .line 60
    iget p1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 61
    .line 62
    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    sub-int/2addr v1, v2

    .line 69
    if-ge p1, v1, :cond_5

    .line 70
    .line 71
    iget-object p1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    .line 72
    .line 73
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 74
    .line 75
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lnet/thunderbird/core/android/account/Identity;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    .line 82
    .line 83
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 84
    .line 85
    add-int/2addr v0, v2

    .line 86
    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iput-boolean v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->refreshView()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const v1, 0x7f090447

    .line 96
    .line 97
    .line 98
    if-ne p1, v1, :cond_3

    .line 99
    .line 100
    iget-object p1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    .line 101
    .line 102
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 103
    .line 104
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lnet/thunderbird/core/android/account/Identity;

    .line 109
    .line 110
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iput-boolean v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->refreshView()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    const v1, 0x7f09036d

    .line 123
    .line 124
    .line 125
    if-ne p1, v1, :cond_5

    .line 126
    .line 127
    iget-object p1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-le p1, v2, :cond_4

    .line 134
    .line 135
    iget-object p1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    .line 136
    .line 137
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 138
    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    iput-boolean v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->refreshView()V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_4
    const p1, 0x7f1204dd

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 160
    .line 161
    .line 162
    :cond_5
    :goto_0
    return v2
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ChooseIdentity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f12040a

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2
    .line 3
    .line 4
    const p2, 0x7f120404

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const p2, 0x7f0e0007

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const v0, 0x7f0e0008

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0902f7

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    new-instance p1, Landroid/content/Intent;

    .line 12
    .line 13
    const-class v0, Lcom/fsck/k9/activity/EditIdentity;

    .line 14
    .line 15
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 19
    .line 20
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "com.fsck.k9.EditIdentity_account"

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v1, 0x102002c

    .line 36
    .line 37
    .line 38
    if-ne v0, v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return v2

    .line 44
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->refreshView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setIdentities(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    const-class v0, Lcom/fsck/k9/Preferences;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final setupClickListeners()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/BaseListActivity;->getListView()Landroid/widget/ListView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/fsck/k9/activity/ChooseIdentity$1;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v1, v2, p0}, Lcom/fsck/k9/activity/ChooseIdentity$1;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/fsck/k9/activity/BaseListActivity;->getListView()Landroid/widget/ListView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
