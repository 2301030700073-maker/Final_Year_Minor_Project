.class public final Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;
.super Lcom/fsck/k9/ui/messagelist/item/MessageListViewHolder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final appearance:Lkotlin/jvm/functions/Function0;

.field public final attachmentView:Landroid/widget/ImageView;

.field public final chipView:Landroid/widget/ImageView;

.field public final colors:Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;

.field public final contactPictureClickArea:Landroid/view/View;

.field public final contactPictureView:Landroid/widget/ImageView;

.field public final contactsPictureLoader:Lcom/fsck/k9/contacts/ContactPictureLoader;

.field public final dateView:Lcom/google/android/material/textview/MaterialTextView;

.field public final previewView:Lcom/google/android/material/textview/MaterialTextView;

.field public final res:Landroid/content/res/Resources;

.field public final selectedView:Landroid/view/View;

.field public final starClickAreaView:Landroid/view/View;

.field public final starView:Landroid/widget/ImageView;

.field public final statusView:Landroid/widget/ImageView;

.field public final subjectView:Lcom/google/android/material/textview/MaterialTextView;

.field public final theme:Landroid/content/res/Resources$Theme;

.field public final threadCountView:Lcom/google/android/material/textview/MaterialTextView;

.field public uniqueId:J


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lcom/fsck/k9/contacts/ContactPictureLoader;Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->appearance:Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->theme:Landroid/content/res/Resources$Theme;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->res:Landroid/content/res/Resources;

    .line 24
    .line 25
    iput-object p5, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->contactsPictureLoader:Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 26
    .line 27
    iput-object p6, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->colors:Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;

    .line 28
    .line 29
    const-wide/16 p2, -0x1

    .line 30
    .line 31
    iput-wide p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->uniqueId:J

    .line 32
    .line 33
    const p2, 0x7f0903a4

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->selectedView:Landroid/view/View;

    .line 44
    .line 45
    const p2, 0x7f090152

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    check-cast p2, Landroid/widget/ImageView;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->contactPictureView:Landroid/widget/ImageView;

    .line 58
    .line 59
    const p2, 0x7f090153

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->contactPictureClickArea:Landroid/view/View;

    .line 70
    .line 71
    const p2, 0x7f090402

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 82
    .line 83
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->subjectView:Lcom/google/android/material/textview/MaterialTextView;

    .line 84
    .line 85
    const p2, 0x7f09034c

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 96
    .line 97
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->previewView:Lcom/google/android/material/textview/MaterialTextView;

    .line 98
    .line 99
    const p2, 0x7f09017b

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 110
    .line 111
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->dateView:Lcom/google/android/material/textview/MaterialTextView;

    .line 112
    .line 113
    const p2, 0x7f090037

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    check-cast p2, Landroid/widget/ImageView;

    .line 124
    .line 125
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->chipView:Landroid/widget/ImageView;

    .line 126
    .line 127
    const p2, 0x7f090433

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 138
    .line 139
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->threadCountView:Lcom/google/android/material/textview/MaterialTextView;

    .line 140
    .line 141
    const p2, 0x7f0903f3

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    check-cast p2, Landroid/widget/ImageView;

    .line 152
    .line 153
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->starView:Landroid/widget/ImageView;

    .line 154
    .line 155
    const p2, 0x7f0903f4

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->starClickAreaView:Landroid/view/View;

    .line 166
    .line 167
    const p2, 0x7f090085

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    check-cast p2, Landroid/widget/ImageView;

    .line 178
    .line 179
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->attachmentView:Landroid/widget/ImageView;

    .line 180
    .line 181
    const p2, 0x7f0903fd

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    check-cast p1, Landroid/widget/ImageView;

    .line 192
    .line 193
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->statusView:Landroid/widget/ImageView;

    .line 194
    .line 195
    return-void
.end method
