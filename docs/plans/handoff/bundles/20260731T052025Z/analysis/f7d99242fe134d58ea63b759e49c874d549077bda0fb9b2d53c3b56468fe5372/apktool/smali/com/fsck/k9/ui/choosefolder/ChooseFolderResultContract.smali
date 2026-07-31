.class public final Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;
.super Lcom/fsck/k9/sasl/OAuthBearer;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final action:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;->action:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createIntent(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 5

    .line 1
    check-cast p2, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Input;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->$r8$clinit:I

    .line 7
    .line 8
    iget-object v0, p2, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Input;->accountUuid:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p2, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Input;->currentFolderId:Ljava/lang/Long;

    .line 11
    .line 12
    iget-object v2, p2, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Input;->scrollToFolderId:Ljava/lang/Long;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Input;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v3, Landroid/content/Intent;

    .line 20
    .line 21
    const-class v4, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;

    .line 22
    .line 23
    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;->action:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string p0, "accountUuid"

    .line 36
    .line 37
    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const-string p0, "currentFolderId"

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    invoke-virtual {v3, p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    :cond_0
    if-eqz v2, :cond_1

    .line 52
    .line 53
    const-string p0, "scrollToFolderId"

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    invoke-virtual {v3, p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    :cond_1
    if-eqz p2, :cond_2

    .line 63
    .line 64
    const-string p0, "messageReference"

    .line 65
    .line 66
    invoke-virtual {p2}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    :cond_2
    return-object v3
.end method

.method public final parseResult(Landroid/content/Intent;I)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 p0, -0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    if-ne p2, p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move-object p1, v0

    .line 7
    :goto_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    new-instance p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;

    .line 10
    .line 11
    const-string p2, "selectedFolderId"

    .line 12
    .line 13
    const-wide/16 v0, -0x1

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-string p2, "folderDisplayName"

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v2, "messageReference"

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    return-object v0
.end method
