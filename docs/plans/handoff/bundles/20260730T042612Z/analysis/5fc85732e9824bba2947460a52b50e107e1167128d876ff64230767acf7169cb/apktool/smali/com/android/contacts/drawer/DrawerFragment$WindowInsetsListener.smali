.class Lcom/android/contacts/drawer/DrawerFragment$WindowInsetsListener;
.super Ljava/lang/Object;
.source "DrawerFragment.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/drawer/DrawerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowInsetsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/drawer/DrawerFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/drawer/DrawerFragment;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$WindowInsetsListener;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/drawer/DrawerFragment;Lcom/android/contacts/drawer/DrawerFragment$1;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1}, Lcom/android/contacts/drawer/DrawerFragment$WindowInsetsListener;-><init>(Lcom/android/contacts/drawer/DrawerFragment;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 321
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p1

    .line 322
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment$WindowInsetsListener;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {v0, p1}, Lcom/android/contacts/drawer/DrawerFragment;->access$700(Lcom/android/contacts/drawer/DrawerFragment;I)V

    return-object p2
.end method
