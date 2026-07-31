.class public final synthetic Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda18;->f$2:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda18;->f$2:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;

    .line 11
    .line 12
    check-cast v0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 13
    .line 14
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 15
    .line 16
    iget-object p0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iget-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroidx/room/Room;->selectInstance(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p2, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->selectedInstance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 30
    .line 31
    iget-object p2, p2, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 32
    .line 33
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-string v0, "key_main_page_change"

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->lastChecked:Landroid/widget/RadioButton;

    .line 48
    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderServiceView:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Landroid/widget/RadioButton;

    .line 54
    .line 55
    if-eq p2, v0, :cond_0

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderServiceView:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Landroid/widget/RadioButton;

    .line 64
    .line 65
    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->lastChecked:Landroid/widget/RadioButton;

    .line 66
    .line 67
    :cond_1
    return-void

    .line 68
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 69
    .line 70
    check-cast v0, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const v1, 0x7f1303d2

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    .line 97
    .line 98
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
