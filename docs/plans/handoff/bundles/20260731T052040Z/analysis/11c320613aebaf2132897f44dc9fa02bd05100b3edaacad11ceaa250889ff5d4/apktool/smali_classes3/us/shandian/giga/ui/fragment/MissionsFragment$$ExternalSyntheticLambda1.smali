.class public final synthetic Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    .line 9
    .line 10
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabsManager:Lcoil3/ComponentRegistry$Builder;

    .line 11
    .line 12
    iget-object p2, p1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p2, Landroid/content/SharedPreferences;

    .line 15
    .line 16
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabList:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabsManager:Lcoil3/ComponentRegistry$Builder;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcoil3/ComponentRegistry$Builder;->getTabs()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->selectedTabsAdapter:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_0
    check-cast p0, Lus/shandian/giga/ui/fragment/MissionsFragment;

    .line 52
    .line 53
    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->clearFinishedDownloads(Z)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_1
    check-cast p0, Lus/shandian/giga/ui/fragment/MissionsFragment;

    .line 61
    .line 62
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 63
    .line 64
    iget-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    const p2, 0x7f1300ed

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 73
    .line 74
    .line 75
    const p2, 0x7f130076

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance p2, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;

    .line 84
    .line 85
    const/4 v0, 0x2

    .line 86
    invoke-direct {p2, p0, v0}, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 87
    .line 88
    .line 89
    const p0, 0x7f130397

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_2
    check-cast p0, Lus/shandian/giga/ui/fragment/MissionsFragment;

    .line 101
    .line 102
    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 103
    .line 104
    const/4 p1, 0x0

    .line 105
    invoke-virtual {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->clearFinishedDownloads(Z)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
