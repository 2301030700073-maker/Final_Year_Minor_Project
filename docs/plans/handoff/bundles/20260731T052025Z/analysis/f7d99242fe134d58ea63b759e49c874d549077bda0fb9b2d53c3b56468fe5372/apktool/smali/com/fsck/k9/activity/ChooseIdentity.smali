.class public Lcom/fsck/k9/activity/ChooseIdentity;
.super Lcom/fsck/k9/activity/BaseListActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public adapter:Landroid/widget/ArrayAdapter;

.field public identities:Ljava/util/List;

.field public final identityFormatter:Lcom/fsck/k9/ui/identity/IdentityFormatter;

.field public mAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/ui/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/fsck/k9/ui/identity/IdentityFormatter;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/fsck/k9/ui/identity/IdentityFormatter;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identityFormatter:Lcom/fsck/k9/ui/identity/IdentityFormatter;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0c02a9

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->setLayout(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f12020d

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fsck/k9/activity/BaseListActivity;->getListView()Landroid/widget/ListView;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/fsck/k9/activity/BaseListActivity;->getListView()Landroid/widget/ListView;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/fsck/k9/activity/BaseListActivity;->getListView()Landroid/widget/ListView;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "com.fsck.k9.ChooseIdentity_account"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-class v0, Lcom/fsck/k9/Preferences;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 62
    .line 63
    new-instance p1, Landroid/widget/ArrayAdapter;

    .line 64
    .line 65
    const v0, 0x1090003

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/fsck/k9/activity/BaseListActivity;->list:Landroid/widget/ListView;

    .line 74
    .line 75
    if-nez v0, :cond_0

    .line 76
    .line 77
    const v0, 0x102000a

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/ListView;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/fsck/k9/activity/BaseListActivity;->list:Landroid/widget/ListView;

    .line 87
    .line 88
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/BaseListActivity;->list:Landroid/widget/ListView;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->setupClickListeners()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->refreshView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final refreshView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 13
    .line 14
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentities()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    .line 19
    .line 20
    check-cast v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lnet/thunderbird/core/android/account/Identity;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identityFormatter:Lcom/fsck/k9/ui/identity/IdentityFormatter;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object v2, v1, Lnet/thunderbird/core/android/account/Identity;->description:Ljava/lang/String;

    .line 47
    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    invoke-static {v1}, Lcom/fsck/k9/ui/identity/IdentityFormatter;->getEmailDisplayName(Lnet/thunderbird/core/android/account/Identity;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object p0, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public setupClickListeners()V
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
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2, p0}, Lcom/fsck/k9/activity/ChooseIdentity$1;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
