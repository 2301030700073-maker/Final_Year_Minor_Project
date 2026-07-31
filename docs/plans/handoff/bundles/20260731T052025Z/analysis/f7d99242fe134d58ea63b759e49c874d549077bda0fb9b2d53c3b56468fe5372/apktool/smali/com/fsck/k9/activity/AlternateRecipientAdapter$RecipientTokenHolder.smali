.class public final Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final copyEmailAddress:Landroid/view/View;

.field public final headerLabel:Lcom/google/android/material/textview/MaterialTextView;

.field public final headerName:Lcom/google/android/material/textview/MaterialTextView;

.field public final headerPhoto:Lcom/fsck/k9/ui/ContactBadge;

.field public final headerRemove:Landroid/view/View;

.field public final itemAddress:Lcom/google/android/material/textview/MaterialTextView;

.field public final itemAddressLabel:Lcom/google/android/material/textview/MaterialTextView;

.field public final itemCryptoStatus:Landroid/widget/ImageView;

.field public final layoutHeader:Landroid/view/View;

.field public final layoutItem:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f09006a

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->layoutHeader:Landroid/view/View;

    .line 12
    .line 13
    const v0, 0x7f09006b

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->layoutItem:Landroid/view/View;

    .line 21
    .line 22
    const v0, 0x7f09006e

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerName:Lcom/google/android/material/textview/MaterialTextView;

    .line 32
    .line 33
    const v0, 0x7f09006d

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerLabel:Lcom/google/android/material/textview/MaterialTextView;

    .line 43
    .line 44
    const v0, 0x7f090069

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/fsck/k9/ui/ContactBadge;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerPhoto:Lcom/fsck/k9/ui/ContactBadge;

    .line 54
    .line 55
    const v0, 0x7f09006f

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerRemove:Landroid/view/View;

    .line 63
    .line 64
    const v0, 0x7f0900be

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->copyEmailAddress:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const v2, 0x7f120223

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Landroidx/work/Operation$State;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    const v0, 0x7f090067

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemAddress:Lcom/google/android/material/textview/MaterialTextView;

    .line 97
    .line 98
    const v0, 0x7f090068

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemAddressLabel:Lcom/google/android/material/textview/MaterialTextView;

    .line 108
    .line 109
    const v0, 0x7f09006c

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Landroid/widget/ImageView;

    .line 117
    .line 118
    iput-object p1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemCryptoStatus:Landroid/widget/ImageView;

    .line 119
    .line 120
    return-void
.end method
