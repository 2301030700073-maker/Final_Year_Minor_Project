.class public final synthetic Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda3;->f$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda3;->f$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;

    .line 9
    .line 10
    sget v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->$r8$clinit:I

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-wide v0, p1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;->folderId:J

    .line 15
    .line 16
    iget-object p1, p1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;->folderDisplayName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedFolderId:Ljava/lang/Long;

    .line 23
    .line 24
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedFolderDisplayName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadFolder:Landroidx/preference/Preference;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string p0, "unreadFolder"

    .line 35
    .line 36
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    throw p0

    .line 41
    :cond_1
    :goto_0
    return-void

    .line 42
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 43
    .line 44
    sget v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->$r8$clinit:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->handleChooseAccount(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
