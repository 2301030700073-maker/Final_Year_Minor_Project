.class public final Lorg/wikipedia/settings/dev/DeveloperSettingsFragment;
.super Lorg/wikipedia/settings/PreferenceLoaderFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/settings/dev/DeveloperSettingsFragment;",
        "Lorg/wikipedia/settings/PreferenceLoaderFragment;",
        "Landroidx/core/view/MenuProvider;",
        "<init>",
        "()V",
        "HistorySearchCallback",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final searchActionModeCallback:Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/settings/PreferenceLoaderFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsFragment;->searchActionModeCallback:Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final loadPreferences()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;->loadPreferences()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const p0, 0x7f0e0008

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1, v2}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/fragment/app/FragmentViewLifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x7f0903e8

    .line 9
    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsFragment;->searchActionModeCallback:Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method
