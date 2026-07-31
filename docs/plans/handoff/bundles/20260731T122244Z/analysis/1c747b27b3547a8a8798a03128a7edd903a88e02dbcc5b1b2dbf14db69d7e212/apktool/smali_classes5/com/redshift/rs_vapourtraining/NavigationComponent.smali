.class public Lcom/redshift/rs_vapourtraining/NavigationComponent;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NavigationComponent.java"


# instance fields
.field private binding:Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;

.field private dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

.field private mAppBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

.field userCreds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent;->userCreds:I

    return-void
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 5

    .line 113
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 115
    .local v1, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 117
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_0

    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_0

    .line 118
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 120
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    goto :goto_1

    .line 121
    .end local v1    # "intf":Ljava/net/NetworkInterface;
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    goto :goto_0

    .line 124
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    goto :goto_2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "ex":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 125
    .end local v0    # "ex":Ljava/net/SocketException;
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getServer(Ljava/lang/String;)V
    .locals 6
    .param p1, "ipAddress"    # Ljava/lang/String;

    .line 129
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 131
    .local v0, "ExampleRequestQueue":Lcom/android/volley/RequestQueue;
    const-string v1, "http://192.168.1.193:5000/"

    .line 132
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/android/volley/toolbox/StringRequest;

    new-instance v3, Lcom/redshift/rs_vapourtraining/NavigationComponent$2;

    invoke-direct {v3, p0}, Lcom/redshift/rs_vapourtraining/NavigationComponent$2;-><init>(Lcom/redshift/rs_vapourtraining/NavigationComponent;)V

    new-instance v4, Lcom/redshift/rs_vapourtraining/NavigationComponent$3;

    invoke-direct {v4, p0}, Lcom/redshift/rs_vapourtraining/NavigationComponent$3;-><init>(Lcom/redshift/rs_vapourtraining/NavigationComponent;)V

    const/4 v5, 0x0

    invoke-direct {v2, v5, v1, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 144
    .local v2, "ExampleStringRequest":Lcom/android/volley/toolbox/StringRequest;
    invoke-virtual {v0, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 145
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/NavigationComponent;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent;->binding:Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;

    .line 50
    invoke-virtual {v0}, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;->getRoot()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/NavigationComponent;->setContentView(Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent;->binding:Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;

    iget-object v0, v0, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;->appBarNavigationComponent:Lcom/redshift/rs_vapourtraining/databinding/AppBarNavigationComponentBinding;

    iget-object v0, v0, Lcom/redshift/rs_vapourtraining/databinding/AppBarNavigationComponentBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/NavigationComponent;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 53
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent;->binding:Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;

    iget-object v0, v0, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;->appBarNavigationComponent:Lcom/redshift/rs_vapourtraining/databinding/AppBarNavigationComponentBinding;

    iget-object v0, v0, Lcom/redshift/rs_vapourtraining/databinding/AppBarNavigationComponentBinding;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/redshift/rs_vapourtraining/NavigationComponent$1;

    invoke-direct {v1, p0}, Lcom/redshift/rs_vapourtraining/NavigationComponent$1;-><init>(Lcom/redshift/rs_vapourtraining/NavigationComponent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent;->binding:Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;

    iget-object v0, v0, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 62
    .local v0, "drawer":Landroidx/drawerlayout/widget/DrawerLayout;
    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent;->binding:Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;

    iget-object v1, v1, Lcom/redshift/rs_vapourtraining/databinding/ActivityNavigationComponentBinding;->navView:Lcom/google/android/material/navigation/NavigationView;

    .line 65
    .local v1, "navigationView":Lcom/google/android/material/navigation/NavigationView;
    new-instance v2, Landroidx/navigation/ui/AppBarConfiguration$Builder;

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Landroidx/navigation/ui/AppBarConfiguration$Builder;-><init>([I)V

    .line 67
    invoke-virtual {v2, v0}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->setOpenableLayout(Landroidx/customview/widget/Openable;)Landroidx/navigation/ui/AppBarConfiguration$Builder;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->build()Landroidx/navigation/ui/AppBarConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent;->mAppBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

    .line 69
    const v2, 0x7f080156

    invoke-static {p0, v2}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v2

    .line 70
    .local v2, "navController":Landroidx/navigation/NavController;
    iget-object v3, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent;->mAppBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

    invoke-static {p0, v2, v3}, Landroidx/navigation/ui/NavigationUI;->setupActionBarWithNavController(Landroidx/appcompat/app/AppCompatActivity;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 71
    invoke-static {v1, v2}, Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Lcom/google/android/material/navigation/NavigationView;Landroidx/navigation/NavController;)V

    .line 73
    new-instance v3, Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-direct {v3, p0}, Lcom/redshift/rs_vapourtraining/DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    .line 75
    invoke-static {}, Lcom/redshift/rs_vapourtraining/NavigationComponent;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "IPaddress":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/redshift/rs_vapourtraining/NavigationComponent;->getServer(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/NavigationComponent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "username"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "username":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 79
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 80
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 81
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "userRS"

    const-string v8, "1"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x7f080153
        0x7f080151
        0x7f080150
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 90
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/NavigationComponent;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 92
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/NavigationComponent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "username":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 94
    const-string v0, "admin"

    .line 96
    :cond_0
    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/redshift/rs_vapourtraining/NavigationComponent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 97
    .local v1, "actionName":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {v2, v0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getUserID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "userID":Ljava/lang/String;
    iget-object v3, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {v3, v2}, Lcom/redshift/rs_vapourtraining/DBHandler;->getCreds(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent;->userCreds:I

    .line 101
    const/4 v3, 0x1

    return v3
.end method

.method public onSupportNavigateUp()Z
    .locals 2

    .line 106
    const v0, 0x7f080156

    invoke-static {p0, v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    .line 107
    .local v0, "navController":Landroidx/navigation/NavController;
    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent;->mAppBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

    invoke-static {v0, v1}, Landroidx/navigation/ui/NavigationUI;->navigateUp(Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 107
    :goto_1
    return v1
.end method
