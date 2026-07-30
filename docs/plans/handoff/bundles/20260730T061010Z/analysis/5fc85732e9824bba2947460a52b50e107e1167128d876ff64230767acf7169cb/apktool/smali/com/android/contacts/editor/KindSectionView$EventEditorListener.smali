.class Lcom/android/contacts/editor/KindSectionView$EventEditorListener;
.super Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;
.source "KindSectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/KindSectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventEditorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/KindSectionView;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/KindSectionView;)V
    .locals 1

    .line 132
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView$EventEditorListener;->this$0:Lcom/android/contacts/editor/KindSectionView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;-><init>(Lcom/android/contacts/editor/KindSectionView;Lcom/android/contacts/editor/KindSectionView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/KindSectionView;Lcom/android/contacts/editor/KindSectionView$1;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/KindSectionView$EventEditorListener;-><init>(Lcom/android/contacts/editor/KindSectionView;)V

    return-void
.end method


# virtual methods
.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 3

    .line 141
    instance-of v0, p1, Lcom/android/contacts/editor/EventFieldEditorView;

    if-eqz v0, :cond_0

    .line 142
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/editor/EventFieldEditorView;

    .line 143
    invoke-virtual {v0}, Lcom/android/contacts/editor/EventFieldEditorView;->isBirthdayType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$EventEditorListener;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-static {v0}, Lcom/android/contacts/editor/KindSectionView;->access$100(Lcom/android/contacts/editor/KindSectionView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$EventEditorListener;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-static {v0}, Lcom/android/contacts/editor/KindSectionView;->access$100(Lcom/android/contacts/editor/KindSectionView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView$EventEditorListener;->this$0:Lcom/android/contacts/editor/KindSectionView;

    .line 145
    invoke-static {v2}, Lcom/android/contacts/editor/KindSectionView;->access$100(Lcom/android/contacts/editor/KindSectionView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/EventFieldEditorView;

    .line 146
    invoke-virtual {v0}, Lcom/android/contacts/editor/EventFieldEditorView;->restoreBirthday()V

    .line 149
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;->onDeleteRequested(Lcom/android/contacts/editor/Editor;)V

    return-void
.end method

.method public onRequest(I)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;->onRequest(I)V

    return-void
.end method
