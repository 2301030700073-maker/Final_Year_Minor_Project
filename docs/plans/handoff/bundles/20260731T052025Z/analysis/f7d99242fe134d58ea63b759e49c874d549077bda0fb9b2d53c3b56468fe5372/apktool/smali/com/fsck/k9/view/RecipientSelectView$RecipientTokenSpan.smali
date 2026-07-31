.class public final Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;
.super Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/view/RecipientSelectView;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/view/RecipientSelectView;Landroid/view/View;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;->this$0:Lcom/fsck/k9/view/RecipientSelectView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->cachedMaxWidth:I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->layout:Lcom/fsck/k9/view/RecipientSelectView;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->view:Landroid/view/View;

    .line 12
    .line 13
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    const/4 v0, -0x2

    .line 16
    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;->view:Landroid/view/View;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p9}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;->view:Landroid/view/View;

    .line 5
    .line 6
    const p1, 0x7f090151

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
