.class public final Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity$onCreateOptionsMenu$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity$onCreateOptionsMenu$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity$onCreateOptionsMenu$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity$onCreateOptionsMenu$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity$onCreateOptionsMenu$2;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :pswitch_0
    check-cast p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchPreferenceActionView:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->cancelSearch()V

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    const-string p0, "searchPreferenceActionView"

    .line 33
    .line 34
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    throw p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity$onCreateOptionsMenu$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    return v0
.end method
