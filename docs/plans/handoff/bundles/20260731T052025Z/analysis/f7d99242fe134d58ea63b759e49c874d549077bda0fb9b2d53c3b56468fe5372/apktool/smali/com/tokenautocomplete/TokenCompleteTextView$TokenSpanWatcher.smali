.class public final Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/text/SpanWatcher;


# instance fields
.field public final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    instance-of p1, p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    check-cast p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCollapse(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    iget-object p1, p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 32
    .line 33
    invoke-interface {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;->onTokenAdded(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    instance-of p1, p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    check-cast p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iget-object p1, p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 18
    .line 19
    invoke-interface {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;->onTokenRemoved(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
