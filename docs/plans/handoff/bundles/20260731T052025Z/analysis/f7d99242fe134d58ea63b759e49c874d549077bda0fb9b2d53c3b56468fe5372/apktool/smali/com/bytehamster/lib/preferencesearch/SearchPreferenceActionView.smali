.class public Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;
.super Landroidx/appcompat/widget/SearchView;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public activity:Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;

.field public final searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

.field public searchFragment:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->initView()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    invoke-direct {p1}, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;-><init>()V

    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 17
    invoke-virtual {p0}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    invoke-direct {p1}, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;-><init>()V

    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 20
    invoke-virtual {p0}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->initView()V

    return-void
.end method


# virtual methods
.method public final cancelSearch()V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery$1(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mIconified:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->searchFragment:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->searchFragment:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->activity:Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->searchFragment:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;

    .line 47
    .line 48
    invoke-virtual {v1, p0}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 52
    .line 53
    .line 54
    new-instance p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    .line 55
    .line 56
    const/4 v1, -0x1

    .line 57
    const-string v2, "SearchPreferenceFragment"

    .line 58
    .line 59
    invoke-direct {p0, v0, v2, v1}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public getSearchConfiguration()Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method public final initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->searchBarEnabled:Z

    .line 5
    .line 6
    new-instance v0, Landroidx/work/Configuration$Builder;

    .line 7
    .line 8
    const/16 v1, 0x13

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setActivity(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    instance-of v0, p1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->activity:Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p0, "Activity must implement SearchPreferenceResultListener"

    .line 15
    .line 16
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
