.class Lcom/android/contacts/editor/PhotoEditorView$1;
.super Ljava/lang/Object;
.source "PhotoEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoEditorView;->adjustDimensions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/PhotoEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PhotoEditorView;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-static {v0}, Lcom/android/contacts/editor/PhotoEditorView;->access$000(Lcom/android/contacts/editor/PhotoEditorView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v1, v0

    .line 155
    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-static {v2}, Lcom/android/contacts/editor/PhotoEditorView;->access$100(Lcom/android/contacts/editor/PhotoEditorView;)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v0, v1

    .line 159
    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-static {v2}, Lcom/android/contacts/editor/PhotoEditorView;->access$200(Lcom/android/contacts/editor/PhotoEditorView;)F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 161
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 162
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 163
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
