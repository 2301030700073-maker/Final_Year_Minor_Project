.class public final synthetic Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tokenautocomplete/TokenCompleteTextView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda1;->f$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget v0, Lcom/tokenautocomplete/TokenCompleteTextView;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda1;->f$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-boolean p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda1;->f$1:Z

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
