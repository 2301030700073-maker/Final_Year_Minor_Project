.class public final synthetic Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;

    .line 2
    .line 3
    iget-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadFolder:Landroidx/preference/Preference;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const v0, 0x7f12065d

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedFolderId:Ljava/lang/Long;

    .line 19
    .line 20
    iput-object p2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedFolderDisplayName:Ljava/lang/String;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string p0, "unreadFolder"

    .line 24
    .line 25
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 1
    iget p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->chooseFolderLauncher:Landroidx/fragment/app/Fragment$10;

    .line 10
    .line 11
    new-instance v1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Input;

    .line 12
    .line 13
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedAccountUuid:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/16 v3, 0xe

    .line 20
    .line 21
    invoke-direct {v1, v3, v2, p0}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Input;-><init>(ILjava/lang/Long;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return v0

    .line 28
    :pswitch_0
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->chooseAccountLauncher:Landroidx/fragment/app/Fragment$10;

    .line 29
    .line 30
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
