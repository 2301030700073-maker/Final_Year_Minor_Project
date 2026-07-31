.class public final synthetic Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/usercontrib/UserContribListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/usercontrib/UserContribListActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

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
    .locals 2

    .line 1
    iget p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->launchFilterActivity:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 9
    .line 10
    sget-object v0, Lorg/wikipedia/usercontrib/UserContribFilterActivity;->NAMESPACE_LIST:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-class v1, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-virtual {p1, v0, p0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    sget p1, Lorg/wikipedia/usercontrib/UserContribListActivity;->$r8$clinit:I

    .line 25
    .line 26
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
