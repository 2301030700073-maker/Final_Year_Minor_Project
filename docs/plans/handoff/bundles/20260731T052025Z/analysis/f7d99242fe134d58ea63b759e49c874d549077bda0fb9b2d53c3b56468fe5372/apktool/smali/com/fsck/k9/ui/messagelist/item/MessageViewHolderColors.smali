.class public final Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final active:I

.field public final activeBackground:I

.field public final previewActiveText:I

.field public final previewSelectedText:I

.field public final previewText:I

.field public final read:I

.field public final readBackground:I

.field public final regular:I

.field public final regularBackground:I

.field public final selected:I

.field public final selectedBackground:I

.field public final unread:I

.field public final unreadBackground:I


# direct methods
.method public constructor <init>(IIIIIIIIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->active:I

    .line 5
    .line 6
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->activeBackground:I

    .line 7
    .line 8
    iput p3, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->selected:I

    .line 9
    .line 10
    iput p4, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->selectedBackground:I

    .line 11
    .line 12
    iput p5, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->regular:I

    .line 13
    .line 14
    iput p6, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->regularBackground:I

    .line 15
    .line 16
    iput p7, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->read:I

    .line 17
    .line 18
    iput p8, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->readBackground:I

    .line 19
    .line 20
    iput p9, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->unread:I

    .line 21
    .line 22
    iput p10, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->unreadBackground:I

    .line 23
    .line 24
    iput p11, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewText:I

    .line 25
    .line 26
    iput p12, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewActiveText:I

    .line 27
    .line 28
    iput p13, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewSelectedText:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;

    .line 12
    .line 13
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->active:I

    .line 14
    .line 15
    iget v3, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->active:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->activeBackground:I

    .line 21
    .line 22
    iget v3, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->activeBackground:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->selected:I

    .line 28
    .line 29
    iget v3, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->selected:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->selectedBackground:I

    .line 35
    .line 36
    iget v3, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->selectedBackground:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->regular:I

    .line 42
    .line 43
    iget v3, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->regular:I

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->regularBackground:I

    .line 49
    .line 50
    iget v3, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->regularBackground:I

    .line 51
    .line 52
    if-eq v1, v3, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->read:I

    .line 56
    .line 57
    iget v3, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->read:I

    .line 58
    .line 59
    if-eq v1, v3, :cond_8

    .line 60
    .line 61
    return v2

    .line 62
    :cond_8
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->readBackground:I

    .line 63
    .line 64
    iget v3, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->readBackground:I

    .line 65
    .line 66
    if-eq v1, v3, :cond_9

    .line 67
    .line 68
    return v2

    .line 69
    :cond_9
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->unread:I

    .line 70
    .line 71
    iget v3, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->unread:I

    .line 72
    .line 73
    if-eq v1, v3, :cond_a

    .line 74
    .line 75
    return v2

    .line 76
    :cond_a
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->unreadBackground:I

    .line 77
    .line 78
    iget v3, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->unreadBackground:I

    .line 79
    .line 80
    if-eq v1, v3, :cond_b

    .line 81
    .line 82
    return v2

    .line 83
    :cond_b
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewText:I

    .line 84
    .line 85
    iget v3, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewText:I

    .line 86
    .line 87
    if-eq v1, v3, :cond_c

    .line 88
    .line 89
    return v2

    .line 90
    :cond_c
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewActiveText:I

    .line 91
    .line 92
    iget v3, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewActiveText:I

    .line 93
    .line 94
    if-eq v1, v3, :cond_d

    .line 95
    .line 96
    return v2

    .line 97
    :cond_d
    iget p0, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewSelectedText:I

    .line 98
    .line 99
    iget p1, p1, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewSelectedText:I

    .line 100
    .line 101
    if-eq p0, p1, :cond_e

    .line 102
    .line 103
    return v2

    .line 104
    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->active:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->activeBackground:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->selected:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->selectedBackground:I

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->regular:I

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->regularBackground:I

    .line 26
    .line 27
    add-int/2addr v0, v1

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    .line 30
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->read:I

    .line 31
    .line 32
    add-int/2addr v0, v1

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    .line 35
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->readBackground:I

    .line 36
    .line 37
    add-int/2addr v0, v1

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->unread:I

    .line 41
    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->unreadBackground:I

    .line 46
    .line 47
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewText:I

    .line 51
    .line 52
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewActiveText:I

    .line 56
    .line 57
    add-int/2addr v0, v1

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    .line 59
    .line 60
    iget p0, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewSelectedText:I

    .line 61
    .line 62
    add-int/2addr v0, p0

    .line 63
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", activeBackground="

    .line 2
    .line 3
    const-string v1, ", selected="

    .line 4
    .line 5
    const-string v2, "MessageViewHolderColors(active="

    .line 6
    .line 7
    iget v3, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->active:I

    .line 8
    .line 9
    iget v4, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->activeBackground:I

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ", selectedBackground="

    .line 16
    .line 17
    const-string v2, ", regular="

    .line 18
    .line 19
    iget v3, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->selected:I

    .line 20
    .line 21
    iget v4, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->selectedBackground:I

    .line 22
    .line 23
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, ", regularBackground="

    .line 27
    .line 28
    const-string v2, ", read="

    .line 29
    .line 30
    iget v3, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->regular:I

    .line 31
    .line 32
    iget v4, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->regularBackground:I

    .line 33
    .line 34
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, ", readBackground="

    .line 38
    .line 39
    const-string v2, ", unread="

    .line 40
    .line 41
    iget v3, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->read:I

    .line 42
    .line 43
    iget v4, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->readBackground:I

    .line 44
    .line 45
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, ", unreadBackground="

    .line 49
    .line 50
    const-string v2, ", previewText="

    .line 51
    .line 52
    iget v3, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->unread:I

    .line 53
    .line 54
    iget v4, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->unreadBackground:I

    .line 55
    .line 56
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v1, ", previewActiveText="

    .line 60
    .line 61
    const-string v2, ", previewSelectedText="

    .line 62
    .line 63
    iget v3, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewText:I

    .line 64
    .line 65
    iget v4, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewActiveText:I

    .line 66
    .line 67
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v1, ")"

    .line 71
    .line 72
    iget p0, p0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolderColors;->previewSelectedText:I

    .line 73
    .line 74
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method
