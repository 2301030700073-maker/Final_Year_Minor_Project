.class Lcom/redshift/rs_vapourtraining/NavigationComponent$1;
.super Ljava/lang/Object;
.source "NavigationComponent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redshift/rs_vapourtraining/NavigationComponent;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redshift/rs_vapourtraining/NavigationComponent;


# direct methods
.method constructor <init>(Lcom/redshift/rs_vapourtraining/NavigationComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/redshift/rs_vapourtraining/NavigationComponent;

    .line 53
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent$1;->this$0:Lcom/redshift/rs_vapourtraining/NavigationComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 56
    const-string v0, "Hello"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 57
    const-string v1, "Action"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 58
    return-void
.end method
