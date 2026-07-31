.class public final synthetic Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/EditSectionActivity;ZLorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->f$0:Z

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->f$0:Z

    iput-object p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-boolean v4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->f$0:Z

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Lorg/wikipedia/edit/EditSectionActivity;

    .line 17
    .line 18
    check-cast v3, Lorg/wikipedia/history/HistoryEntry;

    .line 19
    .line 20
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 21
    .line 22
    sget v0, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 23
    .line 24
    const-string v0, "title"

    .line 25
    .line 26
    const-string v5, "org.wikipedia.history.historyentry"

    .line 27
    .line 28
    const-class v6, Lorg/wikipedia/page/PageActivity;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v4, Landroid/content/Intent;

    .line 39
    .line 40
    const-string v7, "org.wikipedia.load_in_new_tab"

    .line 41
    .line 42
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v4, Landroid/content/Intent;

    .line 68
    .line 69
    const-string v7, "org.wikipedia.load_in_current_tab"

    .line 70
    .line 71
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 94
    .line 95
    check-cast v3, Ljava/lang/String;

    .line 96
    .line 97
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 98
    .line 99
    if-nez v4, :cond_1

    .line 100
    .line 101
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :goto_1
    return-object v1

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
