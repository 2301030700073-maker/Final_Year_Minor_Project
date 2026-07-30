.class Lcom/android/contacts/list/ContactListItemView$2;
.super Ljava/lang/Object;
.source "ContactListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactListItemView;->getDeleteImageButton(Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;I)Landroidx/appcompat/widget/AppCompatImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactListItemView;Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;I)V
    .locals 0

    .line 1354
    iput-object p2, p0, Lcom/android/contacts/list/ContactListItemView$2;->val$listener:Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;

    iput p3, p0, Lcom/android/contacts/list/ContactListItemView$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1358
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView$2;->val$listener:Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;

    if-eqz p1, :cond_0

    .line 1359
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView$2;->val$position:I

    invoke-interface {p1, v0}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$DeleteContactListener;->onContactDeleteClicked(I)V

    :cond_0
    return-void
.end method
