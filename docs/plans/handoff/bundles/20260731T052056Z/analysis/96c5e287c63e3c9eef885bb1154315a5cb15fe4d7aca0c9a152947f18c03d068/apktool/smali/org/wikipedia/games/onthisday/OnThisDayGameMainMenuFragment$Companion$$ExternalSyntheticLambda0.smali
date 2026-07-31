.class public final synthetic Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/app/AlertDialog;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$Companion$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$Companion$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$Companion$$ExternalSyntheticLambda0;->f$1:Landroidx/appcompat/app/AlertDialog;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$Companion$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$Companion$$ExternalSyntheticLambda0;->f$1:Landroidx/appcompat/app/AlertDialog;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$Companion$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    const p1, 0x7f1204c6

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1, v0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    const/4 v4, 0x0

    .line 29
    const/16 v2, 0x3fc

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const-string v5, "enter_click"

    .line 33
    .line 34
    const-string v6, "game_modal"

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    invoke-static/range {v2 .. v9}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget p1, Lorg/wikipedia/games/GamesHubActivity;->$r8$clinit:I

    .line 43
    .line 44
    new-instance p1, Landroid/content/Intent;

    .line 45
    .line 46
    const-class v2, Lorg/wikipedia/games/GamesHubActivity;

    .line 47
    .line 48
    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
