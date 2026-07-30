.class Lcom/android/contacts/editor/PhotoActionPopup$1;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$choices:Ljava/util/ArrayList;

.field final synthetic val$listPopupWindow:Landroid/widget/ListPopupWindow;

.field final synthetic val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$choices:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    iput-object p3, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 108
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$choices:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    .line 109
    invoke-virtual {p1}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->getId()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {p1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onRemovePictureChosen()V

    goto :goto_0

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {p1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onPickFromGalleryChosen()V

    goto :goto_0

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {p1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onTakePhotoChosen()V

    .line 121
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-static {p1}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    return-void
.end method
