.class public final synthetic Lorg/wikipedia/talk/UserTalkPopupHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/UserTalkPopupHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/UserTalkPopupHelper$$ExternalSyntheticLambda2;->f$0:Landroidx/appcompat/app/AppCompatActivity;

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
    .locals 9

    .line 1
    iget p1, p0, Lorg/wikipedia/talk/UserTalkPopupHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/UserTalkPopupHelper$$ExternalSyntheticLambda2;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 9
    .line 10
    const-string p1, "reading_lists_manual_sync"

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-static {p0, p1, p2}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v7, 0x0

    .line 18
    const/16 v8, 0x1fc

    .line 19
    .line 20
    const-string v0, "sync_login_click"

    .line 21
    .line 22
    const-string v1, "sync_prompt"

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    instance-of p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsActivity;

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    instance-of p1, p0, Lorg/wikipedia/suggestededits/SuggestionsActivity;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    :cond_0
    instance-of p0, p0, Lorg/wikipedia/suggestededits/SuggestionsActivity;

    .line 45
    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    const-string p0, "pt_edit"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string p0, "pt_recent_changes"

    .line 52
    .line 53
    :goto_0
    const-string p1, ""

    .line 54
    .line 55
    const-string p2, "thank_cancel"

    .line 56
    .line 57
    invoke-static {p2, p0, p1}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
