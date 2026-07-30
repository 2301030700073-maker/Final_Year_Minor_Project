.class Lcom/android/contacts/editor/AccountHeaderPresenter$3;
.super Ljava/lang/Object;
.source "AccountHeaderPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/AccountHeaderPresenter;->showPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$popup:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/AccountHeaderPresenter;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .line 196
    iput-object p2, p0, Lcom/android/contacts/editor/AccountHeaderPresenter$3;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter$3;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
