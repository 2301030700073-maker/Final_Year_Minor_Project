.class Lcom/android/contacts/DynamicShortcuts$PermissionsGrantedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DynamicShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/DynamicShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionsGrantedReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 578
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/DynamicShortcuts$1;)V
    .locals 0

    .line 578
    invoke-direct {p0}, Lcom/android/contacts/DynamicShortcuts$PermissionsGrantedReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 582
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 583
    invoke-static {p1}, Lcom/android/contacts/DynamicShortcuts;->initialize(Landroid/content/Context;)V

    return-void
.end method
