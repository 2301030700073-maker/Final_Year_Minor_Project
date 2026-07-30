.class Lcom/android/contacts/editor/ContactEditorFragment$5;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->onAggregationSuggestionChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    .line 1626
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

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

    .line 1629
    check-cast p2, Lcom/android/contacts/editor/AggregationSuggestionView;

    .line 1630
    invoke-virtual {p2}, Lcom/android/contacts/editor/AggregationSuggestionView;->handleItemClickEvent()Z

    .line 1631
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object p1, p1, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-static {p1}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    .line 1632
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    return-void
.end method
