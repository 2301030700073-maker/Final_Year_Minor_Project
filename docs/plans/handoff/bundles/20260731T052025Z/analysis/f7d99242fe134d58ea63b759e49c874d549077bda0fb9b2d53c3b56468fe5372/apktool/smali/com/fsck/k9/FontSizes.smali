.class public final Lcom/fsck/k9/FontSizes;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public messageComposeInput:I

.field public messageListDate:I

.field public messageListPreview:I

.field public messageListSender:I

.field public messageListSubject:I

.field public messageViewAccountName:I

.field public messageViewContentAsPercent:I

.field public messageViewDate:I

.field public messageViewRecipients:I

.field public messageViewSender:I

.field public messageViewSubject:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    .line 6
    .line 7
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageListSender:I

    .line 8
    .line 9
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageListDate:I

    .line 10
    .line 11
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageListPreview:I

    .line 12
    .line 13
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewAccountName:I

    .line 14
    .line 15
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    .line 16
    .line 17
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewRecipients:I

    .line 18
    .line 19
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    .line 20
    .line 21
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    .line 22
    .line 23
    const/16 v0, 0x12

    .line 24
    .line 25
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageComposeInput:I

    .line 26
    .line 27
    const/16 v0, 0x64

    .line 28
    .line 29
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewContentAsPercent:I

    .line 30
    .line 31
    return-void
.end method

.method public static setViewTextSize(Landroid/widget/TextView;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    int-to-float p1, p1

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
