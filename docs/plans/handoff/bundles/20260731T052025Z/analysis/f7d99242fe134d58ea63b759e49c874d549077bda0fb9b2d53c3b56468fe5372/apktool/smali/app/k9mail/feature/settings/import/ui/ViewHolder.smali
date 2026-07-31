.class public final Lapp/k9mail/feature/settings/import/ui/ViewHolder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final closeButton:Lcom/google/android/material/button/MaterialButton;

.field public final importButton:Landroid/view/View;

.field public final importProgressBar:Landroid/view/View;

.field public final loadingProgressBar:Landroid/view/View;

.field public final pickAppButton:Landroid/view/View;

.field public final pickDocumentButton:Landroid/view/View;

.field public final scanQrCodeButton:Landroid/view/View;

.field public final settingsImportList:Landroidx/recyclerview/widget/RecyclerView;

.field public final statusText:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f09033a

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->pickDocumentButton:Landroid/view/View;

    .line 18
    .line 19
    const v0, 0x7f09038a

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->scanQrCodeButton:Landroid/view/View;

    .line 30
    .line 31
    const v0, 0x7f090339

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->pickAppButton:Landroid/view/View;

    .line 42
    .line 43
    const v0, 0x7f090232

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->importButton:Landroid/view/View;

    .line 54
    .line 55
    const v0, 0x7f09013a

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 66
    .line 67
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->closeButton:Lcom/google/android/material/button/MaterialButton;

    .line 68
    .line 69
    const v0, 0x7f090260

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->loadingProgressBar:Landroid/view/View;

    .line 80
    .line 81
    const v0, 0x7f090233

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->importProgressBar:Landroid/view/View;

    .line 92
    .line 93
    const v0, 0x7f0903ff

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 104
    .line 105
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->statusText:Lcom/google/android/material/textview/MaterialTextView;

    .line 106
    .line 107
    const v0, 0x7f0903b6

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    .line 119
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->settingsImportList:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    return-void
.end method
