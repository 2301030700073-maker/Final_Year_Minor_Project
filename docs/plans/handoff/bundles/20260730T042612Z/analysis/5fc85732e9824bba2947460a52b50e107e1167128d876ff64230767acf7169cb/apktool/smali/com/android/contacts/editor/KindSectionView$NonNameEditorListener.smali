.class Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;
.super Ljava/lang/Object;
.source "KindSectionView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/KindSectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonNameEditorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/KindSectionView;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/KindSectionView;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/KindSectionView;Lcom/android/contacts/editor/KindSectionView$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;-><init>(Lcom/android/contacts/editor/KindSectionView;)V

    return-void
.end method


# virtual methods
.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-static {v0}, Lcom/android/contacts/editor/KindSectionView;->access$000(Lcom/android/contacts/editor/KindSectionView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-static {v0}, Lcom/android/contacts/editor/KindSectionView;->access$100(Lcom/android/contacts/editor/KindSectionView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    invoke-interface {p1}, Lcom/android/contacts/editor/Editor;->clearAllFields()V

    goto :goto_0

    .line 127
    :cond_0
    invoke-interface {p1}, Lcom/android/contacts/editor/Editor;->deleteEditor()V

    :goto_0
    return-void
.end method

.method public onRequest(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;->this$0:Lcom/android/contacts/editor/KindSectionView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/contacts/editor/KindSectionView;->updateEmptyEditors(Z)V

    :cond_1
    return-void
.end method
