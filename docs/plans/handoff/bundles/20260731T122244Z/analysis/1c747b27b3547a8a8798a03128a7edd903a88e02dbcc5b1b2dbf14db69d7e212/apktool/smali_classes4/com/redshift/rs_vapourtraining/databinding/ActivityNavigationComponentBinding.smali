.class public final Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;
.super Ljava/lang/Object;
.source "ActivityNavigationComponentBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appBarNavigationComponent:Lcom/redshift/rs_vapourtraining/databinding/AppBarNavigationComponentBinding;

.field public final drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field public final navView:Lcom/google/android/material/navigation/NavigationView;

.field private final rootView:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method private constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;Lcom/redshift/rs_vapourtraining/databinding/AppBarNavigationComponentBinding;Landroidx/drawerlayout/widget/DrawerLayout;Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p2, "appBarNavigationComponent"    # Lcom/redshift/rs_vapourtraining/databinding/AppBarNavigationComponentBinding;
    .param p3, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p4, "navView"    # Lcom/google/android/material/navigation/NavigationView;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;->rootView:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 35
    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;->appBarNavigationComponent:Lcom/redshift/rs_vapourtraining/databinding/AppBarNavigationComponentBinding;

    .line 36
    iput-object p3, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 37
    iput-object p4, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;->navView:Lcom/google/android/material/navigation/NavigationView;

    .line 38
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;
    .locals 7
    .param p0, "rootView"    # Landroid/view/View;

    .line 67
    const v0, 0x7f080059

    .line 68
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, "appBarNavigationComponent":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 72
    invoke-static {v1}, Lcom/redshift/rs_vapourtraining/databinding/AppBarNavigationComponentBinding;->bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/AppBarNavigationComponentBinding;

    move-result-object v2

    .line 74
    .local v2, "binding_appBarNavigationComponent":Lcom/redshift/rs_vapourtraining/databinding/AppBarNavigationComponentBinding;
    move-object v3, p0

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 76
    .local v3, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    const v0, 0x7f080158

    .line 77
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/navigation/NavigationView;

    .line 78
    .local v4, "navView":Lcom/google/android/material/navigation/NavigationView;
    if-eqz v4, :cond_0

    .line 82
    new-instance v5, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;

    move-object v6, p0

    check-cast v6, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {v5, v6, v2, v3, v4}, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;Lcom/redshift/rs_vapourtraining/databinding/AppBarNavigationComponentBinding;Landroidx/drawerlayout/widget/DrawerLayout;Lcom/google/android/material/navigation/NavigationView;)V

    return-object v5

    .line 79
    :cond_0
    goto :goto_0

    .line 70
    .end local v2    # "binding_appBarNavigationComponent":Lcom/redshift/rs_vapourtraining/databinding/AppBarNavigationComponentBinding;
    .end local v3    # "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    .end local v4    # "navView":Lcom/google/android/material/navigation/NavigationView;
    :cond_1
    nop

    .line 85
    .end local v1    # "appBarNavigationComponent":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 54
    const v0, 0x7f0b001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;->bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;->getRoot()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;->rootView:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object v0
.end method
