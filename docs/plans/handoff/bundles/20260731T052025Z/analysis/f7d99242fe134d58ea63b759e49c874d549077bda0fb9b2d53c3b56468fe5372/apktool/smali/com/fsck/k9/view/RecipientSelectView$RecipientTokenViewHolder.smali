.class public final Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cryptoStatus:Landroid/view/View;

.field public final cryptoStatusEnabled:Landroid/view/View;

.field public final cryptoStatusError:Landroid/view/View;

.field public final vContactPhoto:Lde/hdodenhof/circleimageview/CircleImageView;

.field public final vName:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x1020014

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->vName:Lcom/google/android/material/textview/MaterialTextView;

    .line 14
    .line 15
    const v0, 0x7f090151

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->vContactPhoto:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 25
    .line 26
    const v0, 0x7f09014e

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->cryptoStatus:Landroid/view/View;

    .line 34
    .line 35
    const v0, 0x7f09014f

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->cryptoStatusEnabled:Landroid/view/View;

    .line 43
    .line 44
    const v0, 0x7f090150

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->cryptoStatusError:Landroid/view/View;

    .line 52
    .line 53
    return-void
.end method
