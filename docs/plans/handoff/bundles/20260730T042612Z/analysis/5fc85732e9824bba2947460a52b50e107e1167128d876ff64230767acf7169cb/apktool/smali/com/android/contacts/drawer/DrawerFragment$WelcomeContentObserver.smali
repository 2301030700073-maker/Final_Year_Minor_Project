.class final Lcom/android/contacts/drawer/DrawerFragment$WelcomeContentObserver;
.super Landroid/database/ContentObserver;
.source "DrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/drawer/DrawerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WelcomeContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/drawer/DrawerFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/drawer/DrawerFragment;Landroid/os/Handler;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$WelcomeContentObserver;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    .line 81
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/drawer/DrawerFragment;Landroid/os/Handler;Lcom/android/contacts/drawer/DrawerFragment$1;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/drawer/DrawerFragment$WelcomeContentObserver;-><init>(Lcom/android/contacts/drawer/DrawerFragment;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$WelcomeContentObserver;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerFragment;->access$000(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
